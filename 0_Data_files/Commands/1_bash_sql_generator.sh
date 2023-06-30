#!/bin/bash

# Read the database name from a file
db_name=$(sed -n 2p ../project_parameters.txt)

# Generate the modified SQL script
echo "drop table if exists $db_name.cat_stations;"
echo ""
echo "create table $db_name.cat_stations ("
echo "    station_code TINYTEXT,"
echo "    station_name TEXT"
echo ");"
echo ""
echo "INSERT INTO \`cat_stations\` (station_code, station_name)"
echo "VALUES"
echo "    (\"SE\", \"La Pastora\"),"
echo "    (\"NE\", \"San Nicolás\"),"
echo "    (\"CE\", \"Obispado\"),"
echo "    (\"NO\", \"San Bernabé\"),"
echo "    (\"SO\", \"Sta. Catarina\"),"
echo "    (\"NO2\", \"García\"),"
echo "    (\"NTE\", \"Escobedo\"),"
echo "    (\"NE2\", \"Apodaca\"),"
echo "    (\"SE2\", \"Juárez\"),"
echo "    (\"SO2\", \"San Pedro\"),"
echo "    (\"SE3\", \"Cadereyta\"),"
echo "    (\"SUR\", \"Pueblo Serena\"),"
echo "    (\"NTE2\", \"Universidad\");"
echo ""
echo "drop table if exists $db_name.cat_particles;"
echo ""
echo "create table $db_name.cat_particles ("
echo "    particle_code TINYTEXT,"
echo "    short_name TINYTEXT,"
echo "    name TEXT"
echo ");"
echo ""
echo "INSERT INTO \`cat_particles\` (particle_code, short_name, name)"
echo "VALUES"
echo "    (\"pm10\", \"PM 10\", \"Material Particulado 10 micras\"),"
echo "    (\"pm25\", \"PM 2.5\", \"Material Particulado 2.5 micras\"),"
echo "    (\"o3\", \"O3\", \"Ozono\"),"
echo "    (\"co\", \"CO\", \"Monóxido de Carbono\"),"
echo "    (\"so2\", \"SO2\", \"Bióxido de Azufre\"),"
echo "    (\"no\", \"NO\", \"Monóxido de Nitrógeno\"),"
echo "    (\"no2\", \"NO2\", \"Bióxido de Nitrógeno\"),"
echo "    (\"nox\", \"NOx\", \"Óxidos de Nitrógeno\");"
echo ""
echo "drop table if exists $db_name.cat_particles;"
echo ""
echo "create table $db_name.cat_meteorological_params ("
echo "    meteorological_code TINYTEXT,"
echo "    meteorological_name TEXT"
echo ");"
echo ""
echo "INSERT INTO \`cat_meteorological_params\` (meteorological_code, meteorological_name)"
echo "VALUES"
echo "    (\"tout\", \"Temperatura\"),"
echo "    (\"wdr\", \"Dirección del Viento\"),"
echo "    (\"wsr\", \"Velocidad del Viento\"),"
echo "    (\"rh\", \"Humedad Relativa\"),"
echo "    (\"sr\", \"Radiación Solar\"),"
echo "    (\"rainf\", \"Precipitación\"),"
echo "    (\"prs\", \"Presión atmosférica\");"

