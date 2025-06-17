# 1. Use node image
FROM node:20-alpine

# 2. Accept build-time args from docker-compose
ARG PORT

# 3. Set them as environment variables inside the container
ENV PORT=$PORT

# 4. Set working directory
WORKDIR /app

# 6. Copy source code and install dependencies
COPY ../../Server/ .
RUN npm install

# 7. Build TypeScript
RUN npm run build

# 8. Expose port
EXPOSE $PORT

# 9. Start server
CMD ["npm", "start"]
