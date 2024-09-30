# Домашнее задание к занятию «Вычислительные мощности. Балансировщики нагрузки»  - Подус Сергей

## Задание 1. Yandex Cloud 

**Что нужно сделать**

1. Создать бакет Object Storage и разместить в нём файл с картинкой:

 - Создать бакет в Object Storage с произвольным именем (например, _имя_студента_дата_).
 - Положить в бакет файл с картинкой.
 - Сделать файл доступным из интернета.
 
2. Создать группу ВМ в public подсети фиксированного размера с шаблоном LAMP и веб-страницей, содержащей ссылку на картинку из бакета:

 - Создать Instance Group с тремя ВМ и шаблоном LAMP. Для LAMP рекомендуется использовать `image_id = fd827b91d99psvq5fjit`.
 - Для создания стартовой веб-страницы рекомендуется использовать раздел `user_data` в [meta_data](https://cloud.yandex.ru/docs/compute/concepts/vm-metadata).
 - Разместить в стартовой веб-странице шаблонной ВМ ссылку на картинку из бакета.
 - Настроить проверку состояния ВМ.
 
3. Подключить группу к сетевому балансировщику:

 - Создать сетевой балансировщик.
 - Проверить работоспособность, удалив одну или несколько ВМ.


## Ответ:

1. Создаем бакет и размещаем там файл с картинкой

Ссылка для скачивания файла: https://storage.yandexcloud.net/clopro2-backet/kotek.png

![Scrin](https://github.com/Wanderwille/scrinshot/blob/scrin2/clopro2/kotek.png)

2. Создаем Instance Group: 

![Scrin](https://github.com/Wanderwille/scrinshot/blob/scrin2/clopro2/instance.png)

![Scrin](https://github.com/Wanderwille/scrinshot/blob/scrin2/clopro2/group.png)

![Scrin](https://github.com/Wanderwille/scrinshot/blob/scrin2/clopro2/balancer.png)

Проверка открытия картинки на всех VPS

![Scrin](https://github.com/Wanderwille/scrinshot/blob/scrin2/clopro2/kotek1.png)

![Scrin](https://github.com/Wanderwille/scrinshot/blob/scrin2/clopro2/kotek2.png)

![Scrin](https://github.com/Wanderwille/scrinshot/blob/scrin2/clopro2/kotek3.png)

3. Создаем балансировщик и тестируем его работу:

![Scrin](https://github.com/Wanderwille/scrinshot/blob/scrin2/clopro2/load.png)

![Scrin](https://github.com/Wanderwille/scrinshot/blob/scrin2/clopro2/delete%20.png)

![Scrin](https://github.com/Wanderwille/scrinshot/blob/scrin2/clopro2/load.png)

![Scrin](https://github.com/Wanderwille/scrinshot/blob/scrin2/clopro2/del2.png)

![Scrin](https://github.com/Wanderwille/scrinshot/blob/scrin2/clopro2/prov.png)

![Scrin](https://github.com/Wanderwille/scrinshot/blob/scrin2/clopro2/load2.png)

Проверим открывается ли картика:

![Scrin](https://github.com/Wanderwille/scrinshot/blob/scrin2/clopro2/kotek4.png)

Все файлы конфигураций terraform находятся в папке src: