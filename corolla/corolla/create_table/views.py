from django.shortcuts import render

# Create your views here.
def index(request):
    return HttpResponse("Здесь можно будет создавать новые таблицы")
