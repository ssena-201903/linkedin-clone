import 'package:linkedin_clone/models/comment.dart';
import 'package:linkedin_clone/models/experience.dart';
import 'package:linkedin_clone/models/person.dart';
import 'package:linkedin_clone/models/post.dart';

class DataHelper {
  // persons data
  static List<Person> getPersons() {
    // common person example, it will be everybody's common person
    // man 1
    Person commonPerson = Person(
      "assets/images/pp_man1.png",
      "", // background image
      "Hüseyin Demir",
      "Yemeksepeti",
      "Flutter Developer",
      "Mobil teknolojilere ve performanslı uygulama mimarilerine odaklanıyor.",
      "Ankara, Türkiye",
      120,
      34,
      500,
      210,
      800,
      1,
      null,
      true,
    );
    // woman 2
    Person commonPerson2 = Person(
      "assets/images/pp_woman2.png",
      "", // background image
      "Selen Kaçak",
      "Hepsiburada",
      "UI/UX Designer",
      "Kullanıcı deneyimini merkeze alan tasarımlar üretmeyi seviyor.",
      "İzmir, Türkiye",
      310,
      98,
      1300,
      875,
      1500,
      3,
      null,
      false,
    );
    // man 3
    Person commonPerson3 = Person(
      "assets/images/pp_man3.png",
      "", // background image
      "Alex Rain",
      "Peak Games",
      "React Native Engineer",
      "Mobil oyunlarda kullanıcı etkileşimini artırmaya yönelik çözümler geliştiriyor.",
      "San Francisco, ABD",
      560,
      220,
      2400,
      1900,
      3100,
      4,
      null,
      true,
    );

    return [
      // man
      Person(
        "assets/images/person_man1.jpg",
        "",
        "Ahmet Arif Isen",
        "Beykent Üniversitesi",
        "Yazılım Mühendisliği Öğrencisi",
        "Katkı sunmayı seven, girişimci ruhlu bir öğrenciyim.",
        "İstanbul, Türkiye",
        120,
        45,
        360,
        280,
        670,
        3,
        commonPerson,
        false,
      ),
      // woman
      Person(
        "assets/images/person_woman3.jpg",
        "assets/images/top_ph2.jpg",
        "Yağmur Kaftar",
        "Sakarya Üniversitesi",
        "Öğrenci - Yazar",
        "Eğitim alanında paylaşım yapmayı seviyorum.",
        "Sakarya, Türkiye",
        320,
        110,
        750,
        920,
        890,
        2,
        commonPerson3,
        true,
      ),
      // man
      Person(
        "assets/images/person_man3.jpg",
        "assets/images/top_ph3.jpg",
        "Mert Uçar",
        "Arçelik",
        "Mobile Developer",
        "Flutter ve Kotlin ile uygulama geliştiriyorum.",
        "Kocaeli, Türkiye",
        150,
        60,
        510,
        430,
        800,
        2,
        null,
        false,
      ),
      // woman
      Person(
        "assets/images/person_woman2.jpg",
        "assets/images/top_ph4.jpg",
        "Elif Nur Kaya",
        "Hepsiburada",
        "UI/UX Designer",
        "Kullanıcı deneyimi ve arayüz tasarımı uzmanıyım.",
        "İzmir, Türkiye",
        410,
        85,
        670,
        1030,
        1350,
        1,
        commonPerson,
        true,
      ),
      // man
      Person(
        "assets/images/person_man2.jpg",
        "",
        "Burak Soysal",
        "Yemeksepeti",
        "Backend Developer",
        "Node.js, Express.js ve veritabanı yönetimi konusunda deneyimliyim.",
        "Ankara, Türkiye",
        220,
        50,
        430,
        610,
        740,
        3,
        commonPerson2,
        false,
      ),
      // woman
      Person(
        "assets/images/person_woman1.jpg",
        "",
        "Simay Yılmaz",
        "Trendyol",
        "Product Manager",
        "Yazılım ekipleriyle koordineli çalışarak ürün geliştirme süreçlerine liderlik ediyorum.",
        "İstanbul, Türkiye",
        530,
        150,
        980,
        1230,
        1600,
        1,
        null,
        true,
      ),
      // man
      Person(
        "assets/images/person_man4.jpg",
        "assets/images/top_ph1.jpg",
        "Emre Çelik",
        "Peak",
        "Software Engineer",
        "Performans odaklı, ölçeklenebilir sistemler geliştiriyorum.",
        "İstanbul, Türkiye",
        470,
        130,
        890,
        1140,
        1480,
        2,
        commonPerson3,
        true,
      ),
      // woman
      Person(
        "assets/images/person_woman4.jpg",
        "",
        "Gizem Topal",
        "Getir",
        "Digital Marketing Specialist",
        "Veri odaklı dijital kampanyalarla marka bilinirliğini artırmayı hedefliyorum.",
        "İstanbul, Türkiye",
        290,
        70,
        540,
        720,
        910,
        3,
        commonPerson2,
        false,
      ),
    ];
  }

