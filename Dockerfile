FROM nginx:alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy website files
COPY . /usr/share/nginx/html/

# Copy custom nginx config
COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 9000

CMD ["nginx", "-g", "daemon off;"]
