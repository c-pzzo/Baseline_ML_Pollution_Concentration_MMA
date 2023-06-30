drop table if exists HDL_Project.cat_stations;

create table HDL_Project.cat_stations (
    station_code TINYTEXT,
    station_name TEXT
);

INSERT INTO `cat_stations` (station_code, station_name)
VALUES
    ("SE", "La Pastora"),
    ("NE", "San Nicolás"),
    ("CE", "Obispado"),
    ("NO", "San Bernabé"),
    ("SO", "Sta. Catarina"),
    ("NO2", "García"),
    ("NTE", "Escobedo"),
    ("NE2", "Apodaca"),
    ("SE2", "Juárez"),
    ("SO2", "San Pedro"),
    ("SE3", "Cadereyta"),
    ("SUR", "Pueblo Serena"),
    ("NTE2", "Universidad");

drop table if exists HDL_Project.cat_particles;

create table HDL_Project.cat_particles (
    particle_code TINYTEXT,
    short_name TINYTEXT,
    name TEXT
);

INSERT INTO `cat_particles` (particle_code, short_name, name)
VALUES
    ("pm10", "PM 10", "Material Particulado 10 micras"),
    ("pm25", "PM 2.5", "Material Particulado 2.5 micras"),
    ("o3", "O3", "Ozono"),
    ("co", "CO", "Monóxido de Carbono"),
    ("so2", "SO2", "Bióxido de Azufre"),
    ("no", "NO", "Monóxido de Nitrógeno"),
    ("no2", "NO2", "Bióxido de Nitrógeno"),
    ("nox", "NOx", "Óxidos de Nitrógeno");

drop table if exists HDL_Project.cat_particles;

create table HDL_Project.cat_meteorological_params (
    meteorological_code TINYTEXT,
    meteorological_name TEXT
);

INSERT INTO `cat_meteorological_params` (meteorological_code, meteorological_name)
VALUES
    ("tout", "Temperatura"),
    ("wdr", "Dirección del Viento"),
    ("wsr", "Velocidad del Viento"),
    ("rh", "Humedad Relativa"),
    ("sr", "Radiación Solar"),
    ("rainf", "Precipitación"),
    ("prs", "Presión atmosférica");
