#Pointint to standard .net core image on docker hub
FROM microsoft/dotnet:1.0.4-runtime

#Defining default directory to ASP.NET Core app inside container
WORKDIR /app

#Copying the entire application files to /app directory
COPY ./bin/Debug/netcoreapp1.0/publish .

#Exposing the application to the internet through port 80
ENV ASPNETCORE_URLS http://+:80
EXPOSE 80/tcp
 
#Building and running the dotnet application from within the container
ENTRYPOINT ["dotnet", "App01-HelloWorld.dll"]