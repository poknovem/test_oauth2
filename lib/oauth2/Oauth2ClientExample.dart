
import 'package:oauth2_client/oauth2_client.dart';

import '../constants/constants.dart';

class Oauth2ClientExample {
  Future<void> login() async {
    print(">>> login 1");
    // var client = OAuth2Client(
    //     authorizeUrl: "https://login.microsoftonline.com/6f6e064e-a5f9-43b9-8c9e-89b406c292a0/oauth2/v2.0/authorize",
    //     tokenUrl: "https://login.microsoftonline.com/6f6e064e-a5f9-43b9-8c9e-89b406c292a0/oauth2/v2.0/token",
    //     redirectUri: "msauth://com.example.test_oauth2/VzSiQcXRmi2kyjzcA+mYLEtbGVs=",
    //     customUriScheme: 'msauth');
    //
    // print(">>> login 2");
    // var tknResp = await client.getTokenWithAuthCodeFlow(
    //     clientId: "67de2c10-d7d2-423b-bde9-a68526bb150a",
    //     scopes: [
    //       "api://67de2c10-d7d2-423b-bde9-a68526bb150a/User.Read"
    //     ]);

    var client = OAuth2Client(
        authorizeUrl: "https://login.microsoftonline.com/c613c614-6e82-4ad4-8307-a3ce9732a9f8/oauth2/v2.0/authorize",
        tokenUrl: "https://login.microsoftonline.com/c613c614-6e82-4ad4-8307-a3ce9732a9f8/oauth2/v2.0/token",
        redirectUri: "msauth://com.example.test_oauth2/VzSiQcXRmi2kyjzcA+mYLEtbGVs=",
        customUriScheme: 'msauth');

    print(">>> login 2");
    var tknResp = await client.getTokenWithAuthCodeFlow(
        clientId: "a41d294a-ea53-4cf8-8765-1b49358ce6fa",
        scopes: [
          "api://a41d294a-ea53-4cf8-8765-1b49358ce6fa/User.Read"
        ]);

    print(">>> login 3");


    // assign Access Token
    Constants.accessToken = tknResp.accessToken;


    print(tknResp.httpStatusCode);
    print(tknResp.error);
    print(tknResp.expirationDate);
    print(tknResp.scope);
    print(tknResp.accessToken);
    print(tknResp.refreshToken);
    print(tknResp.expiresIn);
    print(tknResp.tokenType);
    print(tknResp.errorDescription);
    print(tknResp.errorUri);
  }
}