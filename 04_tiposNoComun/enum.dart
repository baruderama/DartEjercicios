main(List<String> args) {
  //int vol = 1; //0 =volumen bajo; 1=vol medio ; 2=vol alto

  Audio volumen = Audio.bajo;
  switch (volumen) {
    case Audio.alto:
      print('alto');
      break;

    case Audio.medio:
      print('medio');
      break;

    case Audio.bajo:
      print('bajo');
      break;
  }
}

enum Audio { bajo, medio, alto }
