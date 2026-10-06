import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_recommed_sys/main.dart';
import 'package:movie_recommed_sys/models/movie.dart';
import 'package:movie_recommed_sys/widgets/movie_card.dart';
import 'package:movie_recommed_sys/widgets/poster_image.dart';

void main() {
  testWidgets('CineMatch app smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const CineMatchApp());
    expect(find.text('CINEMATCH'), findsOneWidget);
  });

  test('Movie model serialization and formattedRuntime test', () {
    const movie = Movie(
      id: 'test_1',
      title: 'Inception',
      genre: 'Action, Sci-Fi',
      mood: 'Mind-bent',
      year: 2010,
      runtime: 148,
      rating: 8.8,
      synopsis: 'A thief steals corporate secrets.',
      posterUrl: '',
    );

    expect(movie.formattedRuntime, '2h 28m');
    expect(movie.genresList, ['Action', 'Sci-Fi']);
    expect(movie.matchPercentage, 85);

    final json = movie.toJson();
    final reconstructed = Movie.fromJson(json);
    expect(reconstructed.title, 'Inception');
    expect(reconstructed.rating, 8.8);
  });

  testWidgets('MovieCard and PosterImage widget test', (WidgetTester tester) async {
    const movie = Movie(
      id: 'test_2',
      title: 'Interstellar',
      genre: 'Sci-Fi, Adventure',
      mood: 'Inspired',
      year: 2014,
      runtime: 169,
      rating: 8.7,
      synopsis: 'Exploration through a wormhole.',
      posterUrl: '',
    );

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: MovieCard(movie: movie),
        ),
      ),
    );

    expect(find.text('Interstellar'), findsWidgets);
    expect(find.byType(PosterImage), findsOneWidget);
  });
}
