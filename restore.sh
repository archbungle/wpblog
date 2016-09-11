#!/bin/bash
#little helper script to restore docker mysql database from git version of the wordpress db copy
#traiano@gmail.com
docker exec -i wordpressdb mysql -uroot -ppassword --force wordpress< /opt/wordpress/wordpress.sql
