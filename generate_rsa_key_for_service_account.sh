#nonencrypted generation of Private key 
genrsa 2048 | openssl pkcs8 -topk8 -inform PEM -out rsa_key.p8 -nocrypt
#encrpyted generation of Private key 
#remember the password that you will put in for private key will be used to store in git secrets
genrsa 2048 | openssl pkcs8 -topk8 -v2 des3 -inform PEM -out rsa_key.p8

#generate a public Key  using abobve private key
openssl rsa -in rsa_key.p8 -pubout -out rsa_key.pub
