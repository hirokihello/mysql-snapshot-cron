.PHONY: setUpX86Linux
	setUp:
		curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
		unzip

.PHONY: setUpArmLinux
	setUp:
		curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip"
		unzip

.PHONY: unzip
	unzip:
		unzip awscliv2.zip
		sudo ./aws/install

.PHONY: setCron
	setCron:
		sudo mkdir /root/backup/mysql
		sudo echo "0 */1 * * * root `pwd`/makeSnapshot.sh" > /etc/cron.d/makeSnapshot
