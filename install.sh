                                                       install.sh                                                              M
# upgrade system
apt update && apt upgrade

# install nginx and jq and curl
apt install nginx jq curl -Y

# create scripts directory
mkdir /scripts

# configure nginx
rm -r  /var/www/html/*


# create crontab
echo "* * * * * bash /scripts/script.sh" >> /tmp/cronconfig
crontab /var/tmp/cronconfig
rm /var/tmp/cronconfig

# wget from github
# create script file and index page
wget -O /scripts/update-iss-stats.sh  https://raw.githubusercontent.com/matthewtrains/iss-server-scripts/main/update-iss-stat


