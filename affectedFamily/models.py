from django.db import models


class Regions(models.Model):
    # region_code int(9) NOT NULL AUTO_INCREMENT,
    # region_name varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
    # region_nick varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
    # region_director varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
    # psgc_rgn char(9) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
    region_name = models.CharField(max_length=60, verbose_name='REGION NAME')
    region_nick = models.CharField(max_length=15)
    region_director = models.CharField(max_length=50, blank=True)
    psgc_rgn = models.CharField(max_length=9, verbose_name='PSGC CODE')

    class Meta:
        ordering = ('region_name',)
        verbose_name = 'Region'
        verbose_name_plural = 'Regions'

    def __str__(self):
        return self.region_name


class Facilities(models.Model):
    facility_name = models.CharField(
        max_length=50, verbose_name='FACILITY NAME')
    descriptions = models.CharField(
        max_length=50, blank=True, verbose_name='DESCRIPTION')

    class Meta:
        ordering = ('facility_name',)
        verbose_name = 'Evacuation Center'
        verbose_name_plural = 'Evacuation Centers'

    def __str__(self):
        return self.facility_name


class Building(models.Model):
    EVACUATION_CENTER = models.ForeignKey(Facilities, on_delete=models.CASCADE)
    BUILDING_NAME = models.CharField(
        max_length=50, verbose_name='BUILDING NAME')

    class Meta:
        ordering = ('id',)
        verbose_name = 'Building'
        verbose_name_plural = 'Buildings'

    def __str__(self):
        return self.BUILDING_NAME


class FamilyHead(models.Model):
    # REGION = models.ForeignKey(Region, on_delete = models.CASCADE)
    # PROVINCE = models.ForeignKey(Province, on_delete = models.CASCADE)
    # CITY = models.ForeignKey(City, on_delete = models.CASCADE)
    # BRGY = models.ForeignKey(Barangay, on_delete = models.CASCADE)

    REGION = models.ForeignKey(
        Regions, verbose_name='REGION NAME', on_delete=models.CASCADE)
    # models.CharField(max_length=80, default='REGION IV-A [CALABARZON]')
    PROVINCE = models.CharField(max_length=80, default='BATANGAS')
    CITY = models.CharField(max_length=80, blank=False,
                            verbose_name='CITY/MUNICIPALITY')
    BRGY = models.CharField(max_length=80, blank=False)

    LAST_NAME = models.CharField(max_length=80)
    FIRST_NAME = models.CharField(max_length=80)
    MIDDLE_NAME = models.CharField(max_length=80)
    SUFFIX = models.CharField(max_length=20, blank=True)

    GENDER = (
        ('Male', 'Male'),
        ('Female', 'Female')
    )

    SEX = models.CharField(max_length=7, choices=GENDER, default='Female')

    BIRTHDAY = models.DateField(verbose_name='BIRTHDAY (yyyy-mm-dd)')

    C_STATUS = (
        ('Single', 'Single'),
        ('Married', 'Married'),
        ('Separated', 'Separated'),
        ('Widow', 'Widow'),
        ('Common-Law', 'Common-Law'),
        ('Others', 'Others')
    )

    CIVIL_STATUS = models.CharField(
        max_length=20, choices=C_STATUS, default='Married')

    RELIGION = models.CharField(max_length=80)

    IS4PS = (
        ('Yes', 'Yes'),
        ('No', 'No')
    )
    IS_4PS = models.CharField(
        max_length=20, choices=IS4PS, default='No', verbose_name='Member of 4Ps?')

    ETHNICITY = models.CharField(max_length=100, blank=True)

    OCCUPATION = models.CharField(max_length=100, blank=True)

    M_NET_INCOME = models.CharField(
        max_length=20, blank=True, verbose_name='MONTHLY NET INCOME')

    HL = (
        ('1', 'House & lot owner'),
        ('2', 'Rented house & lot'),
        ('3', 'House owner & lot renter'),
        ('4', 'House owner, rent-free lot with owners consent'),
        ('5', 'House owner, rent-free lot w/o consent of the owner'),
        ('6', 'Rent-free house & lot with owners consent'),
        ('7', 'Rent-free house & lot w/o owners consent')
    )
    HOUSE_OWNERSHIP = models.CharField(choices=HL, max_length=200)

    HC = (
        ('1', 'Partially Damaged'),
        ('2', 'Totally Damaged'),
        ('3', 'No Damage'),
        ('4', 'Not Known Yet'),
    )
    HOUSING_CONDITION = models.CharField(choices=HC, max_length=17, blank=True)

    #
    REG_DATE = models.DateField(auto_now_add=True)

    EVACUATION_CENTER = models.ForeignKey(
        Facilities, verbose_name='Evacuation Center', on_delete=models.CASCADE)
    BUILDING_NAME = models.ForeignKey(
        Building, verbose_name='BUILDING NAME', on_delete=models.CASCADE)
    C_code = (
        ('1', 'Older Person'),
        ('2', 'Lactating Mother'),
        ('3', 'PWD'),
        ('4', 'Pregnant Mother'),
        ('5', 'Solo Parent'),
        ('6', 'None')
    )
    CODE = models.CharField(max_length=50, choices=C_code, default='6')
    C_casualty = (
        ('1', 'Dead'),
        ('2', 'Injured'),
        ('3', 'Missing'),
        ('4', 'None')
    )
    CASUALTY = models.CharField(max_length=50, choices=C_casualty, default='4')
    C_health_condition = (
        ('1', 'None'),
        ('2', 'With Illness'),
    )
    HEALTH_CONDITION = models.CharField(
        max_length=50, choices=C_health_condition, default='1')

    class Meta:
        ordering = ('FIRST_NAME',)
        verbose_name = 'Family Head'
        verbose_name_plural = 'Family Heads'

    def __str__(self):
        return self.FIRST_NAME


