import 'package:flutter/material.dart';
import 'package:linkedin_clone/views/my_text.dart';

class PostCard extends StatefulWidget {
  const PostCard({super.key});

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {

  bool isExpanded = false; // is post text expanded
  final String postText = "💡 Gelecek, birlikte yazılıyor.Son aylarda ekibimizle birlikte üzerinde çalıştığımız yapay zekâ tabanlı proje nihayet lansman aşamasına geldi. 🚀Bu süreç boyunca sadece teknolojik bir ürün geliştirmedik; aynı zamanda takım ruhunu, esnek çalışma kültürünü ve yaratıcı problem çözme yöntemlerini de yeniden tanımladık.Gece geç saatlere kadar süren beyin fırtınaları, başarısız olan denemeler, küçük zaferler ve büyük derslerle dolu bir yolculuktu bu. 🔍📈 Projemiz, kullanıcıların verimliliğini artırmakla kalmıyor, aynı zamanda kişiselleştirilmiş öneri motoru sayesinde iş süreçlerine yeni bir boyut kazandırıyor.Kısacası: sadece bir yazılım değil, bir vizyon inşa ediyoruz.💬 Bir ekip arkadaşıma göre:Artık toplantılarda konuştuğumuz her şey, sistemin bir sonraki önerisine yön veriyor.Bu cümle bile geldiğimiz noktayı özetliyor aslında.🙏 Başta proje yöneticimiz [@isim] olmak üzere emeği geçen herkese minnettarım.Bir fikrin hayale, hayalin ürüne dönüşmesini hep birlikte yaşamak çok eğerliydi.👉 Sizin de benzer dönüşüm hikâyeleriniz varsa, yorumlara yazmanızı çok isterim.Hadi birlikte öğrenelim, birlikte büyüyelim. 🌱#YapayZeka #AI #TechLeadership #TeamWork #StartupJourney #Innovation";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                // TITLE ROW
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // LOGO IMAGE AND COMPANY COLUMN
                    Row(
                      children: [
                        // logo image
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            // border: Border.all(color: Colors.black),
                            image: DecorationImage(image: AssetImage("assets/icons/queens_logo.png"))
                          ),
                        ),
                        SizedBox(width: 10,),
                        // COMPANY NAME, FOLLOWER COUNT AND PUBLISHED TIME
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // company name
                            MyText(textContent: "İnvent.ai", textSize: 16, textWeight: FontWeight.bold, textColor: Colors.black87),
                            // follower count
                            MyText(textContent: "27.476 takipçi", textSize: 12, textWeight: FontWeight.w400, textColor: const Color.fromARGB(221, 102, 102, 102)),
                            // published time
                            Row(
                              children: [
                                MyText(textContent: "12 dakika", textSize: 12, textWeight: FontWeight.w400, textColor: const Color.fromARGB(221, 102, 102, 102)),
                                MyText(textContent: " ·", textSize: 18, textWeight: FontWeight.w900, textColor: Colors.black54),
                                SizedBox(width: 4,),
                                SizedBox(
                                  height: 12,
                                  width: 12,
                                  child: Image.asset("assets/icons/earth_post.png")
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    Spacer(),
                    // MORE VERT AND CROSS ICONS
                    Row(
                      children: [
                        // more vert icon 
                        SizedBox(
                          height: 16,
                          width: 16,
                          child: Image.asset("assets/icons/more_vert_post.png"),
                        ),
                        SizedBox(width: 20,),
                        // cross icon
                        SizedBox(
                          height: 16,
                          width: 16,
                          child: Image.asset("assets/icons/cross_post.png"),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20,),
                // POST CONTENT TEXT AND SEE MORE TEXT
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // Post text
                    MyText(
                    textContent: postText, 
                    textSize: 14, 
                    textWeight: FontWeight.w400, 
                    textColor: Colors.black,
                    maxLines: isExpanded ? null : 3,
                    textOverflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
                    textHeight: 1.5,
                  ),
                  // see more text
                  if (_shouldShowSeeMore(postText)) 
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isExpanded = !isExpanded;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: MyText(
                          textContent: isExpanded ? "daha az" : "daha fazla", 
                          textSize: 14, 
                          textWeight: FontWeight.w400, 
                          textColor: Colors.black45
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                // IMAGE POST
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 400,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage  ("assets/images/post_image2.png")
                          )
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  // should text expanded or not
  bool _shouldShowSeeMore(String postText){
    // if text length is higher than 3 lines
    return postText.length > 120;
  }
}