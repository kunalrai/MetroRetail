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

## Glossary

Below is a brief glossary to help you understand the terms and formatting used in our STTM documents:

- **STTM**: STTM stands for Source To Target Mappings. These are the mapping documents created by the Data Architects of the Metro Retail Team and provided to the Development Team for coding.

- **Column Name**: This denotes target column names in the following formats:
  - Bold: Indicates the field is part of a unique key on the target table.
  - Italics: Indicates the field is part of a second unique key on the target table.
  - Underline: Indicates the field is part of a third unique key on the target table.

- **Worksheet**: A worksheet/tab in blue fill indicates the worksheet has been modified since the prior delivery.

- **Blue Text**: Blue text indicates a change since the prior delivery.

- **Strikethrough Blue Text**: Blue text with strikethrough indicates the information is being removed with the current delivery.

- **How to read a worksheet**: A worksheet should be read top-down unless otherwise indicated by the 'Starting Target Table Column:' or another transformation rule.

- **Header-Starting Target Table Column**: The 'Starting Target Table Column:' header at the top of each worksheet indicates the first column under the 'Column Name' header in Column A to be processed. This is important to read first when going through the document or coding the worksheet, and should be applied prior to any other rules noted in the worksheet. After applying the rule under the 'Starting Target Table Column:', proceed back to the top of the worksheet and continue working from the top down unless otherwise indicated.

- **Header-Note**: The note at the top of the worksheet should be read prior to proceeding to the transformation rules below the header. This note provides general information as to the purpose of the worksheet.

- **Transformation-Transformation**: Under the Transformation column (column E) each cell will contain a prefix. The 'Transformation:' prefix indicates a rule to be coded by the Development Team is to follow.

- **Transformation-Note**: Under the Transformation column (column E) each cell will contain a prefix. The 'Note:' prefix indicates the information to follow is not a rule that requires coding by the Development Team, but is informational only.
