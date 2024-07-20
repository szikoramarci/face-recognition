# Használj egy hivatalos Python runtime-t mint alapkép
FROM python:3.10-slim

# Állítsd be a munkakönyvtárat a konténeren belül
WORKDIR /app

# Másold a projekt összes többi fájlját a munkakönyvtárba
COPY . .

# Telepítsd a függőségeket
RUN pip install --no-cache-dir -r requirements.txt

# Futtatási utasítások, amikor a konténer elindul
CMD ["python", "src/example.py"]

# Exponálj egy portot, ha szükséges (például Flask alkalmazás esetén)
EXPOSE 5000