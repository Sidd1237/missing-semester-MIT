#2
mkdir /tmp/missing

#4
touch semester

#5
echo '#!/bin/sh' > semester
echo 'curl --head --silent https://missing.csail.mit.edu' >> semester

#6: no execute bit enabled in the file by default

#7: sh interpreter doesn't execute the file but rather "reads" them line by line and executes them in the current shell (no forking)

#9
chmod u+x semester
: 'When the shell executes a file with the first line a s #!/bin/sh, it parses the rest of the file\'s initial line (/bin/sh) as an interpreter directive (which interpreter to use). The loader executes the specified interpreter program, passing the original text file path as the argument.
'

#10
date -r semester > ~/last-modified.txt

#11 (for WSL on my windows 11)
cat /sys/class/power_supply/BAT1/capacity


