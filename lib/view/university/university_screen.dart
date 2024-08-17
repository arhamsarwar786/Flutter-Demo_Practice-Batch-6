import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:stack_linkedin_sample/components/custom_loader.dart';
import 'package:stack_linkedin_sample/controller/provider/university_provider.dart';
import 'package:stack_linkedin_sample/utils/my_snackbar.dart';

class UniversityScreen extends StatefulWidget {
  const UniversityScreen({super.key});

  @override
  State<UniversityScreen> createState() => _UniversityScreenState();
}

class _UniversityScreenState extends State<UniversityScreen> {
  @override
  void initState() {
    super.initState();

    UniversityProvider provider = context.read<UniversityProvider>();
    provider.getUniversites();
  }

  final searchCountry = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<UniversityProvider>(builder: (context, provider, _) {
        return provider.universitiesList == null
            ? const CustomLoader()
            : RefreshIndicator(
              
               onRefresh: () {
          UniversityProvider provider = context.read<UniversityProvider>();
          return provider.getUniversites();
        },
              child: Column(
                  children: [
                    TextField(
                      onTapOutside: (a){
                           if (searchCountry.text.isEmpty) {
                            mySnackBar(
                                context, "Please! Enter Valid Country Name");
                          } else {
                            provider.getUniversites(
                                country: searchCountry.text);
                          }
                      },
                      onSubmitted: (v){
   if (searchCountry.text.isEmpty) {
                            mySnackBar(
                                context, "Please! Enter Valid Country Name");
                          } else {
                            provider.getUniversites(
                                country: searchCountry.text);
                          }
                      },
                      controller: searchCountry,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                        onPressed: () {
                          if (searchCountry.text.isEmpty) {
                            mySnackBar(
                                context, "Please! Enter Valid Country Name");
                          } else {
                            provider.getUniversites(
                                country: searchCountry.text);
                          }
                        },
                        icon: Icon(Icons.search),
                      )),
                    ),
                    Expanded(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: provider.universitiesList!.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title:
                                  Text(provider.universitiesList![index].name),
                            );
                          }),
                    ),
                  ],
                ),
            );
      }),
    );
  }
}
