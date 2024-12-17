from django.urls import path, include
from rest_framework.routers import DefaultRouter
from . import views

router = DefaultRouter()
router.register(r'users', views.UserViewSet)
router.register(r'roles', views.RoleViewSet)
router.register(r'stores', views.StoreViewSet)
router.register(r'categories', views.CategoryViewSet)
router.register(r'products', views.ProductViewSet)
router.register(r'product-images', views.ProductImageViewSet)
router.register(r'orders', views.OrderViewSet)


urlpatterns = [
    path('', include(router.urls)),

]
