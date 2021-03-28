## JQ:

### 1-я подзадача:

get_images_by_class.sh

Параметры:
1) dataset
2) class

Пример: ```./get_images_by_class.sh annotations/instances_val2014.json book```

### 2-я подзадача:

filter_size.sh

Параметры:
1) dataset
2) width
3) height

Пример: ```./filter_size.sh annotations/instances_val2014.json 600 400```

### 4-я подзадача:

filter_size.sh

Параметры:
1) dataset
2) class
3) area

Пример: ```./get_images_by_class_and_area.sh annotations/instances_val2014.json book 10000```
