# Renaming argument
file_name=$1;

# Your CS version/language
version="CC";
language="en_GB"

# Adobe Illustrator folder location
base_path="Applications";

# Full path (assumes that your installation of Illustrator is 
# in your user's Applications folder and not in the shared one)
full_path="$HOME/${base_path}/Adobe\ Illustrator\ ${version}/Presets/${language}/Scripts";

# Copying built file to script folder with some very crude error handling
if cp $file_name "${full_path}/${file_name%.*}.jsx"; then 
    echo "Successfully compiled ${file_name} to ${full_path}/${file_name%.*}.jsx";
else
    echo "Something went wrong. See the output of the cp command above."
fi