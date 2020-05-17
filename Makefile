build:
	docker build -t docker-practice:latest .

run:
	docker run -d --rm -p 8000:5000 docker-practice:latest 

bash:
	docker run -d docker-practice:latest -- bash 
