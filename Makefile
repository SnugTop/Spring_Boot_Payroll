# Define a default target
all: run

# Target to build the project
build: 
	mvn package

# Target to run the project
run: build
	mvn exec:java "-Dexec.mainClass="payroll.PayrollApplication"
