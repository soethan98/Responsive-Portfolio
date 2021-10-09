class ProjectEntity {
  final String title;
  final String baseLang;

  final String? description;
  final String? playstoreUrl;
  final String? githubUrl;

  ProjectEntity(
      {required this.title,
      required this.baseLang,
      this.description,
      this.playstoreUrl,
      this.githubUrl});
}

List<ProjectEntity> projects = [
  ProjectEntity(
      title: "Movie Talkies",
      baseLang: 'Kotlin',
      description:
          " View ratings,trailers,descriptions, and search about movies.Explore jetpack architecture components,dagger-2, rxjava",
      playstoreUrl:
          'https://play.google.com/store/apps/details?id=com.soethan.movietalkies',
      githubUrl: 'https://github.com/soethan98/MovieTalkies'),
  ProjectEntity(
      title: "MMCurrencyExchange",
      baseLang: 'Kotlin',
      description:
          "Display exchange rate fetched from https://forex.cbm.gov.mm/api/ and calculate rate between Myanmar kyats and other exchange",
      githubUrl: 'https://github.com/soethan98/MMCurrencyExchange',
      playstoreUrl:
          'https://play.google.com/store/apps/details?id=com.soethan.mmcurrencyexchange'),
  ProjectEntity(
    title: "Al-Salat",
    baseLang: 'Java',
    playstoreUrl:
        'https://play.google.com/store/apps/details?id=org.m2cs.al_salat',
    description:
        "This App include Prayer Time, Qibla Direction, 40 Rabbana, Tasbih and info of Namaz. This application is developed by M2CS(Myanmar Muslim Computer Students).",
  ),
  ProjectEntity(
    title: "FinQ",
    baseLang: 'Kotlin',
    playstoreUrl: 'https://play.google.com/store/apps/details?id=co.finiq',
    description:
        """FinQ is a finance tracker app that allows you to save your income, expense in daily life.
We also aim to give you finance knowledge with lots of articles in our app. We also include an interest calculator that can make you ease in calculation. Our app also includes Myanmar language to help people better understanding of app flows. You can view your income, expense within date range and edit, delete your history. Also Store in records in the cloud within a few steps and download when you needed.""",
  ),
  ProjectEntity(
      title: "MM Islamic Book",
      baseLang: 'Kotlin',
      playstoreUrl:
          'https://play.google.com/store/apps/details?id=org.m2cs.mmislamicbooks',
      description:
          "A good place to download Islamic books with Myanmar Language"),
  ProjectEntity(
      title: "Daily ToDo",
      baseLang: 'Flutter',
      playstoreUrl:
          'https://play.google.com/store/apps/details?id=soethan.flutter_todo',
      description:
          """Daily ToDo offers you to note down your daily tasks and remind with notification on time.
You can add notes easily."""),
  ProjectEntity(
      title: 'Masnoon Dua',
      baseLang: 'Flutter',
      playstoreUrl:
          'https://play.google.com/store/apps/details?id=m2cs.masnoondua',
      description:
          """This is a Islamic dua application which are Masnoon duas(the duas which you must used in daily lives). The meaning are translated Myanmar Language . Arabic Text and Myanmar meaning are tested by "Al Haj Maulana Saeedullah Mahmudi".The app allow you to read this duas by categories with offline audio playback very easily.In which you can save your favorite duas. The original sources of this app are from true Hadiths and books translated in Myanmar Language. This application is developed by M2CS(Myanmar Muslim Computer Students) Organization."""),
  ProjectEntity(
    title: 'Deen Talk Myanmar',
    baseLang: 'Flutter',
    description: 'Written using provider as a stage management tool and dio as a network client.',
    playstoreUrl:
        'https://play.google.com/store/apps/details?id=org.deen_talk_myanmar',
  ),
];

// Features included -
// - View exchange rate from Central Bank Of Myanmar.
// - Calculate rate between Myanmar kyats and other exchange.
// - Dark Model Supported.
