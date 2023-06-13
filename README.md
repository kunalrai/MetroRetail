# Metro Retail Data Warehouse ETL

Metro Retail is a global electronics retail company with stores spread across the US, UK, and Australia. Our team has the responsibility of building SSIS packages for data loading into the Metro Retail’s Data Warehouse environment.

## Enterprise Data Warehouse Team
The Enterprise Data Warehouse team includes Data Acquisition, Data Architects, ETL Developers, Report Developers, and Data Analysts. The Data Acquisition team procures data in various formats from different sources, processes it, and then sends it to a shared folder named "SourceFiles".

## ETL Process
Our ETL process involves building a package that fetches files from the source, makes necessary transformations based on the Data Mapping Document (see the attached document), and incrementally loads the data into our data warehouse. Files are expected daily, and our package should also run daily, picking up one or multiple files from the source folder.

## Staging Database
Our Data Warehouse setup is already completed (script attached), but we also need to create a staging database that mirrors the source files. The main purpose of the staging database is to bring the data to SQL for easier manipulation. After each load, the data in the staging tables should be truncated.

## Data Transformation and Loading
After loading the data to the staging area, the required transformations (based on the attached Excel Data Mapping Document) are applied. Then, the data is loaded to the actual data warehouse. New records will be inserted, and existing records will be updated only if there is an update (please use the SQL MERGE statement). Existing records with no updates will be ignored.

## Archiving Files
Once the data load is completed, the package should move (not copy) the files to an "ArchiveFolder".

## Task Implementation
Please use components like ForEach Loop, Execute Sql task, File System Task, and others to implement the package.

## Contribution
Feel free to contribute to this project by submitting pull requests. Before making any changes, please discuss the changes you wish to make via issue.

Please make sure to update tests as appropriate.