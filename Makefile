SHELL=/bin/bash

format:
	mvn fmt:format

lint:
	mvn checkstyle:check

swagger:
	mvn generate-resources

package:
	mvn clean compile package

test-it:
	mvn integration-test

build-and-test:
	mvn clean install

run-local:
	SPRING_PROFILES_DEFAULT=local mvn spring-boot:run -Dspring-boot.run.jvmArguments="-Duser.timezone=UTC"