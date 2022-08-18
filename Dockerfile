FROM   ultralytics/yolov5:latest



RUN https://github.com/astro1307/vis_yolo.git
RUN sudo apt update
RUN python3 -m pip install --upgrade pip
RUN pip install -r  vis_yolo/yolov5/requirements.txt


