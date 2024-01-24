wget https://dw.hanbit.co.kr/Oracle/11gXE/oracle-xe-11.2.0-1.0.x86_64.rpm.zip
# wget https://www.iea-software.com/ftp/emeraldv5/linux/ora/oracle-xe-11.2.0-1.0.x86_64.rpm.zip
mkdir 11.2.0.2
mv oracle-xe-11.2.0-1.0.x86_64.rpm.zip 11.2.0.2
git clone https://github.com/oracle/docker-images.git
cp -r docker-images/OracleDatabase/SingleInstance/dockerfiles/11.2.0.2 .
cp docker-images/OracleDatabase/SingleInstance/dockerfiles/buildContainerImage.sh .
rm -rf docker-images
./buildContainerImage.sh -v 11.2.0.2 -x
