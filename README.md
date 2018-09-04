# Usage example:

This will install 2 web servers and MySQL database server

1.  Fork the copy of chavo1/multi-web1
2.  Clone it with following :

```

git clone git@github.com:chavo1/multi-web1.git

```
Then 
```
vagrant up
```
3. From you CLI, when the virtual machines are up.

4.  Open a web browser of your choice.

Type a localhost:8081 and localhost:8081 on both you should see the web servers

The result should be the same 192.168.56.56 on port 80 and 192.168.56.57 on port 80

5. You can check if the packet are installed with a following commands:
```
﻿﻿vagrant ssh master -c "which nginx"
﻿﻿/usr/sbin/nginx
Connection to 127.0.0.1 closed.
﻿﻿vagrant ssh slave -c "which nginx"
﻿﻿/usr/sbin/nginx
Connection to 127.0.0.1 closed.
﻿﻿vagrant ssh mysql -c "which mysql"
/usr/bin/mysql
Connection to 127.0.0.1 closed.
```
6. If you need to login on MySQL DB 

```
vagrant ssh mysql
mysql -u root -p vagrant
```

After this you can destroy the environments as follow:
```
vagrant destroy
```
