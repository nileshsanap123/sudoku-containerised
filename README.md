# sudoku-containerised
Place docker-compose.yaml at the first level in the directory sudoku. This compose file define 2 services - backend and frontend
Rename Dockerfile_backend to Dockerfile and place at the first level in the directory sudoku.
Build sprintboot app or backend code with the help of command ./mvnw install
Run this command to generate backend docker image "docker build -t sudoku-backend . "
Frontend or Angular App : Go to this folder "sudoku/src/main/web"
Rename Dockerfile_frontend to Dockerfile and place at sudoku/src/main/web
Use "npm run build" to package the angular app code.
Execute this command "docker build -t ng-sudoku ." to generate docker image for angular app
Now go to top level directory "sudoku". 
Run the command "docker-compose up" to create and start all the services.
open your browser on http://localhost:4200/ which will show below respose.
<img width="1440" alt="Screenshot 2024-05-19 at 4 41 08 PM" src="https://github.com/nileshsanap123/sudoku-containerised/assets/157675983/608f4d4b-8b9e-4ddc-952c-682e7013ac7e">
