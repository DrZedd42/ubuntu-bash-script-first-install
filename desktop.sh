# Python and php and nodejs 
export FORCE_ADD_APT_REPOSITORY=force
debconf-set-selections <<< 'mysql-server mysql-server/root_password password your_root_password'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password your_root_password'


#Add source for mongodb
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list

#Add pinta repository, this's good graphic editor look like PAINT.net on Windows
add-apt-repository ppa:pinta-maintainers/pinta-stable

add-apt-repository ppa:indicator-brightness/ppa
#tlp to save battery
add-apt-repository ppa:linrunner/tlp

#Flux to project your eye  when working at night
add-apt-repository ppa:kilian/f.lux


apt-get update

apt-get install -y --force-yes software-properties-common python-software-properties
apt-get install -y --force-yes python-software-properties python g++ make

apt-get install -y --force-yes wget curl nginx nodejs npm git
apt-get install -y --force-yes mongodb-org
apt-get install -y --force-yes lsb-release bind9-host rsync ntp openssh-server sudo sysstat 
apt-get install -y --force-yes rcs liberror-perl libwww-perl git-core libnet-ssleay-perl tcpdump strace htop
apt-get install -y --force-yes nginx-extras  memcached
apt-get install -y --force-yes php5 php5-cli php-mdb2-driver-mysql php5-curl php5-gd
apt-get install -y --force-yes php5-memcache php5-memcached php5-mysql php5-tidy php5-mcrypt php-apc php5-fpm sudo php5-json

#nginx configuration support php-fpm
cp default /etc/nginx/sites-available
service php5-fpm restart
service nginx restart

apt-get install -y --force-yes python-cherrypy3 python-memcache python-imaging python-django
apt-get install -y --force-yes python-mysqldb python-pip python-django-pagination
apt-get install -y --force-yes python-flup  python-httplib2
apt-get install -y --force-yes python-zookeeper python-bcrypt python-lxml python-utidylib
apt-get install -y --force-yes python-crypto python-dev nano
apt-get install -y --force-yes mysql-server-5.5
apt-get install -y --force-yes php5-fpm php-mdb2-driver-mysql php5-curl php5-gd php5-memcache php5-mysql php5-tidy php5-mcrypt php-apc
apt-get install -y --force-yes python-cherrypy3 python-memcache python-imaging python-django python-mysqldb python-pip
apt-get install -y --force-yes python-django-pagination  python-flup python-httplib2 python-zookeeper
apt-get install -y --force-yes python-bcrypt python-lxml python-utidylib nginx-full nginx build-essential python-dev python-crypto 

yes w | pip install django-htmlmin crontab uwsgi flask boto Flask-SQLAlchemy Flask-Admin requests
apt-get install -y --force-yes python-ldap

#pip install pymongo pystatsd
apt-get install -y --force-yes redis-server

apt-get install -y --force-yes ruby-full build-essential
gem install -y  sass
gem install -y rb-inotify

apt-get install -y --force-yes openjdk-7-jdk
apt-get install -y --force-yes guake terminator zim filezilla

apt-get install -y --force-yes chromium-browser scite synaptic nautilus-open-terminal

#Thinkpad extra
#http://askubuntu.com/questions/285434/is-there-a-power-saving-application-similar-to-jupiter
apt-get install -y --force-yes tp-smapi-dkms acpi-call-tools tlp tlp-rdw smartmontools ethtool
apt-get install -y --force-yes indicator-brightness fluxgui

#install diango with mongodb enginee

#pip install git+https://github.com/django-nonrel/django@nonrel-1.5
#pip install git+https://github.com/django-nonrel/djangotoolbox
#pip install git+https://github.com/django-nonrel/mongodb-engine

#Finally upgrade your system
apt-get update
apt-get -y upgrade


#  Extra thing, you can disable it


#Install vietname font for ubuntu
#URL='https://raw.github.com/bachvtuan/vietnam-font-debian/master/font-vietnam.deb'; 
#FONT_VIET='fontviet.deb';
#wget "$URL" -qO $FONT_VIET && dpkg -i $FONT_VIET;
#rm $FONT_VIET

apt-get install -y --force-yes  skype nautilus-dropbox pinta kazam vlc
