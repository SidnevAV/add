


@IgnoreOnCIMainBuild
@ExportScenarios

Функционал: Тестовая фича, для проверки передачи параметров во вложенные сценарии уровень один

Сценарий: Я сценарий первого уровня с параметром "//ПервыйПараметр" и "ВторойПараметр" и 3 параметр и 11.09.1983 параметр даты
	Когда Я сценарий второго уровня с параметром "//ПервыйПараметр" и "ВторойПараметр" и 3 параметр и 11.09.1983 параметр даты
	И     в переменной контекста "ПервоеЗначение" находится значение "//ПервыйПараметр"
	И     в переменной контекста "ВтороеЗначение" находится значение "ВторойПараметр"
	И     в переменной контекста "ТретьеЗначение" находится значение 3
	И     в переменной контекста "ЧетвертоеЗначение" находится значение 11.09.1983
	И     я развернул все ветки дерева VB
