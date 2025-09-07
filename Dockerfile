FROM nginx:alpine

Copy . /usr/share/nginx/html

Expose 80
CMD ["nginx","-g", "Daemon off;"]
