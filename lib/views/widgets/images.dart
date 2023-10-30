import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('images'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          color: Colors.red,
          height: 300,
          width: 250,
          child: const CachedNetworkImg(),
        ),
      ),
    );
  }
}

class CachedNetworkImg extends StatelessWidget {
  const CachedNetworkImg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl:
          'https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg',
      placeholder: (context, url) => const Center(
        child: CircularProgressIndicator(),
      ),
      errorWidget: (context, url, err) => const Icon(
        Icons.error,
      ),
      fit: BoxFit.cover,
    );
  }
}

class AssetImg extends StatelessWidget {
  const AssetImg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 300,
      width: 250,
      child: Image.asset(
        'assets/img/Jashwant-44.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}

class DecorationImg extends StatelessWidget {
  const DecorationImg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 250,
      decoration: BoxDecoration(
        color: Colors.red,
        image: const DecorationImage(
          image: NetworkImage(
            'https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg',
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            blurRadius: 20,
            spreadRadius: 10,
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}

class SimpleImgContainer extends StatelessWidget {
  const SimpleImgContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 300,
      width: 250,
      child: Image.network(
        'https://www.dmarge.com/wp-content/uploads/2021/01/dwayne-the-rock-.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
