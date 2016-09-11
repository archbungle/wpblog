#!/bin/bash
#quick workaround to remove stale wordpress IP address
#from previous instalations and set new server IP address
#archbungle
NEW_IP=`hostname -I| cut -d " " -f  1`
SQL="update wp_options set option_value='http://$NEW_IP' where option_id = 1;"
echo $SQL > /tmp/fix_ip.sql
SQL="UPDATE wp_options SET option_value = '$NEW_IP' WHERE option_value LIKE 'http://';"
echo $SQL >> /tmp/fix_ip.sql
SQL="UPDATE wp_options SET option_value='http://$NEW_IP' WHERE option_name='siteurl';"
echo $SQL >> /tmp/fix_ip.sql
SQL="UPDATE wp_options SET option_value='http://$NEW_IP' WHERE option_name = 'home';"
echo $SQL >> /tmp/fix_ip.sql
docker exec -i wordpressdb mysql -uroot -ppassword --force wordpress< /tmp/fix_ip.sql
