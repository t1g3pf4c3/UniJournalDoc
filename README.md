---
title: "Доработка интерфейса"
subtitle: "Доработка интерфейса  системы поддержки издательской деятельности OJS в соответствии с корпоративным стилем государственного университета 'Дубна' для сетевого научного издания 'Системный анализ в науке и образовании'"
author: [Кунгуров Макар, Геоня Татьяна, Кузнецов Михаил, Авдеева Эльвира]
date: "2021-05-05"
lang: ru-RU
titlepage-background: "backUni.png"
keywords: [Наука, Сайт]
titlepage: true,
toc-own-page: true,
titlepage-logo: "good.png"
book: true,
float-placement-figure: b
logo-width: 50mm
titlepage-rule-color: "58638E"
---

# Цель работы
По запросу университета "Дубна" доработать и модифицировать интерфейс системы поддержки издательской деятельности OJS в соответствии с корпоративным стилем государственного университета 'Дубна' для сетевого научного издания 'Системный анализ в науке и образовании'
a

# Введение


# Основная часть

# Методология

Приведены технологии, используемые в ходе работы, а так же описаны их преимущества и недостатки в рамках проведения проектной работы.

## Сервер Apache
Apache – это свободное программное обеспечение для размещения веб-сервера. Он хорошо показывает себя в работе с масштабными проектами, поэтому заслуженно считается одним из самых популярных веб-серверов. Кроме того, Apache очень гибок в плане настройки, что даёт возможность реализовать все особенности размещаемого веб-ресурса.

## Архитектура Apache
Apache состоит из ядра и динамической модульной системы. Параметры системы изменяются с помощью конфигурационных файлов.

### Ядро
Ядро Apache разработано Apache Software Foundation на языке C. Основные функции — обработка конфигурационных файлов, протокол HTTP/HTTPS и загрузка модулей. Ядро может работать без модулей, но будет иметь ограниченный функционал.

### Модульная система
Модуль – отдельный файл, подключение которого расширяет изначальный функционал ядра. Они могут включаться в состав ПО при первоначальной установке или подгружаться позже через изменение конфигурационного файла.

Большинство из них отвечает за определенный аспект обработки клиентского запроса – поддержку различных языков программирования, безопасность, кэширование, аутентификацию и т.д. Таким образом, большая задача разбивается на несколько фаз, каждую из которых решает отдельный, узкоспециализированный модуль.

Для Apache существует больше 500 модулей. Многие популярные веб-приложения сразу **выпускаются** в виде модуля к Apache. Например, ISPmanager и VDSmanager.

### Достоинства и недостатки Apache

#### Плюсы
- Доступность. Это программное обеспечение с открытым исходным кодом.Его может бесплатно использовать или модифицировать любой желающий. Разработчики по всему миру создают конфигурации и модули веб-сервера для своих специфических нужд. По этой же причине Apache регулярно получает полезные дополнения, расширяющие его базовый функционал.
- Гибкость настройки. Apache использует несколько конфигурационных файлов для управления веб-сервером. Это позволяет настроить ПО под узконаправленные задачи.
- Функциональность. У Apache динамическая модульная структура. Можно быстро подключать дополнительный функционал в виде скачиваемых модулей, даже без обращения к внешним источникам. Это позволяет решать целый комплекс важнейших задач в области безопасности, кэширования, редактирования URL, распределения нагрузки. Благодаря гибридным модулям MPM, Apache может одинаково успешно обслуживать статический и динамический контент. Есть возможность оперативно отключать ненужные модули и ускорять работу веб-сервера
- Кроссплатформенность. Apache работает как на Windows, так и на всех Unix-подобных системах. Администрирование веб-сервером не имеет серьёзных отличий на разных ОС. Индивидуален только процесс установки и расположение директорий с файлами программы.
- Совместимость. Apache работает на базе скриптовых или веб-ориентированных языков (PHP, Python, Tcl, Ruby, Perl, ASP), что делает его совместимым с самым широким спектром баз данных и серверного ПО. Многие веб-приложения и инструменты сразу выходят со средствами запуска из-под Apache в виде PHP-модуля. Веб-сервер, поддерживает технологии FastCGI и CGI, позволяющие пользоваться программными продуктами на объектно-ориентированных языках Java, sh, C, C++.
- Масштабируемость. Подходит для веб-ресурсов любого масштаба. Apache хорошо работает как на одностраничном сайте (лендинге), так и на многостраничном сайте с ежедневной аудиторией в десятки тысяч посетителей.

