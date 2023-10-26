import 'package:ornek_proje/soru.dart';

class TestVeri {
  int _soruIndex = 0;

  List<Soru> _soruBankasi = [
    Soru(soruMetni: 'Bir yılda 365 gün vardır', soruYaniti: true),
    Soru(
        soruMetni: 'Hindistan , dünyanın en kalabalık ülkesidir',
        soruYaniti: true),
    Soru(soruMetni: 'Ay, dünya yörüngesinde döner', soruYaniti: true),
    Soru(
        soruMetni: 'Deniz seviyesinden yükseklik arttıkça hava daha soğuktur',
        soruYaniti: true),
    Soru(soruMetni: 'İstanbul Türkiye\'nin başkentidir', soruYaniti: false),
    Soru(soruMetni: 'Güneş, dünya etrafında döner', soruYaniti: false),
    Soru(soruMetni: 'Dünya, Güneş etrafında döner', soruYaniti: true),
    Soru(
        soruMetni: 'Fransızca, İtalyanca\'dan türetilmiştir',
        soruYaniti: false),
    Soru(soruMetni: 'Arılar bal yaparlar', soruYaniti: true),
    Soru(soruMetni: 'Yılanlar kulakları vardır', soruYaniti: false),
    Soru(
        soruMetni: 'Dünya\'nın en büyük okyanusu Pasifik Okyanusu\'dur',
        soruYaniti: true),
    Soru(
        soruMetni: 'Kanaryalar denizlerin en derin noktalarında yaşarlar',
        soruYaniti: false),
    Soru(soruMetni: 'Koalalar sadece bambu yaprakları yer', soruYaniti: false),
    Soru(soruMetni: 'Futbol bir Amerikan sporudur', soruYaniti: false),
    Soru(soruMetni: 'Kertenkeleler zehirlidir', soruYaniti: false),
    Soru(soruMetni: 'Gözler mavi renkte doğar', soruYaniti: false),
    Soru(soruMetni: 'Çin Seddi Ay\'dan görünebilir', soruYaniti: false),
    Soru(
        soruMetni: 'Koşarken nefes almak daha az enerji harcar',
        soruYaniti: true),
    Soru(soruMetni: 'Yunuslar tatlı su göletlerinde yaşar', soruYaniti: false),
    Soru(soruMetni: 'Çilek aslında bir çiçektir', soruYaniti: true),
    Soru(soruMetni: 'İnekler her zaman aynı renktedir', soruYaniti: false),
    Soru(soruMetni: 'Dünya\'nın en yüksek dağı Everest\'tir', soruYaniti: true),
    Soru(soruMetni: 'Penguenler kutuplarda yaşar', soruYaniti: true),
    Soru(soruMetni: 'Ahtapotlar deniz altında yaşar', soruYaniti: true),
    Soru(soruMetni: 'Dünya\'nın uydusu Ay\'dır', soruYaniti: true),
    Soru(soruMetni: 'Balıklar suda nefes alırlar', soruYaniti: true),
    Soru(soruMetni: 'Dinozorlar hala hayatta', soruYaniti: false),
    Soru(soruMetni: 'Güneş sistemi merkezinde Mars bulunur', soruYaniti: false),
    Soru(soruMetni: 'Antarktika dünyanın en büyük kıtasıdır', soruYaniti: true),
    Soru(soruMetni: 'İnsanlar 7 yaşında büyür', soruYaniti: false),
    Soru(soruMetni: 'Denizlerdeki balıklar tuzlu su içer', soruYaniti: false),
    Soru(soruMetni: 'Kutup ayıları kutuplarda yaşar', soruYaniti: true),
    Soru(
        soruMetni: 'Kediler 7 yaşında bir insana eşdeğerdir',
        soruYaniti: false),
    Soru(
        soruMetni: 'Aydaki yerçekimi Dünya\'dakinden daha zayıftır',
        soruYaniti: true),
    Soru(soruMetni: 'Bir yılda 12 ay vardır', soruYaniti: true),
    Soru(
        soruMetni: 'Bir karınca kolonisi binlerce birey içerir',
        soruYaniti: true),
    Soru(soruMetni: 'Suda yaşayan balıklar su içmez', soruYaniti: false),
    Soru(soruMetni: 'İnsanlar 5 duyuya sahiptir', soruYaniti: true),
    Soru(soruMetni: 'Eskimolar yeşil kardan evler yaparlar', soruYaniti: false),
    Soru(soruMetni: 'Penguenler uçabilir', soruYaniti: false),
    Soru(soruMetni: 'Ağaçlar rüya görmez', soruYaniti: true),
    Soru(soruMetni: 'Kelebeklerin ömrü bir gündür', soruYaniti: false),
    Soru(soruMetni: 'Dünya düzdür', soruYaniti: false),
    Soru(
        soruMetni: 'Ronaldo dünyanın en iyi futbolcusu mu?', soruYaniti: false),
    Soru(soruMetni: 'Karpuz bir sebze midir?', soruYaniti: false),
    Soru(soruMetni: 'İnsanlar Mars\'ta yaşayabilir mi?', soruYaniti: true),
    Soru(soruMetni: 'Balinalar memeli hayvanlardır.', soruYaniti: true),
    Soru(soruMetni: 'Brezilya Amazon Ormanlarına sahip mi?', soruYaniti: true),
    Soru(soruMetni: 'Einstein Nobel Ödülü kazandı mı?', soruYaniti: false),
    Soru(soruMetni: 'Antarktika buzdan kaplı bir kıtadır.', soruYaniti: true),
    Soru(soruMetni: 'İpek böceği ipek üretir mi?', soruYaniti: true),
    Soru(soruMetni: 'İstanbul Türkiye\'nin başkenti midir?', soruYaniti: false),
  ];

  String getSoruMetni() {
    return _soruBankasi[_soruIndex].soruMetni;
  }

  bool getSoruYaniti() {
    return _soruBankasi[_soruIndex].soruYaniti;
  }

  void sonrakiSoru() {
    if (_soruIndex + 1 < _soruBankasi.length) {
      _soruIndex++;
    }
  }

  bool testBittiMi() {
    if (_soruIndex + 1 >= _soruBankasi.length) {
      return true;
    } else {
      return false;
    }
  }

  void testiSifirla() {
    _soruIndex = 0;
  }
}