  // experience data
  static List<Experience> experienceList = [
    Experience(
      "assets/images/infogenix_labs.png",
      "Junior Mobile Developer",
      "Infogenix Labs",
      "Ekim 2024",
      "Devam ediyor",
      "9 ay",
      "Tam Zamanlı",
      "Flutter, Riverpod, IoT, Firebase, Socket.IO",
    ),
    Experience(
      "assets/images/nexora_soft.png",
      "Flutter Developer",
      "Nexora Soft",
      "Mart 2022",
      "Temmuz 2024",
      "2 yıl 4 ay",
      "Remote",
      "Flutter, REST API, Clean Architecture, Firebase",
    ),
    Experience(
      "assets/images/devix_solutions.png",
      "Mobile App Intern",
      "Devix Solutions",
      "Haziran 2021",
      "Eylül 2021",
      "4 ay",
      "Hibrit",
      "Flutter, Git, UI/UX, Agile Scrum",
    ),
  ];

  static List<Experience> educationList = [
    Experience(
      "assets/images/ytu_logo.png",
      "Bilgisayar Mühendisliği Yüksek Lisans",
      "Yıldız Teknik Üniversitesi",
      "Eylül 2023",
      "Devam ediyor",
      "10 ay",
      "İstanbul, Türkiye",
      "Makine öğrenmesi, mobil sistemler +3 yetenek",
    ),
    Experience(
      "assets/images/iu_logo.png",
      "Bilgisayar Mühendisliği Lisans",
      "İstanbul Üniversitesi",
      "Eylül 2017",
      "Haziran 2021",
      "3 yıl 10 ay",
      "İstanbul, Türkiye",
      "Algoritmalar, veri yapıları, yazılım mühendisliği +2 yetenek",
    ),
  ];

  // certificates
  static List<Experience> certicificateList = [
    Experience(
      "assets/images/nexora_soft.png",
      "AI Web Summit",
      "Nexora Soft",
      "Yayınlama Haz 2025",
      "",
      "",
      "Yeterlilik Kimliği",
      "",
    ),
    Experience(
      "assets/images/infogenix_labs.png",
      "Data Science Day",
      "Infogenix Labs",
      "Yayınlama Ara 2024",
      "",
      "",
      "Yeterlilik Kimliği",
      "",
    ),
  ];

