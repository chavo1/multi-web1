# mysql
exec 2>&1

debconf-set-selections <<< 'mysql-server mysql-server/root_password password vagrant'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password vagrant'

which mysql-server &>/dev/null || {
  sudo apt-get update
  sudo apt-get install -y mysql-server
}
