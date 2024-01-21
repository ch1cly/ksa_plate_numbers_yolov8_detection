# KSA plate number yoloV8 detector

All code is on [kaggle](https://www.kaggle.com/code/timurbikbulatov/ksa-plates-yolo/notebook) or in ksa-plates-yolo.ipynb 

## Run instructions
### Prerequisites
Make sure you have *make*, *pip* and *docker-compose* installed
````
pip -V
````
````
docker-compose --version
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
This command will download model from google drive. If something does not work, here is the [link](https://drive.google.com/drive/folders/1rLuQkBr25QjjQIkTXK3JX018uM_Jz6By?usp=sharing) with .ipynb and model files.

Or you can try to teach model by yourself in .ipynb file on 
 - [kaggle](https://www.kaggle.com/code/timurbikbulatov/ksa-plates-yolo/notebook), then model should be saved in ***'./yolo_detection/train/weights/best.pt'***  (*best choice i guess*)
 - [colab.google](http://colab.google/) then you need load .ipynb file and check if [requirements](requirements.txt) and [python version](runtime.txt) satisfied.
 - local machine then you pbb will need conda with satisfying [requirements](requirements.txt) and [python version](runtime.txt)

then download model and paste it in directory with this README.md file 

Other runs of validation and test are in ***./yolo_detection/valid*** and ***./yolo_detection/test*** respectively.
Just move best.pt to current directory (where README.md is located)

### Run

To run a model, you can put your own images of KSA plates in "to_predict" directory.
Then run command
````
make predict
````
After a while results should be in "predicted" directory
