all:
	docker-compose up --build

prepare:
	pip install --upgrade pip
	pip install gdown
	export PATH="$HOME/.local/bin:$PATH"
	gdown 1nvbKU_nBIWNtL1B3PHIGO9GU7fWXEipb

predict:
	docker-compose up --build