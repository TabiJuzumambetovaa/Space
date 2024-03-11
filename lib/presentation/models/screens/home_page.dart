import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_space_attempt2/presentation/bloc/solar_system_bloc.dart';
import 'package:flutter_space_attempt2/presentation/models/solar_system_model.dart';
import 'package:flutter_space_attempt2/presentation/theme/colors/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: BlocBuilder<SolarSystemBloc, SolarSystemState>(
          builder: (context, state) {
            if (state is SolarSystemLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is SolarSystemSuccess) {
              final SolarSystemModel? solarSystemModel =
                  state.solarSystemModel;
              return Expanded(
                child: ListView.builder(
                  itemCount: solarSystemModel?.bodies?.length ?? 1,
                  itemBuilder: (context, index) {
                    final int bodyIndex = index %
                        (solarSystemModel?.bodies?.length ?? 1);
                    final Bodies? currentBody =
                        solarSystemModel?.bodies?[bodyIndex];

                    return Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Container(
                        width: 100,
                        height: 150,
                        padding: const EdgeInsets.all(8.0),
                        margin: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 185, 21, 183),
                              offset: Offset(5.0, 5.0),
                              blurRadius: 15,
                              spreadRadius: 1,
                            ),
                            BoxShadow(
                              color: Color.fromARGB(255, 202, 60, 180),
                              offset: Offset(-5.0, -5.0),
                              blurRadius: 15,
                              spreadRadius: 1,
                            ),
                          ],
                          color: const Color.fromARGB(255, 181, 78, 165),
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            buildInfoRow(
                              "English Name",
                              currentBody?.englishName,
                            ),
                            buildInfoRow(
                              "Gravity",
                              currentBody?.gravity?.toString(),
                            ),
                            buildInfoRow(
                              "Around Planet",
                              currentBody?.aroundPlanet != null
                                  ? currentBody?.aroundPlanet!.planet
                                  : null,
                            ),
                            buildInfoRow(
                              "Body Type",
                              currentBody?.bodyType,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            } else if (state is SolarSystemError) {
              return const Text("");
            } else {
              return const SizedBox();
            }
          },
        ),
      ),
    );
  }

  Widget buildInfoRow(String title, String? value) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$title: ",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            value ?? "N/A",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
