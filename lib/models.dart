class Datamodel {
  String simage;
  Datamodel({required this.simage});
}

class Vendorsmodel {
  String vimage;
  Vendorsmodel({required this.vimage});
}

class Authorsmodel {
  String aimage;
  String aname;
  String ajob;
  Authorsmodel({required this.aimage, required this.aname, required this.ajob});
}

class Booksmodel {
  String bimage;
  String btitle;
  String bprice;
  Booksmodel({
    required this.bimage,
    required this.bprice,
    required this.btitle,
  });
}
class Avilablebboks {
  String eimage;
  String etitle;
  String eprice;
  Avilablebboks({
    required this.eimage,
    required this.eprice,
    required this.etitle,
});

}