class HomePasteleria extends StatelessWidget {
  const HomePasteleria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF80AB), // Rosa Fresa Vibrante
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.account_circle, color: Colors.black, size: 35),
          onPressed: () {}, 
        ),
        actions: [
          IconButton(icon: const Icon(Icons.notes, color: Colors.black, size: 30), onPressed: () {}),
          const SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Hello Perla Yuridia Terrazas Camargo 6J", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),
            const Text("02 March 2026", style: TextStyle(color: Colors.white70, fontSize: 16)),
            const SizedBox(height: 20),
            Container( 
              height: 40,
              decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2), borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: const Row(children: [Spacer(), Padding(padding: EdgeInsets.only(right: 15), child: Icon(Icons.search, color: Colors.black))]),
            ),
            const SizedBox(height: 30),
            const Text("Courses", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white)),
            const SizedBox(height: 15),
            Row(
              children: [
                _card(context, '/curso', PastelData(
                  titulo: "RED VELVET", chef: "Jessica A.", duracion: "70 Hours", 
                  imagen: "https://raw.githubusercontent.com/YUridiaCamargo/imagenesp/refs/heads/main/tarta-red-velvet.jpg", 
                  colorFondo: const Color(0xFFFFEBEE), // ROJO CLARO (Pastel)
                  info: "Aprende el batido exacto para obtener un bizcocho aireado y de color rojo intenso natural.",
                  transcripcion: "", comentario: ""
                )),
                _card(context, '/curso', PastelData(
                  titulo: "CUPCAKES", chef: "Henry R.", duracion: "60 Hours", 
                  imagen: "https://images.unsplash.com/photo-1576618148400-f54bed99fcfd?w=400", 
                  colorFondo: const Color(0xFFFFF9C4), // Amarillo Crema
                  info: "Técnicas de horneado para cupcakes de chocolate amargo con centros líquidos de frambuesa.",
                  transcripcion: "", comentario: ""
                )),
              ],
            ),
            const SizedBox(height: 30),
            const Text("Popular channels", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white)),
            const SizedBox(height: 15),
            Row(
              children: [
                _card(context, '/canal', PastelData(
                  titulo: "COOKIES", chef: "Karla P.", duracion: "10 Mins", 
                  imagen: "https://images.unsplash.com/photo-1499636136210-6f4ee915583e?w=400", 
                  colorFondo: const Color(0xFFD7CCC8), // Café Galleta
                  info: "",
                  transcripcion: "Logra galletas crujientes por fuera y suaves por dentro usando mantequilla clarificada y chispas de chocolate de alta calidad.",
                  comentario: "Perla Yuridia, los consejos sobre la temperatura del horno fueron clave para que no se extendieran."
                )),
                _card(context, '/canal', PastelData(
                  titulo: "GERMAN CAKE", chef: "Alexander K.", duracion: "8 Mins", 
                  imagen: "https://images.unsplash.com/photo-1550617931-e17a7b70dce2?w=400", 
                  colorFondo: const Color(0xFFB2DFDB), // Menta Claro
                  info: "",
                  transcripcion: "El frosting de coco y nuez pecanera debe cocinarse a fuego lento hasta caramelizar. Aquí te muestro el punto exacto.",
                  comentario: "Excelente video, el decorado final con ganache le dio un toque muy profesional."
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _card(BuildContext context, String route, PastelData data) {
    return Expanded(
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, route, arguments: data),
        child: Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2), borderRadius: BorderRadius.circular(12), color: Colors.white),
          child: Column(
            children: [
              ClipRRect(borderRadius: const BorderRadius.vertical(top: Radius.circular(10)), child: Image.network(data.imagen, height: 90, width: double.infinity, fit: BoxFit.cover)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(data.titulo, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 11)),
                    Text("Teacher: ${data.chef}", style: const TextStyle(fontSize: 9)),
                    Row(children: [const Icon(Icons.timer, size: 10), const SizedBox(width: 3), Text(data.duracion, style: const TextStyle(fontSize: 9))]),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}