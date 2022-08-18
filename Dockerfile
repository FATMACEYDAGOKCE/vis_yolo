FROM   image

WORKDIR yolo

COPY . /yolo

# Install python dependencies
RUN sudo apt update
RUN python3 -m pip install --upgrade pip
RUN pip install /yolov5/requirements.txt

EXPOSE 8080

CMD ["python3", "/yolov5/train.py --data clearml://c431349cf9b3469fa0231d5cb4eebf3b --weights yolov5s.pt "]
