# Generated by Django 4.1.5 on 2023-01-09 07:40

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Mymodel',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fullname', models.CharField(max_length=30)),
                ('phone', models.IntegerField()),
                ('image', models.ImageField(upload_to='image/')),
            ],
        ),
    ]
