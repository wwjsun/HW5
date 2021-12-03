
#Please fork and clone the repository HW5
git clone http_address_copied_from_GitHub

#Pull the docker image
docker pull wwjsun/hw5

#In the cloned reporstory, use the following bash code to run docker and produce the report  

#Mounting the output folder and run the docker
docker run -v /Path_to_local_project_reposity/output:/HW5/output hw5
#In above code, "Path_to_local_project_repository" request absolute path, use "pwd" to print out your absolute path. 


#Open the report
open output/report.html 