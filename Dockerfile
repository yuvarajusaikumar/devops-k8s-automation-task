# Step 1: Use a small Python base image
FROM python:3.9-slim

# Step 2: Set a working directory
WORKDIR /app

# Step 3: Copy only requirements first (for better caching)
COPY app/requirements.txt .

# Step 4: Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy the actual app code
COPY app/ .

# Step 6: Expose the Flask port
EXPOSE 8080

# Step 7: Start the app
CMD ["python", "app.py"]
