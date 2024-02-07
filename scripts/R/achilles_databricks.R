install.packages("remotes")
remotes::install_github("OHDSI/Achilles")
install.packages('dotenv')

library(DatabaseConnector)
library(Achilles)
library(dotenv)
library(here)

dotenv::load_dot_env(here("../../.env"))

connectionString <- Sys.getenv("connectionString")
dbms <-  Sys.getenv("dbms")
pathToDriver <- Sys.getenv("pathToJDBCDriver")
user <- Sys.getenv("user")
password <- Sys.getenv("personal_access_token")

cdmVersion = "5.4"
cdmDatabaseSchema  <- Sys.getenv("cdmDatabaseSchema")
resultsDatabaseSchema  <- Sys.getenv("resultsDatabaseSchema")
sqlDialect  <- Sys.getenv("sqlDialect")

# Download JDBC drivers
DatabaseConnector::downloadJdbcDrivers("spark", pathToDriver=pathToDriver)

connectionDetails <- createConnectionDetails(
  dbms=dbms,
  connectionString = connectionString,
  pathToDriver = pathToDriver,
  user=user,
  password = password,
)

Achilles::achilles(
  cdmVersion = "5.4",
  connectionDetails = connectionDetails,
  cdmDatabaseSchema = "hive_metastore.omop_source",
  resultsDatabaseSchema = "hive_metastore.omop_achilles",
  sqlDialect = "spark",
  dropScratchTables = True,
  numThreads = 12,
  optimizeAtlasCache = True
)
