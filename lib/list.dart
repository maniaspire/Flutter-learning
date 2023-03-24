import 'package:flutter/material.dart';

const _movies = [
  'Iron Man 1',
  'Iron Man 2',
  'Iron Man 3',
  'Avengers',
  'No way home',
  'Avengers: Age of ultron',
  'Civil War',
  'Infinity War',
  'End Game',
];

getMovies() {
  return _movies
      .map(
        (movie) => ElevatedButton(
          style: const ButtonStyle(minimumSize: MaterialStatePropertyAll(100)),
          onPressed: () {},
          child: Text(
            movie,
            style: const TextStyle(fontSize: 20),
          ),
        ),
      )
      .toList();
}
