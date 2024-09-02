sudo cp ng_conf /etc/nginx/sites-available/ng_conf; #copies custom nginx file
sudo ln -s /etc/nginx/sites-available/ng_conf /etc/nginx/sites-enabled/ng_conf; #symlink the new file
sudo service nginx configtest; #check config
sudo service nginx restart; #restart nginx
sudo docker build -t dock_img .; #create docker image
sudo docker run -p 8000:8000 dock_img; #run docker image
