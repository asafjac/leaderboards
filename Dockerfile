FROM postgres:16

# Accept build-time args from docker-compose

# Set them as environment variables inside the container
ENV POSTGRES_DB=leaders
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=password

# Copy the schema into the container's init directory
COPY DB/leaders_schema.sql /docker-entrypoint-initdb.d/
