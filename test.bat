@echo off
echo Запускаем нагрузочный тест hey...
hey -z 20m -q 1500 -c 500 http://158.160.184.239:8080/health

echo Нагрузочный тест завершён.
pause