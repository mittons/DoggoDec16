import 'package:doggo_dec_16/helpers/ui_helper.dart';
import 'package:doggo_dec_16/models/doggo_service/doggo_breed.dart';
import 'package:doggo_dec_16/services/doggo_service/doggo_service.dart';
import 'package:doggo_dec_16/services/service_result.dart';
import 'package:flutter/material.dart';

class DoggoScreen extends StatefulWidget {
  final DoggoService doggoService;

  const DoggoScreen({super.key, required this.doggoService});

  @override
  State<StatefulWidget> createState() => _DoggoScreenState();
}

class _DoggoScreenState extends State<DoggoScreen> {
  bool dogsLoaded = false;
  late List<DoggoBreed> doggoBreeds;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent.shade100,
        title: const Text("Doggo Diversity Galore!"),
      ),
      body: Column(
        children: [
          _buildButtonContainer(),
          if (dogsLoaded) Expanded(child: _buildDoggoDiversityList())
        ],
      ),
    );
  }

  Widget _buildButtonContainer() {
    return Container(
        child: ElevatedButton(
      onPressed: _handleButtonPressed,
      child: const Text("Show doggo diversity list! \\o/"),
    ));
  }

  Future<void> _handleButtonPressed() async {
    // Attempt to get data from doggo service (await)
    ServiceResult doggoDiversityResult =
        await widget.doggoService.getDoggoDiversityData();

    // If the build context stopped existing while we waited just.. return.
    if (!context.mounted) return;

    // Lets check if the attempt was successful.. if it wasnt lets go for graceful UX.. snackbar yum. And return.
    if (doggoDiversityResult.success != true) {
      UiHelper.displaySnackbar(context,
          "There was an error loading the diverse doggo data. Please try again later.");
    }

    // Ok so we have survived this far.. lets set the state with the new and updated data.. and make sure its clear the data is loaded. \o/
    setState(() {
      dogsLoaded = true;
      doggoBreeds = doggoDiversityResult.data!;
    });
  }

  Widget _buildDoggoDiversityList() {
    return ListView.builder(
        itemBuilder: _doggoBreedItemBuilder, itemCount: doggoBreeds.length);
  }

  Card _doggoBreedItemBuilder(context, index) {
    return Card(
      child: ListTile(
          title: Text(doggoBreeds[index].name),
          subtitle: (doggoBreeds[index].temperament == null)
              ? null
              : Text(doggoBreeds[index].temperament!)),
    );
  }
}
