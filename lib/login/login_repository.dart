import 'package:graphql_flutter/graphql_flutter.dart';
import '../graphql/queries.dart';

class LoginRepository {

  final GraphQLClient client;
  LoginRepository({required this.client});



  Future<bool> loginUser() async {
    bool loginSuccess = false;
    QueryResult result = await client.query(
        QueryOptions(
          document: gql(getAllJobsQuery),
        )
    );
    if (result.hasException) {
      return false;
    } else {
      return loginSuccess;
    }
  }
}