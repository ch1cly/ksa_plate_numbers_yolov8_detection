all:
	docker-compose up --build

prepare:
	pip install --upgrade pip
	pip install gdown
	export PATH="$HOME/.local/bin:$PATH"
	gdown 1M0RonHkx7Y7Dvi0YKNgRFx17vRWQDfq0
predict:
	docker-compose up --build