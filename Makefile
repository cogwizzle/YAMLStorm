bin = /usr/local/bin

.PHONY: install
install:
	@echo "Installing dependencies..."
	@pip3 install -r requirements.txt
	@echo "Dependencies installed successfully."
	@sudo cp ./yaml-storm ${bin}/yaml-storm

.PHONY: test
test:
	./yaml-storm test-data/simple.yml || echo "Test failed. Please check the test data and try again."
	AGE=30 \
	NAME="Jane Doe" \
	./yaml-storm test-data/variables.yml || echo "Test failed. Please check the test data and try again."
