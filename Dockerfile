FROM nginx:alpine

# Remove default nginx site
RUN rm -rf /usr/share/nginx/html/*

# Copy all project files (HTML, CSS, JS, etc.)
COPY . /usr/share/nginx/html/

# Copy your custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose the port your service will run on inside the container
EXPOSE 9000

CMD ["nginx", "-g", "daemon off;"]
