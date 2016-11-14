#!/bin/bash
#Developed in cisc220

#Luisa Aimoli 10169687
#Looks for all executable files in the current directory (. is current dir, f is file, -exec is executable)
#Adds "#Developed in cisc220" after #!/bin/bash

find . -type f -exec sed --silent '\:#!/bin/bash:a\ 
#Developed in cisc220' {} + #sed command syntax obtained and adapted from multiple stackoverflow links
