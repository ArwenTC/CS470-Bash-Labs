# Start of script
echo ""


# --- Variables --- #

mode_replace_msg="Script running in 'Replace' mode."
mode_create_msg="Script running in 'Create' mode."

# List of languages to put into the files
languages=("Java" "C#" "C" "C++" "Python" "R" "MySQL" "JavaScript" "PHP" "Fortran")


# --- Execution --- #

# Get the current formatted date and time $() gets the value of the result of a command
current_date_time=$(date +"%m-%d-%Y %T")

# Create directories
echo "Directory Made: $current_date_time"
mkdir "$current_date_time"
echo ""

# Creates counter for current i dir.
i_cur=1
# Create subdirectories
for i in {01..10}; do
	# Make initial subdir
	mkdir "$current_date_time/file1$i"

	# Creates counter for current j file (starting at 0)
	j_cur=0 # This iterates through the list of languages
	# Make files in subdir
	for j in {01..10}; do
		# Echoes a programming language into the file
		echo ${languages["$j_cur"]} > "$current_date_time/file1$i/tuser$i_cur$j.txt"
		# Ups the j counter
		j_cur=$((j_cur+1))
	done
	# Ups the i counter
	i_cur=$((i_cur+1))
done

# Confirms files are created (code has reached this point)
echo "Files created."

# End of script
echo "Done."
exit
