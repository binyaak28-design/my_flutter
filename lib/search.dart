import 'package:flutter/material.dart';



class SearchableListScreen extends StatefulWidget {
  @override
  _SearchableListScreenState createState() => _SearchableListScreenState();
}

class _SearchableListScreenState extends State<SearchableListScreen> {
  TextEditingController _searchController = TextEditingController();
  List<String> _allValues = [
    'Apple',
    'Banana',
    'Orange',
    'Grapes',
    'Pineapple',
    'Watermelon',
    'Mango',
    'Kiwi',
  ];
  List<String> _filteredValues = [];

  @override
  void initState() {
    super.initState();
    _filteredValues.addAll(_allValues);
  }

  void _filterValues(String query) {
    setState(() {
      _filteredValues = _allValues
          .where((value) => value.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Searchable List Example'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onChanged: _filterValues,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredValues.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(_filteredValues[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
