1: uname -a
2: which gpg
3: gpg --version
4: gpg --full-generate-key
5: gpg --list-keys
6: gpg --armor --export estrujillo2007@gmail.com > mi_llave_publica.asc
7: gpg --list-secret-keys --keyid-format=long
8: gpg --armor --export-secret-keys (2E2EAF7C82661FC2)
9: gpg --import su_llave_SY.asc (El nombre del archivo de como guarde la lleave de mi amigo)
10: echo "hi guys i am Pum ec" > doc_no_cifrado.txt