import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webspark/data/model/models.dart';
import 'package:webspark/ui/components/outlined_custom_button.dart';
import 'package:webspark/ui/screens/process/cubit/process_cubit.dart';
import 'package:webspark/ui/screens/result_list/result_list_screen.dart';
import 'package:webspark/utils/const.dart';
import 'package:webspark/utils/screen_utils.dart';

class ProcessScreen extends StatefulWidget {
  const ProcessScreen({super.key, required this.listApp});
  final List<AppModel> listApp;

  @override
  State<ProcessScreen> createState() => _ProcessScreenState();
}

class _ProcessScreenState extends State<ProcessScreen> with ScreenUtils {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Process screen',
          style: TextStyle(color: AppColors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: false,
        iconTheme: const IconThemeData(color: AppColors.white),
      ),
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: BlocProvider(
          create: (context) => ProcessCubit()..init(widget.listApp),
          child: BlocConsumer<ProcessCubit, ProcessState>(
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
              }
            },
            builder: (context, state) {
              return Column(
                children: [
                  state.isLoading
                      ? const SizedBox()
                      : Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              if (state.loadPercent < 100)
                                const Text("Calculation"),
                              if (state.loadPercent == 100)
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Text(
                                    "All calculations has finished, you can send your results to server",
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    softWrap: true,
                                  ),
                                ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text("${state.loadPercent}%"),
                              const SizedBox(
                                height: 6,
                              ),
                              const Divider(),
                              const SizedBox(
                                height: 6,
                              ),
                              CircularProgressIndicator(
                                value: state.loadPercent / 100,
                                color: Colors.red,
                                valueColor: const AlwaysStoppedAnimation<Color>(
                                    Colors.blue),
                                backgroundColor: Colors.grey,
                                strokeWidth: 4.0,
                              ),
                            ],
                          ),
                        ),
                  if (state.loadPercent == 100)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: OutlinedCustomButton(
                        onTap: () async {
                          final result =
                              await context.read<ProcessCubit>().sendResult();

                          if (!result) {
                            context
                                .read<ProcessCubit>()
                                .setError(errorM: "Something goes wrong");
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return ResultListScreen(
                                    listResult: state.listResult,
                                  );
                                },
                              ),
                            );
                          }
                        },
                        label: 'Send results to server',
                      ),
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
