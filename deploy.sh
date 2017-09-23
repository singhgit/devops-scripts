cd  /opt/workspace/10.0.0.37/code/jenkinsubuntu  &&  git checkout master   &&  git  stash   && git  reset  --hard  origin/master  && git stash  clear

ansible  10.0.0.36 -m shell -a  "rm  -rfv /var/www/html/index.nginx-debian.html

ansible  10.0.0.36 -m copy -a "src=/opt/workspace/10.0.0.37/code/jenkinsubuntu/index.nginx-debian.html   dest=/var/www/html/index.nginx-debian.html


ansible  10.0.0.36  -m shell -a "service nginx restart"

 
