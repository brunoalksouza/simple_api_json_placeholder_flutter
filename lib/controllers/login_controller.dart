class LoginController {
  String? _login;
  setLogin(String value) => _login = value;

  String? _password;
  setPassword(String value) => _password = value;

  Future<bool> auth() async {
    if (_login == 'a' && _password == 'a') {
      return true;
    }
    return false;
  }
}
