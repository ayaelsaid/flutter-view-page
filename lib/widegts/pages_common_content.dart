  import 'package:flutter/material.dart';

Widget pagesContent(String pathImage, String textTile, String textsubTitle) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: Image.asset(pathImage),
          ),
          const SizedBox(height: 30),
          Text(
            textTile,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 20),
          Text(
            textsubTitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.w300, color: Colors.grey),
          ),
        ],
      ),
    );
  }

