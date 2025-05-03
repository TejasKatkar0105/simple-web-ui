# Use official nginx image as base
FROM nginx:alpine

# Remove default nginx index.html
RUN rm /usr/share/nginx/html/*

# Copy custom simple web UI HTML file
COPY simple-web-ui.html /usr/share/nginx/html/index.html

# Expose port 80 to allow web traffic
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]