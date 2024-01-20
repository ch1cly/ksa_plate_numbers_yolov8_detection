FROM ultralytics/ultralytics:8.1.3-cpu

WORKDIR /yolo_detection

COPY best.pt .
COPY entry_point.sh .

# ENTRYPOINT ["bash"]
ENTRYPOINT ["bash", "entry_point.sh"]

