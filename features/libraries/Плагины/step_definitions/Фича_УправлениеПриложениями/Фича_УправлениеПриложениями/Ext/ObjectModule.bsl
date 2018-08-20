﻿
#Область Служебные_функции_и_процедуры

// контекст фреймворка Vanessa-Behavior
Перем Ванесса;
 
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;

// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,ОписаниеШага,ТипШага,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"УстановленOneScript()", "УстановленOneScript",
		"Дано установлен OneScript", "Проверка установки OneScript", "Запуск приложений");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВыполняюКомандуСПараметрами(Парам01,Парам02)", "ЯВыполняюКомандуСПараметрами",
		"Когда Я выполняю команду ""oscript"" с параметрами ""-version""", 
		"Выполняется приложение/команды с параметрами и ожидается завершение приложения/команды", "Запуск приложений");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯСообщаюВыводКоманды(Парам01)", "ЯСообщаюВыводКоманды",
		"Тогда Я сообщаю вывод команды ""oscript""", "Показ вывода выполненного приложения/команды", "Запуск приложений");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВижуВКонсолиВывод(Парам01)", "ЯВижуВКонсолиВывод",
		"И я вижу в консоли вывод "".""", "Проверка вывода выполненного приложения/команды", "Запуск приложений");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"КодВозвратаРавен(Парам01)", "КодВозвратаРавен", "И Код возврата равен 0",
		"Проверка кода возврата выполненного приложения/команды", "Запуск приложений");

	Возврат ВсеТесты;
КонецФункции

// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакет(ИмяМакета);
КонецФункции

#КонецОбласти



#Область Работа_со_сценариями

// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт
	
КонецПроцедуры

// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт
	
КонецПроцедуры

#КонецОбласти


///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

//Когда установлен OneScript
//@УстановленOneScript()
Процедура УстановленOneScript() Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	Ожидаем = Ванесса.Плагин("УтвержденияBDD");
	
	УправлениеПриложениями = Ванесса.Плагин("УправлениеПриложениями");
	Установлен = УправлениеПриложениями.УстановленOneScript();
	
	Ожидаем.Что(Установлен, "OneScript должен быть установлен, а это не так.")
		.ЭтоИстина();
	//ВызватьИсключение "Не реализовано.";
КонецПроцедуры

//Когда Я выполняю команду "oscript" с параметрами "-version"
//@ЯВыполняюКомандуСПараметрами(Парам01,Парам02)
Процедура ЯВыполняюКомандуСПараметрами(Знач Команда, Знач СтрокаПараметров) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	СтрокаЗапуска = Команда + " " + СтрокаПараметров;
	
	//УправлениеПриложениями = Ванесса.Плагин("УправлениеПриложениями");
	//КодВозврата = УправлениеПриложениями.ВыполнитьКомандуОСБезПоказаЧерногоОкна(СтрокаЗапуска);
	КодВозврата = Ванесса.ВыполнитьКомандуОСБезПоказаЧерногоОкна(СтрокаЗапуска);
	
	Контекст.Вставить("КодВозврата", КодВозврата);
КонецПроцедуры

//Тогда Я сообщаю вывод команды "oscript"
//@ЯСообщаюВыводКоманды(Парам01)
Процедура ЯСообщаюВыводКоманды(Парам01) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	ВызватьИсключение "Не реализовано.";
КонецПроцедуры

//И я вижу в консоли вывод "."
//@ЯВижуВКонсолиВывод(Парам01)
Процедура ЯВижуВКонсолиВывод(Парам01) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	ВызватьИсключение "Не реализовано.";
КонецПроцедуры

//И Код возврата равен 0
//@КодВозвратаРавен(Парам01)
Процедура КодВозвратаРавен(Знач ОжидаемыйКодВозврата) Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	КодВозврата = Контекст.КодВозврата;

	Ожидаем = Ванесса.Плагин("УтвержденияBDD");
	Ожидаем.Что(КодВозврата, "Код возврата").Равно(ОжидаемыйКодВозврата);
КонецПроцедуры
