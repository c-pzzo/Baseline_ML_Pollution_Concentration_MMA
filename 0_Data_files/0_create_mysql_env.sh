#!/bin/bash

# -------------------------------
# Parameters
# -------------------------------
db_name="HDL_Project"

# -------------------------------
# MySQL credentials
# -------------------------------
mysql_username=$(sed -n 1p ../mysql_login.txt)
mysql_password=$(sed -n 2p ../mysql_login.txt)

# Create MySQL database
mysql -u "$mysql_username" -p"$mysql_password" -e "CREATE DATABASE $db_name CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"

# Enable the local infile capability for MySQL
mysql -u "$mysql_username" -p"$mysql_password" -e "SET GLOBAL local_infile=1;"

# Create SQL commands with parameterized database name
./Commands/1_bash_sql_generator.sh > Commands/1_Create_Catalogues_Insert_Values.sql
./Commands/2_bash_sql_generator.sh > Commands/2_Create_Tables.sql
./Commands/3_bash_sql_generator.sh > Commands/3_Create_Views.sql

# Assign read and execute permissions
chmod +rx ./Commands/1_Create_Catalogues_Insert_Values.sql
chmod +rx ./Commands/2_Create_Tables.sql
chmod +rx ./Commands/3_Create_Views.sql

# Create project-specific tables and views
mysql -u "$mysql_username" -p"$mysql_password" --local-infile "$db_name" < Commands/1_Create_Catalogues_Insert_Values.sql
mysql -u "$mysql_username" -p"$mysql_password" --local-infile "$db_name" < Commands/2_Create_Tables.sql
mysql -u "$mysql_username" -p"$mysql_password" --local-infile "$db_name" < Commands/3_Create_Views.sql
