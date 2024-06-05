import 'package:flutter/material.dart';

class OutlinedCustomButton extends StatelessWidget {
  const OutlinedCustomButton({
    super.key,
    required this.onTap,
    required this.label,
  });

  final String label;
  final Function() onTap;

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.05,
        ),
        child: SizedBox(
          width: double.infinity,
          height: 48,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                color: Color.fromARGB(255, 5, 75, 133),
              ),
              backgroundColor: const Color.fromARGB(255, 80, 166, 237),
              shape: const RoundedRectangleBorder(
                side: BorderSide(
                  color: Color.fromARGB(255, 5, 75, 133),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(6),
                ),
              ),
              textStyle: const TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
            onPressed: onTap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    label,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
