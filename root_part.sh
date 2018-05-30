#!/bin/bash

### We set up the kerberos config file to access to 42's kerberos server.

cat >> /etc/krb5.conf << EOF
[libdefaults]
    default_realm = 42.US.ORG
    forwardable = true
    proxiable = true
    dns_lookup_kdc = no
    dns_lookup_realm = no
    allow_weak_crypto = true
    rdns = false

[realms]
    42.US.ORG = {
        kdc = kdc.42.us.org
        admin_server = kdc.42.us.org
        default_domain = 42.us.org
        default_lifetime = 7d
        ticket_lifetime = 7d
    }

[domain_realm]
    .42.us.org = 42.US.ORG
    42.us.org = 42.US.ORG
EOF

### We set up the ssh config file to access to 42's git server (vogsphere)
### using your kerberos identification

cat >> /etc/ssh/ssh_config << EOF
Host *.42.us.org
     SendEnv LANG LC_*
     StrictHostKeyChecking no
     GSSAPIAuthentication yes
     GSSAPIDelegateCredentials yes
     PasswordAuthentication yes
EOF

echo "root part finished !"
