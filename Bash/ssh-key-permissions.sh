# ~/.ssh/
#         This directory is the default location for all user-specific con-
#         figuration and authentication information.  There is no general
#         requirement to keep the entire contents of this directory secret,
#         but the recommended permissions are read/write/execute for the
#         user, and not accessible by others.
#
#  ~/.ssh/authorized_keys
#         Lists the public keys (DSA, ECDSA, Ed25519, RSA) that can be used
#         for logging in as this user.  The format of this file is
#         described in the sshd(8) manual page.  This file is not highly
#         sensitive, but the recommended permissions are read/write for the
#         user, and not accessible by others.
#
# ~/.ssh/id_dsa
#  ~/.ssh/id_ecdsa
#  ~/.ssh/id_ed25519
#  ~/.ssh/id_rsa
#         Contains the private key for authentication.  These files contain
#         sensitive data and should be readable by the user but not acces-
#         sible by others (read/write/execute).  ssh will simply ignore a
#         private key file if it is accessible by others.  It is possible
#         to specify a passphrase when generating the key which will be
#         used to encrypt the sensitive part of this file using AES-128.
#
# ~/.ssh/id_dsa.pub
# ~/.ssh/id_ecdsa.pub
# ~/.ssh/id_ed25519.pub
# ~/.ssh/id_rsa.pub
#         Contains the public key for authentication.  These files are not
#         sensitive and can (but need not) be readable by anyone.


# ##### CHMOD FOR SSH CONNECTION #####
# chmod 700 ~/.ssh
# chmod 644 ~/.ssh/authorized_keys
# chmod 644 ~/.ssh/known_hosts
# chmod 644 ~/.ssh/config
chmod 600 ~/.ssh/id_rsa
chmod 644 ~/.ssh/id_rsa.pub
# chmod 600 ~/.ssh/github_rsa
# chmod 644 ~/.ssh/github_rsa.pub
# chmod 600 ~/.ssh/mozilla_rsa
# chmod 644 ~/.ssh/mozilla_rsa.pub