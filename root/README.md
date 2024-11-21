# Disclaimer
For educational purposes ONLY. Use at your OWN RISK. I am not liable for ANY DAMAGES.

# Usage
```sh
usage: stockholm [options] <password>

WannaCry like ransomware POC - run at your own risk

positional arguments:
  password       The 16 character (or more) password used for encryption or decryption

options:
  -h, --help     show this help message and exit
  -v, --version  show program's version number and exit
  -r, --reverse  Decrypt files using <password> (instead of encrypting)
  -s, --silent   Do not print which files were encrypted/decrypted

IMPORTANT NOTICE:
Running this program will ENCRYPT (or decrypt if -r/--reverse is specified) ALL REGULAR FILES ENDING IN
`.wnry', `.wcry', `.wncry', `.wncryt' in the folder called `infection' inside the HOME directory of
the user whose UID is the same as the REAL UID that is running this program, using AES-256-CBC with <password>
E.g.:
    - $ $(prog)s      will encrypt files in ~/infection,
    - $ sudo $(prog)s will encrypt files in ~root/infection,
    - $ sudo cp $(which find) ~/find && sudo chmod u+s ~/find && ~/find -exec bash -p -c 'stockholm' \; -quit ; sudo rm -f ~/find
        - will encrypt files in ~/infection, although it's run with root privileges
```

# Examples
```sh
./stockholm oneransomwaretorulethemall
./stockholm -r oneransomwaretorulethemall
```
