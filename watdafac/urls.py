
from django.contrib import admin
from django.urls import path, include

admin.site.site_header = "DAFAC Information System v1 Admin"
admin.site.site_tittle = "DAFAC Information System v1 Admin Portal"
admin.site.index_title = "Welcome to DAFAC Information System v1 Portal"


urlpatterns = [
    path('admin/', admin.site.urls),

]
