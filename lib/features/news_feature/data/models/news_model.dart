class NewsModel {
  final String author;
  final String title;
  final String description;
  final String content;
  final String urlToImage;
  final String publishedA;
  final Source sourec;

  NewsModel({
    required this.sourec,
    required this.description,
    required this.content,
    required this.urlToImage,
    required this.publishedA,
    required this.title,
    required this.author,
  });

  factory NewsModel.fromJson(JsonData) {
    return NewsModel(
        sourec: Source(
            id: JsonData['source']['id'], name: JsonData['source']['name']),
        description: JsonData['articles']['description'],
        content: JsonData['articles']['content'],
        urlToImage: JsonData['articles']['urlToImage'],
        publishedA: JsonData['articles']['publishedAt'],
        title: JsonData['articles']['title'],
        author: JsonData['articles']['author']);
  }
}

class Source {
  final String id;
  final String name;

  Source({required this.id, required this.name});
}
