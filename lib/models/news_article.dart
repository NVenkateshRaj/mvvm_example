class NewsArticle{
  final String title,author,description,urlToImage,url,publishAt,content;

  NewsArticle({this.title, this.author, this.description, this.urlToImage,
      this.url, this.publishAt, this.content});

  factory NewsArticle.fromJson(Map<String,dynamic> json){
    return NewsArticle(
      title: json['title'],
      author: json['author'],
      description: json['description'],
      url: json['url'],
      content: json['content'],
      publishAt: json['publishedAt']
    );
  }
}