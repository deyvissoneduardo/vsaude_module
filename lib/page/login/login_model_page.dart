class LoginModelPage {
  String email;
  String password;
  String mobileProjectId;

  LoginModelPage({
    this.email = 'lbadias@gmail.com',
    this.password = '123qwe',
    this.mobileProjectId = 'fcc80c1d-6040-4e57-a23c-abb301653616',
  });

  @override
  String toString() =>
      'LoginModelPage(email: $email, password: $password, mobileProjectId: $mobileProjectId)';
}
