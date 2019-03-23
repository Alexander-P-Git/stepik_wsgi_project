sudo rm /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/wsgi.example
sudo /etc/init.d/gunicorn restart

sudo gunicorn -c /home/box/web/etc/gunicorn-django.conf ask.wsgi:app
