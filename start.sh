iptables -I INPUT -p tcp --dport 80 -m state --state NEW -j ACCEPT

cd applications/main/static

rm README.md

git init
git remote add origin https://github.com/svr93/military_ed_client_prod
git pull origin master

cp -f main.html ../app/html.template

cd ../../../

node server.js
