import 'package:flutter/material.dart';

void main(){
  runApp(assignment5());
}

class assignment5 extends StatelessWidget {
  const assignment5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 5',
      debugShowCheckedModeBanner: false,
      home: FeedbackFrom(),
    );
  }
}

class FeedbackFrom extends StatefulWidget {
  const FeedbackFrom({super.key});

  @override
  State<FeedbackFrom> createState() => _FeedbackFromState();
}
  int _sliderValue = 5;
  final double _fontSize = 16;

  Map<String, bool> _featuresLiked = {
    'Easy to use': false,
    'Design': false,
    'Speed': false,
    'Support': false,
    'I agree to the terms and conditions': false,
  };
class _FeedbackFromState extends State<FeedbackFrom> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _rollNumberController = TextEditingController();
  final _feedbackController = TextEditingController();
  String? _selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back)
        ),
        title: Text('Flutter Feedback Form',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(15),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 5,
              children: [
                Text('Name',
                  style: TextStyle(
                    fontSize: _fontSize,
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    label: Text('Enter your name'),
                  ),
                  controller: _nameController,
                  validator: (value) => value!.isEmpty ? 'Please enter your name' : null,
                ),
                SizedBox(height: 5,),
                Text('Roll Number',
                  style: TextStyle(
                    fontSize: _fontSize,
                  ),
                ),
                TextFormField(
                  controller: _rollNumberController,
                  validator: (value) => value!.isEmpty ? 'Please Enter your roll number' : null,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    label: Text('Enter your roll number'),
                  ),
                ),
                SizedBox(height: 5,),
                Text('Enter your Feedback',
                  style: TextStyle(
                    fontSize: _fontSize,
                  ),
                ),
                TextFormField(
                  controller: _feedbackController,
                  validator: (value) => value!.isEmpty ? 'Please Enter your Feedback' : null,
                  maxLines: 5,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Rate your Experience'),
                    Text('$_sliderValue')
                  ],
                ),
                Slider(
                    min: 0,
                    max: 20,
                    value: _sliderValue.toDouble(),
                    onChanged: (value) => setState(() { _sliderValue = value.toInt();})
                  ),
                Text('Select a category'),
                DropdownButtonFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                  hint: Text('Choose a category'),
                  value: _selectedValue,
                  items: [
                    DropdownMenuItem(child: Text('ungi'), value: 'ungi',),
                    DropdownMenuItem(child: Text('pungi'), value: 'pungi',),
                    DropdownMenuItem(child: Text('chungi'), value: 'chungi',),
                    DropdownMenuItem(child: Text('tungi'), value: 'tungi',),
                  ],
                  onChanged: (value) => setState(() {
                    _selectedValue = value;
                  }),
                  validator: (value) => value!.isEmpty ? 'Please select a category' : null,
                ),
                SizedBox(height: 10,),
                Text('What features did you like?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                ..._featuresLiked.entries.map((entry) => CustomCheckBoxListTile(
                  title: entry.key,
                  value: entry.value,
                  onChanged: (val) {
                    setState(() {
                      _featuresLiked[entry.key] = val!;
                    });
                  },
                )).toList(),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()){
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Submitted Details'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('Name: ${_nameController.text}'),
                                  Text('Roll no.: ${_rollNumberController.text}'),
                                  Text('Feedback: ${_feedbackController.text}'),
                                  Text('Category: $_selectedValue'),
                                  Text('Features Liked: '),
                                  Text('Features Liked:'),
                                  ..._featuresLiked.entries
                                      .where((e) => e.value)
                                      .map((e) => Text('- ${e.key}'))
                                      .toList(),
                                ],
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: Text('Close'),
                                )
                              ],
                            );
                          }
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: WidgetStateColor.resolveWith((states) => Colors.blue,),
                    ),
                    child: Text('Submit',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomCheckBoxListTile extends StatefulWidget {
  final String title;
  final Function(bool?) onChanged;
  final bool value;

  const CustomCheckBoxListTile({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  @override
  State<CustomCheckBoxListTile> createState() => _CustomCheckBoxListTileState();
}

class _CustomCheckBoxListTileState extends State<CustomCheckBoxListTile> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      contentPadding: EdgeInsets.zero,
      controlAffinity: ListTileControlAffinity.leading,
      title: Text(widget.title,
        style: TextStyle(
          fontSize: _fontSize,
        ),
      ),
      value: widget.value,
      onChanged: widget.onChanged,
      visualDensity: VisualDensity.compact,
    );
  }
}
