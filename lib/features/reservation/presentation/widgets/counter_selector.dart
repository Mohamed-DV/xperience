import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spots_xplorer_app/config/theme/app_colors.dart';

class CounterSelector extends StatefulWidget {
  final Function(int)? onCountChanged;
  final String title;
  final String subtitle;

  const CounterSelector({
    super.key,
    required this.title,
    required this.subtitle,
    this.onCountChanged,
  });

  @override
  State<CounterSelector> createState() => _CounterSelectorState();
}

class _CounterSelectorState extends State<CounterSelector> {
  int count = 0;

  void increment() => setState(() {
    count++;
    if (widget.onCountChanged != null) {
      widget.onCountChanged!(count);
    }
  });
  void decrement() => setState(() {
    if (widget.title == "Adultes") {
      if (count > 1) count--;
    } else {
      if (count > 0) count--;
    }
    if (widget.onCountChanged != null) {
      widget.onCountChanged!(count);
    }
  });

  @override
  void initState() {
    widget.title == "Adultes" ? count = 1 : count = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final isSmall = screenWidth < 400;

    return Container(
      height: height * 0.085,
      margin: EdgeInsets.symmetric(horizontal: isSmall ? 4 : 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.pink.shade50, width: 2),
        borderRadius: BorderRadius.circular(isSmall ? 18 : 30),
        color: Colors.white,
      ),
      child: Row(
        children: [
          // Texts
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: isSmall ? 12 : 16,
                vertical: isSmall ? 8 : 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.title,
                        style: GoogleFonts.montserratAlternates(
                          fontSize: isSmall ? 16 : 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "$count",
                        style: GoogleFonts.montserratAlternates(
                          fontSize: isSmall ? 20 : 20,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primaryPink,
                        ),
                      ),
                      SizedBox(width: isSmall ? 10 : 12),
                    ],
                  ),
                  // SizedBox(height: isSmall ? 1 : 4),
                  Text(
                    widget.subtitle,
                    style: TextStyle(
                      fontSize: isSmall ? 12 : 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Counter Controls
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.08,
                  decoration: BoxDecoration(
                    color: Colors.pink.shade50,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(isSmall ? 16 : 30),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: increment,
                    child: const Icon(Icons.add, color: Colors.pink),
                  ),
                ),
              ),
              SizedBox(height: height * 0.004), // Space between buttons
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.08,
                  decoration: BoxDecoration(
                    color: Colors.pink.shade50,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(isSmall ? 16 : 30),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: decrement,
                    child: const Icon(Icons.remove, color: Colors.pink),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
