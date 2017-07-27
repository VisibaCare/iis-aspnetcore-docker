FROM microsoft/iis

# Add and install the ASP.NET Core Module
ADD DotNetCore.1.0.5_1.1.2-WindowsHosting.exe /DotNetCore.1.0.5_1.1.2-WindowsHosting.exe
RUN DotNetCore.1.0.5_1.1.2-WindowsHosting.exe /quiet