
# Отчет по практической деятельности

# Структура

1. [Структура](#структура)
2. [Цель проекта:](#цель-проекта:)
3. [Инструменты и технологии.](#инструменты-и-технологии.)
   * [Сервер Apache](#сервер-apache)
     * [Архитектура Apache](#архитектура-apache)
       * [Ядро](#ядро)
       * [Модульная система](#модульная-система)
     * [Достоинства и недостатки Apache](#достоинства-и-недостатки-apache)
       * [Плюсы](#плюсы)
   * [OJS](#ojs)
     * [Назначение OJS](#назначение-ojs)
     * [Архитектура OJS](#архитектура-ojs)
       * [Модульная система](#модульная-система)
       * [Дополнительные инструменты](#дополнительные-инструменты)
     * [Достоинства и недостатки OJS](#достоинства-и-недостатки-ojs)
   * [Плагин bootstrap3](#плагин-bootstrap3)
4. [Проделанная работа](#проделанная-работа)
   * [Развернут сайт](#развернут-сайт)
   * [Создание собственной темы bootstrap3](#создание-собственной-темы-bootstrap3)
   * [Дополнительные плагины](#дополнительные-плагины)
   * [Документация на русском языке](#документация-на-русском-языке)

## Цель проекта:

Модернизация сайта научного журнала университета дубна
## Инструменты и технологии.

### Сервер Apache
Apache – это свободное программное обеспечение для размещения веб-сервера. Он хорошо показывает себя в работе с масштабными проектами, поэтому заслуженно считается одним из самых популярных веб-серверов. Кроме того, Apache очень гибок в плане настройки, что даёт возможность реализовать все особенности размещаемого веб-ресурса.

#### Архитектура Apache
Apache состоит из ядра и динамической модульной системы. Параметры системы изменяются с помощью конфигурационных файлов.

##### Ядро
Ядро Apache разработано Apache Software Foundation на языке C. Основные функции — обработка конфигурационных файлов, протокол HTTP/HTTPS и загрузка модулей. Ядро может работать без модулей, но будет иметь ограниченный функционал.

##### Модульная система
Модуль – отдельный файл, подключение которого расширяет изначальный функционал ядра. Они могут включаться в состав ПО при первоначальной установке или подгружаться позже через изменение конфигурационного файла.

Большинство из них отвечает за определенный аспект обработки клиентского запроса – поддержку различных языков программирования, безопасность, кэширование, аутентификацию и т.д. Таким образом, большая задача разбивается на несколько фаз, каждую из которых решает отдельный, узкоспециализированный модуль.

Для Apache существует больше 500 модулей. Многие популярные веб-приложения сразу **выпускаются** в виде модуля к Apache. Например, ISPmanager и VDSmanager.

#### Достоинства и недостатки Apache

##### Плюсы
- Доступность. Это программное обеспечение с открытым исходным кодом. Значит, его может бесплатно использовать или модифицировать любой желающий. Разработчики по всему миру создают конфигурации и модули веб-сервера для своих специфических нужд. По этой же причине Apache регулярно получает полезные дополнения, расширяющие его базовый функционал.
- Гибкость настройки. Apache использует несколько конфигурационных файлов для управления веб-сервером. Это позволяет настроить ПО под узконаправленные задачи.
- Функциональность. У Apache динамическая модульная структура. Можно быстро подключать дополнительный функционал в виде скачиваемых модулей, даже без обращения к внешним источникам. Это позволяет решать целый комплекс важнейших задач в области безопасности, кэширования, редактирования URL, распределения нагрузки. Благодаря гибридным модулям MPM, Apache может одинаково успешно обслуживать статический и динамический контент. Есть возможность оперативно отключать ненужные модули и ускорять работу веб-сервера
- Кроссплатформенность. Apache работает как на Windows, так и на всех Unix-подобных системах. Администрирование веб-сервером не имеет серьёзных отличий на разных ОС. Индивидуален только процесс установки и расположение директорий с файлами программы.
- Совместимость. Apache работает на базе скриптовых или веб-ориентированных языков (PHP, Python, Tcl, Ruby, Perl, ASP), что делает его совместимым с самым широким спектром баз данных и серверного ПО. Многие веб-приложения и инструменты сразу выходят со средствами запуска из-под Apache в виде PHP-модуля. Веб-сервер, поддерживает технологии FastCGI и CGI, позволяющие пользоваться программными продуктами на объектно-ориентированных языках Java, sh, C, C++.
- Масштабируемость. Подходит для веб-ресурсов любого масштаба. Apache хорошо работает как на одностраничном сайте (лендинге), так и на многостраничном сайте с ежедневной аудиторией в десятки тысяч посетителей.

### OJS
Open Journal Systems (OJS, «Открытые журнальные системы») — открытое программное обеспечение для организации рецензируемых научных изданий, разработанное некоммерческим исследовательским проектом Public Knowledge Project. Распространяется по лицензии GNU General Public License.
#### Назначение OJS
Система OJS предназначена для создания рецензируемых электронных журналов с открытым доступом и позволяет не только публиковать статьи в интернете, но и организовывать весь рабочий процесс издательского дела: приём, рецензирование и каталогизирование статей. Подача статей производится через интернет.

В журналах OJS пользователи делятся на группы с различными привилегиями: менеджер издания, редактор, рецензент, автор, читатель и другие. OJS включает в себя расширение для распространения журнала по подписке. Редакторы журнала настраивают требования к статьям, секции, по которым принимаются статьи, процесс рецензирования и многое другое.

#### Архитектура OJS
Система OJS написана на PHP и может быть запущена на любом веб-серверe с поддержкой данного интерпретатора; в качестве базы данных используется MySQL или PostgreSQL.

##### Модульная система
OJS обладает модульной структурой и имеет возможность подключения плагинов, для расширения функционала, аналогично многим открытым продуктам, разрабатывающимся сообществами разработчиков, таких как WordPress. Существуют плагины, позволяющие индексировать содержимое журнала в Google Scholar и PubMed Central. Плагин подписки реализует поддержку стандартов RSS и Atom. Open Journal Systems соответствует стандартам проекта LOCKSS, что позволяет безопасно собирать, хранить и предоставлять доступ ко всем статьям журнала в долгосрочной перспективе. OJS поддерживает идентификаторы цифровых объектов, что позволяет регистрировать статьи в таких агентствах, как CrossRef, Multilingual European DOI Registration Agency и DataCite.

##### Дополнительные инструменты
Для вовлечения читателей в процесс создания журнала сообществом Public Knowledge Project был разработан набор инструментов Reading Tools, предоставляющий доступ к смежным исследованиям, тематическим новостям, законодательным актам и другим ресурсам в открытых базах данных.

#### Достоинства и недостатки OJS
- OJS является свободно распространяемым программным обеспечением с открытым кодом. Т.е. Вы не зависите от разработчиков и навязываемых лицензионных договоров.
- OJS изначально создавалась как специализированная издательская платформа. Она поддерживает обмен данными с международными реферативными базами данных и библиотеками.
- Имеет низкую стоимость разработки и поддержки сайтов на OJS.

### Плагин bootstrap3
Плагин bootstrap3 - встроенный плагин-тема, разработанный сообществом OJS, для упрощения работы с темами и стилями в OJS.

## Проделанная работа
Исходя из заданной цели, благодаря преподавателям была создана команда из 5 студентов Университета "Дубна". Каждый выполнял свои роли и отвечал за назначенную сферу ответственности.

Список совершенной работы:
- [Развернут сайт](##развернут-сайт) по адресу sanse.uni-dubna.ru
- [Полностью изменен](##создание-собственной-темы-bootstrap3) стандартный вид и тема оформления сайта
  - [Изменены структуры страниц сайта](##изменение-страниц)
- Добавлена мультиязычная функциональность
- Добавлены дополнительные плагины, упрощающие пользовательское взаимодействие с сайтом

### Развернут сайт
Сайт развернут на домене sanse.uni-dubna.ru при помощи вышеописанных технологий сервера apache и системы OJS. В процессе разработки были попытки использовать контейнеризацию системы Docker, но впоследствии идея оказалась бессмысленной. При помощи стандартных инструментов студенты развернули сайт, добившись его полного функционирования. Развертка применяла следующие рекомендуемые настройки:
>1. Выделите базу данных для OJS; используйте уникальные учетные данные для доступа к ней.
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
>технического характера и вопросов конфигурации сервера.
### Создание собственной темы bootstrap3
Praesent accumsan ut lectus vitae porta. Maecenas ullamcorper efficitur egestas. Integer luctus elit eu volutpat iaculis. *Duis* sit amet tristique dolor, a condimentum diam. Etiam lacinia turpis in odio condimentum, vitae porta elit porta. Sed placerat egestas hendrerit. Donec ut arcu iaculis, egestas elit ut, pellentesque est. Aenean faucibus leo sed mi commodo, quis ultricies justo luctus. Aliquam rhoncus metus neque, vel ullamcorper nibh convallis at. Maecenas ac neque sed erat posuere feugiat lacinia et ex. Cras semper est odio, maximus venenatis mi congue eget. Nulla neque augue, congue eu sollicitudin non, ullamcorper at nunc. Vestibulum ultrices mi lorem, eu dapibus quam pulvinar ut.


### Дополнительные плагины
1. Плагин создания собственных страниц;
1. Плагин *цитирования* в различных форматах;
1. Плагин облака **тэгов**;
1. Модуль метаданных dublin core;
1. PDF просмоторщик;
1. Модуль менеджер пользовательских блоков;
1. Модуль быстрой отправки.

### Документация на русском языке
Дополнительная документация на русском языке может быть найдена [здесь](https://elib.bsu.by/bitstream/123456789/174391/1/Learn%20OJS%20>3.pdf)
