from django.db import models


# User Model
class User(models.Model):
    user_id = models.CharField(max_length=255)
    role_id = models.ForeignKey('Role', on_delete=models.CASCADE)


# Role Model
class Role(models.Model):
    role_id = models.CharField(max_length=255)
    name = models.CharField(max_length=255)


# Store Model
class Store(models.Model):
    store_id = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    lat = models.DecimalField(max_digits=9, decimal_places=6)
    long = models.DecimalField(max_digits=9, decimal_places=6)
    address = models.CharField(max_length=255)
    phone = models.CharField(max_length=255)
    user_id = models.ForeignKey(User, on_delete=models.CASCADE)
    rate = models.DecimalField(max_digits=3, decimal_places=2)
    status = models.CharField(max_length=50)


# Category Model
class Category(models.Model):
    category_id = models.CharField(max_length=255)
    name = models.CharField(max_length=255)


# Product Model
class Product(models.Model):
    product_id = models.CharField(max_length=255, primary_key=True)
    product_name = models.CharField(max_length=255)
    description = models.TextField()
    price = models.DecimalField(max_digits=10, decimal_places=2)
    qty = models.IntegerField()
    category = models.ForeignKey(Category, on_delete=models.CASCADE, related_name='products')


# ProductImage Model
class ProductImage(models.Model):
    product_image_id = models.CharField(max_length=255, primary_key=True)
    product = models.ForeignKey(Product, on_delete=models.CASCADE, related_name='images')
    image = models.ImageField(upload_to='product_images/')


# Order Model
class Order(models.Model):
    order_id = models.CharField(max_length=255)
    customer_id = models.ForeignKey(User, on_delete=models.CASCADE)
    date = models.DateField()
    number = models.CharField(max_length=50)
    total = models.DecimalField(max_digits=10, decimal_places=2)
    grand_total = models.DecimalField(max_digits=10, decimal_places=2)
    status = models.CharField(max_length=50)
    location = models.CharField(max_length=255)


# OrderDetail Model
class OrderDetail(models.Model):
    order_detail_id = models.CharField(max_length=255)
    order_id = models.ForeignKey(Order, on_delete=models.CASCADE)
    product_id = models.ForeignKey(Product, on_delete=models.CASCADE)
    qty = models.IntegerField()
    price = models.DecimalField(max_digits=10, decimal_places=2)
    amount = models.DecimalField(max_digits=10, decimal_places=2)


# Delivery Model
class Delivery(models.Model):
    delivery_id = models.CharField(max_length=255)
    order_id = models.ForeignKey(Order, on_delete=models.CASCADE)
    user_id = models.ForeignKey(User, on_delete=models.CASCADE)
    status = models.CharField(max_length=50)


# DeliveryDetail Model
class DeliveryDetail(models.Model):
    dd_id = models.CharField(max_length=255)
    delivery_id = models.ForeignKey(Delivery, on_delete=models.CASCADE)
    status = models.CharField(max_length=50)


# Chatting Model
class Chatting(models.Model):
    chatting_id = models.CharField(max_length=255)
    from_user_id = models.ForeignKey(User, on_delete=models.CASCADE, related_name='from_user')
    to_user_id = models.ForeignKey(User, on_delete=models.CASCADE, related_name='to_user')
    message = models.TextField()
    date = models.DateField()


# Review Model
class Review(models.Model):
    review_id = models.CharField(max_length=255)
    product_id = models.ForeignKey(Product, on_delete=models.CASCADE)
    user_id = models.ForeignKey(User, on_delete=models.CASCADE)
    rate = models.DecimalField(max_digits=3, decimal_places=2)
    description = models.TextField()
    date = models.DateField()


# Transaction Model
class Transaction(models.Model):
    transaction_id = models.CharField(max_length=255)
    user_id = models.ForeignKey(User, on_delete=models.CASCADE)
    amount = models.DecimalField(max_digits=10, decimal_places=2)
    status = models.CharField(max_length=50)


