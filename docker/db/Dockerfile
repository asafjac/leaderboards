FROM postgres:16

# Accept build-time args from docker-compose
ARG POSTGRES_DB
ARG POSTGRES_USER
ARG POSTGRES_PASSWORD

# Set them as environment variables inside the container
ENV POSTGRES_DB=$POSTGRES_DB
ENV POSTGRES_USER=$POSTGRES_USER
ENV POSTGRES_PASSWORD=$POSTGRES_PASSWORD


# Copy the schema into the container's init directory
COPY ../../DB/leaders_schema.sql /docker-entrypoint-initdb.d/
