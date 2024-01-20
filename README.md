# KSA plate number yoloV8 detector

## Run instructions
### Prerequisites
Make sure you have make, pip and docker installed
````
docker-compose --version
````
````
pip -V
````
````
make -v
````
Should give output like this
````
pip 23.3.2 from /home/.../pip (python 3.10)
````
````
Docker Compose version v2.23.0-desktop.1
````
````
GNU Make 4.3
````

### Prepare
If there is no best.pt (yoloV8 prediction model) in directiory then
````
make prepare
````
This command will download model from google drive.
Or you can try to teach model in .ipynb file or on [kaggle](https://www.kaggle.com/code/timurbikbulatov/ksa-plates-yolo/notebook), then model should be saved in ***'./runs/detect/train/weights/best.pt'***.
Just move best.pt to current directory (where README.md is located)

### Run

To run a model, you can put your own images of KSA plates in "to_predict" directory.
Then run command
````
make predict
````
After a while results should be in "predicted" directory
