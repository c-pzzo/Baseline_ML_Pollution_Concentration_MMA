# Project Initialization
The files in this folder are designed to initialized the PM2.5 forecasting project by setting up the necessary MySQL database, enabling required capabilities, and running project-specific SQL scripts. 

# Prerequisites
Before running this script, ensure that you have the following:

* MySQL installed on your system
* Appropriate access privileges and credentials to create a new database

# Notes
* Ensure that the mysql_login.txt file is present in the correct location and contains valid MySQL credentials.
* It is important to review and update the script and SQL files to match your project's naming conventions and structure.
* Make sure to customize the scripts and SQL files according to your project's specific requirements.

# Usage
Executing the following commands in the commmand terminal will automate the setup process and ensure that the database is properly configured for the project:
./0_create_mysql_env.sh
./1_file_upload.sh

# What the Scripts Do
## 0_create_mysql_env.sh
1. Creates a MySQL database with the specified name (e.g., HDL_Project).
2. Executes project-specific SQL scripts located in the `Commands` folder to create tables and views. 

## 1_file_upload.sh
1. Sets the necessary parameters, such as the database name and CSV file suffix.
2. Retrieves MySQL credentials from the mysql_login.txt file.
3. Enables the local infile capability for MySQL, allowing data loading from local files.
4. Sets the folder locations for the files to be uploaded and moved.
5. Creates an uploaded_files.txt file if it doesn't exist.
6. Iterates through the CSV files in the "Restructured_data_files" folder.
  * Extracts the filename without the path.
  * Removes the suffix from the filename.
  * Converts the filename to lowercase.
  * Checks if the file is already listed in the "uploaded_files.txt" file.
  * If the file is already uploaded, renames it with a "_duplicate" suffix and moves it to the "Uploaded_files" folder.
  * If the file is not uploaded yet, uploads it to the MySQL database and adds it to the "uploaded_files.txt" file.
7. Outputs a completion message once the process is finished.
