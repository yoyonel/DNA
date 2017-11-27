DNA:
	./docker/build_project_in_docker.sh

build: DNA
	
run: DNA
	./build/DNA

clean:
	rm -r build/

.PHONY: run
