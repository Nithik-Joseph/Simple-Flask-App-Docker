FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirements file first (for better caching)
COPY requirements.txt ./

# Install Python dependencies
RUN pip3.10 install --no-cache-dir -r requirements.txt

# Copy the application code
COPY product_list_app.py ./

# Expose the port your Flask app listens on
EXPOSE 5070

# Run the app
CMD ["python3", "product_list_app.py"]
