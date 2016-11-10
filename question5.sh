#!/bin/bash
#Developed in cisc220

#Luisa Aimoli 10169687
#Looks for all executable files in the current directory
#Adds "#Developed in cisc220" after #!/bin/bash

find . -type f -exec sed --silent '\:#!/bin/bash:a\
#Developed in cisc220' {} +
