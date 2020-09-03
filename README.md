### Convert Code to PDF (code2pdf)
Converts any file format to pdf using a2ps and ps2pdf. Saves pdf in the current dir of .sh file. (Only for Unix/Linux)
### Usage:
 crawler_code2pdf < directory > < code extention with a dot>
### Required modules: 
   * a2ps 
   * ps2pdf


### Example:
 To convert all the matlab (.m) codes in a directory, run the following.
 ##### ./crawler_code2pdf.sh  /path/to/dir   .m
