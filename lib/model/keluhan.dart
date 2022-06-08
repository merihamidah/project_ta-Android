import 'package:flutter/material.dart';

class Keluhan {
  String title;
  String description;
  String imageUrl;

  Keluhan(
      {@required this.title,
      @required this.imageUrl,
      @required this.description});
}

List<Keluhan> keluhanList = [
  Keluhan(
      title: 'Morning Sickness',
      imageUrl:
          'https://cdn.idntimes.com/content-images/post/20211129/image-7200475b4a7c182495288ac223063e92_600x400.jpg',
      description:
          'Morning sickness adalah keluhan mual dan muntah yang dialami oleh banyak ibu hamil. Tanda kehamilan normal ini biasanya muncul pada usia kehamilan 4–12 minggu. Meski disebut morning sickness, keluhan ini juga bisa dirasakan pada siang atau malam hari. Untuk meredakan mual saat hamil, Bumil bisa mengonsumsi makanan dengan porsi sedikit namun lebih sering atau mencoba minum teh jahe. Karena morning sickness bisa membuat Bumil lebih sensitif terhadap aroma makanan, hindarilah konsumsi makanan yang pedas, berlemak, atau berbau tajam.Bila mual dan muntah yang dialami cukup parah atau berlangsung sepanjang hari hingga membuat Bumil tidak bisa mengonsumsi makanan apa pun, segeralah konsultasikan ke dokter kandungan. Kondisi tersebut bisa jadi disebabkan oleh hipermemesis gravidarum yang perlu segera ditangani oleh dokter.'),
  Keluhan(
      title: 'Pendarahan ',
      imageUrl:
          'https://dppkbpmd.bantulkab.go.id/wp-content/uploads/2020/11/1-6-1024x576.jpg',
      description:
          '  Perdarahan dari vagina dalam jumlah sedikit merupakan salah satu tanda awal kehamilan normal. Perdarahan ini terjadi karena bakal janin (embrio) telah menempel pada dinding rahim. Munculnya tanda kehamilan ini dapat disertai dengan kram ringan dan terkadang menyerupai gejala menstruasi. Meski begitu, Bumil tetap perlu waspada dan memeriksakan diri ke dokter jika perdarahan yang muncul sangat banyak, disertai nyeri atau kram berat, atau jika perdarahan keluar beserta gumpalan atau jaringan. Bumil juga perlu waspada jika perdarahan tersebut muncul setelah terjatuh atau mengalami benturan pada perut. '),
  Keluhan(
      title: 'Kram',
      imageUrl:
          'https://www.honestdocs.id/system/blog_articles/main_hero_images/000/001/900/original/7_Penyebab_Kram_Perut_Saat_Hamil_Muda___Cara_Mengatasi.jpg',
      description:
          ' Kram merupakan tanda kehamilan normal yang biasanya dialami ibu hamil di awal kehamilan. Kram yang muncul selama hamil umumnya tidak jauh berbeda dengan yang dirasakan saat menstruasi.'),
  Keluhan(
      title: 'Keputihan',
      imageUrl:
          'https://cdn.idntimes.com/content-images/post/20211129/image-7200475b4a7c182495288ac223063e92_600x400.jpg',
      description:
          'Keputihan selama kehamilan yang tidak mengganggu dan tidak terasa nyeri atau gatal adalah salah satu tanda kehamilan normal. Keputihan ini merupakan cara alami tubuh ibu hamil untuk melindungi dan menjaga jalan lahir dari infeksi.'),
  Keluhan(
      title: 'Kenaikan Berat Badan',
      imageUrl:
          'https://image-cdn.medkomtek.com/VTH4UBD8Bk5U6S1XrdM2yBYX--Q=/1200x675/smart/klikdokter-media-buckets/medias/2305833/original/015016800_1558165189-Kenaikan-Berat-Badan-Normal-pada-Ibu-Hamil-By-Andrey_Popov-Shutterstock.jpg',
      description:
          ' anda kehamilan normal lainnya adalah berat badan yang naik secara bertahap. Selama hamil, peningkatan berat badan yang normal dan sehat adalah sekitar 1–2 kg di trimester pertama kehamilan dan 2–2,5 kg di trimester selanjutnya.'),
];
