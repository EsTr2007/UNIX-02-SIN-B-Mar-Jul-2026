1: uname -a #Displays detailed system information, including the kernel version and operating system architecture.
2: which gpg #Locates the executable path of the GPG program to confirm it is installed and see where it lives.
3: gpg --version #Checks the version number and supported algorithms of GPG.
4: gpg --full-generate-key #Starts the interactive process to create a new key pair (public and private) with custom options like key type and expiration date.
5: gpg --list-keys #Lists all public keys currently stored in my "keyring."
6: gpg --armor --export estrujillo2007@gmail.com > mi_llave_publica.asc #Exports my public key in a readable text format (ASCII armor) and saves it to a file so you can share it with others.
7: gpg --list-secret-keys --keyid-format=long #Lists my private (secret) keys and displays their IDs in a detailed, long format.
8: gpg --armor --export-secret-keys (2E2EAF7C82661FC2) #Exports my private key.
9: gpg --import su_llave_SY.asc (El nombre del archivo de como guarde la lleave de mi amigo) #Adds a friend's public key to my keyring so you can send them encrypted messages.
10: echo "hi guys i am Pum ec" > doc_no_cifrado.txt #Creates a simple text file with the content you typed.
11: gpg --output doc_cifrado.txt --encrypt --recipient (Hash de mi amigo) doc_no_cifrado.txt #Encrypts the file using the recipient's public key. Only the person with the matching private key can read it.
12: gpg --decrypt SY_cifrado.txt #Decrypts a file sent to me. GPG will automatically use your private key (and ask for your passphrase) to reveal the content.
13: gpg --output doc_no_cifrado_firmado.txt --clearsign doc_no_cifrado.txt #Creates a digital signature wrapped around the original text. This proves the message came from you and hasn't been tampered with, but the text remains readable.
14: ls #Lists the files in my current directory.
15: cat doc_no_cifrado.txt #Displays the content of the file directly in your terminal 
16: gpg --verify esteban_doc_no_cifrado_firmado.txt #Verifies the digital signature of the file to confirm its authenticity and ensure it hasn't been tampered with.
17: gpg --edit-key BF8A9258824D7DC2D83D51DBFEBDE2535840B779 #Opens an interactive menu to manage, edit, or sign the specific GPG key identified by that fingerprint.
18: gpg> trust #This sub-command allows you to set the level of confidence you have in the key owner's ability to accurately validate other people's keys.
19: gpg --sign-key BF8A9258824D7DC2D83D51DBFEBDE2535840B779 #Use your private key to digitally sign the specified public key, officially certifying that you have verified the owner's identity.
20: gpg --output doc_no_cifrado_firmado_binario.txt --sign doc_no_cifrado.txt #Creates a compressed binary file that contains both the original content and your digital signature.
21: gpg --output doc_no_cifrado_firmado_binario.txt --sign doc_no_cifrado.txt #creates a compressed binary file that contains both the original content and your digital signature.
22: gpg --verify sandoc_no_cifrado_firmado_binario.txt #extracts the original data from the binary file and checks the digital signature to confirm who signed it and that it hasn't been changed.
23: gpg --output firma_separada_doc_no_cifrado.sig --detach-sign doc_no_cifrado.txt #creates a "detached" signature file that contains only the digital signature of the document, leaving the original file completely untouched.