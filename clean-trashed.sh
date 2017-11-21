
# List trashed=true files
gdrive list --query "trashed=true" -m 5000 > trashed.txt
cut -d ' ' -f1 trashed.txt > trashed_cut.txt

# delete trashed files per each file id
cat trashed_cut.txt | while read in; do gdrive delete "$in" -r; done
