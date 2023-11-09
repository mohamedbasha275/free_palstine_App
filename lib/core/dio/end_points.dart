enum Endpoint {
  login,
  register,
  changePassword,
  getUserData,
  updateUserData,
  contactUs,
  poems,
  poets,
  favourites,
  removeFavourite,
  addFavourite,
  showPoem,
  poemMark,
  saveLine,
  removePoemLine,
  removePoemLines,
  resetPassword,
  poetPoems,
}

extension EndpointExtension on Endpoint {
  String get value {
    switch (this) {
      case Endpoint.login:
        return 'login';
      case Endpoint.register:
        return 'register';
      case Endpoint.changePassword:
        return 'change-password';
      case Endpoint.getUserData:
        return 'show-profile';
      case Endpoint.updateUserData:
        return 'update-profile';
      case Endpoint.contactUs:
        return 'contacts';
      case Endpoint.poems:
        return 'poems';
      case Endpoint.poets:
        return 'poets';
      case Endpoint.favourites:
        return 'favorits';
      case Endpoint.removeFavourite:
        return 'remove-poem-from-favorit';
      case Endpoint.addFavourite:
        return 'add-poem-to-favorit';
      case Endpoint.showPoem:
        return 'poems';
      case Endpoint.poemMark:
        return 'poem-breakpoint';
      case Endpoint.saveLine:
        return 'poem-saved';
      case Endpoint.removePoemLine:
        return 'remove-poem-saved';
      case Endpoint.removePoemLines:
        return 'remove-all-poem-saved';
      case Endpoint.resetPassword:
        return 'send-email';
      case Endpoint.poetPoems:
        return 'poems-belong-poet';
    }
  }
}
