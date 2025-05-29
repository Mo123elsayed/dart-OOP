import 'package:args/args.dart';
import 'features/transactions/bankAccount.dart';

const String version = '0.0.1';

void main(List<String> arguments) {
  // BankAccount account = BankAccount();
  // account.deposit = 100.0; // Deposit 100
  // print(account.getBalance); // Initial balance
  // account.withdraw = 50.0; // Withdraw 50
  // print(account.getBalance); // Balance after withdrawal
  Uirendering uirendering = Uirendering(SocialMediaImpl());

  /// This is a simple Dart OOP example that demonstrates the use of classes, inheritance, and polymorphism.
  /// method getPosts() is called to fetch posts from the social media platform.
  uirendering.getPosts();

  /// The deletePost method is called to delete a post by its ID.
  uirendering.deletePost(1);

  /// The createPost method is called to create a new post with the given content.
  uirendering.createPost("New Post: Dart OOP is awesome!");
}

List Posts = [
  "Post 1: Hello World!",
  "Post 2: Learning Dart is fun!",
  "Post 3: OOP in Dart is powerful!",
];
/// This is an abstract class that defines the interface for a social media platform.
abstract class SocialMedia {
  Future<String> getPosts();
  Future<String> deletePost(int postId);
  Future<String> createPost(String content);
}
/// This class implements the SocialMedia interface and provides concrete implementations for its methods.
class SocialMediaImpl extends SocialMedia {
  @override
  Future<String> getPosts() {
    var post;
    for (post in Posts) {
      print(post);
    }
    return Future.value("Posts fetched successfully");
  }

  @override
  Future<String> deletePost(int postId) {
    Posts.removeAt(postId);
    return Future.value("Posts fetched successfully");
  }

  @override
  Future<String> createPost(String content) {
    Posts.add(content);
    return Future.value("Post created successfully");
  }
}
/// This class is responsible for rendering the UI and interacting with the social media platform.
class Uirendering {
  SocialMedia socialMedia;
  Uirendering(this.socialMedia);

  /// This method fetches posts from the social media platform.
  void getPosts() {
    socialMedia.getPosts();
  }

  /// This method deletes a post by its ID.
  void deletePost(int postId) {
    socialMedia.deletePost(postId);
  }

  /// This method creates a new post with the given content.
  void createPost(String content) {
    socialMedia.createPost(content);
  }
}
