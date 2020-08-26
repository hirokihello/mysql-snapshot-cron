#### 概要

RDSなどを使えない場合用のsnapshot自動化スクリプト。

一時間ごとに、mysqlのデータをs3にバックアップする。

shellはbashが前提です。

#### 使い方

BUCKUP_BUCKET_NAMEとMYSQL_ROOT_PASSWORDは適宜適切な物を入れてください。

前準備
```
make setUpX86Linux # x86 architecture
# or
make setUpArmLinux # arm architecture

echo 'BUCKUP_BUCKET_NAME = YOUR_OWN_BUCKUP_BUCKET_NAME' >> ~/.bashrc
echo 'MYSQL_ROOT_PASSWORD = YOUR_OWN_MYSQL_ROOT_PASSWORD' >> ~/.bashrc

# AWS CLI用の設定
echo 'AWS_ACCESS_KEY_ID = YOUR_OWN_AWS_ACCESS_KEY_ID' >> ~/.aws/credentials
echo 'AWS_SECRET_ACCESS_KEY = YOUR_OWN_AWS_SECRET_ACCESS_KEY' >> ~/.aws/credentials

source ~/.bashrc
source ~/.aws/credentials
```

cron設定
```
make setCron
```

解凍
```
gunzip FILE_NAME
```
