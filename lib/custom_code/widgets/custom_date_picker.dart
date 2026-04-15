// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!

import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

/// Виджет [CustomDatePicker] представляет собой кастомную панель выбора даты
/// с возможностью ручного выбора через колесо (в стиле iOS) и кнопками
/// быстрого выбора "Сегодня" и "Вчера".
class CustomDatePicker extends StatefulWidget {
  const CustomDatePicker({
    Key? key,
    this.width,
    this.height,
    this.initialDate,
  }) : super(key: key);

  /// Ширина виджета (опционально)
  final double? width;

  /// Высота виджета (опционально)
  final double? height;

  /// Начальная дата, которая будет выбрана по умолчанию
  final DateTime? initialDate;

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  /// Переменная для хранения текущей выбранной даты в барабане
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    // Инициализируем выбранную дату: берем переданную initialDate
    // или текущую дату, если initialDate не передана.
    _selectedDate = widget.initialDate ?? DateTime.now();
  }

  /// Метод для возврата выбранной даты
  /// [date] - дата, которая будет возвращена при нажатии "Готово", "Сегодня" или "Вчера"
  void _returnDate(DateTime date) {
    // Закрываем текущее окно (BottomSheet) и возвращаем выбранную дату обратно вызывающему коду
    Navigator.pop(context, date);
  }

  @override
  Widget build(BuildContext context) {
    // Главный контейнер виджета
    return Container(
      width: widget.width ?? double.infinity,
      // Убираем жесткую высоту 460, чтобы Column с MainAxisSize.min мог подстроиться под контент,
      // или используем widget.height, если он передан явно.
      height: widget.height,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 1. Верхняя панель (Header) с кнопками "Отмена" и "Готово"
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Кнопка "Отмена"
                GestureDetector(
                  onTap: () =>
                      Navigator.pop(context), // Закрываем без возврата дата
                  child: const Text(
                    'Отмена',
                    style: TextStyle(
                      color: Color(0xFF9E9E9E), // Серый цвет, как на дизайне
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                // Заголовок модального окна
                const Text(
                  'Выберите дату',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                // Кнопка "Готово" со значком
                GestureDetector(
                  onTap: () =>
                      _returnDate(_selectedDate), // Подтверждаем выбранную дату
                  child: Row(
                    children: const [
                      Icon(Icons.check, size: 16, color: Color(0xFF9E9E9E)),
                      SizedBox(width: 4),
                      Text(
                        'Готово',
                        style: TextStyle(
                          color: Color(0xFF9E9E9E),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // 2. Центральная часть: Барабан выбора даты (CupertinoDatePicker)
          SizedBox(
            height:
                250, // Явно задаем высоту для барабана, чтобы избежать проблем с Expanded
            child: Container(
              color:
                  const Color(0xFFF7F6F4), // Светло-бежевый фон как на картинке
              padding: const EdgeInsets.symmetric(vertical: 0),
              // Принудительно задаем русскую локаль для барабана выбора даты с делегатами
              child: Localizations.override(
                context: context,
                locale: const Locale('ru', 'RU'),
                delegates: const [
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                child: Theme(
                  // Настраиваем тему для барабана, чтобы он выглядел аккуратно
                  data: ThemeData(
                    cupertinoOverrideTheme: const CupertinoThemeData(
                      textTheme: CupertinoTextThemeData(
                        dateTimePickerTextStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                  child: CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.date,
                    initialDateTime: _selectedDate,
                    minimumYear: 1900,
                    maximumYear: 2100,
                    onDateTimeChanged: (DateTime newDate) {
                      // Обновляем состояние _selectedDate при прокрутке барабана
                      setState(() {
                        _selectedDate = newDate;
                      });
                    },
                  ),
                ),
              ),
            ),
          ),

          // 3. Нижняя часть: Блок быстрого выбора "Сегодня" и "Вчера"
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Текст над блоком быстрых кнопок
                const Text(
                  'Быстрый выбор',
                  style: TextStyle(
                    color: Color(0xFF757575), // Темно-серый
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 12),
                // Блок кнопок "Вчера" и "Сегодня"
                Row(
                  children: [
                    // Кнопка "Сегодня"
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          // При нажатии моментально возвращаем текущую дату
                          _returnDate(DateTime.now());
                        },
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(12), // Скругление кнопок
                          ),
                          side: const BorderSide(
                              color: Color(0xFFE0E0E0)), // Светло-серая рамка
                          backgroundColor: Colors.white,
                        ),
                        child: const Text(
                          'Сегодня',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    // Кнопка "Вчера"
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          // Вычисляем вчерашнюю дату и возвращаем её моментально
                          final now = DateTime.now();
                          final yesterday =
                              DateTime(now.year, now.month, now.day - 1);
                          _returnDate(yesterday);
                        },
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(12), // Скругление кнопок
                          ),
                          side: const BorderSide(
                              color: Color(0xFFE0E0E0)), // Светло-серая рамка
                          backgroundColor: Colors.white,
                        ),
                        child: const Text(
                          'Вчера',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // Опциональный отступ для безопасной зоны на устройствах без кнопок (iPhone)
                const SafeArea(
                  top: false,
                  child: SizedBox(height: 0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
