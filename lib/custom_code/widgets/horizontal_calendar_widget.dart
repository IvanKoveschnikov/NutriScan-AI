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

// Автоматические импорты FlutterFlow
import '/custom_code/widgets/index.dart'; // Импорт других кастомных виджетов
// Начало кода кастомного виджета
// НЕ УДАЛЯТЬ И НЕ ИЗМЕНЯТЬ КОД ВЫШЕ!

/// Горизонтальный календарь с прокруткой.
///
/// Отображает ленту дней: текущий месяц + по 15 дней до и после. На каждом
/// дне можно показать точку-индикатор (если есть данные за этот день). Дни
/// вне текущего месяца отображаются полупрозрачными.
///
/// ⚠️ ВАЖНО для FlutterFlow: Устанавливай высоту виджета как "Auto" (Wrap
/// Content) — виджет сам занимает ровно столько места, сколько нужно
/// (~142px). Параметр [height] здесь НЕ используется — высота фиксирована в
/// коде.
class HorizontalCalendarWidget extends StatefulWidget {
  const HorizontalCalendarWidget({
    super.key,
    this.width,
    this.height,
    required this.selectedDate,
    required this.onDateSelected,
    required this.daysWithData,
    required this.colorAnUnspecifiedDay,
    required this.colorSelectedDay,
    required this.colorTheActualDay,
    required this.colorTheIndicator,
    this.cardBorderRadius = 24.0,
    this.cardWidth = 64.0,
    this.cardItemHeight = 70.0,
    this.cardSpacing = 8.0,
  });

  /// Ширина виджета (если null — занимает всю доступную ширину)
  final double? width;

  /// Высота виджета (не используется — высота рассчитывается автоматически).
  /// Оставлен для совместимости с FlutterFlow.
  final double? height;

  /// Текущая выбранная дата — на ней показывается цветной фон
  final DateTime selectedDate;

  /// Колбэк, вызываемый при нажатии на любой день.
  /// Принимает выбранную дату [date] и должен обновить [selectedDate] снаружи.
  final Future<dynamic> Function(DateTime date) onDateSelected;

  /// Список дат, у которых есть данные.
  /// Под такими днями отображается маленькая цветная точка-индикатор.
  final List<DateTime> daysWithData;

  /// Цвет цифр и названий дней для обычных (невыбранных) дней
  final Color colorAnUnspecifiedDay;

  /// Цвет фона карточки выбранного дня
  final Color colorSelectedDay;

  /// Цвет цифры сегодняшнего дня (когда он не выбран)
  final Color colorTheActualDay;

  /// Цвет точки-индикатора под днём, у которого есть данные
  final Color colorTheIndicator;

  /// Радиус скругления углов карточки каждого дня (по умолчанию 24)
  final double cardBorderRadius;

  /// Ширина каждой карточки дня в пикселях (по умолчанию 64)
  final double cardWidth;

  /// Высота каждой карточки дня в пикселях (по умолчанию 70)
  final double cardItemHeight;

  /// Расстояние между карточками дней в пикселях (по умолчанию 8)
  final double cardSpacing;

  @override
  State<HorizontalCalendarWidget> createState() =>
      _HorizontalCalendarWidgetState();
}

class _HorizontalCalendarWidgetState extends State<HorizontalCalendarWidget> {
  /// Контроллер горизонтального списка — нужен для программной прокрутки
  late ScrollController _scrollController;

  /// Внутреннее хранилище выбранной даты (независимо от внешнего виджета)
  late DateTime _internalSelected;

  /// Количество дополнительных дней до начала и после конца текущего месяца
  static const int _extraDays = 15;

  /// Высота полосы прокрутки = высота карточки (из параметра) + вертикальные отступы (6+6=12).
  /// Вычисляется динамически в build() через widget.cardItemHeight.

  /// Полный список отображаемых дней (текущий месяц + буферные дни)
  late List<DateTime> _days;

  /// Индекс выбранного дня в списке [_days] — используется для центрирования прокрутки
  late int _initialIndex;

