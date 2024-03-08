# First stage: builder
FROM alpine as builder

# Copy data.txt into the builder stage
COPY data.txt /data.txt

# Second stage: final
FROM fedora:latest

# Copy data.txt from the builder stage to the final image
COPY --from=builder /data.txt /data.txt

# Set working directory
WORKDIR /
