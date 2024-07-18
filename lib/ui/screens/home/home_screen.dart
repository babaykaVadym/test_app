// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoder_buddy/geocoder_buddy.dart';
import 'package:webspark/ui/components/outlined_custom_button.dart';
import 'package:webspark/ui/screens/home/cubit/home_cubit.dart';
import 'package:webspark/ui/screens/process/process_screen.dart';
import 'package:webspark/utils/const.dart';
import 'package:webspark/utils/screen_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with ScreenUtils {
  final _urlController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  vvod() async {
    GBLatLng position = GBLatLng(lat: 122, lng: 21);
    GBData data = await GeocoderBuddy.findDetails(position);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home screen',
          style: TextStyle(color: AppColors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: false,
        iconTheme: const IconThemeData(color: AppColors.white),
      ),
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: BlocProvider(
          create: (context) => HomeCubit(),
          child: BlocConsumer<HomeCubit, HomeState>(
            listener: (context, state) {
              handleProgress(state.isLoading, context);

              if (state.errorMassage.isNotEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(
                    state.errorMassage,
                    style: const TextStyle(color: AppColors.white),
                  ),
                  backgroundColor: Colors.red,
                ));
                context.read<HomeCubit>().setError();
              }
            },
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const Text("Set valid API base URL in order to continue"),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const Icon(Icons.compare_arrows),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            // height: 32,
                            child: TextFormField(
                              controller: _urlController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Must not be empty';
                                }

                                if (!(Uri.tryParse(value)?.isAbsolute ??
                                    false)) {
                                  return "Enter the correct URL";
                                }
                                return null;
                              },
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      OutlinedCustomButton(
                        onTap: () async {
                          if (formKey.currentState!.validate()) {
                            final result = await context
                                .read<HomeCubit>()
                                .loadData(url: _urlController.text);

                            if (result.isEmpty) {
                              context
                                  .read<HomeCubit>()
                                  .setError(errorM: 'List is empty');
                            } else {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return ProcessScreen(
                                      listApp: result,
                                    );
                                  },
                                ),
                              );
                            }
                          }
                        },
                        label: 'Start counting process',
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
