# Gunakan image Python versi terbaru sebagai base image
FROM python:3.8

# Atur direktori kerja di dalam wadah
WORKDIR /app

# Salin file requirements.txt ke dalam wadah
COPY requirements.txt /app/

# Instal dependensi proyek
RUN pip install --no-cache-dir -r requirements.txt

# Salin seluruh proyek ke dalam wadah
COPY . /app/

# Atur variabel lingkungan (ganti dengan kebutuhan Anda)
ENV DJANGO_SETTINGS_MODULE=myproject.settings
ENV PYTHONUNBUFFERED=1

# Jalankan migrasi database dan jalankan server
RUN python manage.py migrate
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
