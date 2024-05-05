import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';

class GoldBuyQuantityTextFormField extends StatelessWidget {
  GoldBuyQuantityTextFormField({super.key});

  final TextEditingController goldBuyQuantityController = TextEditingController();

  TextEditingController get controller => goldBuyQuantityController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: goldBuyQuantityController,
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

class GoldBuyQuantityPriceTextFormField extends StatelessWidget {
  const GoldBuyQuantityPriceTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController goldBuyQuantityPriceController = TextEditingController();
    return TextFormField(
      controller: goldBuyQuantityPriceController,
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

class GoldSellQuantityTextFormField extends StatelessWidget {
  const GoldSellQuantityTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController goldBuyQuantityController = TextEditingController();

    return TextFormField(
      controller: goldBuyQuantityController,
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

class GoldSellQuantityPriceTextFormField extends StatelessWidget {
  const GoldSellQuantityPriceTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController goldSellQuantityPriceController = TextEditingController();
    return TextFormField(
      controller: goldSellQuantityPriceController,
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

class OilBuyQuantityTextFormField extends StatelessWidget {
  OilBuyQuantityTextFormField({super.key});

  final TextEditingController oilBuyQuantityController = TextEditingController();

  TextEditingController get controller => oilBuyQuantityController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: oilBuyQuantityController,
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

class OilBuyQuantityPriceTextFormField extends StatelessWidget {
  const OilBuyQuantityPriceTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController oilBuyQuantityPriceController = TextEditingController();
    return TextFormField(
      controller: oilBuyQuantityPriceController,
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

class OilSellQuantityTextFormField extends StatelessWidget {
  const OilSellQuantityTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController oilQuantityController = TextEditingController();

    return TextFormField(
      controller: oilQuantityController,
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

class OilSellQuantityPriceTextFormField extends StatelessWidget {
  const OilSellQuantityPriceTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController oilSellQuantityPriceController = TextEditingController();
    return TextFormField(
      controller: oilSellQuantityPriceController,
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
