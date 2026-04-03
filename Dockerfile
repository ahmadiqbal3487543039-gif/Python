FROM python:3.12-slim
WORKDIR /app
copy . .
RUN pip install --no-cache-dir uv \
&& uv pip install --system -r requirements.txt || true
CMD ["python" , "-m" , "pytest" , "--no-header" , "-rN" , "--quiet"]
