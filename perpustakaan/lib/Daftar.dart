import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:perpustakaan/bukudata.dart';
import 'package:perpustakaan/bukudetail.dart';

class Home extends StatelessWidget {
  Home({super.key});

  static List<String> bookname = [
    'Jujutsu kaisen',
    'Demon Slayer',
    'One Piece',
    'Naruto',
    'Dragon Ball',
    'Black Clover',
    'One Punch Man',
    'Death Note',
    'Dilan 1990'
  ];

  static List url = [
    'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/1/15/9d06df03-a46c-4e8b-bb89-4cabd7287a93.jpg?ect=4g',
    'https://images.tokopedia.net/img/cache/900/VqbcmM/2023/4/8/0080eed8-af0f-4859-abff-ed2ad0982de5.jpg',
    'https://images.tokopedia.net/img/cache/900/VqbcmM/2022/5/23/7f63d16b-fcc6-4550-8477-1d497b14bed6.jpg',
    'https://images.tokopedia.net/img/cache/900/VqbcmM/2022/7/4/b2184b96-48d6-4490-9df2-cf6bfd4c2e2a.jpg',
    'https://images.tokopedia.net/img/cache/900/VqbcmM/2022/3/26/a718a404-fe72-4a99-ac6c-17acd55a81a5.jpg',
    'https://images.tokopedia.net/img/cache/900/VqbcmM/2021/7/25/8f1d71b5-0392-4eaa-9466-8558b7f28a9b.jpg',
    'https://images.tokopedia.net/img/cache/900/product-1/2020/9/8/4355111/4355111_f2e0e382-b295-4b2a-b868-b33403d820e3_1080_1080',
    'https://cf.shopee.ph/file/d3d1e14f8a913be5d4d7acc0dbe50ddc',
    'https://images.tokopedia.net/img/cache/900/VqbcmM/2021/12/29/f669ddab-f0e5-4bf2-90ac-3b9803358ea0.jpg'
  ];

  static List desc = [
    '"Jujutsu Kaisen" adalah sebuah seri manga Shonen asal Jepang yang ditulis dan diilustrasikan oleh Gege Akutami.manga ini telah di terbitkan sejak Maret 2018,dan telah diterbitkan menjadi dua puluh volume',
    '"Demon Slayer: Kimetsu no Yaiba" adalah sebuah seri manga Jepang yang ditulis oleh Koyoharu Gotouge. Manga ini kemudian diadaptasi menjadi sebuah anime yang sangat populer',
    '"One Piece" adalah sebuah seri manga dan anime Jepang yang ditulis dan diilustrasikan oleh Eiichiro Oda. Seri ini merupakan salah satu manga terlaris sepanjang masa dan telah meraih popularitas yang luar biasa di seluruh dunia.',
    '"Naruto" adalah sebuah seri manga dan anime yang ditulis dan diilustrasikan oleh Masashi Kishimoto. Seri ini merupakan salah satu franchise anime paling populer di dunia dan telah mendapatkan banyak penggemar di berbagai negara',
    '"Dragon Ball" adalah sebuah seri manga dan anime yang ditulis dan diilustrasikan oleh Akira Toriyama. Seri ini merupakan salah satu karya paling ikonik dalam industri anime dan telah memiliki pengaruh besar di seluruh dunia.',
    '"Black Clover" adalah sebuah seri manga dan anime yang ditulis dan diilustrasikan oleh Yūki Tabata. Seri ini telah mendapatkan popularitas yang besar di kalangan penggemar anime dan manga.',
    '"One Punch Man" adalah sebuah seri manga dan anime yang ditulis oleh ONE dan diilustrasikan oleh Yusuke Murata. Seri ini memperoleh popularitas besar dan pujian kritis karena pendekatan yang unik terhadap genre pahlawan super.',
    '"Death Note" adalah sebuah seri manga Jepang yang ditulis oleh Tsugumi Ohba dan diilustrasikan oleh Takeshi Obata. Manga ini kemudian diadaptasi menjadi sebuah anime, film live-action, dan seri televisi. ',
    '"Dilan 1990" adalah film Indonesia yang dirilis pada tahun 2018, berdasarkan novel dengan judul yang sama karya Pidi Baiq. Film ini merupakan sekuel dari film "Dilan 1990" yang dirilis sebelumnya pada tahun 2018.'
  ];

  final List<BukuData> bukudata = List.generate(
      bookname.length,
      (index) =>
          BukuData('${bookname[index]}', '${url[index]}', '${desc[index]}'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text("Daftar Buku"),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: bukudata.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(bukudata[index].name),
                  leading: SizedBox(
                    width: 100,
                    height: 500,
                    child: Image.network(bukudata[index].ImageUrl),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => bukudetail(
                              bukuData: bukudata[index],
                            )));
                  },
                ),
              );
            }));
  }
}
