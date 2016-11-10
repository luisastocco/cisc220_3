#!/bin/bash

#Looks for all executable files in the current directory
#Adds "#Developed in cisc220"after #!/bin/bash

find $PWD -executable -type f sed -i '/#!/bin/bash/a\
 #Developed in cisc220' {} \;
