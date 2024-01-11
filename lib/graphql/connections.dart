import 'package:graphql_flutter/graphql_flutter.dart';
final HttpLink httpLink = HttpLink(
  'https://api.github.com/graphql',
);

GraphQLClient clientToQuery() {
  return GraphQLClient(
    cache: GraphQLCache(),
    link: httpLink,
  );
}