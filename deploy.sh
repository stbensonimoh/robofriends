set -e
sudo apt-get install -y lftp
lftp -c "set ftps:initial-prot ''; set ftp:passive-mode false; set ftp:ssl-force true; set ftp:ssl-protect-data true; set ssl:verify-certificate false; open ftp://$SFTP_USER:$SFTP_PASSWORD@$SFTP_HOST:21; mirror -eRv -x ^\.git/ . /var/www/html/testing; quit;"
echo "successful"
 
