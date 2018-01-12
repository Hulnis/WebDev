server {
        listen 80;
        listen [::]:80;

        root /home/webdev/www/webdevnumber1.com;

        index index.html;

        server_name webdevnumber1.com www.webdevnumber1.com;

        location / {
                # First attempt to serve request as file, then
                # as directory, then fall back to displaying a 404.
                try_files $uri $uri/ =404;
        }
}
