from django.http import HttpResponse


def index(request):
    return HttpResponse('Hello, N-age Fan!')
