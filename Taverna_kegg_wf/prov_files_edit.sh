#!/bin/bash
#
# Process and edit each provenance file to add:
#    @prefix : <> .
#

function insert_line {
    # $1 = patern to insert before
    # $2 = text to insert
    #
    # See: http://stackoverflow.com/questions/6284518/how-to-insert-a-line-using-sed-before-a-pattern-and-after-a-line-number
    #
    awk -v lineno=10 -v patt="$1" -v text="$2" '
        NR < lineno && $0 ~ patt {print text}
        {print}
    '
}

while read FILE; do
  echo "Processing $FILE..."
  mv $FILE $FILE.bak
  insert_line "@prefix cnt:" "@prefix : <> ." <$FILE.bak >$FILE
done <prov_files.txt

# End.