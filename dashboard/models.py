from django.db import models
from django.utils import timezone as tz

# Create your models here.
class AccountRisk(models.Model):
    """Account Risk"""
    class Meta:
        verbose_name_plural = "Account Risk"

    account_name = models.CharField(max_length=100)
    customer_name = models.CharField(max_length=100)
    account_risks = models.CharField(max_length=255)
    created_on = models.DateTimeField(default=tz.now)

    def __str__(self):
        return str(self.account_name)


class Account(models.Model):
    """Account"""
    class Meta:
        verbose_name_plural = "Account"

    STAGE = (
        ('won', 'Won'),
        ('lost', 'Lost'),
    )

    account = models.ForeignKey(
        AccountRisk,related_name="account_risk",
        on_delete=models.CASCADE
    )
    potential = models.CharField(max_length=2, null=True)
    pipeline = models.CharField(max_length=2, null=True)
    stage = models.CharField(
        max_length=10, choices=STAGE,
        default='Select Stage'
    )
    created_on = models.DateTimeField(default=tz.now)

    def __str__(self):
        return str(self.account.account_name)

