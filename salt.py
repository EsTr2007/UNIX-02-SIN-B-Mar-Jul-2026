import hashlib
import secrets

password = 'micontraseña123'

# Generamos sales aleatorias (como hacía crypt.mksalt)
salt1 = secrets.token_hex(8)
salt2 = secrets.token_hex(8)

# Creamos los hashes (SHA-512)
hash1 = hashlib.sha512((password + salt1).encode()).hexdigest()
hash2 = hashlib.sha512((password + salt2).encode()).hexdigest()

print('Salt 1:', salt1)
print('Hash 1:', hash1[:50])
print()
print('Salt 2:', salt2)
print('Hash 2:', hash2[:50])
print()
print('¿Son iguales?', hash1 == hash2)