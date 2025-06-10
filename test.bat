@echo off
echo Запускаем нагрузочный тест hey...
hey -z 2m -q 500 -c 100 http://158.160.136.54:8080/api/health

echo Нагрузочный тест завершён.
pause