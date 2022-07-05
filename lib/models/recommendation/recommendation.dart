class Recommendation {
  final String? name, source, text;

  Recommendation({
    this.name,
    this.source,
    this.text,
  });
}

final List<Recommendation> my_recommendations = [
  Recommendation(
    name: 'Jeong Youngjin',
    source: 'YouTube',
    text: 'Oh!! My Gosh!',
  ),
  Recommendation(
    name: 'Han Gwangjin',
    source: 'Github',
    text: 'Oh!! My Gosh! How old are you?!',
  ),
  Recommendation(
    name: 'Lee Youngjin',
    source: 'YouTube',
    text: 'Oh!! My Gosh!',
  ),
  Recommendation(
    name: 'Kim Youngjin',
    source: 'YouTube',
    text: 'Oh!! My Gosh!',
  ),
];
