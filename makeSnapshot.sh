#!/bin/sh

dirpath='/root/backup/mysql'
filename=`date +%y%m%d`

mysqldump --opt --all-databases --events --default-character-set=binary -u root --password=`$MYSQL_ROOT_PASSWORD` | gzip > $dirpath/$filename.sql.gz

aws s3 cp `$dirpath/$filename.sql.gz` s3://`$BUCKUP_BUCKET_NAME`/

rm -f $dirpath/$filename.sql.gz
