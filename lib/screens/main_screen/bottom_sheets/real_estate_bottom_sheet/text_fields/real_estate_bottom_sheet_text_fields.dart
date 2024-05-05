import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';

class RealEstateBuyQuantityTextFormField extends StatelessWidget {
  const RealEstateBuyQuantityTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController realEstateBuyQuantityController = TextEditingController();

    return TextFormField(
      controller: realEstateBuyQuantityController,
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

class RealEstateBuyQuantityPriceTextFormField extends StatelessWidget {
  const RealEstateBuyQuantityPriceTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController realEstateBuyQuantityPriceController = TextEditingController();
    return TextFormField(
      controller: realEstateBuyQuantityPriceController,
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

class RealEstateSellQuantityTextFormField extends StatelessWidget {
  const RealEstateSellQuantityTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController realEstateSellQuantityController = TextEditingController();

    return TextFormField(
      controller: realEstateSellQuantityController,
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

class RealEstateSellQuantityPriceTextFormField extends StatelessWidget {
  const RealEstateSellQuantityPriceTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController realEstateSellQuantityPriceController = TextEditingController();
    return TextFormField(
      controller: realEstateSellQuantityPriceController,
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
