#!/bin/bash

# Read the database name from a file
db_name=$(sed -n 2p ../project_parameters.txt)

# Generate the modified SQL script
echo "CREATE TABLE $db_name.sima_co ("
echo "    \`datetime\` DATETIME NOT NULL,"
echo "    \`SE\` FLOAT NULL,"
echo "    \`NE\` FLOAT NULL,"
echo "    \`CE\` FLOAT NULL,"
echo "    \`NO\` INT NULL,"
echo "    \`SO\` INT NULL,"
echo "    \`NO2\` INT NULL,"
echo "    \`NTE\` FLOAT NULL,"
echo "    \`NE2\` FLOAT NULL,"
echo "    \`SE2\` INT NULL,"
echo "    \`SO2\` FLOAT NULL,"
echo "    \`SE3\` FLOAT NULL,"
echo "    \`SUR\` INT NULL,"
echo "    \`NTE2\` INT NULL,"
echo "    \`NE3\` FLOAT NULL"
echo ") COMMENT = \"Source: sima_co.csv\";"
echo ""
echo "CREATE TABLE $db_name.sima_no ("
echo "    \`datetime\` DATETIME NOT NULL,"
echo "    \`SE\` FLOAT NULL,"
echo "    \`NE\` FLOAT NULL,"
echo "    \`CE\` FLOAT NULL,"
echo "    \`NO\` INT NULL,"
echo "    \`SO\` INT NULL,"
echo "    \`NO2\` INT NULL,"
echo "    \`NTE\` FLOAT NULL,"
echo "    \`NE2\` FLOAT NULL,"
echo "    \`SE2\` INT NULL,"
echo "    \`SO2\` FLOAT NULL,"
echo "    \`SE3\` FLOAT NULL,"
echo "    \`SUR\` INT NULL,"
echo "    \`NTE2\` INT NULL,"
echo "    \`NE3\` FLOAT NULL"
echo ") COMMENT = \"Source: sima_no.csv\";"
echo ""
echo "CREATE TABLE $db_name.sima_no2 ("
echo "    \`datetime\` DATETIME NOT NULL,"
echo "    \`SE\` FLOAT NULL,"
echo "    \`NE\` FLOAT NULL,"
echo "    \`CE\` FLOAT NULL,"
echo "    \`NO\` INT NULL,"
echo "    \`SO\` INT NULL,"
echo "    \`NO2\` INT NULL,"
echo "    \`NTE\` FLOAT NULL,"
echo "    \`NE2\` FLOAT NULL,"
echo "    \`SE2\` INT NULL,"
echo "    \`SO2\` FLOAT NULL,"
echo "    \`SE3\` FLOAT NULL,"
echo "    \`SUR\` INT NULL,"
echo "    \`NTE2\` INT NULL,"
echo "    \`NE3\` FLOAT NULL"
echo ") COMMENT = \"Source: sima_no2.csv\";"
echo ""
echo "CREATE TABLE $db_name.sima_nox ("
echo "    \`datetime\` DATETIME NOT NULL,"
echo "    \`SE\` FLOAT NULL,"
echo "    \`NE\` FLOAT NULL,"
echo "    \`CE\` FLOAT NULL,"
echo "    \`NO\` INT NULL,"
echo "    \`SO\` INT NULL,"
echo "    \`NO2\` INT NULL,"
echo "    \`NTE\` FLOAT NULL,"
echo "    \`NE2\` FLOAT NULL,"
echo "    \`SE2\` INT NULL,"
echo "    \`SO2\` FLOAT NULL,"
echo "    \`SE3\` FLOAT NULL,"
echo "    \`SUR\` INT NULL,"
echo "    \`NTE2\` INT NULL,"
echo "    \`NE3\` FLOAT NULL"
echo ") COMMENT = \"Source: sima_nox.csv\";"
echo ""
echo "CREATE TABLE $db_name.sima_o3 ("
echo "    \`datetime\` DATETIME NOT NULL,"
echo "    \`SE\` FLOAT NULL,"
echo "    \`NE\` FLOAT NULL,"
echo "    \`CE\` FLOAT NULL,"
echo "    \`NO\` INT NULL,"
echo "    \`SO\` INT NULL,"
echo "    \`NO2\` INT NULL,"
echo "    \`NTE\` FLOAT NULL,"
echo "    \`NE2\` FLOAT NULL,"
echo "    \`SE2\` INT NULL,"
echo "    \`SO2\` FLOAT NULL,"
echo "    \`SE3\` FLOAT NULL,"
echo "    \`SUR\` INT NULL,"
echo "    \`NTE2\` INT NULL,"
echo "    \`NE3\` FLOAT NULL"
echo ") COMMENT = \"Source: sima_o3.csv\";"
echo ""
echo "CREATE TABLE $db_name.sima_pm10 ("
echo "    \`datetime\` DATETIME NOT NULL,"
echo "    \`SE\` FLOAT NULL,"
echo "    \`NE\` FLOAT NULL,"
echo "    \`CE\` FLOAT NULL,"
echo "    \`NO\` INT NULL,"
echo "    \`SO\` INT NULL,"
echo "    \`NO2\` INT NULL,"
echo "    \`NTE\` FLOAT NULL,"
echo "    \`NE2\` FLOAT NULL,"
echo "    \`SE2\` INT NULL,"
echo "    \`SO2\` FLOAT NULL,"
echo "    \`SE3\` FLOAT NULL,"
echo "    \`SUR\` INT NULL,"
echo "    \`NTE2\` INT NULL,"
echo "    \`NE3\` FLOAT NULL"
echo ") COMMENT = \"Source: sima_pm10.csv\";"
echo ""
echo "CREATE TABLE $db_name.sima_pm25 ("
echo "    \`datetime\` DATETIME NOT NULL,"
echo "    \`SE\` FLOAT NULL,"
echo "    \`NE\` FLOAT NULL,"
echo "    \`CE\` FLOAT NULL,"
echo "    \`NO\` INT NULL,"
echo "    \`SO\` INT NULL,"
echo "    \`NO2\` INT NULL,"
echo "    \`NTE\` FLOAT NULL,"
echo "    \`NE2\` FLOAT NULL,"
echo "    \`SE2\` INT NULL,"
echo "    \`SO2\` FLOAT NULL,"
echo "    \`SE3\` FLOAT NULL,"
echo "    \`SUR\` INT NULL,"
echo "    \`NTE2\` INT NULL,"
echo "    \`NE3\` FLOAT NULL"
echo ") COMMENT = \"Source: sima_pm25.csv\";"
echo ""
echo "CREATE TABLE $db_name.sima_prs ("
echo "    \`datetime\` DATETIME NOT NULL,"
echo "    \`SE\` FLOAT NULL,"
echo "    \`NE\` FLOAT NULL,"
echo "    \`CE\` FLOAT NULL,"
echo "    \`NO\` INT NULL,"
echo "    \`SO\` INT NULL,"
echo "    \`NO2\` INT NULL,"
echo "    \`NTE\` FLOAT NULL,"
echo "    \`NE2\` FLOAT NULL,"
echo "    \`SE2\` INT NULL,"
echo "    \`SO2\` FLOAT NULL,"
echo "    \`SE3\`  FLOAT NULL, "
echo "    \`SUR\` INT NULL,"
echo "    \`NTE2\` INT NULL,"
echo "    \`NE3\` FLOAT NULL"
echo ") COMMENT = \"Source: sima_prs.csv\";"
echo ""
echo "CREATE TABLE $db_name.sima_rainf ("
echo "    \`datetime\` DATETIME NOT NULL,"
echo "    \`SE\` FLOAT NULL,"
echo "    \`NE\` FLOAT NULL,"
echo "    \`CE\` FLOAT NULL,"
echo "    \`NO\` INT NULL,"
echo "    \`SO\` INT NULL,"
echo "    \`NO2\` INT NULL,"
echo "    \`NTE\` FLOAT NULL,"
echo "    \`NE2\` FLOAT NULL,"
echo "    \`SE2\` INT NULL,"
echo "    \`SO2\` FLOAT NULL,"
echo "    \`SE3\` FLOAT NULL,"
echo "    \`SUR\` INT NULL,"
echo "    \`NTE2\` INT NULL,"
echo "    \`NE3\` FLOAT NULL"
echo ") COMMENT = \"Source: sima_rainf.csv\";"
echo ""
echo "CREATE TABLE $db_name.sima_rh ("
echo "    \`datetime\` DATETIME NOT NULL,"
echo "    \`SE\` FLOAT NULL,"
echo "    \`NE\` FLOAT NULL,"
echo "    \`CE\` FLOAT NULL,"
echo "    \`NO\` INT NULL,"
echo "    \`SO\` INT NULL,"
echo "    \`NO2\` INT NULL,"
echo "    \`NTE\` FLOAT NULL,"
echo "    \`NE2\` FLOAT NULL,"
echo "    \`SE2\` INT NULL,"
echo "    \`SO2\` FLOAT NULL,"
echo "    \`SE3\` FLOAT NULL,"
echo "    \`SUR\` INT NULL,"
echo "    \`NTE2\` INT NULL,"
echo "    \`NE3\` FLOAT NULL"
echo ") COMMENT = \"Source: sima_rh.csv\";"
echo ""
echo "CREATE TABLE $db_name.sima_so2 ("
echo "    \`datetime\` DATETIME NOT NULL,"
echo "    \`SE\` FLOAT NULL,"
echo "    \`NE\` FLOAT NULL,"
echo "    \`CE\` FLOAT NULL,"
echo "    \`NO\` INT NULL,"
echo "    \`SO\` INT NULL,"
echo "    \`NO2\` INT NULL,"
echo "    \`NTE\` FLOAT NULL,"
echo "    \`NE2\` FLOAT NULL,"
echo "    \`SE2\` INT NULL,"
echo "    \`SO2\` FLOAT NULL,"
echo "    \`SE3\` FLOAT NULL,"
echo "    \`SUR\` INT NULL,"
echo "    \`NTE2\` INT NULL,"
echo "    \`NE3\` FLOAT NULL"
echo ") COMMENT = \"Source: sima_so2.csv\";"
echo ""
echo "CREATE TABLE $db_name.sima_sr ("
echo "    \`datetime\` DATETIME NOT NULL,"
echo "    \`SE\` FLOAT NULL,"
echo "    \`NE\` FLOAT NULL,"
echo "    \`CE\` FLOAT NULL,"
echo "    \`NO\` INT NULL,"
echo "    \`SO\` INT NULL,"
echo "    \`NO2\` INT NULL,"
echo "    \`NTE\` FLOAT NULL,"
echo "    \`NE2\` FLOAT NULL,"
echo "    \`SE2\` INT NULL,"
echo "    \`SO2\` FLOAT NULL,"
echo "    \`SE3\` FLOAT NULL,"
echo "    \`SUR\` INT NULL,"
echo "    \`NTE2\` INT NULL,"
echo "    \`NE3\` FLOAT NULL"
echo ") COMMENT = \"Source: sima_sr.csv\";"
echo ""
echo "CREATE TABLE $db_name.sima_tout ("
echo "    \`datetime\` DATETIME NOT NULL,"
echo "    \`SE\` FLOAT NULL,"
echo "    \`NE\` FLOAT NULL,"
echo "    \`CE\` FLOAT NULL,"
echo "    \`NO\` INT NULL,"
echo "    \`SO\` INT NULL,"
echo "    \`NO2\` INT NULL,"
echo "    \`NTE\` FLOAT NULL,"
echo "    \`NE2\` FLOAT NULL,"
echo "    \`SE2\` INT NULL,"
echo "    \`SO2\` FLOAT NULL,"
echo "    \`SE3\` FLOAT NULL,"
echo "    \`SUR\` INT NULL,"
echo "    \`NTE2\` INT NULL,"
echo "    \`NE3\` FLOAT NULL"
echo ") COMMENT = \"Source: sima_tout.csv\";"
echo ""
echo "CREATE TABLE $db_name.sima_wdr ("
echo "    \`datetime\` DATETIME NOT NULL,"
echo "    \`SE\` FLOAT NULL,"
echo "    \`NE\` FLOAT NULL,"
echo "    \`CE\` FLOAT NULL,"
echo "    \`NO\` INT NULL,"
echo "    \`SO\` INT NULL,"
echo "    \`NO2\` INT NULL,"
echo "    \`NTE\` FLOAT NULL,"
echo "    \`NE2\` FLOAT NULL,"
echo "    \`SE2\` INT NULL,"
echo "    \`SO2\` FLOAT NULL,"
echo "    \`SE3\` FLOAT NULL,"
echo "    \`SUR\` INT NULL,"
echo "    \`NTE2\` INT NULL,"
echo "    \`NE3\` FLOAT NULL"
echo ") COMMENT = \"Source: sima_wdr.csv\";"
echo ""
echo "CREATE TABLE $db_name.sima_wsr ("
echo "    \`datetime\` DATETIME NOT NULL,"
echo "    \`SE\` FLOAT NULL,"
echo "    \`NE\` FLOAT NULL,"
echo "    \`CE\` FLOAT NULL,"
echo "    \`NO\` INT NULL,"
echo "    \`SO\` INT NULL,"
echo "    \`NO2\` INT NULL,"
echo "    \`NTE\` FLOAT NULL,"
echo "    \`NE2\` FLOAT NULL,"
echo "    \`SE2\` INT NULL,"
echo "    \`SO2\` FLOAT NULL,"
echo "    \`SE3\` FLOAT NULL,"
echo "    \`SUR\` INT NULL,"
echo "    \`NTE2\` INT NULL,"
echo "    \`NE3\` FLOAT NULL"
echo ") COMMENT = \"Source: sima_wsr.csv\";"

