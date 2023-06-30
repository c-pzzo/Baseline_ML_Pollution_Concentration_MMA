#!/bin/bash

# -------------------------------
# Parameters
# -------------------------------
db_name="HDL_Project"
suffix=".csv"

# -------------------------------
# MySQL credentials
# -------------------------------
mysql_username=$(sed -n 1p ../mysql_login.txt)
mysql_password=$(sed -n 2p ../mysql_login.txt)

# Enable the local infile capability for MySQL
mysql -u "$mysql_username" -p"$mysql_password" -e "SET GLOBAL local_infile=1;"

# -------------------------------
# Set folder names with location of files to upload and move
# -------------------------------
base_location=$(pwd)
new_files_folder="${base_location}/Data/Restructured_data_files"
uploaded_files_folder="${base_location}/Data/Uploaded_files"

# Create the "uploaded_files.txt" if it doesn't exist
touch uploaded_files.txt

# -------------------------------
# Main process
# -------------------------------

# Iterate through the files in the "Restructured_data_files" folder
for filename in "${new_files_folder}"/*.csv; do
    # Extract the filename without the path
    file=$(basename "$filename")
    
    # Remove the suffix from the filename
    cleaned_filename=${file%%$suffix}

    # Change the filename to lowercase    
    cleaned_filename_lowercase=${cleaned_filename,,}
    
    # Check if the file is already in the "uploaded_files.txt"
    if grep -q "${file}" uploaded_files.txt; then
        # File already uploaded
        echo "File ${file} already uploaded. Renaming file with '_duplicate' suffix..."
        new_filename="${file}_duplicate"
        mv "${filename}" "${uploaded_files_folder}/${new_filename}"
        
    else
        # File not uploaded yet
        echo "File ${file} not found in uploaded files. Uploading to MySQL..."
        # Upload file to MySQL (add your command here)
        
        mysql -u"$mysql_username" -p"$mysql_password" --local-infile "$db_name" -e "LOAD DATA LOCAL INFILE '$filename' INTO TABLE $db_name.$cleaned_filename_lowercase FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS"
        
        # Move the file to the "Uploaded_files" folder
        mv "${filename}" "${uploaded_files_folder}/${file}"
        # Add the filename to the "uploaded_files.txt"
        echo "${file}" >> uploaded_files.txt
    fi
done

echo "Process completed."

