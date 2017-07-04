## digdag server setup

generate secret keys
The secret charcter length must be 16(128bit)

```
echo -n "test1234test1234" | openssl base64
dGVzdDEyMzR0ZXN0MTIzNA==
```

```
database.type = postgresql
database.user = digdag
#database.password = passwd
database.host = 127.0.0.1
database.port = 5432
database.database = digdag_support
digdag.secret-encryption-key = dGVzdDEyMzR0ZXN0MTIzNA==
```

```
digdag server -c postgresql.conf
2017-07-04 22:04:49 +0900: Digdag v0.9.12
2017-07-04 22:04:51 +0900 [INFO] (main): secret encryption engine: aesgcm
2017-07-04 22:04:51 +0900 [INFO] (main): XNIO version 3.3.6.Final
2017-07-04 22:04:51 +0900 [INFO] (main): XNIO NIO Implementation Version 3.3.6.Final
2017-07-04 22:04:51 +0900 [INFO] (main): Starting server on 127.0.0.1:65432
2017-07-04 22:04:51 +0900 [INFO] (main): Bound on 127.0.0.1:65432 (api)
```

### shorter text

8 characters

```
digdag server -c postgresql.conf
error: com.google.inject.CreationException: Unable to create injector, see the following errors:

1) Error injecting constructor, java.lang.IllegalArgumentException: Input byte array has incorrect ending byte at 24
  at io.digdag.core.crypto.SecretCryptoProvider.<init>(SecretCryptoProvider.java:21)
  while locating io.digdag.core.crypto.SecretCryptoProvider
  at io.digdag.server.ServerModule.bindSecrets(ServerModule.java:82)
  while locating io.digdag.core.crypto.SecretCrypto
Caused by: java.lang.IllegalArgumentException: Input byte array has incorrect ending byte at 24
```

24 characters

```
digdag server -c postgresql.conf
2017-07-04 22:23:15 +0900: Digdag v0.9.12
error: com.google.inject.CreationException: Unable to create injector, see the following errors:

1) Error injecting constructor, java.lang.IllegalArgumentException: Illegal base64 character 20
  at io.digdag.core.crypto.SecretCryptoProvider.<init>(SecretCryptoProvider.java:21)
  while locating io.digdag.core.crypto.SecretCryptoProvider
  at io.digdag.server.ServerModule.bindSecrets(ServerModule.java:82)
  while locating io.digdag.core.crypto.SecretCrypto
```


