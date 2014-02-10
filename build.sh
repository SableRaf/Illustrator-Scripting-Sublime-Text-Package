# Renaming argument
file_name=$1;

# Your CS version/language
version="CC";
language="en_GB"

# Adobe After Effects folder location
base_path="Applications";

# Full path
full_path="/${base_path}/Adobe Illustrator ${version}/Presets/${language}/Scripts";

# Copying built file to script folder
cp $file_name "${full_path}/${file_name%.*}.jsx";

# Printing happy feedback in the console
echo "Successfully compiled ${file_name} to ${full_path}/${file_name%.*}.jsx";