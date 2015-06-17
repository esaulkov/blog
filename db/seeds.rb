# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, , { name: 'Copenhagen' }, ])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  # Delete all data
  Vote.delete_all
  PollItem.delete_all
  Poll.delete_all
  Post.delete_all
  User.delete_all
  
  users = User.create([
    { id: 1, email: 'evg.esaulkov@gmail.com', password: 'abracadabra' }, 
    { id: 2, email: 'petr.ivanov@mail.ru', password: '123456789' }, 
    { id: 3, email: 'vasily@yandex.ru', password: '987654321' }, 
    { id: 4, email: 'abc@mail.ru', password: '147852369' }, 
    { id: 5, email: 'def@yandex.ru', password: '321456987' }, 
    { id: 6, email: 'email12@mail.ru', password: '11111111' }, 
    { id: 7, email: 'a_b_c@yandex.ru', password: '159842673' } 
  ])
  
  posts = Post.create([
    { id: 1, title: 'How do assigns and reload work in Rails tests?', body: "Rails offers a couple of methods to access persisted test data, but how do they work? Let's get some answers, with the help of Pry.", user_id: 1 }, 
    { id: 2, title: 'Everyday Git: Clean up and start over', body: "Git makes it easy to experiment with ideas before committing them for posterity. Here's one way to get rid of those experiments when they go bad.", user_id: 1 }, 
    { id: 3, title: 'Смотря на код с закрытыми глазами', body: 'Я — программист. А ещё я слеп. Слеп, как крот, как говорится. Таков я от рождения.

Когда я говорю об этом своим товарищам, то те из них, у кого никогда не было проблем со зрением, обычно задают один из трёх вопросов:

Как же ты тогда можешь читать то, что я пишу?
Ого. А как ты тогда можешь кодить?
Или — самый популярный вопрос — А ты видишь сны?

Мне задают эти вопросы снова и снова. Поэтому в этой блогозаписи я хочу на них ответить. Я попытаюсь нарисовать картинку для тех из вас, кто интересуется адаптированием и тем, как слепые люди пользуются компьютером, кодят и выполняют другие работы в 21 веке.', user_id: 2 }, 
    { id: 4, title: '«Молодежь не смотрит телевизор» – один из выводов ежегодного «Отчета о состоянии цифровых новостей»', body: 'Ежегодный «Отчет о состоянии цифровых новостей», подготавливаемый Рейтеровским институтом изучения журналистики при Оксфордском университете, вчера появился в свободном доступе. 

В документе много статистических и аналитических данных по тем странам, в которых проводилось исследование: США, Великобритания, Франция, Испания, Италия, Дания, Финляндия, Япония, Австралия и крупные города Бразилии. Выводы, которые авторы собрали в документе, ожидаемы.', user_id: 3 }, 
    { id: 5, title: 'Выпуск nginx 1.9.2', body: 'Доступен новый выпуск основной ветки высокопроизводительного HTTP-сервера nginx 1.9.2, в котором представлено несколько новшеств:

В модуль stream с реализацией системы балансировки произвольных TCP-соединений добавлена поддержка директив "proxy_bind" (выбор исходящего адреса) и "proxy_protocol" (выбор протокола PROXY), а также средств ограничения доступа клиентов через директивы "allow" и "deny";
В модуль stream и в почтовый прокси добавлена поддержка параметра "backlog" в директиву "listen";
Добавлена опция "-T" для проверки файла конфигурации с выводом дампа текущей конфигурации;
В fastcgi.conf, fastcgi_params, scgi_params и uwsgi_params добавлен параметр REQUEST_SCHEME.', user_id: 1 }
  ])
  
  polls = Poll.create([
    { id: 1, question: 'Do you use automation tests by software testing?', post_id: 1 }, 
    { id: 2, question: 'Какие системы контроля версий Вы используете (для собственных проектов и для работы)?', post_id: 2 }, 
    { id: 3, question: 'Какая методология используется в вашем проекте или?', post_id: 3 }, 
    { id: 4, question: 'Какой JavaScript Framework используете вы?', post_id: 4 }, 
    { id: 5, question: 'Нравятся ли Вам опросы?', post_id: 5 } 
  ])

  poll_items = PollItem.create([
    { id: 1, answer: 'Yes, always', poll_id: 1, votes_count: 3 }, 
    { id: 2, answer: 'Yes, sometimes', poll_id: 1, votes_count: 2 }, 
    { id: 3, answer: 'Almost newer', poll_id: 1, votes_count: 1 }, 
    { id: 4, answer: 'No', poll_id: 1, votes_count: 1 }, 
    { id: 5, answer: 'Git', poll_id: 2, votes_count: 4 }, 
    { id: 6, answer: 'Mercurial', poll_id: 2, votes_count: 1 }, 
    { id: 7, answer: 'CVS', poll_id: 2, votes_count: 1 }, 
    { id: 8, answer: 'Как получится', poll_id: 3, votes_count: 3 }, 
    { id: 9, answer: 'Scrum', poll_id: 3, votes_count: 1 }, 
    { id: 10, answer: 'Agile', poll_id: 3, votes_count: 3 }, 
    { id: 11, answer: 'Waterfall', poll_id: 3, votes_count: 0 }, 
    { id: 12, answer: 'Backbone', poll_id: 4, votes_count: 2 }, 
    { id: 13, answer: 'AngularJS', poll_id: 4, votes_count: 2 }, 
    { id: 14, answer: 'React', poll_id: 4, votes_count: 2 }, 
    { id: 15, answer: 'Да', poll_id: 5, votes_count: 5 }, 
    { id: 16, answer: 'Нет', poll_id: 5, votes_count: 1 } 
  ])
  
  votes = Vote.create([
    { id: 1, user_id: 1, poll_item_id: 1 }, 
    { id: 2, user_id: 2, poll_item_id: 1 }, 
    { id: 3, user_id: 3, poll_item_id: 1 }, 
    { id: 4, user_id: 4, poll_item_id: 2 }, 
    { id: 5, user_id: 5, poll_item_id: 2 }, 
    { id: 6, user_id: 6, poll_item_id: 3 }, 
    { id: 7, user_id: 7, poll_item_id: 4 }, 
    { id: 8, user_id: 2, poll_item_id: 5 }, 
    { id: 9, user_id: 3, poll_item_id: 5 }, 
    { id: 10, user_id: 4, poll_item_id: 5 }, 
    { id: 11, user_id: 5, poll_item_id: 5 }, 
    { id: 12, user_id: 6, poll_item_id: 6 }, 
    { id: 13, user_id: 7, poll_item_id: 7 }, 
    { id: 14, user_id: 7, poll_item_id: 8 }, 
    { id: 15, user_id: 6, poll_item_id: 8 }, 
    { id: 16, user_id: 5, poll_item_id: 8 }, 
    { id: 17, user_id: 4, poll_item_id: 9 }, 
    { id: 18, user_id: 3, poll_item_id: 10 }, 
    { id: 19, user_id: 2, poll_item_id: 10 }, 
    { id: 20, user_id: 1, poll_item_id: 10 }, 
    { id: 21, user_id: 1, poll_item_id: 12 }, 
    { id: 22, user_id: 2, poll_item_id: 12 }, 
    { id: 23, user_id: 3, poll_item_id: 13 }, 
    { id: 24, user_id: 5, poll_item_id: 13 }, 
    { id: 25, user_id: 6, poll_item_id: 14 }, 
    { id: 26, user_id: 7, poll_item_id: 14 }, 
    { id: 27, user_id: 2, poll_item_id: 15 }, 
    { id: 28, user_id: 3, poll_item_id: 15 }, 
    { id: 29, user_id: 4, poll_item_id: 15 }, 
    { id: 30, user_id: 5, poll_item_id: 15 }, 
    { id: 31, user_id: 6, poll_item_id: 16 }, 
    { id: 32, user_id: 7, poll_item_id: 15 } 
  ])


