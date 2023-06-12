•	Metro Retail is an Electronics retail company with stores across the US, UK and Australia.
•	Our team is tasked with building SSIS packages that load data to Metro Retail’s Data Warehouse environment
•	Vendors, different offices within the organizations and sales offices across all the stores in the three countries send files to the Enterprise Data Warehouse team.
•	The Enterprise Data Warehouse team is composed of Data Acquisistion, Data Architects, ETL Developers, Report Developers and Data Analysts 
•	The Data Acquisision team acquieres data in different formats from different data sources, work on the data and sends to a shared folder named “SourceFiles” 
•	Our responsibility is to build a package that picks the files from the source, make the necessary transformations for each file based on the Data Mapping Document, and load to our data warehouse incrementally.
•	Files are expected to come daily
•	The package we build should run daily and pick up files that are in the source folder wheather there is only one or multiple files
•	We have our Data WareHouse already set up (script attached) but we have to create a staging database that replicates the source files
•	The purpose of the staging database is to bring the data to sql for easier manipulation
•	Our package should Truncate the data in the staging tables after each load
•	Once the data is loaded to staging, the requiered transformations are applied (based on the attached Excel Data Mapping Document), then the data will be loaded to the actual data warehouse (New records should be inserted and if the record already exists, then the record will be updated only if there is an update). Already existing records with no updates should be ignored (Please uns sql MERGE statement)
•	Once loaded, the package should move (not copy) the files to “ArchiveFolder”
•	Hint: Please utilize ForEach Loop, Execute Sql task, File System Task and other components for the package
	
