
BACKUP_DIR=''

MYSQL_PASSWORD=''

MYSQL_USER='username'

MYSQL_DATABASE=''

GCP_BUCKET_NAME=''

GCP_BUCKET_PATH=''

TIMESTAMP="$(date +"%F")"

mkdir /tmp/$BACKUP_DIR

mysqldump -u $MYSQL_USER -p$MYSQL_PASSWORD database $MYSQL_DATABASE > "/tmp/$BACKUP_DIR/$TIMESTAMP".sql

python3 gcp_bucket.py /tmp/$BACKUP_DIR/$TIMESTAMP.sql $GCP_BUCKET_NAME:$GCP_BUCKET_PATH