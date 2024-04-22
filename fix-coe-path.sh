#!/bin/sh
#This should fix the coe file path in the generated path 
#this is best run as a pre commit hook
#run the script to install the hook

cd .git/hooks
if [ ! -f pre-commit ]; then
    cat << 'EOF' > pre-commit
#!/bin/sh

sed -i -e 's|coefficient_file.*/src|coefficient_file [pwd]{/src|' project.tcl

EOF
chmod +x pre-commit
fi
