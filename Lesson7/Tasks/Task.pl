Практика
   1. Пафнутий накосячил с загрузкой данных в симулятор, в результате для части бойцов вместо отчества записалась фамилия. Например, «Хрустицкий Владислав Хрустицкий» вместо «Хрустицкий Владислав Владиславович». Никодим должен написать регулярное выражение, которое позволит найти такие битые данные.

само регулярное выражение /^(\w+)\s(\w+)\s(\1)/ которое позволяет найти такие  
#битые данные.


    2. Эммануил Гедеонович готовит к передаче заказчику техническую документацию по проекту X. Проект X включает несколько моделей с разными номерами (например, X-112). Для повышения маркетинговой привлекательности было решено присвоить каждой модели кодовое имя (например, модель X-100 — Exterminator, модель X-911 — Extractor и т. п.). У Никодима есть информация по кодовым именам всех моделей. Он должен написать регулярное выражение для замены всех номеров моделей в документации кодовыми именами.



    3. Решить минимум три любые задачи из http://callumacrae.github.io/regex-tuesday/.
Regex Tuesday Challenge - Week Seven
Test cases 39/41
http://callumacrae.github.io/regex-tuesday/challenge7.html?find=%2F%5E(http)s%3F%3A%5C%2F%5C%2F(%5B%5Cw%5D(%5B-%5Cda-z%5D*%5B%5Cw%5D)%3F%5C.)*%5B%5Cw%5D%2B%5C%2F%3F%24%2Fi

Regex Tuesday Challenge - Week One
Test cases 11/11
http://callumacrae.github.io/regex-tuesday/challenge1.html?find=%2F%5Cb(%5B%5Cw%27%5D%2B)%5Cb%5Cs(%5Cb%5C1%5Cb)%2Fgi&replace=%241%20<strong>%242<%2Fstrong>

Regex Tuesday Challenge - Week Five
Test cases 29/31
http://callumacrae.github.io/regex-tuesday/challenge5.html?find=%2F%5E%5Cd%7B1%2C3%7D((%2C%7C%5Cs)%5Cd%2B)*(%5C.%5Cd%2B)%3F%24%2F
 
