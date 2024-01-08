# Define default target
all: run

# Target to clean and run the project using Spring Boot
run: 
	mvnw clean spring-boot:run
	# or use mvn if you prefer
	# mvn clean spring-boot:run

# Target to build the project
build: 
	mvn package

# Target to interrogate the running app
test: 
	curl -v localhost:8080/employees

# Add a PHONY target to explicitly declare that 'all', 'run', 'build', and 'test' aren't files
.PHONY: all run build test
