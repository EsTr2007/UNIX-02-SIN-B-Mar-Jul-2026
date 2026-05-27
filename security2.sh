#View current main group 
id #Display real and effective user and groups IDs
id-gn #only the name of the main group
#Create a file and see which group inherits: 
touch~/test_inherited_group.txt
ls -la ~/test_grupo_heredado.txt
#The group is the user's primary group.

#View the current group
id -gn
echo "Grupo actual: $(id -gn)"
#Create a file before newgrp
touch ~/antes_de_newgrp.txt
ls -la ~/antes_de_newgrp.txt