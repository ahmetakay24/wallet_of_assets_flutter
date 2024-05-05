import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';

class LocalBuyQuantityTextFormField extends StatelessWidget {
  const LocalBuyQuantityTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController localBuyQuantityController = TextEditingController();

    return TextFormField(
      controller: localBuyQuantityController,
      keyboardType: TextInputType.number,
      style: const TextStyle(fontSize: 13, color: Colors.white),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: VarlikYonetimiColors().blueColor),
          borderRadius: BorderRadius.circular(15),
        ),
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
        filled: true,
        fillColor: Colors.transparent,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: VarlikYonetimiColors().blueColor),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}

class LocalBuyQuantityPriceTextFormField extends StatelessWidget {
  const LocalBuyQuantityPriceTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController localBuyQuantityPriceController = TextEditingController();
    return TextFormField(
      controller: localBuyQuantityPriceController,
      keyboardType: TextInputType.number,
      style: const TextStyle(fontSize: 13, color: Colors.white),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: VarlikYonetimiColors().blueColor),
          borderRadius: BorderRadius.circular(15),
        ),
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
        filled: true,
        fillColor: Colors.transparent,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: VarlikYonetimiColors().blueColor),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}

class LocalSellQuantityTextFormField extends StatelessWidget {
  const LocalSellQuantityTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController localSellQuantityController = TextEditingController();

    return TextFormField(
      controller: localSellQuantityController,
      keyboardType: TextInputType.number,
      style: const TextStyle(fontSize: 13, color: Colors.white),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: VarlikYonetimiColors().blueColor),
          borderRadius: BorderRadius.circular(15),
        ),
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
        filled: true,
        fillColor: Colors.transparent,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: VarlikYonetimiColors().blueColor),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}

class LocalSellQuantityPriceTextFormField extends StatelessWidget {
  const LocalSellQuantityPriceTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController localSellQuantityPriceController = TextEditingController();
    return TextFormField(
      controller: localSellQuantityPriceController,
      keyboardType: TextInputType.number,
      style: const TextStyle(fontSize: 13, color: Colors.white),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: VarlikYonetimiColors().blueColor),
          borderRadius: BorderRadius.circular(15),
        ),
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
        filled: true,
        fillColor: Colors.transparent,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: VarlikYonetimiColors().blueColor),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
