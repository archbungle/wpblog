docker exec -i wordpressdb mysql -uroot -ppassword --force wordpress< /opt/wordpress/makedb.sql
docker exec -i wordpressdb mysql -uroot -ppassword --force wordpress< /opt/wordpress/wordpress.sql
