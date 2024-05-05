import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';

class ForeignBuyQuantityTextFormField extends StatelessWidget {
  const ForeignBuyQuantityTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController foreignBuyQuantityController = TextEditingController();

    return TextFormField(
      controller: foreignBuyQuantityController,
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

class ForeignBuyQuantityPriceTextFormField extends StatelessWidget {
  const ForeignBuyQuantityPriceTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController foreignBuyQuantityPriceController = TextEditingController();
    return TextFormField(
      controller: foreignBuyQuantityPriceController,
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

class ForeignSellQuantityTextFormField extends StatelessWidget {
  const ForeignSellQuantityTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController foreignSellQuantityController = TextEditingController();

    return TextFormField(
      controller: foreignSellQuantityController,
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

class ForeignSellQuantityPriceTextFormField extends StatelessWidget {
  const ForeignSellQuantityPriceTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController foreignSellQuantityPriceController = TextEditingController();
    return TextFormField(
      controller: foreignSellQuantityPriceController,
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
