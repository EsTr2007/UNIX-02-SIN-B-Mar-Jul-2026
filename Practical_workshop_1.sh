1: uname -a #Displays detailed system information, including the kernel version and operating system architecture.
2: which gpg #Locates the executable path of the GPG program to confirm it is installed and see where it lives.
3: gpg --version #Checks the version number and supported algorithms of GPG.
4: gpg --full-generate-key #Starts the interactive process to create a new key pair (public and private) with custom options like key type and expiration date.
5: gpg --list-keys
6: gpg --armor --export estrujillo2007@gmail.com > mi_llave_publica.asc
7: gpg --list-secret-keys --keyid-format=long
8: gpg --armor --export-secret-keys (2E2EAF7C82661FC2)
9: gpg --import su_llave_SY.asc (El nombre del archivo de como guarde la lleave de mi amigo)
10: echo "hi guys i am Pum ec" > doc_no_cifrado.txt
11: gpg --output doc_cifrado.txt --encrypt --recipient (Hash de mi amigo) doc_no_cifrado.txt
12: gpg --decrypt SY_cifrado.txt
13: gpg --output doc_no_cifrado_firmado.txt --clearsign doc_no_cifrado.txt
14: ls
15: cat doc_no_cifrado.txt