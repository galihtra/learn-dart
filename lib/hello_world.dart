import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_country_restapi/app/data/model/country_model.dart';
import 'package:flutter_country_restapi/app/data/service/country_service.dart';
import 'package:url_launcher/url_launcher.dart';

enum SortType { name, capital, continent }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  int _counter = 0;
  List<Country>? countries;
  List<Country>? initCountries;
  bool isLoading = true;
  bool showSearchField = false;
  SortType sortType = SortType.name;
  final _gitUrl = Uri.parse('https://github.com/RaphaelRat/flutter-restapi-country/');

  @override
  void initState() {
    super.initState();
    loadCountries();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Country Info & Counter'),
      ),
      body: _selectedIndex == 0 ? getCountryPage() : getCounterPage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.public),
            label: 'Countries',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.plus_one),
            label: 'Counter',
          ),
        ],
      ),
    );
  }

  Widget getCountryPage() {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: getCountryWidget(),
      ),
    );
  }

  Widget getCounterPage() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('You have pressed the button this many times:'),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline4,
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _counter++;
              });
            },
            child: const Text('Increment'),
          ),
        ],
      ),
    );
  }

  Future<void> loadCountries() async {
    final countryService = CountryService();
    initCountries = await countryService.getAllCountries();
    countries = initCountries;
    sortCountries(SortType.name);
  }

  void searchCountry(String place) {
    if (initCountries != null) {
      setState(() {
        countries = initCountries!
            .where((c) =>
                c.name!.common!.toLowerCase().contains(place.toLowerCase()) ||
                (c.capital != null && c.capital!.isNotEmpty ? c.capital!.first.toLowerCase().contains(place.toLowerCase()) : false) ||
                (c.continents != null && c.continents!.isNotEmpty ? c.continents!.first.toLowerCase().contains(place.toLowerCase()) : false))
            .toList();
      });
    }
  }

  Future<void> sortCountries(SortType type) async {
    setState(() {
      isLoading = true;
      sortType = type;
    });
    if (countries != null) {
      countries!.sort((a, b) {
        switch (type) {
          case SortType.name:
            final nameA = a.name?.common?.toLowerCase();
            final nameB = b.name?.common?.toLowerCase();
            if (nameA != null && nameB != null) {
              return nameA.compareTo(nameB);
            }
            return 0;
          case SortType.capital:
            final nameA = a.capital != null && a.capital!.isNotEmpty ? a.capital?.first.toLowerCase() :null;
            final nameB = b.capital != null && b.capital!.isNotEmpty ? b.capital?.first.toLowerCase() : null;
            if (nameA != null && nameB != null) {
              return nameA.compareTo(nameB);
            }
            return 0;
          case SortType.continent:
            final nameA = a.continents != null && a.continents!.isNotEmpty ? a.continents?.first.toLowerCase() : null;
            final nameB = b.continents != null && b.continents!.isNotEmpty ? b.continents?.first.toLowerCase() : null;
            if (nameA != null && nameB != null) {
              return nameA.compareTo(nameB);
            }
            return 0;
          default:
            return }
      });
    }

    await Future.delayed(const Duration(milliseconds: 400));
    setState(() {
      isLoading = false;
    });
  }

  Widget getCountryWidget() {
    if (countries == null || isLoading) {
      return const Center(child: CircularProgressIndicator());
    } else if (countries!.isEmpty) {
      return const Center(
        child: Text('No country found!'),
      );
    } else {
      return SingleChildScrollView(
        child: SelectionArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                for (var country in countries!) ...{
                  Container(
                    constraints: const BoxConstraints(maxWidth: 1080),
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Expanded(child: Text(country.name?.common ?? 'No name')),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(country.capital != null && country.capital!.isNotEmpty ? country.capital!.first : 'No capital'),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(country.continents != null && country.continents!.isNotEmpty
                              ? country.continents!.length == 1
                                  ? country.continents.first
                                  : country.continents.toString()
                              : 'No continents'),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: country.flags != null && country.flags!.png != null
                              ? Image.network(country.flags!.png!)
                              : const Icon(Icons.flag_rounded),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    constraints: const BoxConstraints(maxWidth: 1080),
                    child: const Divider(),
                  )
                }
              ],
            ),
          ),
        ),
      );
    }
  }
}
