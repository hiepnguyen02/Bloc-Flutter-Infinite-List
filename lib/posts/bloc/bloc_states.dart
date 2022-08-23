// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'post_bloc.dart';

enum PostStatus { initial, success, failure }



class PostState extends Equatable {
  const PostState ({
    this.status = PostStatus.initial,
    this.posts =  const <Post>[],
    this.hasReachedMax= false,
  });
final PostStatus status;
final List<Post> posts;
final bool hasReachedMax;


  @override
  List<Object> get props => [status, posts, hasReachedMax];

  PostState copyWith({
    PostStatus? status,
    List<Post>? posts,
    bool? hasReachedMax,
  }) {
    return PostState(
      status: status ?? this.status,
      posts: posts ?? this.posts,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

 

  @override
  String toString() {
    return '''PostState { status: $status, hasReachedMax: $hasReachedMax, posts: ${posts.length} }''';
  }
}