  // post list (5)
  static List<Post> getPosts() {
    final person1 = Person(
      "assets/images/pp_man1.png",
      "",
      "Ömer Kalaycı",
      "Kadir Has Üniversitesi",
      "Öğrenci",
      "Yazılım meraklısı",
      "İstanbul",
      100,
      20,
      200,
      400,
      600,
      2,
      null,
      false,
    );
    final person2 = Person(
      "assets/images/infogenix_labs.png",
      "",
      "Infogenix Labs",
      "Trendyol",
      "UX Designer",
      "Tasarım tutkunu.",
      "İzmir",
      150,
      30,
      320,
      560,
      800,
      1,
      null,
      true,
    );
    final person3 = Person(
      "assets/images/devix_solutions.png",
      "",
      "Devix Solutions",
      "Getir",
      "Android Developer",
      "Mobil geliştirici.",
      "Ankara",
      130,
      25,
      270,
      450,
      720,
      2,
      null,
      false,
    );
    final person4 = Person(
      "assets/images/pp_woman2.png",
      "",
      "Zeynep Er",
      "Hepsiburada",
      "Product Owner",
      "Ürün odaklı.",
      "İstanbul",
      180,
      40,
      380,
      610,
      900,
      1,
      null,
      true,
    );
    final person5 = Person(
      "assets/images/pp_man3.png",
      "",
      "Hakan Çetin",
      "Yemeksepeti",
      "Software Engineer",
      "Yeni teknolojilere açık.",
      "Bursa",
      110,
      22,
      240,
      390,
      640,
      2,
      null,
      false,
    );

    final commenter1 = Person(
      "assets/images/pp_woman1.png",
      "",
      "Merve Taş",
      "Arçelik",
      "Backend Dev",
      "API'lerle uğraşan.",
      "İstanbul",
      90,
      10,
      180,
      300,
      500,
      2,
      null,
      false,
    );
    final commenter2 = Person(
      "assets/images/pp_man2.png",
      "",
      "Burak Gül",
      "Peak",
      "Full Stack",
      "Her şeye karışır.",
      "İstanbul",
      120,
      18,
      210,
      330,
      580,
      3,
      null,
      false,
    );
    final commenter3 = Person(
      "assets/images/pp_woman3.png",
      "",
      "Chloe Hartley",
      "Microsoft",
      "Full Stack",
      "Her şeye karışır.",
      "Los Angeles",
      120,
      18,
      210,
      330,
      580,
      1,
      null,
      false,
    );

    return [
      // 🟩 UZUN POST 1
      Post(
        """🚀 Büyük bir yolculuğun sonuna geldik!
Son 4 ayda ekip olarak geliştirdiğimiz yeni mobil uygulamamız artık yayınlandı. Her günümüzü kullanıcı deneyimini geliştirmek, performansı artırmak ve tasarımı sadeleştirmek için harcadık.
📱 Flutter ile geliştirilen bu uygulama sayesinde kullanıcılar çok daha hızlı ve sezgisel bir arayüzle karşılaşacak. Ayrıca CI/CD süreçleriyle deploy sürecimizi %50 hızlandırdık.
Bu süreçte emeği geçen tüm ekip arkadaşlarıma teşekkür ederim. 👏  
Kullananlardan yorum ve öneri bekliyoruz 🙌""",
        "38",
        "assets/images/post_image3.png",
        20,
        145,
        person1,
        [
          Comment(
            "Tebrikler, çok başarılı bir iş çıkmış 👌",
            5,
            1,
            "2",
            commenter1,
          ),
          Comment(
            "Emeğinize sağlık",
            5,
            1,
            "10",
            commenter2,
          ),
          Comment(
            "Congrats!!!",
            5,
            1,
            "43",
            commenter3,
          ),
        ],
      ),

      // 🟩 UZUN POST 2
      Post(
        """🎨 Tasarım yaparken kullanıcıyı merkezde tutmak zorundayız.
Bir arayüzün güzel görünmesi yeterli değil; kullanışlı, sezgisel ve anlamlı olması gerekir. Özellikle renk kontrastı, tipografi ve boşluk kullanımı detay gibi görünse de kullanıcıyı doğrudan etkiler.
📊 Yaptığımız son A/B testlerinde sadeleştirilmiş arayüzlerin dönüşüm oranlarını %23 artırdığını gözlemledik.  
Bu nedenle yeni sürümde fazlalıkları azalttık, odak noktalarını netleştirdik.
Karmaşıklık yerine sadelik kazandırır. 💡""",
        "18",
        "assets/images/post_image1.png",
        13,
        97,
        person2,
        [
          Comment(
            "Tasarımda sadelik, hız kadar önemli. Harika analiz!",
            4,
            0,
            "4",
            commenter2,
          ),
        ],
      ),

      // 🟨 ORTA
      Post(
        "Bugün Devix Solutions ekibi olarak büyük bir başarıya imza attık 🚴‍♂️ Yeni sürümle birlikte uygulamanın tepkime süresini %35 oranında düşürdük. Teknik detaylar blog yazımda.",
        "8s",
        "assets/images/meeting.png",
        10,
        88,
        person3,
        [Comment("Performans her şeydir, tebrikler!", 2, 0, "7s", commenter1)],
      ),

      // 🟦 KISA 1
      Post(
        "Bugün çok keyifli bir müşteri görüşmesi gerçekleştirdik. 🎯",
        "1s",
        "",
        3,
        26,
        person4,
        [Comment("Geribildirimler iyiyse süper!", 1, 0, "30dk", commenter2)],
      ),

      // 🟦 KISA 2
      Post(
        "Yazılıma başlamak isteyenlere: küçük projelerle başlayın. 🚀",
        "9s",
        "",
        6,
        61,
        person5,
        [
          Comment(
            "Kesinlikle! İlk projeme dün başladım 👊",
            2,
            0,
            "8s",
            commenter2,
          ),
        ],
      ),
    ];
  }
}
