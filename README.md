# iis-aspnetcore-docker
IIS Docker Image with the ASP.NET Core Module installed

## How to use this image?
### Create a Dockerfile with your website
```
FROM visibacare/iis-aspnetcore

RUN mkdir C:\your-site

RUN powershell -NoProfile -Command \
    Import-module IISAdministration; \
    New-IISSite -Name "YourSiteName" -PhysicalPath C:\site -BindingInformation "*:8000:"

EXPOSE 8000

ADD content/ /your-site
```
