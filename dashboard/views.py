from django.shortcuts import render

# Create your views here.
from dashboard.models import Account, AccountRisk

# Create your views here.
def index(request):
    # count unique child accounts
    child_accounts = Account.objects.count()

    # account accounts with stage Won
    accounts_won = Account.objects.filter(stage='won').count()

    # count distinct account with potential = HP
    high_potential_accounts = Account.objects.filter(potential='HP').distinct('account_id').count()

    # count distinct account with pipeline = HP
    high_pipeline_accounts = Account.objects.filter(pipeline='HP').distinct('account_id').count()

    #Account Risk Data
    account_risk_data = [
        {
            "account_name":account.account_name,
            "customer_name":account.customer_name,
            "risk":account.account_risks.split("@")
        } for account in AccountRisk.objects.all()
    ]

    return render(
        request, 'index.html',
        {
            'child_accounts': child_accounts,
            'accounts_won': accounts_won,
            'high_potential_accounts': high_potential_accounts,
            'high_pipeline_accounts': high_pipeline_accounts,
            'account_risk_data': account_risk_data
        }
    )