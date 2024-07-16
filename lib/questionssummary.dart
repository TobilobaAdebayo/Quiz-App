import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  Container(
                    decoration: ShapeDecoration(
                        shape: Border.all(
                      color: const Color.fromARGB(255, 189, 36, 168),
                      width: 8.0,
                    )),
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: GoogleFonts.lato(
                        color: const Color.fromARGB(216, 247, 238, 244),
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(data['question'] as String,
                            style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          data['userAnswer'] as String,
                          style: GoogleFonts.lato(
                            color: const Color.fromARGB(214, 216, 169, 212),
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          data['correctAnswer'] as String,
                          style: GoogleFonts.lato(
                            color: const Color.fromARGB(216, 247, 238, 244),
                            fontSize: 15,
                          ),
                        ),
                        const Padding(padding: EdgeInsets.all(10)),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
