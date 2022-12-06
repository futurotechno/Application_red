import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['fr', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? frText = '',
    String? enText = '',
  }) =>
      [frText, enText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Font_Connection
  {
    'wfjkvlzg': {
      'fr': 'Connection',
      'en': '',
    },
    'br8ze97j': {
      'fr': 'Email Address',
      'en': '',
    },
    'x7gl8cn7': {
      'fr': 'Password',
      'en': '',
    },
    'j8s2it3m': {
      'fr': 'connection',
      'en': '',
    },
    '01jlgo6g': {
      'fr': 'Mot de passe oublié?',
      'en': '',
    },
    '7fvgz1ly': {
      'fr': 'Se connecter avec:',
      'en': '',
    },
    'd2w08c4y': {
      'fr': 'Inscription',
      'en': '',
    },
    'ngxq34nd': {
      'fr': 'Email Address',
      'en': '',
    },
    '0wbxoqky': {
      'fr': 'Password',
      'en': '',
    },
    'u4k8sgfw': {
      'fr': 'Confirm Password',
      'en': '',
    },
    'busactzy': {
      'fr': 'Créer votre compte',
      'en': '',
    },
    'd5fwjn5b': {
      'fr': 'Se connecter avec:',
      'en': '',
    },
  },
  // Mot_Passe_oublie
  {
    '0oerzr4g': {
      'fr': 'Back',
      'en': '',
    },
    '8io2zscy': {
      'fr': 'Forgot Password',
      'en': '',
    },
    '7f08bhek': {
      'fr':
          'We will send you an email with a link to reset your password, please enter the email associated with your account below.',
      'en': '',
    },
    'vj8r8rm7': {
      'fr': 'Your email address...',
      'en': '',
    },
    'in0pxpnx': {
      'fr': 'Enter your email...',
      'en': '',
    },
    'gojylpgp': {
      'fr': 'Send Link',
      'en': '',
    },
    'd24ifszy': {
      'fr': 'Home',
      'en': '',
    },
  },
  // Verification_sms
  {
    'pmr6oca1': {
      'fr': 'Phone Sign In',
      'en': '',
    },
    'u2gha7qq': {
      'fr': 'Type in your phone number below to register.',
      'en': '',
    },
    'bm19lylp': {
      'fr': 'Your Phone Number',
      'en': '',
    },
    'k3eafxdg': {
      'fr': 'Please enter a valid number...',
      'en': '',
    },
    'q14xmkan': {
      'fr': 'Sign In with Phone',
      'en': '',
    },
    'yjhxhudg': {
      'fr': 'Home',
      'en': '',
    },
  },
  // Front_evenement
  {
    'ykmp9pb0': {
      'fr': 'BoB Marley ',
      'en': '',
    },
    'x109twcn': {
      'fr': 'VENDREDI 25 NOVEMBRE ',
      'en': '',
    },
    '4s7oz5pw': {
      'fr': 'BOB Marley Expérience MTL\nBoB Marley l’icône du Reggae',
      'en': '',
    },
    'opr10msr': {
      'fr': 'Billets',
      'en': '',
    },
    '34j0dkcj': {
      'fr': 'Hommage aux Colocs',
      'en': '',
    },
    'hfbk0awe': {
      'fr': 'Founder, CEO',
      'en': '',
    },
    'ok80pa7s': {
      'fr': 'Hommage aux Colocs. Info\n514.269.8785\n450.704.2252',
      'en': '',
    },
    'cdhjjrim': {
      'fr': 'Billets',
      'en': '',
    },
    '2p5z7ztb': {
      'fr': 'Mes 40 Ans !',
      'en': '',
    },
    'h9bhwuqv': {
      'fr': 'JEUDI 17 NOVEMBRE',
      'en': '',
    },
    'jv42yvfz': {
      'fr':
          'Brigitte Boisjoli présente un tout nouveau spectacle sous le signe du rassemblement et du divertissement comme elle seule sait le faire !',
      'en': '',
    },
    'ftmdmms1': {
      'fr': 'Billets',
      'en': '',
    },
    'ch0oqtbg': {
      'fr': 'Laurence Jalbert',
      'en': '',
    },
    'hb5ioyxc': {
      'fr': 'JEUDI 8 DÉCEMBRE',
      'en': '',
    },
    '9565uvc6': {
      'fr':
          'our une des très rares occasions Laurence Jalbert nous présentera avec la complicité de son guitariste ses plus grandes chansons.',
      'en': '',
    },
    '4k7a1nq9': {
      'fr': 'Billets',
      'en': '',
    },
    '3bvveymz': {
      'fr': 'Queen Flash',
      'en': '',
    },
    'q6xqpk5k': {
      'fr': 'VENDREDI 2 DÉCEMBRE',
      'en': '',
    },
    'pc3wqzoe': {
      'fr':
          'Johnny Zatylny admet qu’il n’est guère un nom familier dans sa ville natale de Greenfield Park. Mais ses connaissances pourraient être surpris d’apprendre que Zatylny est une superstar.',
      'en': '',
    },
    'qmepkeo2': {
      'fr': 'Billets',
      'en': '',
    },
    'fm3vfs2f': {
      'fr': 'Événement',
      'en': '',
    },
    'zrnp9xa3': {
      'fr': 'Événement',
      'en': '',
    },
  },
  // Font_Home
  {
    'a2lxgfoc': {
      'fr': 'Bienvenue ',
      'en': '',
    },
    'tnm6yuj5': {
      'fr': 'Membre',
      'en': '',
    },
    '638t6pae': {
      'fr': 'V.I.P',
      'en': '',
    },
    '2d7k98zp': {
      'fr': 'Mes points',
      'en': '',
    },
    'w8bi2579': {
      'fr': '150',
      'en': '',
    },
    'td1lmale': {
      'fr': 'Nouveautés',
      'en': '',
    },
    'j2bls5in': {
      'fr': 'Sylvie Héneault',
      'en': '',
    },
    'lmjognvl': {
      'fr': 'Chanteuse',
      'en': '',
    },
    '3oak3hz6': {
      'fr': 'Blue Bastard',
      'en': '',
    },
    'ung8rz6n': {
      'fr': 'Chanteur',
      'en': '',
    },
    'k7t0s442': {
      'fr': 'Mes événements',
      'en': '',
    },
    '34jtiuef': {
      'fr': 'Événement',
      'en': '',
    },
    'nqu6bvlg': {
      'fr': 'Menu',
      'en': '',
    },
    'k0cw0lje': {
      'fr': 'Information',
      'en': '',
    },
    '93k6dzyr': {
      'fr': 'Profil',
      'en': '',
    },
    '7znqtw24': {
      'fr': 'Home',
      'en': '',
    },
  },
  // Font_menu
  {
    '3zgbngyj': {
      'fr': 'Snack Bar',
      'en': '',
    },
    'u2oqdz0m': {
      'fr': 'Category Name',
      'en': '',
    },
    't4fjmb6j': {
      'fr': 'Pâtes',
      'en': '',
    },
    'e1cca6ob': {
      'fr': 'Category Name',
      'en': '',
    },
    'fsosxt4s': {
      'fr': ' Carte Des Vins',
      'en': '',
    },
    'q9biuj8s': {
      'fr': 'Category Name',
      'en': '',
    },
    'g86etm1h': {
      'fr': 'Viandes',
      'en': '',
    },
    'xapo1g90': {
      'fr': 'Category Name',
      'en': '',
    },
    'z0k0006j': {
      'fr': 'Pizzas',
      'en': '',
    },
    '3etrouut': {
      'fr': 'Category Name',
      'en': '',
    },
    'yfd3zu6x': {
      'fr': 'Salades',
      'en': '',
    },
    'ahbcpvo8': {
      'fr': 'Category Name',
      'en': '',
    },
    'dwa5nt5d': {
      'fr': 'Poissons',
      'en': '',
    },
    '6lem3z4l': {
      'fr': 'Category Name',
      'en': '',
    },
    '46ijjquq': {
      'fr': 'Tatares',
      'en': '',
    },
    'ol5m1n6j': {
      'fr': 'Category Name',
      'en': '',
    },
    'vwcicfc9': {
      'fr': 'Menu Enfant',
      'en': '',
    },
    'f9p1kozb': {
      'fr': 'Category Name',
      'en': '',
    },
    'wfzp8qss': {
      'fr': 'Boissons',
      'en': '',
    },
    'aj0iaowy': {
      'fr': 'Category Name',
      'en': '',
    },
    'if927l09': {
      'fr': 'Home',
      'en': '',
    },
  },
  // Font_profil
  {
    'gj1jckl5': {
      'fr': 'Claude Tremblay',
      'en': '',
    },
    'dzonbiwv': {
      'fr': 'Home',
      'en': '',
    },
  },
  // Paiment_option
  {
    '3ocv1i71': {
      'fr': '[User Name]',
      'en': '',
    },
    'ohlddxo0': {
      'fr': '[username@domain.com]',
      'en': '',
    },
    'xldxxqn6': {
      'fr': 'Balance',
      'en': '',
    },
    'vmj4a5ff': {
      'fr': '\$7,630',
      'en': '',
    },
    '8scxi9vc': {
      'fr': '**** 0149',
      'en': '',
    },
    's7cphmgq': {
      'fr': '05/25',
      'en': '',
    },
    'imprhphm': {
      'fr': 'Nom prenom',
      'en': '',
    },
    'lcxa5gqd': {
      'fr': 'User.name@hotmail.com',
      'en': '',
    },
    'bcx1xxp5': {
      'fr': 'Account Settings',
      'en': '',
    },
    '45u7ojg8': {
      'fr': 'Historique',
      'en': '',
    },
    'bza5emng': {
      'fr': 'Transaction',
      'en': '',
    },
    'bcitqbri': {
      'fr': 'Terme & Service',
      'en': '',
    },
    '4qkw06od': {
      'fr': 'Log Out',
      'en': '',
    },
  },
  // reglage
  {
    'rdimcofh': {
      'fr': 'Compte',
      'en': '',
    },
    'r7tltwbk': {
      'fr': 'Paiement',
      'en': '',
    },
    'uovpe75n': {
      'fr': 'Notification',
      'en': '',
    },
    'b74v9bgb': {
      'fr': 'Profil',
      'en': '',
    },
    '0mvt8odp': {
      'fr': 'Général',
      'en': '',
    },
    'v6ralca3': {
      'fr': 'Développement',
      'en': '',
    },
    'muwnnook': {
      'fr': 'Confidentialité',
      'en': '',
    },
    'ju5h13jg': {
      'fr': 'Mode sombre',
      'en': '',
    },
    'lpj2xboa': {
      'fr': 'Réglage',
      'en': '',
    },
    'cfunnrhz': {
      'fr': 'Home',
      'en': '',
    },
  },
  // Promo_Futuro
  {
    '69yff06l': {
      'fr': 'Futuro.Tech',
      'en': '',
    },
    'bth54ize': {
      'fr': 'Présent',
      'en': '',
    },
    '1vpbwtus': {
      'fr':
          'Nous sommes une entreprise dans le domaine des technologies. Tous nos projets sont certificié par nos experts. N\'hésitez pas ',
      'en': '',
    },
    'ilwf3qt0': {
      'fr': 'Nous  rejoindre',
      'en': '',
    },
    'thwwcrjq': {
      'fr': 'Home',
      'en': '',
    },
  },
  // Information_developpement
  {
    '3igxqgoq': {
      'fr': ' ',
      'en': '',
    },
    'm37rxdav': {
      'fr': 'Information de dévoppement: Version 0.2',
      'en': '',
    },
    'dxe6bzma': {
      'fr': 'Futuro.Tech',
      'en': '',
    },
    'lr2kuvl3': {
      'fr':
          'Bonjour, tout d\'abaord nous tenons à dire que cette application est  encore en développement. Donc, si jamais vous avez des questions. Contacter nous',
      'en': '',
    },
    '28x6bf4o': {
      'fr': 'Nouveautées avenir :         Version 0.3',
      'en': '',
    },
    'fukh3wzi': {
      'fr': 'Casino',
      'en': '',
    },
    '4s0x3qpz': {
      'fr':
          'Un casino integré à l\'application qui permettrera de rester connecter au actualité et en meme temps de generer un revenu passif.',
      'en': '',
    },
    'ho0zkroh': {
      'fr': 'Red Point',
      'en': '',
    },
    'd08mikbf': {
      'fr':
          'Un systeme de point sera mis en place pour augmenter votre cote au sains de la communité. Selon votre score, plus vous en aurez plus vous aurez acces à des privilege unique et à un statut important.',
      'en': '',
    },
    '0iffyr5j': {
      'fr': 'Red Paiment',
      'en': '',
    },
    'n56iowxz': {
      'fr':
          'Un systeme de paiment unique. Tous les transfere seront intantané entre chaque utiisateur pour faire un achat ou un cadeau à vos proche. vous pourrez directement payer vos souper et commander vos souper à meme l\'application sans passer par l\'intermediere d\'un serveur.',
      'en': '',
    },
    '58ofjxtu': {
      'fr': 'Red Paiment',
      'en': '',
    },
    'w5jor2fr': {
      'fr':
          'Un systeme de paiment unique. Tous les transfere seront intantané entre chaque utiisateur pour faire un achat ou un cadeau à vos proche. vous pourrez directement payer vos souper et commander vos souper à meme l\'application sans passer par l\'intermediere d\'un serveur.',
      'en': '',
    },
    'u36oetgx': {
      'fr': 'RedMessage',
      'en': '',
    },
    'de7qwavi': {
      'fr':
          'Un serveur de messagerie pour rester connecter avec la comaunauté. Donc, tout vos prche seront contactable à partir de l\'interface de navigation. Les artiste seront dorectement en contact acvec les utilisateur.',
      'en': '',
    },
    'e1jbpe9p': {
      'fr': 'En savoir plus ',
      'en': '',
    },
    'wp2xzrkr': {
      'fr': 'Home',
      'en': '',
    },
  },
  // Notification_Setting
  {
    'cvn69ayv': {
      'fr':
          'Choose what notifcations you want to recieve below and we will update the settings.',
      'en': '',
    },
    '9fjyer1l': {
      'fr': 'Push Notifications',
      'en': '',
    },
    '0y79horv': {
      'fr':
          'Receive Push notifications from our application on a semi regular basis.',
      'en': '',
    },
    'pb9pzmu8': {
      'fr': 'Email Notifications',
      'en': '',
    },
    '5z6qczxq': {
      'fr':
          'Receive email notifications from our marketing team about new features.',
      'en': '',
    },
    '11jdymf6': {
      'fr': 'Location Services',
      'en': '',
    },
    '1da5irmo': {
      'fr':
          'Allow us to track your location, this helps keep track of spending and keeps you safe.',
      'en': '',
    },
    'vql5pms6': {
      'fr': 'Mise à jour',
      'en': '',
    },
    'a3ib7dz0': {
      'fr': 'Settings',
      'en': '',
    },
  },
  // Edit_setting
  {
    'pokvbjos': {
      'fr': 'Change Cover Photo',
      'en': '',
    },
    'k7mv5pod': {
      'fr': 'Edit Photo',
      'en': '',
    },
    'jwhbr2cn': {
      'fr': 'Adresse E-Mail',
      'en': '',
    },
    'p139acth': {
      'fr': 'Votre Nom',
      'en': '',
    },
    'popqa3bu': {
      'fr': '',
      'en': '',
    },
    '89y3cu3m': {
      'fr': 'Recieve Notifications',
      'en': '',
    },
    'awfx5hq6': {
      'fr': 'Turn on notifications.',
      'en': '',
    },
    'uwgitzb1': {
      'fr': 'Sauvegarder',
      'en': '',
    },
    'su0eojpe': {
      'fr': 'Edit Profile',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'ztqvi9ni': {
      'fr': 'Synchroniser vos Photos',
      'en': '',
    },
    'wo56v190': {
      'fr': 'Activer les notification',
      'en': '',
    },
    'ylkxpkda': {
      'fr': 'Synchroniser votre microphone',
      'en': '',
    },
    '2wv8igsm': {
      'fr': 'Synchroniser votre localisation',
      'en': '',
    },
    'bhkbj7b7': {
      'fr': 'Synchroniser vos contactes',
      'en': '',
    },
    'b40t50np': {
      'fr': 'Synchroniser votre Face Id',
      'en': '',
    },
    'lfs443te': {
      'fr': '',
      'en': '',
    },
    '4ejxtqbk': {
      'fr': '',
      'en': '',
    },
    'zwv0ezfy': {
      'fr': '',
      'en': '',
    },
    'asjt838h': {
      'fr': '',
      'en': '',
    },
    'u5uzylet': {
      'fr': '',
      'en': '',
    },
    'trpehsq5': {
      'fr': '',
      'en': '',
    },
    'b6yh57ny': {
      'fr': '',
      'en': '',
    },
    'f7mft5kq': {
      'fr': '',
      'en': '',
    },
    'mwbxqlgh': {
      'fr': '',
      'en': '',
    },
    'ng7841mo': {
      'fr': '',
      'en': '',
    },
    'nl9ovub6': {
      'fr': '',
      'en': '',
    },
    'slqjmodg': {
      'fr': '',
      'en': '',
    },
    '8x3hm97m': {
      'fr': '',
      'en': '',
    },
    'd0fj4lxb': {
      'fr': '',
      'en': '',
    },
    'emi245bd': {
      'fr': '',
      'en': '',
    },
    'zpgj8bdg': {
      'fr': '',
      'en': '',
    },
    'es6hdrdb': {
      'fr': '',
      'en': '',
    },
    'oioq7lin': {
      'fr': '',
      'en': '',
    },
    'tfmke0yf': {
      'fr': '',
      'en': '',
    },
    'z7ufwn5e': {
      'fr': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
