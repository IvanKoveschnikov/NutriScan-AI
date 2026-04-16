// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/cupertino.dart';

/// Виджет горизонтального "барабана" (колесика) в стиле iOS Cupertino.
///
/// Позволяет выбирать числовые значения из заданного диапазона с определенным
/// шагом.
class CupertinoHorizontalWheel extends StatefulWidget {
  const CupertinoHorizontalWheel({
    super.key,
    this.width,
    this.height,
    this.minMeaning,
    this.maxMeaning,
    this.step,
    this.currentMeaning,
    this.colorBackground,
    this.colorNumber,
    this.colorCurrentNumber,
    this.colorCurrentNumBorder,
    this.onSelected, // Параметр для колбэка при выборе значения
  });

  /// Ширина виджета
  final double? width;

  /// Высота виджета
  final double? height;

  /// Минимальное значение диапазона
  final double? minMeaning;

  /// Максимальное значение диапазона
  final double? maxMeaning;

  /// Шаг изменения значений
  final double? step;

  /// Текущее (начальное) значение
  final double? currentMeaning;

  /// Цвет фона контейнера
  final Color? colorBackground;

  /// Цвет обычных (не выбранных) чисел
  final Color? colorNumber;

  /// Цвет текущего выбранного числа
  final Color? colorCurrentNumber;

  /// Цвет рамки вокруг выбранного числа
  final Color? colorCurrentNumBorder;

  /// Экшен FlutterFlow, вызываемый при смене значения
  final Future Function(double? selectedValue)? onSelected;

  @override
  State<CupertinoHorizontalWheel> createState() =>
      _CupertinoHorizontalWheelState();
}

class _CupertinoHorizontalWheelState extends State<CupertinoHorizontalWheel> {
  /// Список всех доступных значений для выбора
  late List<double> _values;

  /// Индекс текущего выбранного элемента
  late int _currentIndex;

  /// Контроллер для управления прокруткой CupertinoPicker
  late FixedExtentScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _buildValues();
    _currentIndex = _calculateCurrentIndex();
    _scrollController = FixedExtentScrollController(initialItem: _currentIndex);
  }

  @override
  void didUpdateWidget(CupertinoHorizontalWheel oldWidget) {
    super.didUpdateWidget(oldWidget);

    // Проверяем, изменились ли границы или шаг
    final paramsChanged = oldWidget.minMeaning != widget.minMeaning ||
        oldWidget.maxMeaning != widget.maxMeaning ||
        oldWidget.step != widget.step;

    if (paramsChanged) {
      _buildValues();
    }

    // Проверяем, изменилось ли текущее значение извне (TextField или Page State)
    if (paramsChanged || oldWidget.currentMeaning != widget.currentMeaning) {
      final newIndex = _calculateCurrentIndex();

      // Если индекс поменялся, обновляем состояние и прокручиваем
      if (newIndex != _currentIndex) {
        setState(() {
          _currentIndex = newIndex;
        });

        // Используем jumpToItem после завершения кадра, чтобы синхронизироватьPicker
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (_scrollController.hasClients) {
            _scrollController.jumpToItem(_currentIndex);
          }
        });
      }
    }
  }

  /// Формирование списка значений на основе min, max и step
  void _buildValues() {
    final min = widget.minMeaning ?? 0.0;
    final max = widget.maxMeaning ?? 10.0;
    final step = (widget.step != null && widget.step! > 0) ? widget.step! : 1.0;

    _values = [];
    for (double i = min; i <= max; i += step) {
      _values.add(double.parse(i.toStringAsFixed(3)));
    }
  }

  /// Расчет индекса для текущего значения
  int _calculateCurrentIndex() {
    final initialValue = widget.currentMeaning ?? (widget.minMeaning ?? 0.0);
    final index = _values.indexWhere((val) => val >= initialValue);
    return (index == -1) ? 0 : index;
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  /// Форматирование числа для отображения (убираем .0 у целых чисел)
  String _formatValue(double value) {
    if (value == value.truncateToDouble()) {
      return value.toInt().toString();
    }
    return value.toString();
  }

  @override
  Widget build(BuildContext context) {
    final bgColor = widget.colorBackground ?? Colors.transparent;
    final numColor = widget.colorNumber ?? Colors.grey;
    final actNumColor = widget.colorCurrentNumber ?? Colors.black;
    final borderColor =
        widget.colorCurrentNumBorder ?? Colors.grey.withOpacity(0.5);

    return Container(
      width: widget.width ?? 300,
      height: widget.height ?? 80,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Вертикальная рамка-указатель выбранного значения
          Container(
            width: 50,
            height: (widget.height ?? 80) * 0.8,
            decoration: BoxDecoration(
              border: Border.all(color: borderColor, width: 1.5),
              borderRadius: BorderRadius.circular(24),
            ),
          ),

          // Основной барабан выбора.
          // RotatedBox поворачивает вертикальный CupertinoPicker в горизонтальный вид.
          RotatedBox(
            quarterTurns: -1,
            child: CupertinoPicker.builder(
              scrollController: _scrollController,
              itemExtent: 50, // Ширина каждого элемента в горизонтальном ряду
              useMagnifier: true,
              magnification: 1.1,
              selectionOverlay: const SizedBox(),
              onSelectedItemChanged: (int index) {
                setState(() {
                  _currentIndex = index;
                });
                // Вызов обратного вызова FlutterFlow
                if (widget.onSelected != null) {
                  widget.onSelected!(_values[index]);
                }
              },
              childCount: _values.length,
              itemBuilder: (context, index) {
                final isSelected = index == _currentIndex;

                // Внутренний RotatedBox возвращает текст в вертикальное положение
                return RotatedBox(
                  quarterTurns: 1,
                  child: Center(
                    child: Text(
                      _formatValue(_values[index]),
                      style: TextStyle(
                        fontSize: isSelected ? 24 : 18,
                        fontWeight:
                            isSelected ? FontWeight.bold : FontWeight.normal,
                        color: isSelected
                            ? actNumColor
                            : numColor.withOpacity(0.5),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
