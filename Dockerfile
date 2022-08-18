FROM   image

WORKDIR yolo

COPY . /yolo

# Install python dependencies
RUN sudo apt update
RUN python3 -m pip install --upgrade pip
RUN pip install /yolov5/requirements.txt

EXPOSE 8080

CMD ["python3", "/yolov5/train.py --data clearml://142921a087994b6399ba353fffeac7ff --weights yolov5s.pt "]
