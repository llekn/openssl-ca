## OpenSSL self-managed Certificate Authority

Tired of really-complicated-stuff on internet about how to create and maintain self-managed certificates?
Me too! That's why I've created this simple repo to:

1. Provide sane openssl defaults (sha512/4096 bits keys) via a config file (`openssl.conf`)
2. Provide a script (`create_ca_key.sh`) to create your own Certificate Authority to sign certificates
3. Provide a script (`create_csr.sh`) to create keys and certificate signing requests (CSR) for your apps
4. Provide a script (`sign_csr.sh`) to sign your CSRs
5. Provide a script (`create_crt.sh`) to make (3) and (4) in one step.

### Getting started
1. Clone this repo
2. Run `create_ca_key.sh` to create your root CA certificate and private key. The root CA certificate will be stored on top directory named `ca.crt`, the private key will be stored in `./private/ca.key`. You should call this script only once, as it will overwrite any existing CA key and CA certificate already present on the repo.
3. Create and sign as many certificates you want, using `create_crt.sh <app_name>`. The key, CSR and certificate generated will be stored as `<app_name>.<key|csr|crt>` onto the `out` directory.
4. Ready! You can use your app-specific keys and certificates on your apps. If you want to trust these certificates you should add `ca.crt` onto your local storage of trusted certificates (copying it to `/usr/local/share/ca-certificates/` and running `update-ca-certificates` on Ubuntu, for example). The nice thing is that what you are really doing is to build your own chain of trust, managed by you.

### References:
1. [SSL certs in debian-administration](http://www.debian-administration.org/article/284/Creating_and_Using_a_self_signed__SSL_Certificates_in_debian)