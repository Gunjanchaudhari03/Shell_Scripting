#!/bin/bash
#This script is used to automate deployement of the webiste
git_clone(){

echo " Cloning the App..."
git clone https://github.com/Gunjanchaudhari03/gunjan-chaudhari-portfolio

}
installing_requirements()
{
        echo "Updateing system"
        sudo apt-get update
        echo "Installing the dependencies"
        sudo apt install docker.io nginx -y
}
required_restart()
{
        sudo chown $user /var/run/docker.sock
        sudo systemctl enable docker
        sudo systemctl restart docker
        sudo systemctl enable nginx
}
deploy()
{
sudo docker build -t gunjan-chaudhari-portfolio .
sudo docker run -d -p 80:80 gunjan-chaudhari-portfolio:latest
}
echo "Deployment started***********************************"
if ! git_clone;

then

        echo "The code directory already exists"

        cd gunjan-chaudhari-portfolio/src

fi

if ! installing_requirements;

then
 echo "Installation failed"

        exit 1
fi

if ! required_restart;
then

        echo "System at fault"
        exit 1
fi
if ! deploy;
then
        echo "Deployment failed"
fi
echo "Deployment ended ****************************************"                                                                                                                                       
