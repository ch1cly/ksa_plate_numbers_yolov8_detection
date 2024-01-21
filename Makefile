all:
	docker-compose up --build

prepare:
	pip install --upgrade pip
	pip install gdown
	export PATH="$HOME/.local/bin:$PATH"
	gdown 1lzZ5xr5oSnSoVz6Y6_tAskJ8lL0Zxt13
predict:
	docker-compose up --build