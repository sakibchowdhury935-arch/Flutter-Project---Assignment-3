import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final Color darkGreen = const Color(0xFF174C3C);
  final Color limeGreen = const Color(0xFFD7F36A);
  final Color backgroundColor = const Color(0xFFF4F6F2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,

      appBar: AppBar(
        backgroundColor: darkGreen,
        foregroundColor: Colors.white,
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: limeGreen,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(Icons.travel_explore, color: darkGreen, size: 25),
            ),
            SizedBox(width: 10),
            Text(
              'CampusFind',
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none_rounded,
              size: 28,
              color: limeGreen,
            ),
          ),
          SizedBox(width: 8),
        ],
      ),

      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(25),
              color: darkGreen,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: limeGreen,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.travel_explore,
                      color: darkGreen,
                      size: 28,
                    ),
                  ),
                  SizedBox(width: 12),
                  Text(
                    'CampusFind',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 12),

            ListTile(
              leading: Icon(Icons.home_rounded, color: darkGreen, size: 25),
              title: Text(
                'Home',
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 18),
              onTap: () {},
            ),

            Divider(color: Colors.grey.shade300),

            ListTile(
              leading: Icon(Icons.search_rounded, color: darkGreen, size: 25),
              title: Text(
                'Lost Items',
                style: GoogleFonts.poppins(fontSize: 17),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 18),
              onTap: () {},
            ),

            Divider(color: Colors.grey.shade300),

            ListTile(
              leading: Icon(
                Icons.check_circle_outline_rounded,
                color: darkGreen,
                size: 25,
              ),
              title: Text(
                'Found Items',
                style: GoogleFonts.poppins(fontSize: 17),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 18),
              onTap: () {},
            ),

            Divider(color: Colors.grey.shade300),

            ListTile(
              leading: Icon(
                Icons.add_circle_outline_rounded,
                color: darkGreen,
                size: 25,
              ),
              title: Text(
                'Report an Item',
                style: GoogleFonts.poppins(fontSize: 17),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 18),
              onTap: () {},
            ),

            Divider(color: Colors.grey.shade300),

            ListTile(
              leading: Icon(
                Icons.notifications_none_rounded,
                color: darkGreen,
                size: 25,
              ),
              title: Text(
                'Notifications',
                style: GoogleFonts.poppins(fontSize: 17),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 18),
              onTap: () {},
            ),
          ],
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: darkGreen,
              borderRadius: BorderRadius.circular(22),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lost Something?',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 8),

                Text(
                  'Find lost belongings or help someone '
                  'recover theirs on campus.',
                  style: GoogleFonts.poppins(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),

                SizedBox(height: 18),

                Container(
                  height: 52,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for an item...',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                      prefixIcon: Icon(
                        Icons.search_rounded,
                        color: darkGreen,
                        size: 26,
                      ),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                    style: GoogleFonts.poppins(fontSize: 15),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Text(
              'Recently Reported',
              style: GoogleFonts.poppins(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: darkGreen,
              ),
            ),
          ),

          SizedBox(height: 12),

          Row(
            children: [
              SizedBox(width: 8),

              Container(
                width: MediaQuery.of(context).size.width / 2 - 16,
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                    onTap: () {},
                    contentPadding: const EdgeInsets.all(14),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.headphones, size: 38, color: darkGreen),
                        SizedBox(height: 10),
                        Text(
                          'Wireless Headphones',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'LOST',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Central Library',
                          style: GoogleFonts.poppins(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(width: 4),

              Container(
                width: MediaQuery.of(context).size.width / 2 - 16,
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                    onTap: () {},
                    contentPadding: const EdgeInsets.all(14),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.badge, size: 38, color: darkGreen),
                        SizedBox(height: 10),
                        Text(
                          'Student ID Card',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'FOUND',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'CSE Building',
                          style: GoogleFonts.poppins(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(width: 4),
            ],
          ),

          Row(
            children: [
              SizedBox(width: 8),

              Container(
                width: MediaQuery.of(context).size.width / 2 - 16,
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                    onTap: () {},
                    contentPadding: const EdgeInsets.all(14),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.key, size: 38, color: darkGreen),
                        SizedBox(height: 10),
                        Text(
                          'Keys and Keyring',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'FOUND',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'University Cafeteria',
                          style: GoogleFonts.poppins(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(width: 4),

              Container(
                width: MediaQuery.of(context).size.width / 2 - 16,
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                    onTap: () {},
                    contentPadding: const EdgeInsets.all(14),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.water_drop, size: 38, color: darkGreen),
                        SizedBox(height: 10),
                        Text(
                          'Water Bottle',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'LOST',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Campus Playground',
                          style: GoogleFonts.poppins(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(width: 4),
            ],
          ),

          Spacer(),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(right: 16, bottom: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: darkGreen,
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 6,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.add, color: limeGreen),
                    label: Text(
                      'Report an Item',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
