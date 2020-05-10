#Checkout dev
git checkout dev
git pull

#Install and build
npm i
npm run build

#Create temp deloy folder
mkdir ../.deploy_temp
cp -r ./public/* ../.deploy_temp/

#Checkout master
git checkout master
git pull

#Copy files from temp into project
cp -r ../.deploy_temp/* ./

#Git push to master
DEPLOYTIME=$(date)
git add -A
git commit -m "Deploy at ${DEPLOYTIME}"
git push

#Checkout dev
git checkout dev
git pull
