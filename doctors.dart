
import 'package:first_day_flutter/search.dart';
class Doctor{
  final String name;
  final String reviews;
  int star ;
  final String sub ;
  final int favorite;
  final String imageUrl;

  Doctor({
    required this.name,
    required this.reviews,
    required this.star,
    required this.sub,
    required this.favorite,
    required this.imageUrl,

  });
}
List Doctors =[
  Doctor(
      name: "Dr. Shamse Ali",
      reviews:"reviews",
      star: 0,
      sub: " specialty - Cairo hospital",
      favorite:0,
      imageUrl: "https://www.bing.com/images/search?view=detailV2&ccid=6pQLaGOK&id=A35E82DE105A784C907BCA4A8"
          "C2BB0E2E14BB512&thid=OIP.6pQLaGOKgcgVeKdzLocQOAHaKD&mediaurl=https%3a%2f%2flh3.googleusercontent"
          ".com%2f-yqrf8Fndh5I%2fV3kl13pFo6I%2fAAAAAAAAArI%2fcuAQ1xRQ53w%2fs1600%2ffemale-doctor-cute-smile-li"
          "ght-background-31242629.jpg&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.ea940b68638a81c81578a773"
          "2e871038%3frik%3dErVL4eKwK4xKyg%26pid%3dImgRaw%26r%3d0&exph=1300&expw=958&q=%d8%b5%d9%88%d8%b1+%d8%af%d"
          "9%83%d8%a7%d8%aa%d8%b1%d8%a9&simid=608020795394697046&FORM=IRPRST&ck=15FB498CA38240BBADA086FFB9E4BEAC&selectedIndex=39"),
  Doctor(
      name: "Dr. Abdelrahman Mahmoud ",
      reviews:"reviews",
      star: 0,
      sub: "Ear ans nose specialty  - Minia hospital",
      favorite:0,
      imageUrl: "https://www.bing.com/images/search?view=detailV2&ccid=WYDUMqjK&id=94F939BB68CD06090683AF300EAD534193A02830"
          "&thid=OIP.WYDUMqjKDcpjWFKjfO_0YwHaEH&mediaurl=https%3a%2f%2fimg2.arabpng.com%2f20180611%2fbc%2fkisspng-medicine-"
          "physician-assistant-tampa-bay-cpa-certifi-doctor-of-nursing-practice-5b1e1c36b3a222.9223358915286999587358.jpg&cdnurl"
          "=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.5980d432a8ca0dca635852a37ceff463%3frik%3dMCigk0FTrQ4wrw%26pid%3dImgRaw%26r%3d0&exph"
          "=500&expw=900&q=%d8%b5%d9%88%d8%b1+%d8%af%d9%83%d8%a7%d8%aa%d8%b1%d8%a9&simid=608048351906069112&FORM=IRPRST&ck=148C1B9EB07041"
          "99B800AB305C8673E3&selectedIndex=66"),
  Doctor(
      name: "Dr. Nage Abdelsatar ",
      reviews:"reviews",
      star: 0,
      sub: " Orthopedic specialty  - Alex hospital",
      favorite:0,
      imageUrl: "https://www.bing.com/images/search?view=detailV2&ccid=GVTiLf5n&id=39758FEA83112C5141766E7F04B6152529EA2EB6&"
          "thid=OIP.GVTiLf5nCMBl0tff7c45pAAAAA&mediaurl=https%3a%2f%2fimage.shutterstock.com%2fimage-photo%2fportrait-picture-"
          "indian-doctor-wearing-260nw-1205790922.jpg&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.1954e22dfe6708c065d2d7dfedce"
          "39a4%3frik%3dti7qKSUVtgR%252fbg%26pid%3dImgRaw%26r%3d0&exph=280&expw=390&q=%d8%b5%d9%88%d8%b1+%d8%af%d9%83%d8%a7%d8%aa%"
          "d8%b1%d8%a9&simid=608023453982987196&FORM=IRPRST&ck=CD21E632A6F2E056CD0ED25B40BE7D30&selectedIndex=97"),
  Doctor(
      name: "Dr. Khadiga Shaban ",
      reviews:"reviews",
      star: 0,
      sub: " Specializing in Obstetrics and Gynecology  - Minia hospital",
      favorite:0,
      imageUrl: "https://www.bing.com/images/search?view=detailV2&ccid=MWZNlai%2b&id=F1DF36E19DDCE2F8ABB72A1F87C8545D3854"
          "D469&thid=OIP.MWZNlai-Af-OEkLJzn8lxgHaLE&mediaurl=https%3a%2f%2fimg.lovepik.com%2felement%2f40024%2f8344.png_1200"
          ".png&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.31664d95a8be01ff8e1242c9ce7f25c6%3frik%3dadRUOF1UyIcfKg%26pid%3dI"
          "mgRaw%26r%3d0&exph=2973&expw=1989&q=%d8%b5%d9%88%d8%b1+%d8%af%d9%83%d8%a7%d8%aa%d8%b1%d8%a9&simid=608044013988361400&F"
          "ORM=IRPRST&ck=FB4CFBC6069EA4FEA78AB47C4DA035C2&selectedIndex=92"),
  Doctor(
      name: "Dr. Mostafa Talat ",
      reviews:"reviews",
      star: 0,
      sub: "Eye specialty  - Fayum hospital",
      favorite:0,
      imageUrl: "https://www.bing.com/images/search?view=detailV2&ccid=5lPJsC3A&id=94F939BB68CD06090683661044E889AB4BF"
          "FFCAA&thid=OIP.5lPJsC3A3htptTHpA2oUDAHaIj&mediaurl=https%3a%2f%2fwww.doctor-haleem.com%2fimages%2fdoctor-image."
          "png&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.e653c9b02dc0de1b69b531e9036a140c%3frik%3dqvz%252fS6uJ6EQQZg%26pi"
          "d%3dImgRaw%26r%3d0&exph=683&expw=591&q=%d8%b5%d9%88%d8%b1+%d8%af%d9%83%d8%a7%d8%aa%d8%b1%d8%a9&simid=60802890428593184"
          "5&FORM=IRPRST&ck=11712652FE88C92548889B86FF695F72&selectedIndex=100"),
  Doctor(
      name: "Dr. Radwa Sihab ",
      reviews:"reviews",
      star: 0,
      sub: "Urology specialty  - Zagazig hospital",
      favorite:0,
      imageUrl: "https://www.bing.com/images/search?view=detailV2&ccid=F1Zk2Ssd&id=A93B03BBB68319F11F848924CF653414056C8"
          "53F&thid=OIP.F1Zk2Ssd5zTXiRn_QJ20SAHaJS&mediaurl=https%3a%2f%2fwww.roy2a.com%2fwp-content%2fuploads%2f2021%2f01%2f22-"
          "1.png&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.175664d92b1de734d78919ff409db448%3frik%3dP4VsBRQ0Zc8kiQ%26pid%3dI"
          "mgRaw%26r%3d0&exph=1484&expw=1183&q=%d8%b5%d9%88%d8%b1+%d8%af%d9%83%d8%a7%d8%aa%d8%b1%d8%a9&simid=608023724559373314&FO"
          "RM=IRPRST&ck=B7254AD9B9F50021F661B15248AD48F2&selectedIndex=22"),
  Doctor(
      name: "Dr. Rofida mohamed ",
      reviews:"reviews",
      star: 0,
      sub: " Specializing in general and Plastic Surgery   - Minia hospital",
      favorite:0,
      imageUrl: "https://www.bing.com/images/search?view=detailV2&ccid=bEht8FRI&id=D5B35CD9FEB359A8365427BE5A0BC80C3572B9D7&"
          "thid=OIP.bEht8FRICeL99-hRx1KoSAHaHe&mediaurl=https%3A%2F%2Fth.bing.com%2Fth%2Fid%2FR.6c486df0544809e2fdf7e851c752a84"
          "8%3Frik%3D17lyNQzIC1q%252bJw%26riu%3Dhttp%253a%252f%252fwww.nycmedicaltraining.com%252fwp-content%252fuploads%252f20"
          "15%252f11%252fmedical-assistant-e1447360076133.png%26ehk%3DYJc7qwNaHpjZM2f0EnHWsODBz5fNkNO7sRePDApGjpc%253d%26risl%3D"
          "%26pid%3DImgRaw%26r%3D0&exph=400&expw=396&q=%d8%b5%d9%88%d8%b1+%d8%af%d9%83%d8%a7%d8%aa%d8%b1%d8%a9&simid=6080440569336"
          "44777&form=IRPRST&ck=944DD7F5BF2CA6A5778F7FC0BE30FEDF&selectedindex=3&ajaxhist=0&ajaxserp=0&vt=2"),
  Doctor(
      name: "Dr. Ahlam Eid ",
      reviews:"reviews",
      star: 0,
      sub: "Dental specialty  - New Cairo hospital",
      favorite:0,
      imageUrl: "https://www.bing.com/images/search?view=detailV2&ccid=TzZkKads&id=3421DA1BE023AE15BA4E547B04F50687576E6A4"
          "8&thid=OIP.TzZkKadsc_LpaWIFdqOZmAHaHY&mediaurl=https%3A%2F%2Fwww.webfulcreations.com%2Fhtml-templates%2Fchiroprac"
          "tor%2Fassets%2Fimages%2Fhelp%2Fwelcome.png&cdnurl=https%3A%2F%2Fth.bing.com%2Fth%2Fid%2FR.4f366429a76c73f2e96962057"
          "6a39998%3Frik%3DSGpuV4cG9QR7VA%26pid%3DImgRaw%26r%3D0&exph=552&expw=554&q=%d8%b5%d9%88%d8%b1+%d8%af%d9%83%d8%a7%d8%aa"
          "%d8%b1%d8%a9&simid=608021362323833742&form=IRPRST&ck=5203824F6C1FF7CE5BF2FCAC90093B60&selectedindex=12&ajaxhist=0&ajaxs"
          "erp=0&vt=2"),
];