## OJS
Open Journal Systems (OJS, «Открытые журнальные системы») — открытое программное обеспечение для организации рецензируемых научных изданий, разработанное некоммерческим исследовательским проектом Public Knowledge Project. Распространяется по лицензии GNU General Public License.

### Назначение OJS
Система OJS предназначена для создания рецензируемых электронных журналов с открытым доступом и позволяет не только публиковать статьи в интернете, но и организовывать весь рабочий процесс издательского дела: приём, рецензирование и каталогизирование статей. Подача статей производится через интернет.

В журналах OJS пользователи делятся на группы с различными привилегиями: менеджер издания, редактор, рецензент, автор, читатель и другие. OJS включает в себя расширение для распространения журнала по подписке. Редакторы журнала настраивают требования к статьям, секции, по которым принимаются статьи, процесс рецензирования и многое другое.

### Архитектура OJS
Система OJS написана на PHP и может быть запущена на любом веб-серверe с поддержкой данного интерпретатора; в качестве базы данных используется MySQL или PostgreSQL.

#### Модульная система
OJS обладает модульной структурой и имеет возможность подключения плагинов, для расширения функционала, аналогично многим открытым продуктам, разрабатывающимся сообществами разработчиков, таких как WordPress. Существуют плагины, позволяющие индексировать содержимое журнала в Google Scholar и PubMed Central. Плагин подписки реализует поддержку стандартов RSS и Atom. Open Journal Systems соответствует стандартам проекта LOCKSS, что позволяет безопасно собирать, хранить и предоставлять доступ ко всем статьям журнала в долгосрочной перспективе. OJS поддерживает идентификаторы цифровых объектов, что позволяет регистрировать статьи в таких агентствах, как CrossRef, Multilingual European DOI Registration Agency и DataCite.

#### Дополнительные инструменты
Для вовлечения читателей в процесс создания журнала сообществом Public Knowledge Project был разработан набор инструментов Reading Tools, предоставляющий доступ к смежным исследованиям, тематическим новостям, законодательным актам и другим ресурсам в открытых базах данных.

### Достоинства и недостатки OJS
- OJS является свободно распространяемым программным обеспечением с открытым кодом. Т.е. Вы не зависите от разработчиков и навязываемых лицензионных договоров.
- OJS изначально создавалась как специализированная издательская платформа. Она поддерживает обмен данными с международными реферативными базами данных и библиотеками.
- Имеет низкую стоимость разработки и поддержки сайтов на OJS.

## Плагин bootstrap3
Плагин bootstrap3 - встроенный плагин-тема, разработанный сообществом OJS, для упрощения работы с темами и стилями в OJS.


# Результаты

Исходя из заданной цели, благодаря преподавателям была создана команда студентов Университета "Дубна". Каждый выполнял свои роли и отвечал за назначенную сферу ответственности.



Список совершенной работы:  

