dirToSweep=$1
codeFileFormat=$2
#recursively visit the folder and subfolders
module load a2ps
for d in $(find $dirToSweep -maxdepth 100 -type d)
do
  #Do something, the directory is accessible with $d:
  #echo $d
  list=$(ls $d | grep .$codeFileFormat$)
  for l in $list  # Note: No quotes
	do
    a2ps -1 --left-footer="$d/$l" -o $l.ps $d/$l
    ps2pdf $l.ps
	done
  
done
#remove the post script files 
rm -f *.ps

### Usage:
# crawler_code2pdf dir .extention
# Required modules: 
#   a2ps 
#   ps2pdf
#( Install if unavailable )

### Example
# To print matlab codes in a directory run following.
#./crawler_code2pdf.sh /path/to/dir .m

