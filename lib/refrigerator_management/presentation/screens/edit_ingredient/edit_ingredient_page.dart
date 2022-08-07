import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:refrigerator_management/refrigerator_management/application/ingredient_output_data.dart';
import 'package:refrigerator_management/refrigerator_management/domain/model/ingredient_category.dart';
import 'package:refrigerator_management/refrigerator_management/presentation/providers/edit_ingredient_provider.dart';
import 'package:refrigerator_management/theme/app_theme.dart';
import 'package:refrigerator_management/theme/font_size.dart';

class EditIngredientPage extends ConsumerStatefulWidget {
  final IngredientOutputData initialData;
  const EditIngredientPage({Key? key, required this.initialData})
      : super(key: key);

  @override
  ConsumerState<EditIngredientPage> createState() => _EditIngredientPageState();
}

class _EditIngredientPageState extends ConsumerState<EditIngredientPage> {
  String dropdownValue = IngredientCategory.meat.toDisplayName();
  late TextEditingController _nameTextController;
  bool _isChanged = false;
  DateTime _selectedDateTime = DateTime.now();
  final DateFormat _outputFormat = DateFormat('yyyy-MM-dd');
  @override
  void initState() {
    _nameTextController = TextEditingController(text: widget.initialData.name);
    if (!widget.initialData.isNewData()) {
      dropdownValue = IngredientCategory.getDisplayNameFromName(
          widget.initialData.category);
    }
    ref.read(editIngredientProvider.notifier).init(widget.initialData);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = ref.watch(appThemeProvider).textTheme;
    final state = ref.watch(editIngredientProvider);
    return state.when(
        data: (ingredientData) => _buildEditIngredientWidget(context),
        error: (exception, _) => Scaffold(
              body: Center(
                child: Text(exception.toString()),
              ),
            ),
        loading: () => const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ));
  }

  Widget _buildEditIngredientWidget(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => GoRouter.of(context).go("/"),
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        title: const Center(
          child: Text("食材を登録"),
        ),
        actions: [
          IconButton(
            onPressed: _isChanged
                ? () {
                    ref.read(editIngredientProvider.notifier).save(
                          category: IngredientCategory.getNameFromDisplayName(
                              dropdownValue),
                          name: _nameTextController.text,
                          expirationDate: _selectedDateTime,
                          onSaved: () => _onSaved(context),
                        );
                  }
                : null,
            icon: const Icon(Icons.check),
            //color: _isChanged ? Theme.of(context).iconTheme.color : Colors.grey,
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 16,
                style: const TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                  _onEdited();
                },
                items: IngredientCategory.getDisplayList()
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: const InputDecoration(hintText: '食材などの名前を入力'),
                controller: _nameTextController,
                onChanged: (value) => _onEdited(),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    const Text('期限日'),
                    TextButton(
                      onPressed: () => _selectDate(context),
                      child: Text(
                        _outputFormat.format(_selectedDateTime.toLocal()),
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  void _onSaved(BuildContext context) {
    const snackBar = SnackBar(
      content: Text("Saved"),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    setState(() {
      _isChanged = false;
    });
  }

  void _onEdited() {
    bool isChanged = ref
        .read(editIngredientProvider.notifier)
        .isChanged(_nameTextController.text, dropdownValue, _selectedDateTime);
    if (_isChanged == isChanged) {
      return;
    }

    setState(() {
      _isChanged = isChanged;
    });
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 100, 12, 31),
    );
    if (date != null && _selectedDateTime != date) {
      setState(() {
        _isChanged = true;
        _selectedDateTime = date;
      });
    }
  }
}
