# Generated by Django 3.2.13 on 2023-01-09 15:52

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('uploads', '0002_upload_image'),
    ]

    operations = [
        migrations.AddField(
            model_name='upload',
            name='Equalized_image',
            field=models.ImageField(default=1, upload_to='Equalized_images'),
            preserve_default=False,
        ),
    ]
