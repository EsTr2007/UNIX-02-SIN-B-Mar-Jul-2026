1  git remote -v
    2  git checkout -b eval_p2_1_v1 upstream/eval_p2_1_v1
    3  sudo git checkout -b eval_p2_1_v1 upstream/eval_p2_1_v1
    4  git checkout -b eval_p2_1_v1 upstream/eval_p2_1_v1
    5  git fetch --all
    6  git checkout -b eval_p2_1_v1 upstream/eval_p2_1_v1
    7  git mv nebula/registros nebula/bitacoras
    8  mkdir nebula
    9  git mv nebula/registros nebula/bitacoras
   10  pwd
   11  git mv registros bitacoras
   12  mv nebula/registros nebula/bitacoras
   13  ls -F
   14  ls nebula/
   15  mv nebula/registros nebula/bitacoras
   16  # Crea ambas carpetas por si acaso
   17  mkdir -p nebula/bitacoras
   18  mkdir -p nebula/borradores
   19  # Si existe un ARCHIVO llamado registros, lo movemos dentro de bitacoras
   20  # Si no existe, este comando simplemente dará un error que ignoraremos
   21  mv nebula/registros nebula/bitacoras/ 2>/dev/null || true
   22  ls -F nebula/
   23  touch nebula/bitacoras/.gitkeep
   24  touch nebula/borradores/.gitkeep
   25  git add nebula/bitacoras nebula/borradores
   26  git commit -m "Fix problema 1: estructura de directorios corregida"
   27  touch nebula/bitacoras/.gitkeep
   28  touch nebula/borradores/.gitkeep
   29  git add nebula/bitacoras nebula/borradores
   30  git commit -m "Fix problema 1: estructura de directorios corregida"
   31  git status
   32  git push --all
   33  git branch -a
   34  git fetch upstream
   35  git checkout -b eval_p2_1_v1 upstream/eval_p2_1_v1
   36  git push -u origin eval_p2_1_c1
   37  git push -u origin eval_p2_1_v1
   38  mv nebula/cosmos.txt nebula/bitacoras/cosmos.txt
   39  mv nebula/estrella.bak nebula/estrella.conf
   40  git add .
   41  git commit -m "Fix problema 2: archivos movidos y renombrados"
   42  ls -R nebula/
   43  git push origin eval_p2_1_v1
   44  git status
   45  git log -n 1
   46  git status
   47  chmod 640 nebula/bitacoras/cosmos.txt
   48  ls -l nebula/bitacoras/cosmos.txt
   49  git add .
   50  git commit -m "Fix problema 3: permisos numericos 640 en cosmos.txt"
   51  chmod u+x nebula/galaxia.sh
   52  chmod o-w nebula/estrella.conf
   53  ls -l nebula/galaxia.sh nebula/estrella.conf
   54  git add .
   55  git commit -m "Fix problema 4: permisos simbolicos corregidos"
   56  chmod u+s nebula/galaxia.sh
   57  ls -l nebula/galaxia.sh
   58  git add .
   59  git commit -m "Fix problema 5: SUID activado en galaxia.sh"
   60  chmod +t /tmp/nebula_zone
   61  mkdir -p /tmp/nebula_zone
   62  chmod 777 /tmp/nebula_zone
   63  chmod +t /tmp/nebula_zone
   64  ls -ld /tmp/nebula_zone
   65  git add .
   66  git commit -m "Fix problema 6: sticky bit en /tmp/nebula_zone"
   67  chmod +t /tmp/nebula_zone
   68  ls -ld /tmp/nebula_zone
   69  git add .
   70  git commit -m "Fix problema 6: sticky bit en /tmp/nebula_zone"
   71  gpg --batch --generate-key <<EOF
Key-Type: RSA
Key-Length: 3072
Name-Real: aurora
Name-Email: aurora@nebula.lab
Expire-Date: 0
%no-protection
%commit
EOF

   72  gpg --encrypt --recipient aurora@nebula.lab --output nebula/bitacoras/cosmos.txt.gpg nebula/bitacoras/cosmos.txt
   73  ls nebula/bitacoras/
   74  git add .
   75  git commit -m "Fix problema 7: llave GPG generada y cosmos.txt cifrado"
   76  # Generar la firma clara y guardarla en la ruta especificada
   77  gpg --clearsign --output nebula/estrella.conf.asc estrella.conf
   78  gpg --verify nebula/galaxia.sh.sig nebula/galaxia.sh
   79  # Verás un mensaje similar a: gpg: BAD signature from...
   80  gpg --yes --detach-sign --output nebula/galaxia.sh.sig nebula/galaxia.sh
   81  gpg --verify nebula/galaxia.sh.sig nebula/galaxia.sh
   82  # Ahora debería mostrar: gpg: Good signature from...
   83  git add .
   84  git commit -m "Fix problema 8: firmas GPG corregidas y creadas"
   85  git add .
   86  git commit -m "Fix problema 8: firmas GPG corregidas y creadas"
   87  history