# FAMILY MEMBERS
class Members(models.Model):
    FAMILY_HEAD = models.ForeignKey(FamilyHead, on_delete=models.CASCADE)
    NAME = models.CharField(max_length=100)
    Rel = (
        ('1', 'Wife'),
        ('2', 'Husband'),
        ('3', 'Daughter'),
        ('4', 'Son'),
        ('5', 'Nephew'),
        ('6', 'Niece'),
        ('7', 'Brother'),
        ('8', 'Sister'),
        ('9', 'Mother'),
        ('10', 'Father'),
        ('11', 'Cousin'),
        ('12', 'Others'),

    )
    RELATION = models.CharField(choices=Rel, max_length=50)
    AGE = models.CharField(max_length=3, blank=True)
    GENDER = (
        ('Male', 'Male'),
        ('Female', 'Female')
    )

    SEX = models.CharField(max_length=7, choices=GENDER, default='Male')

    C_STATUS = (
        ('Single', 'Single'),
        ('Married', 'Married'),
        ('Separated', 'Separated'),
        ('Widow', 'Widow'),
        ('Common Law', 'Common Law'),
        ('Others', 'Others')
    )

    CIVIL_STATUS = models.CharField(
        max_length=20, choices=C_STATUS, default='Single')

    Ed = (
        ('0', 'N/A'),
        ('1', 'Kindergarten'),
        ('2', 'Grade 1'),
        ('3', 'Grade 2'),
        ('4', 'Grade 3'),
        ('5', 'Grade 4'),
        ('6', 'Grade 5'),
        ('7', 'Grade 6'),
        ('8', 'Grade 7'),
        ('9', 'Grade 8'),
        ('10', 'Grade 9'),
        ('11', 'Grade 10'),
        ('12', 'Grade 11'),
        ('13', 'Grade 12'),
        ('14', 'Elementary Under Graduate'),
        ('15', 'Elementary Graduate'),
        ('16', 'High School Under Graduate'),
        ('17', 'High School Graduate'),
        ('18', 'College Under Graduate'),
        ('19', '1st Year College'),
        ('20', '2nd Year College'),
        ('21', '3rd Year College'),
        ('22', '4th Year College'),
        ('23', '5th Year College'),
        ('24', 'College Graduate'),
        ('20', 'Daycare'),
        ('21', 'Voc. Tech.'),
        ('22', 'ALS'),
        ('23', 'SPED')
    )
    EDUCATION = models.CharField(choices=Ed, max_length=100, default='17')

    OCCUPATIONAL_SKILLS = models.CharField(max_length=100, blank=True,)
    C_code = (
        ('1', 'Older Person'),
        ('2', 'Lactating Mother'),
        ('3', 'PWD'),
        ('4', 'Pregnant Mother'),
        ('5', 'Solo Parent'),
        ('6', 'None')
    )
    CODE = models.CharField(max_length=50, choices=C_code, default='6')
    C_casualty = (
        ('1', 'Dead'),
        ('2', 'Injured'),
        ('3', 'Missing'),
        ('4', 'None')
    )
    CASUALTY = models.CharField(max_length=50, choices=C_casualty, default='4')
    C_health_condition = (
        ('1', 'None'),
        ('2', 'With Illness'),
    )
    HEALTH_CONDITION = models.CharField(
        max_length=50, choices=C_health_condition, default='1')
    REG_DATE = models.DateField(auto_now_add=True)
    loc = (
        ('1', 'Inside Evacuation Center'),
        ('2', 'Outside Evacuation')
    )
    LOCATION = models.CharField(choices=loc, default='1', max_length=50)

    class Meta:
        ordering = ('NAME',)
        verbose_name = 'Family Member'
        verbose_name_plural = 'Family Members'

    def __str__(self):
        return self.NAME