- Развернут сайт по адресу sanse.uni-dubna.ru.
- Полностью изменен стандартный вид и тема оформления сайта в соответствии с [гидом стиля университета](https://xd.adobe.com/view/ec8bbe0b-d825-43b7-a779-cf023b6da779-b9d8/screen/4daa613a-50df-4635-93f5-c251d25314a3/?fullscreen)
  - Изменены структуры страниц сайта
  	- Добавлена мультиязычная функциональность
- Добавлены дополнительные плагины, упрощающие пользовательское взаимодействие с сайтом.

# Развернут сайт
Сайт развернут на домене sanse.uni-dubna.ru при помощи вышеописанных технологий сервера apache и системы OJS. В процессе разработки были попытки использовать контейнеризацию системы Docker, но впоследствии идея оказалась бессмысленной. При помощи стандартных инструментов студенты развернули сайт, добившись его полного функционирования. Развертка применяла следующие рекомендуемые настройки:

>" 1. Выделите базу данных для OJS; используйте уникальные учетные данные для доступа к ней.
>Настройте базу данных для автоматического резервного копирования на регулярной основе.
>Выполнять резервное копирование вручную при обновлении или выполнении сопровождения.
>2. Настройте OJS (config.inc.php) для использования хэширования SHA1 вместо MD5.
>3. Настройте OJS (config.inc.php), чтобы использовать force_ssд_login, чтобы
>аутентифицированные пользователи обменивались данными с сервером по протоколу HTTPS.
>4. Установите OJS, чтобы каталог файлов НЕ являлся подкаталогом установки OJS и не мог быть доступен напрямую через Интернет. Как можно больше ограничьте права доступа к файлам.
Автоматизированный резервные копии этого каталога должны быть синхронизированы с
резервным копированием базы данных.
Установка производилась по следующей инструкции:
>1. Разархивируйте архив OJS в нужное место в вашей сети каталога документов.
>2. Сделайте следующие файлы и каталоги (и их содержимое) доступным для записи (то есть путем
>изменения владельца или разрешения с помощью команды chown или chmod):
>- config.inc.php (необязательный параметр - если не доступен для записи, вам будет
>предложено вручную перезаписать этот файл во время установки)
>- public
>- cache
>- cache/t_cache
>- cache/t_config
>- cache/t_compile
>- cache/_db
>3. Создайте каталог для хранения загруженных файлов (файлов отправки и т.д.) и сделайте этот
>каталог доступным для записи. Рекомендуется, чтобы эта директория была размещена в не
>доступном их Интернета месте (или иначе защищена от прямого доступа, например,
>посредством правил .htaccess).
>4. Откройте веб-браузер и введите <http://yourdomain.com/path/to/ojs/> . Следуйте
>инструкциям на экране.
>В качестве альтернативы, можно использовать установщик командной строки запустив команду
>“php tools/install.php» из вашего каталога OJS. (Примечание: с установщиком CLI вам может
>понадобиться chown/chmod *общедоступные* каталоги загруженных файлов после установки, если
>пользователь Apache отличается от пользователя, запускающего инструмент.)
>5. Рекомендуемые дополнительные действия после установки:
>- Просмотрите config.inc.php для дополнительных настроек конфигурации.
>- Просмотрите документ часто задаваемых вопросов для часто задаваемых вопросов
>технического характера и вопросов конфигурации сервера. "

# Создание собственной темы bootstrap3

## Структура плагина

Файлы которые позволяют кастомизировать стили bootstrap 3 находятся в папке:

> ojs-site/plugins/themes/bootstrap3/bootstrap-themes/

Шаблоны страниц находятся по ссылке:

> ojs-site/plugins/themes/bootstrap3/templates

Файлы для локализации находятся по ссылке:

> sanse-test/plugins/themes/bootstrap3/locale

Пример вызова шаблона страницы на примере главной страницы.

Когда мы заходим на главную страницу, используется шаблон по ссылке:

> plugins/themes/bootstrap3/templates/frontend/pages/indexJournal.tpl

Данный шаблон выводится пользователю из документа по ссылке:

> site/sanse-test/pages/index/IndexHandler.inc.php

Там так-же объявляются переменные, которые используются шаблоном.

## Установка плагина

Чтобы подключить данный плагин, достаточно его распаковать в папку:

> ojs-site/plugins/themes

Важно отметить, что версию плагина надо выбирать относительно версии ojs.

Git репозиторий данного плагина:

> https://github.com/NateWr/bootstrap3

## Шаблоны tpl

В данном пункте будут показаны не все шаблоны, так как они могут дополнятся и удалятся, в зависимости от версии OJS. Однако этих шаблонов будет достаточно, чтобы в общих чертах понять их структуру вызова.

### Блок статей

![Блок статей](img/Articles.png){ width=250px } 

```php
{include file="frontend/objects/issue_toc.tpl"}
```
Вызывается в шаблоне:

> bootstrap3/templates/frontend/pages/indexJournal.tpl


### Блок описания

Встроен в шаблон:

	{* Issue introduction area above articles *}
	"<div>...</div>"

Вызывается в шаблоне:  

> bootstrap3/templates/frontend/pages/indexJournal.tpl

![Блок описания](img/Description.png){ width=150px }



### Блок навигации

Встроен в шаблон по комментарию:

	{include file="frontend/components/header.tpl" pageTitleTranslated=$currentJournal->getLocalizedName()}

Вызывается в шаблоне:

> bootstrap3/templates/frontend/pages/indexJournal.tpl

![Навигация](img/nav_menu.png){ width=250px } 

### Блок подвала
Вызывается в шаблоне:  

> bootstrap3/templates/frontend/pages/indexJournal.tpl  

![Подвал-1](img/footer_1.png){ width=250px } 

![Подвал-2](img/footer_2.png){ width=250px }  

встроен в шаблон по комментарию:

```
	{include file="frontend/components/footer.tpl"}
```

### Страница архива

![Старница архива](img/Page_arhive.png){ width=250px }  

> bootstrap3/templates/frontend/pages/issueArchive.tpl

### Блок журнала в архиве журналов

Встроен в шаблон по комментарию:  
```
	{include file="frontend/objects/issue_summary.tpl" home=true}
```
Вызывается в шаблоне:  

> frontend/pages/issueArchive.tpl


<!-- ![Шаблон]()   -->
<img href="img/Pastedimage20220425134054.png" style="width: 50%;" />

### Переменные(локализация) для страницы добавлять  в файл

> sanse-test/lib/pkp/locale/ru_RU/user.po
Пример создания локальной переменной для требуемого языка:

```
msgid "api.my.1"
msgstr "journal"
```
Пример вызова в шаблоне:
```
{translate key="api.my.1"}
```
Данная команда будет получать текстовую переменную journal.

Чтобы корректно отображалась в разных языках, надо добавить перевод и в другие папки по языкам.

### Пример переноса переменных на другую страницу
По ссылке: 

> site/sanse-test/pages/index

Найти документ  *IndexHandler.inc.php*:
```
$templateMgr->display('frontend/pages/indexJournal.tpl');
```
Это запуск шаблона главной страницы, если журнал существует и публичен
по ссылке:

> site/sanse-test/pages/issue/

Найти в IssueHandler.inc.php 
```
$templateMgr->display('frontend/pages/issueArchive.tpl');
```

Это запуск шаблона архива с журналами

Например, требуется переместить все выпуски, которые передаются по ссылке архив, на главную страницу. Готовый проект этого не предусматривает. Зная факт, что перед тем, как в архив попадают журналы, они вызываются из базы данных.

За выпуски отвечает переменная <strong>issues</strong>. Это мы знаем из шаблона:

> bootstrap3/templates/frontend/pages/issueArchive.tpl

Команды которые надо исполнить, чтобы достать данные:

	$this->setupTemplate($request);
	
		$page = isset($args[0]) ? (int) $args[0] : 1;
	
		$templateMgr = TemplateManager::getManager($request);
	
		$context = $request->getContext();
		$count = $context->getData('itemsPerPage') ? $context->getData('itemsPerPage') : Config::getVar('interface', 'items_per_page');
		
		$offset = $page > 1 ? ($page - 1) * $count : 0;
	
		$params = array(
	
			'contextId' => $context->getId(),
			'orderBy' => 'seq',
			'orderDirection' => 'ASC',
			'count' => 3,
			'offset' => $offset,
			'isPublished' => true,
		);
	
		$issues = iterator_to_array(Services::get('issue')->getMany($params));

Данные находятся файле <strong>IssueHandler.inc.php</strong> и перенесли в <strong>IndexHandler.inc.php </strong>

Далее требуется в manager добавить переменную, и уже обработать в запрашиваемом шаблоне.

	$templateMgr->assign(array('issues' => $issues,))

Теперь она будет доступна в шаблоне tpl и ее можно смело использовать по образу того, как она используется в шаблоне:

> bootstrap3/templates/frontend/pages/issueArchive.tpl

Их число было ограничено ранее. За это отвечала переменная <strong>count</strong>.В итоге, если развернуть журналы по образу другого шаблона, пользователь увидит на главной странице требуемые журналы.

![Общий вид страницы](img/Page_home.png){ width=250px }

### Кастомизация стилей

Файлы которые позволяют модифицировать стили bootstrap 3 находятся в папке:

> bootstrap3/bootstrap-themes/

Была модифицирована тема <strong>cerulean</strong>.

Стили находятся в документе по ссылке:

> bootstrap3/bootstrap-themes/cerulean/bootswatch.less

Переменные для стилей находятся по ссылке:

> bootstrap3/bootstrap-themes/cerulean/variables.less

В данных файлах изначально добавлены только стили, которые изменяют уже готовые стили bootstrap 3. Их можно использовать, для кастомизации и добавления своих стилей. Из данных файлов компилируется файл стилей, который после используется на всех страницах сайта.

# Выводы

- В результате работы с плагином <strong> ojs 3 for bootstrap 3 </strong> была изучена общая структура сайта, ссылочной системы, стилизации и локализации OJS 3. Кроме того, проведенная работа закрепила навыки в css, js, разворачивании локального сервера.

- Была проведена работа с навигацией. Несколько уровней меню были объединены. Также в меню был добавлен выбор языка. Меню было стилизировано по шаблону данному университетом.

- Все стили соответствуют "Гиду стиля университета"

- На главную страницу был добавлен архив последних выпусков

![Архив](img/last.png){ width=250px }

- Вставлен блок отвечающий за плагины.

<!-- ![Блок отвечающий за плагины](img/Pastedimage20220429215946.png){ width=250px } -->

- Была проведена кастомизация темы boostrap 3.

- Добавленные переменные типа <strong>string</strong>  были локализованы.

- Все вышеперечисленное корректно отображается на различных экранах, в том числе и на телефонах.


# Дополнительные плагины
1. Плагин создания собственных страниц;
1. Плагин *цитирования* в различных форматах;
1. Плагин облака **тэгов**;
1. Модуль метаданных dublin core;
1. PDF просмоторщик;
1. Модуль менеджер пользовательских блоков;
1. Модуль быстрой отправки.

# Список литературы и используемых материалов
- Документация OJS русском языке -   
	URL: https://elib.bsu.by/bitstream/123456789/174391/1/Learn%20OJS%203.pdf
- Документация OJS на английском языке -   
	URL: https://docs.pkp.sfu.ca/
- Документация OJS bootstrap3 -   
 	URL: https://github.com/NateWr/bootstrap3
- Гид стиля университета -    
 	URL: https://xd.adobe.com/view/ec8bbe0b-d825-43b7-a779-cf023b6da779-b9d8/screen/4daa613a-50df-4635-93f5-c251d25314a3/?fullscreen
- Шаблон главной страницы -  
 	URL: https://drive.google.com/file/d/1owagEUvb0JOtvXtnGLIwC38GeAlS5lF7/view
 
