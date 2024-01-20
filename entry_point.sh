#!/bin/bash

# Переходим в директорию с файлами для предсказания


# Проходим по каждому файлу в директории
for file in to_predict/*; do
    # Проверяем, является ли элемент файлом (не директорией)
    if [ -f "$file" ]; then
        # Формируем команду с использованием текущего файла
        command="yolo detect predict model=/yolo_detection/best.pt source='$PWD/$file' \
            project='predicted' name='' save=True"
        
        # Выводим команду для отладки (раскомментируйте, если нужно)
        echo "$command"
        
        # Выполняем команду
        $command
    fi
done


yolo detect predict model=path/to/best.pt source='https://ultralytics.com/images/bus.jpg'