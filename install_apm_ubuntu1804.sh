sudo apt update;

# Apache2 웹서버 설치
sudo apt install apache2;

# 방화벽에 Apache 등록
sudo ufw allow in "Apache Full"

# Mysql 설치
sudo apt install mysql-server

## Mysql 보안 설정(패스워드 정책 적용:Y, 수준:1, root암호:P@ssw0rd11, Y, 익명계정삭제:Y, root원격접속비활성:Y, 테스트DB삭제:Y)
# sudo mysql_secure_installation

create database post_board DEFAULT CHARACTER SET utf8;
create user web identified by 'P@ssw0rd11';
GRANT ALL PRIVILEGES ON post_board.* TO 'web'@'localhost' identified by 'P@ssw0rd11';

# PHP 설치
sudo apt install php php-mysql

# PHP 에러 페이지 설정
sudo sed -i 's/display_errors = Off/display_errors = On/g' /etc/php/7.2/apache2/php.ini


 


