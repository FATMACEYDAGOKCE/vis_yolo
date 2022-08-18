import logging
logging.getLogger().setLevel(logging.CRITICAL)

from pylabel import importer
path_to_annotations = "JSON2YOLO/annotations/val/instances_val_o0.json"
#Specify the path to the images (if they are in a different folder than the annotations)should I use sub file

path_to_images = "datasets/Visdrone/images/val"

#Import the dataset into the pylable schema
dataset = importer.ImportCoco(path_to_annotations, path_to_images=path_to_images, name="BCCD_coco")


dataset.export.ExportToYoloV5()[0]
print(dataset)
print(f"Number of images: {dataset.analyze.num_images}")
print(f"Number of classes: {dataset.analyze.num_classes}")
print(f"Classes:{dataset.analyze.classes}")
print(f"Class counts:\n{dataset.analyze.class_counts}")
print(f"Path to annotations:\n{dataset.path_to_annotations}")