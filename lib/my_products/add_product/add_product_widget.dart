import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/my_products/component/categorii_chip_component/categorii_chip_component_widget.dart';
import '/my_products/component/product_chart_parameter_component/product_chart_parameter_component_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_product_model.dart';
export 'add_product_model.dart';

class AddProductWidget extends StatefulWidget {
  const AddProductWidget({super.key});

  static String routeName = 'AddProduct';
  static String routePath = '/addProduct';

  @override
  State<AddProductWidget> createState() => _AddProductWidgetState();
}

class _AddProductWidgetState extends State<AddProductWidget> {
  late AddProductModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddProductModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        leading: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: FlutterFlowIconButton(
            borderWidth: 1.0,
            buttonSize: 40.0,
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 20.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
        ),
        title: Text(
          'Добавить продукт',
          style: FlutterFlowTheme.of(context).titleLarge.override(
                font: GoogleFonts.nunito(
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                ),
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
                fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
        child: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _model.textController,
                focusNode: _model.textFieldFocusNode,
                onChanged: (_) => EasyDebounce.debounce(
                  '_model.textController',
                  Duration(milliseconds: 2000),
                  () => safeSetState(() {}),
                ),
                obscureText: false,
                decoration: InputDecoration(
                  labelText: 'Название продукта',
                  labelStyle: TextStyle(
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 16.0,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).hint,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  filled: true,
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  suffixIcon: _model.textController!.text.isNotEmpty
                      ? InkWell(
                          onTap: () async {
                            _model.textController?.clear();
                            safeSetState(() {});
                          },
                          child: Icon(
                            Icons.clear,
                            size: 22,
                          ),
                        )
                      : null,
                ),
                style: TextStyle(
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 16.0,
                ),
                maxLines: null,
                validator: _model.textControllerValidator.asValidator(context),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          0.0,
                          0.0,
                          FlutterFlowTheme.of(context).designToken.spacing.lg,
                          0.0),
                      child: Text(
                        'Категория продукта',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              font: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .fontStyle,
                              lineHeight: 1.3,
                            ),
                      ),
                    ),
                    Container(
                      child: Builder(
                        builder: (context) {
                          final itemCategoriesChoise =
                              FFAppState().CategoriesAS.toList();

                          return SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:
                                  List.generate(itemCategoriesChoise.length,
                                      (itemCategoriesChoiseIndex) {
                                final itemCategoriesChoiseItem =
                                    itemCategoriesChoise[
                                        itemCategoriesChoiseIndex];
                                return wrapWithModel(
                                  model: _model.categoriiChipComponentModels
                                      .getModel(
                                    itemCategoriesChoiseItem.id.toString(),
                                    itemCategoriesChoiseIndex,
                                  ),
                                  updateCallback: () => safeSetState(() {}),
                                  updateOnChange: true,
                                  child: CategoriiChipComponentWidget(
                                    key: Key(
                                      'Key7qx_${itemCategoriesChoiseItem.id.toString()}',
                                    ),
                                    id: itemCategoriesChoiseItem.id,
                                    categoriesDT: itemCategoriesChoiseItem,
                                    callbackAction: (categorie) async {
                                      // Установка категории
                                      _model.categorie = categorie;
                                      safeSetState(() {});
                                    },
                                  ),
                                );
                              }).divide(SizedBox(
                                      width: FlutterFlowTheme.of(context)
                                          .designToken
                                          .spacing
                                          .sm)),
                            ),
                          );
                        },
                      ),
                    ),
                  ].divide(SizedBox(
                      height:
                          FlutterFlowTheme.of(context).designToken.spacing.md)),
                ),
              ),
              wrapWithModel(
                model: _model.productChartParameterComponentModel,
                updateCallback: () => safeSetState(() {}),
                child: ProductChartParameterComponentWidget(
                  calories: _model.caloriesKCAL!,
                  protein: valueOrDefault<double>(
                    _model.protein,
                    0.0,
                  ),
                  fats: valueOrDefault<double>(
                    _model.fats,
                    0.0,
                  ),
                  carbs: valueOrDefault<double>(
                    _model.carbs,
                    0.0,
                  ),
                  calbackAction: () async {},
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                    0.0,
                    FlutterFlowTheme.of(context).designToken.spacing.md,
                    0.0,
                    0.0),
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Выберите аллергены',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              font: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .fontStyle,
                              lineHeight: 1.3,
                            ),
                      ),
                      Wrap(
                        spacing:
                            FlutterFlowTheme.of(context).designToken.spacing.sm,
                        runSpacing:
                            FlutterFlowTheme.of(context).designToken.spacing.sm,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        clipBehavior: Clip.none,
                        children: [
                          FlutterFlowChoiceChips(
                            options: [ChipData('Gluten-free')],
                            onChanged: (val) => safeSetState(() =>
                                _model.choiceChipsValue1 = val?.firstOrNull),
                            selectedChipStyle: ChipStyle(
                              backgroundColor:
                                  FlutterFlowTheme.of(context).primary,
                              textStyle: TextStyle(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              iconColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              iconSize: 18.0,
                              labelPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              elevation: 0.0,
                              borderWidth: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            unselectedChipStyle: ChipStyle(
                              backgroundColor:
                                  FlutterFlowTheme.of(context).primary,
                              textStyle: TextStyle(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              iconColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              iconSize: 18.0,
                              labelPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              elevation: 0.0,
                              borderWidth: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            chipSpacing: 0.0,
                            multiselect: false,
                            initialized: _model.choiceChipsValue1 != null,
                            controller: _model.choiceChipsValueController1 ??=
                                FormFieldController<List<String>>(
                              ['Gluten-free'],
                            ),
                            wrapped: false,
                          ),
                          FlutterFlowChoiceChips(
                            options: [ChipData('Nut-free')],
                            onChanged: (val) => safeSetState(() =>
                                _model.choiceChipsValue2 = val?.firstOrNull),
                            selectedChipStyle: ChipStyle(
                              backgroundColor: Color(0x00000000),
                              textStyle: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              iconSize: 18.0,
                              labelPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              elevation: 0.0,
                              borderWidth: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            unselectedChipStyle: ChipStyle(
                              backgroundColor: Color(0x00000000),
                              textStyle: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              iconSize: 18.0,
                              labelPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              elevation: 0.0,
                              borderWidth: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            chipSpacing: 0.0,
                            multiselect: false,
                            controller: _model.choiceChipsValueController2 ??=
                                FormFieldController<List<String>>(
                              [],
                            ),
                            wrapped: false,
                          ),
                          FlutterFlowChoiceChips(
                            options: [ChipData('Dairy-free')],
                            onChanged: (val) => safeSetState(() =>
                                _model.choiceChipsValue3 = val?.firstOrNull),
                            selectedChipStyle: ChipStyle(
                              backgroundColor: Color(0x00000000),
                              textStyle: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              iconSize: 18.0,
                              labelPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              elevation: 0.0,
                              borderWidth: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            unselectedChipStyle: ChipStyle(
                              backgroundColor: Color(0x00000000),
                              textStyle: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              iconSize: 18.0,
                              labelPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              elevation: 0.0,
                              borderWidth: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            chipSpacing: 0.0,
                            multiselect: false,
                            controller: _model.choiceChipsValueController3 ??=
                                FormFieldController<List<String>>(
                              [],
                            ),
                            wrapped: false,
                          ),
                          FlutterFlowChoiceChips(
                            options: [ChipData('Soy-free')],
                            onChanged: (val) => safeSetState(() =>
                                _model.choiceChipsValue4 = val?.firstOrNull),
                            selectedChipStyle: ChipStyle(
                              backgroundColor:
                                  FlutterFlowTheme.of(context).primary,
                              textStyle: TextStyle(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              iconColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              iconSize: 18.0,
                              labelPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              elevation: 0.0,
                              borderWidth: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            unselectedChipStyle: ChipStyle(
                              backgroundColor:
                                  FlutterFlowTheme.of(context).primary,
                              textStyle: TextStyle(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              iconColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              iconSize: 18.0,
                              labelPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              elevation: 0.0,
                              borderWidth: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            chipSpacing: 0.0,
                            multiselect: false,
                            initialized: _model.choiceChipsValue4 != null,
                            controller: _model.choiceChipsValueController4 ??=
                                FormFieldController<List<String>>(
                              ['Soy-free'],
                            ),
                            wrapped: false,
                          ),
                          FlutterFlowChoiceChips(
                            options: [ChipData('Sugar-free')],
                            onChanged: (val) => safeSetState(() =>
                                _model.choiceChipsValue5 = val?.firstOrNull),
                            selectedChipStyle: ChipStyle(
                              backgroundColor: Color(0x00000000),
                              textStyle: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              iconSize: 18.0,
                              labelPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              elevation: 0.0,
                              borderWidth: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            unselectedChipStyle: ChipStyle(
                              backgroundColor: Color(0x00000000),
                              textStyle: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              iconSize: 18.0,
                              labelPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              elevation: 0.0,
                              borderWidth: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            chipSpacing: 0.0,
                            multiselect: false,
                            controller: _model.choiceChipsValueController5 ??=
                                FormFieldController<List<String>>(
                              [],
                            ),
                            wrapped: false,
                          ),
                          FlutterFlowChoiceChips(
                            options: [ChipData('Vegan')],
                            onChanged: (val) => safeSetState(() =>
                                _model.choiceChipsValue6 = val?.firstOrNull),
                            selectedChipStyle: ChipStyle(
                              backgroundColor: Color(0x00000000),
                              textStyle: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              iconSize: 18.0,
                              labelPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              elevation: 0.0,
                              borderWidth: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            unselectedChipStyle: ChipStyle(
                              backgroundColor: Color(0x00000000),
                              textStyle: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                              iconColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              iconSize: 18.0,
                              labelPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              elevation: 0.0,
                              borderWidth: 0.0,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            chipSpacing: 0.0,
                            multiselect: false,
                            controller: _model.choiceChipsValueController6 ??=
                                FormFieldController<List<String>>(
                              [],
                            ),
                            wrapped: false,
                          ),
                        ],
                      ),
                    ].divide(SizedBox(
                        height: FlutterFlowTheme.of(context)
                            .designToken
                            .spacing
                            .md)),
                  ),
                ),
              ),
              Container(
                height: FlutterFlowTheme.of(context).designToken.spacing.xl,
              ),
              Container(
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                child: Padding(
                  padding: EdgeInsets.all(
                      FlutterFlowTheme.of(context).designToken.spacing.lg),
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primary,
                      borderRadius: BorderRadius.circular(
                          FlutterFlowTheme.of(context).designToken.radius.lg),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Stack(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        children: [
                          Container(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  FlutterFlowTheme.of(context)
                                      .designToken
                                      .spacing
                                      .xl,
                                  FlutterFlowTheme.of(context)
                                      .designToken
                                      .spacing
                                      .md,
                                  FlutterFlowTheme.of(context)
                                      .designToken
                                      .spacing
                                      .xl,
                                  FlutterFlowTheme.of(context)
                                      .designToken
                                      .spacing
                                      .md),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 0.0,
                                    height: 0.0,
                                  ),
                                  Text(
                                    'Save Product',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.dmSans(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                          lineHeight: 1.3,
                                        ),
                                  ),
                                  Container(
                                    width: 0.0,
                                    height: 0.0,
                                  ),
                                ].divide(SizedBox(width: 8.0)),
                              ),
                            ),
                          ),
                          Container(
                            width: 0.0,
                            height: 0.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