  @override
  void initState() {
    super.initState();
    _internalSelected = widget.selectedDate;
    _buildDaysList(); // Строим список дней при первом запуске
    _scrollController = ScrollController();
    // После отрисовки первого кадра — прокручиваем к выбранному дню
    WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToSelected());
  }

  @override
  void didUpdateWidget(HorizontalCalendarWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Если снаружи изменилась выбранная дата — обновляем внутреннее состояние
    if (oldWidget.selectedDate != widget.selectedDate) {
      _internalSelected = widget.selectedDate;
      _buildDaysList();
      WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToSelected());
    }
  }

  /// Строит список дней для отображения.
  /// Включает: [_extraDays] дней до начала месяца + все дни месяца + [_extraDays] дней после.
  void _buildDaysList() {
    final selected = _internalSelected;
    final firstOfMonth = DateTime(selected.year, selected.month, 1);
    final lastOfMonth = DateTime(selected.year, selected.month + 1, 0);

    // Начало и конец диапазона отображаемых дней
    final start = firstOfMonth.subtract(const Duration(days: _extraDays));
    final end = lastOfMonth.add(const Duration(days: _extraDays));

    _days = [];
    DateTime current = start;
    while (!current.isAfter(end)) {
      _days.add(current);
      current = current.add(const Duration(days: 1));
    }

    // Ищем индекс выбранного дня в построенном списке
    _initialIndex = _days.indexWhere(
      (d) =>
          d.year == selected.year &&
          d.month == selected.month &&
          d.day == selected.day,
    );
    if (_initialIndex < 0) _initialIndex = 0; // Защита от -1
  }

  /// Прокручивает список так, чтобы выбранный день оказался по центру экрана.
  /// Использует [widget.cardWidth] и [widget.cardSpacing] для расчёта смещения.
  void _scrollToSelected() {
    final itemWidth = widget.cardWidth; // Ширина одной карточки из параметра
    final itemSpacing =
        widget.cardSpacing; // Отступ между карточками из параметра
    final index = _initialIndex;
    final screenWidth =
        (context.findRenderObject() as RenderBox?)?.size.width ?? 360.0;
    // Вычисляем смещение так, чтобы выбранный элемент был по центру
    final offset =
        index * (itemWidth + itemSpacing) - screenWidth / 2 + itemWidth / 2;
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        offset.clamp(0.0, _scrollController.position.maxScrollExtent),
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeInOut,
      );
    }
  }

  /// Возвращает true, если [date] — сегодняшний день
  bool _isToday(DateTime date) {
    final now = DateTime.now();
    return date.year == now.year &&
        date.month == now.month &&
        date.day == now.day;
  }

  /// Возвращает true, если [date] совпадает с выбранной датой
  bool _isSelected(DateTime date) {
    return date.year == _internalSelected.year &&
        date.month == _internalSelected.month &&
        date.day == _internalSelected.day;
  }

  /// Возвращает true, если [date] принадлежит текущему отображаемому месяцу.
  /// Дни вне месяца отображаются полупрозрачными.
  bool _isCurrentMonth(DateTime date) {
    return date.year == _internalSelected.year &&
        date.month == _internalSelected.month;
  }

  /// Возвращает true, если в [daysWithData] есть дата, совпадающая с [date].
  /// Используется для отображения точки-индикатора под карточкой.
  bool _hasData(DateTime date) {
    return widget.daysWithData.any(
      (d) => d.year == date.year && d.month == date.month && d.day == date.day,
    );
  }

  /// Возвращает короткое название дня недели на русском языке (Пн, Вт, ..., Вс)
  String _weekdayShort(DateTime date) {
    const days = ['Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб', 'Вс'];
    return days[date.weekday - 1];
  }

  /// Возвращает строку «Месяц Год» на русском языке, например «Март 2025»
  String _monthYear(DateTime date) {
    const months = [
      'Январь',
      'Февраль',
      'Март',
      'Апрель',
      'Май',
      'Июнь',
      'Июль',
      'Август',
      'Сентябрь',
      'Октябрь',
      'Ноябрь',
      'Декабрь',
    ];
    return '${months[date.month - 1]} ${date.year}';
  }

  @override
  void dispose() {
    _scrollController.dispose(); // Освобождаем контроллер при удалении виджета
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Ширина: из параметра или вся доступная ширина
      width: widget.width ?? double.infinity,
      // ⚠️ height намеренно НЕ передаётся в SizedBox —
      // виджет сам занимает ровно нужную высоту (заголовок + полоса дней).
      // Это решает проблему overflow во FlutterFlow.
      child: Column(
        // min — Column не растягивается больше своего содержимого
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Заголовок: название месяца и год ──────────────────────
          Padding(
            padding: const EdgeInsets.only(left: 4.0, bottom: 12.0),
            child: Text(
              _monthYear(_internalSelected),
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
          ),

          // ── Горизонтальная прокручиваемая лента дней ─────────────
          // Высота полосы = высота карточки (из параметра) + вертикальный padding (6+6=12)
          SizedBox(
            height: widget.cardItemHeight + 12.0,
            child: ListView.separated(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              itemCount: _days.length,
              // Расстояние между карточками берётся из параметра cardSpacing
              separatorBuilder: (_, __) => SizedBox(width: widget.cardSpacing),
              itemBuilder: (context, index) {
                final date = _days[index];
                final selected = _isSelected(date);
                final today = _isToday(date);
                final currentMonth = _isCurrentMonth(date);
                final hasData = _hasData(date);

                // ── Карточка одного дня (фиксированный размер) ────────────
                Widget dayCell = GestureDetector(
                  onTap: () async {
                    // Обновляем внутреннее состояние и пересчитываем список дней
                    setState(() {
                      _internalSelected = date;
                      _buildDaysList();
                    });
                    // Вызываем внешний колбэк, чтобы родитель тоже обновился
                    await widget.onDateSelected(date);
                    // После перестройки — прокручиваем к новому выбранному дню
                    WidgetsBinding.instance.addPostFrameCallback(
                      (_) => _scrollToSelected(),
                    );
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    // Размеры карточки берутся из параметров виджета
                    width: widget.cardWidth,
                    height: widget.cardItemHeight,
                    decoration: BoxDecoration(
                      // Выбранный день — цветной фон; остальные — белый
                      color: selected
                          ? widget.colorSelectedDay.withOpacity(0.85)
                          : Colors.white,
                      borderRadius:
                          BorderRadius.circular(widget.cardBorderRadius),
                      // Тень: у выбранного дня — цветная, у остальных — нейтральная
                      boxShadow: selected
                          ? [
                              BoxShadow(
                                color: widget.colorSelectedDay.withOpacity(0.3),
                                blurRadius: 8,
                                offset: const Offset(0, 3),
                              ),
                            ]
                          : [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.06),
                                blurRadius: 4,
                                offset: const Offset(0, 2),
                              ),
                            ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Название дня недели (Пн, Вт, ...)
                        Text(
                          _weekdayShort(date),
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: selected
                                ? Colors.white.withOpacity(0.85)
                                : widget.colorAnUnspecifiedDay.withOpacity(0.7),
                          ),
                        ),
                        const SizedBox(height: 4),
                        // Номер дня
                        Text(
                          '${date.day}',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: selected
                                ? Colors.white
                                : (today
                                    ? widget
                                        .colorTheActualDay // Сегодня — особый цвет
                                    : widget
                                        .colorAnUnspecifiedDay), // Обычный день
                          ),
                        ),
                        const SizedBox(height: 5),
                        // Точка-индикатор: видна только если у дня есть данные
                        AnimatedOpacity(
                          duration: const Duration(milliseconds: 200),
                          opacity: hasData ? 1.0 : 0.0,
                          child: Container(
                            width: 5,
                            height: 5,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              // На выбранном дне точка белая; иначе — цвет индикатора
                              color: selected
                                  ? Colors.white
                                  : widget.colorTheIndicator,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );

                // Дни вне текущего месяца — делаем полупрозрачными через ColorFilter
                if (!currentMonth) {
                  dayCell = ImageFiltered(
                    imageFilter: ColorFilter.matrix(<double>[
                      1, 0, 0, 0, 0,
                      0, 1, 0, 0, 0,
                      0, 0, 1, 0, 0,
                      0, 0, 0, 0.35, 0, // opacity = 35%
                    ]),
                    child: dayCell,
                  );
                }

                return dayCell;
              },
            ),
          ),
        ],
      ),
    );
  }
}
