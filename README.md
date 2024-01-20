# KSA plate number yoloV8 detector

## Run instructions
### Prerequisites
Make sure you have pip and docker installed
````
docker-compose --version
````
````
pip -V
````
Should give output like this
````
pip 23.3.2 from /home/.../pip (python 3.10)
````
````
Docker Compose version v2.23.0-desktop.1
````

### Prepare
If there is no best.pt (yoloV8 prediction model) in directiory then
````
make prepare
````
This command will download model from google drive
z
Or you can try to teach model in .ipynb file or on [kaggle](https://www.kaggle.com/code/timurbikbulatov/ksa-plates-yolo/notebook)

then model should be saved in ***'./runs/detect/train/weights/best.pt'***

### Run

To run a model, you can put your own KSA plates in "to_predict" directory

Then run command

````
make predict
````

After a while results should be in "predicted" directory