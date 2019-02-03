# Sales History
Demo project for Oracle Business Intelligence 12c

## Prerequisites
All this project is tested and prepared to run into Oracle BI 12c demo virtual machine:
http://www.oracle.com/technetwork/middleware/bi-foundation/obiee-samples-167534.html

## Installation
For installing the project you have to complete these steps:

---
**NOTE**
> The installation script is prepared for working with defaults credentials. If you have changed them, you must update install.sh script and ./obiee/reporting/credentials.properties file.
---

1. Checkout this project in virtual machine referenced before
2. Start data base service and OBIEE service in the virtual machine
3. Execute install script located in:
```sh
$ ./src/install.sh
```
