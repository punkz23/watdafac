from django.contrib import admin
from .models import FamilyHead, Members, Building, Facilities


class Family_HeadAdmin(admin.ModelAdmin):
    list_display = ('LAST_NAME', 'FIRST_NAME', 'MIDDLE_NAME',
                    'SUFFIX', 'BIRTHDAY', 'BRGY', 'CITY', 'PROVINCE', 'EVACUATION_CENTER', 'BUILDING_NAME', 'REG_DATE')
    list_per_page = 100

    list_filter = ('BUILDING_NAME', 'SEX', 'CIVIL_STATUS', 'CODE', 'CASUALTY', 'HEALTH_CONDITION', 'BRGY', 'IS_4PS', 'HOUSING_CONDITION',
                   )
    search_fields = ('FIRST_NAME', 'MIDDLE_NAME', 'LAST_NAME')


admin.site.register(FamilyHead, Family_HeadAdmin)


class Family_MembersAdmin(admin.ModelAdmin):
    list_display = ('FAMILY_HEAD', 'NAME', 'RELATION', 'AGE')
    list_per_page = 20
    list_filter = ('SEX', 'AGE', 'CIVIL_STATUS', 'CODE', 'CASUALTY', 'HEALTH_CONDITION', 'FAMILY_HEAD__BRGY',  'EDUCATION',
                   )
    search_fields = ('FAMILY_HEAD__FIRST_NAME', 'NAME')


admin.site.register(Members, Family_MembersAdmin)

admin.site.register(Facilities)


class BuildingAdmin(admin.ModelAdmin):
    list_display = ('EVACUATION_CENTER_id', 'BUILDING_NAME')


admin.site.register(Building)
