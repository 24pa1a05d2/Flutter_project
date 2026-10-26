import '../models/artisan.dart';
import '../models/product.dart';

const List<Product> sampleProducts = [
  Product(
    id: '1',
    name: 'Blue Pottery Vase',
    price: 850,
    mrp: 1100,
    artisanName: 'Ramesh Kumhar',
    artisanId: 'a1',
    village: 'Sanganer',
    state: 'Rajasthan',
    category: 'Pottery',
    description:
        'Hand-painted Jaipur blue pottery vase made with quartz, glass powder and Multani mitti — not ordinary clay. '
        'Cobalt floral work and a hand-drawn elephant medallion are brushed on before a low-temperature glaze firing. '
        'Each vase takes 3–4 days. Display-only; wipe with a dry cloth.',
    imageAsset: 'assets/products/blue_pottery_vase.jpg',
    rating: 4.8,
    reviewCount: 214,
    stock: 12,
    material: 'Quartz glaze pottery',
    highlights: [
      'GI-linked Jaipur blue pottery',
      'Painted by hand with cobalt oxide',
      'Food-safe glaze is not used — decorative piece',
    ],
    deliveryDays: 5,
    bestseller: true,
  ),
  Product(
    id: '2',
    name: 'Clay Diya Set (12 pcs)',
    price: 220,
    mrp: 299,
    artisanName: 'Sunita Devi',
    artisanId: 'a2',
    village: 'Khurja',
    state: 'Uttar Pradesh',
    category: 'Pottery',
    description:
        'A set of 12 kiln-fired earthen diyas from Khurja, Uttar Pradesh. Moulded from natural clay, sun-dried and fired without chemical colour on the body. '
        'Fill with oil or ghee and a cotton wick for Diwali, Karthika or daily puja.',
    imageAsset: 'assets/products/clay_diya_set.jpg',
    rating: 4.6,
    reviewCount: 486,
    stock: 80,
    material: 'Terracotta clay',
    highlights: [
      'Set of 12 oil lamps',
      'Chemical-free clay',
      'Reusable for several festivals',
    ],
    deliveryDays: 4,
    bestseller: true,
  ),
  Product(
    id: '3',
    name: 'Pochampally Ikat Saree',
    price: 1850,
    mrp: 2490,
    artisanName: 'Kavitha Reddy',
    artisanId: 'a3',
    village: 'Pochampally',
    state: 'Telangana',
    category: 'Handloom',
    description:
        'A genuine Pochampally Ikat cotton-silk saree. Yarns are tie-dyed before weaving so the geometric flowers sit in the cloth, not printed on top. '
        'Navy ground with teal, mustard and magenta motifs and a gold-zari pallu. Lightweight for day wear.',
    imageAsset: 'assets/products/pochampally_saree.jpg',
    rating: 4.7,
    reviewCount: 132,
    stock: 8,
    material: 'Cotton-silk ikat',
    highlights: [
      'GI Pochampally Ikat weave',
      'Tie-dyed yarn, not screen print',
      'Blouse piece included',
    ],
    deliveryDays: 6,
    bestseller: true,
  ),
  Product(
    id: '4',
    name: 'Khadi Kurta (Men)',
    price: 650,
    mrp: 890,
    artisanName: 'Suresh Weaver',
    artisanId: 'a4',
    village: 'Wardha',
    state: 'Maharashtra',
    category: 'Handloom',
    description:
        'Hand-spun, hand-woven khadi cotton kurta from Wardha. Sky-blue check with a mandarin collar, side slits and a straight festive-casual cut. '
        'Khadi breathes in summer and layers well in winter. Wash separately in cold water.',
    imageAsset: 'assets/products/khadi_kurta.jpg',
    rating: 4.4,
    reviewCount: 97,
    stock: 18,
    material: 'Handspun khadi cotton',
    highlights: [
      'Handloom khadi from Wardha',
      'Breathable year-round wear',
      'Supports local weaver families',
    ],
    deliveryDays: 5,
  ),
  Product(
    id: '5',
    name: 'Carved Wooden Elephant',
    price: 1200,
    mrp: 1550,
    artisanName: 'Gopal Suthar',
    artisanId: 'a5',
    village: 'Saharanpur',
    state: 'Uttar Pradesh',
    category: 'Wooden Crafts',
    description:
        'Pair of hand-carved sheesham elephants from Saharanpur. Grain, tusks and saddle folds are cut with traditional chisels, then polished with natural oil. '
        'A classic Indian drawing-room piece. Sold as a pair.',
    imageAsset: 'assets/products/wooden_elephant_alt.jpg',
    rating: 4.9,
    reviewCount: 178,
    stock: 9,
    material: 'Sheesham wood',
    highlights: [
      'Hand-carved in Saharanpur',
      'Natural oil finish, no lacquer spray',
      'Sold as a matching pair',
    ],
    deliveryDays: 7,
    bestseller: true,
  ),
  Product(
    id: '6',
    name: 'Wooden Serving Bowl',
    price: 480,
    mrp: 650,
    artisanName: 'Mohan Mistri',
    artisanId: 'a6',
    village: 'Channapatna',
    state: 'Karnataka',
    category: 'Wooden Crafts',
    description:
        'Lathe-turned hardwood serving bowl with a food-safe oil finish. Use for dry snacks, salads or as a centrepiece. '
        'Do not soak; wipe clean and re-oil occasionally with coconut oil.',
    imageAsset: 'assets/products/wooden_bowl.jpg',
    rating: 4.5,
    reviewCount: 64,
    stock: 21,
    material: 'Seasoned hardwood',
    highlights: [
      'Turned on a hand lathe',
      'Food-safe oil finish',
      'One-of-a-kind wood grain',
    ],
    deliveryDays: 5,
  ),
  Product(
    id: '7',
    name: 'Bamboo Storage Basket',
    price: 350,
    mrp: 449,
    artisanName: 'Phulwa Baiga',
    artisanId: 'a7',
    village: 'Bastar',
    state: 'Chhattisgarh',
    category: 'Baskets',
    description:
        'A lidded bamboo basket woven by Baiga artisans in Bastar. Split bamboo is sun-dried, then coiled and bound without nails or plastic. '
        'Use for dry storage, pooja items or as a hanging organiser.',
    imageAsset: 'assets/products/bamboo_basket2.jpg',
    rating: 4.6,
    reviewCount: 203,
    stock: 30,
    material: 'Wild bamboo',
    highlights: [
      'Handwoven, no metal frame',
      'Lidded for dust-free storage',
      'Sustainably harvested bamboo',
    ],
    deliveryDays: 6,
    bestseller: true,
  ),
  Product(
    id: '8',
    name: 'Cane Storage Basket',
    price: 280,
    mrp: 380,
    artisanName: 'Laxmi Munda',
    artisanId: 'a8',
    village: 'Mayurbhanj',
    state: 'Odisha',
    category: 'Baskets',
    description:
        'Open-weave cane basket made on the pavement looms of Kolkata and Mayurbhanj cane weavers. Strong enough for laundry, toys or market runs. '
        'Light, stackable and completely plastic-free.',
    imageAsset: 'assets/products/cane_basket.jpg',
    rating: 4.3,
    reviewCount: 88,
    stock: 24,
    material: 'Natural cane reed',
    highlights: [
      'Handwoven cane reed',
      'Sturdy open-top storage',
      'Made by tribal women weavers',
    ],
    deliveryDays: 6,
  ),
  Product(
    id: '9',
    name: 'Madhubani Painting',
    price: 1450,
    mrp: 1890,
    artisanName: 'Dulari Jha',
    artisanId: 'a9',
    village: 'Jitwarpur',
    state: 'Bihar',
    category: 'Folk Art',
    description:
        'Mithila (Madhubani) painting on handmade paper in the tantrik-bharni style. Shiva, Devi and the Mahavidyas surround a central yantra, filled with natural pigments — ochre, lampblack, rice paste and indigo. '
        'Ships rolled, ready to frame.',
    imageAsset: 'assets/products/madhubani_painting.jpg',
    rating: 4.9,
    reviewCount: 71,
    stock: 6,
    material: 'Handmade paper, natural pigment',
    highlights: [
      'GI Madhubani / Mithila art',
      'Natural dyes on handmade paper',
      'Ready to frame, ships rolled',
    ],
    deliveryDays: 5,
    bestseller: true,
  ),
  Product(
    id: '10',
    name: 'Bankura Terracotta Horse',
    price: 980,
    mrp: 1250,
    artisanName: 'Anjali Pal',
    artisanId: 'a10',
    village: 'Panchmura',
    state: 'West Bengal',
    category: 'Pottery',
    description:
        'The iconic Bankura horse from Panchmura — logo of All India Handicrafts. Legs, neck and face are thrown separately on the wheel, joined, then fired to terracotta red. '
        'A ritual folk form now collected as sculpture. Approx. 12–14 inches.',
    imageAsset: 'assets/products/bankura_horse.jpg',
    rating: 4.8,
    reviewCount: 119,
    stock: 11,
    material: 'Terracotta',
    highlights: [
      'GI Bankura Panchmura craft',
      'Wheel-thrown, then assembled',
      'Statement folk sculpture',
    ],
    deliveryDays: 8,
  ),
  Product(
    id: '11',
    name: 'Kalamkari Wall Hanging',
    price: 2100,
    mrp: 2690,
    artisanName: 'Venkatesh Reddy',
    artisanId: 'a11',
    village: 'Srikalahasti',
    state: 'Andhra Pradesh',
    category: 'Folk Art',
    description:
        'Srikalahasti kalamkari on cotton. Vishnu reclines on Ananta, framed by narrative registers painted with a bamboo kalam and fermented iron-vinegar black. '
        'Colours come from myrobalan, alum and madder. A museum-style wall piece.',
    imageAsset: 'assets/products/kalamkari_wall.jpg',
    rating: 4.9,
    reviewCount: 42,
    stock: 4,
    material: 'Hand-painted cotton',
    highlights: [
      'Pen kalamkari, not block print',
      'Natural vegetable dyes',
      'Narrative temple cloth',
    ],
    deliveryDays: 7,
  ),
  Product(
    id: '12',
    name: 'Dhokra Tribal Figurine',
    price: 1650,
    mrp: 2100,
    artisanName: 'Jagdish Dhokra',
    artisanId: 'a12',
    village: 'Bastar',
    state: 'Chhattisgarh',
    category: 'Metal Craft',
    description:
        'Lost-wax dhokra bronze of a village woman at the grinding stone. Beeswax, dammar resin and brass scrap are cast the same way the craft has been practised for 4,000 years. '
        'Hollow cast, dark patina, unique surface ridges from the clay mould.',
    imageAsset: 'assets/products/dhokra_figurine.jpg',
    rating: 4.8,
    reviewCount: 56,
    stock: 5,
    material: 'Brass dhokra (lost wax)',
    highlights: [
      'Lost-wax hollow casting',
      'Bastar tribal metal craft',
      'Each cast is one of a kind',
    ],
    deliveryDays: 9,
  ),
  Product(
    id: '13',
    name: 'Warli Painting',
    price: 890,
    mrp: 1190,
    artisanName: 'Savita Vayeda',
    artisanId: 'a13',
    village: 'Palghar',
    state: 'Maharashtra',
    category: 'Folk Art',
    description:
        'Warli painting on a terracotta-red ground: rice-paste white trees, huts and stick figures of harvest life. Painted by women artists of the Warli community in Palghar. '
        'Ships mounted on board.',
    imageAsset: 'assets/products/warli_painting.jpg',
    rating: 4.7,
    reviewCount: 83,
    stock: 10,
    material: 'Rice paste on cloth board',
    highlights: [
      'Authentic Warli tribal art',
      'Rice-paste on earth-red ground',
      'Mounted, ready to hang',
    ],
    deliveryDays: 5,
  ),
  Product(
    id: '14',
    name: 'Bagh Block Print Cotton',
    price: 720,
    mrp: 950,
    artisanName: 'Bilal Khatri',
    artisanId: 'a14',
    village: 'Bagh',
    state: 'Madhya Pradesh',
    category: 'Handloom',
    description:
        'Hand block-printed cotton from Bagh, Dhar district. Teak and iron blocks are stamped with fermented tamarind dye, then washed in the Baghini river minerals that fix the colour. '
        '2.5 metres — enough for a kurta or a table runner.',
    imageAsset: 'assets/products/bagh_print.jpg',
    rating: 4.5,
    reviewCount: 61,
    stock: 16,
    material: 'Hand-block cotton',
    highlights: [
      'GI Bagh print',
      'Natural dyes, wooden blocks',
      '2.5 m running fabric',
    ],
    deliveryDays: 6,
  ),
  Product(
    id: '15',
    name: 'Channapatna Wooden Toys',
    price: 540,
    mrp: 699,
    artisanName: 'Ravi Lacquer',
    artisanId: 'a6',
    village: 'Channapatna',
    state: 'Karnataka',
    category: 'Wooden Crafts',
    description:
        'Assorted GI Channapatna lacquer toys — stacking dolls, cars, drums and tiny animals — turned from ivory-wood (Aale mara) and coloured with vegetable dyes. '
        'Safe for children, packed as a mixed play set of 8 pieces.',
    imageAsset: 'assets/products/channapatna_toys.jpg',
    rating: 4.6,
    reviewCount: 154,
    stock: 22,
    material: 'Ivory-wood with vegetable lacquer',
    highlights: [
      'GI Channapatna toys',
      'Vegetable dyes, child-safe',
      'Mixed set of 8 pieces',
    ],
    deliveryDays: 5,
    bestseller: true,
  ),
  Product(
    id: '16',
    name: 'Brass Pooja Lamp',
    price: 620,
    mrp: 799,
    artisanName: 'Meenakshi Nair',
    artisanId: 'a15',
    village: 'Thrissur',
    state: 'Kerala',
    category: 'Metal Craft',
    description:
        'Kerala-style brass pooja lamp with a peacock finial and five wicks. Cast and hand-finished in Thrissur. Fill the reservoir with sesame oil. '
        'Polish with tamarind and ash to keep the brass warm-gold.',
    imageAsset: 'assets/products/golden_lamp.jpg',
    rating: 4.7,
    reviewCount: 109,
    stock: 14,
    material: 'Solid brass',
    highlights: [
      'Five-wick pooja lamp',
      'Hand-finished brass',
      'Traditional Kerala form',
    ],
    deliveryDays: 5,
  ),
  Product(
    id: '17',
    name: 'Raja-Rani Blue Pottery Vase',
    price: 1950,
    mrp: 2490,
    artisanName: 'Ramesh Kumhar',
    artisanId: 'a1',
    village: 'Sanganer',
    state: 'Rajasthan',
    category: 'Pottery',
    description:
        'Collector Jaipur blue pottery vase in the famous Raja-Rani design — king and queen portraits framed in cobalt arabesques. '
        'A studio piece related to the Jaipur School of Art tradition. Decorative only.',
    imageAsset: 'assets/products/raja_rani_vase.jpg',
    rating: 4.9,
    reviewCount: 28,
    stock: 3,
    material: 'Jaipur blue pottery',
    highlights: [
      'Raja-Rani museum motif',
      'Hand-painted cobalt work',
      'Limited studio piece',
    ],
    deliveryDays: 7,
  ),
  Product(
    id: '18',
    name: 'Wooden Elephant Family',
    price: 2400,
    mrp: 2990,
    artisanName: 'Gopal Suthar',
    artisanId: 'a5',
    village: 'Saharanpur',
    state: 'Uttar Pradesh',
    category: 'Wooden Crafts',
    description:
        'Mother-and-calf wooden elephant sculpture carved from a single seasoned log. Larger statement piece for a garden court or living room. '
        'Outdoor-safe under a porch; oil twice a year.',
    imageAsset: 'assets/products/wooden_elephant.jpg',
    rating: 4.8,
    reviewCount: 39,
    stock: 4,
    material: 'Seasoned hardwood',
    highlights: [
      'Mother and calf set',
      'Carved from seasoned wood',
      'Indoor or covered-patio display',
    ],
    deliveryDays: 9,
  ),
];

const List<String> categories = [
  'All',
  'Pottery',
  'Handloom',
  'Wooden Crafts',
  'Baskets',
  'Folk Art',
  'Metal Craft',
];

const List<Artisan> sampleArtisans = [
  Artisan(
    id: 'a1',
    name: 'Ramesh Kumhar',
    craft: 'Jaipur Blue Pottery',
    village: 'Sanganer',
    state: 'Rajasthan',
    bio:
        'Third-generation kumhar. Mixes quartz dough at dawn and paints cobalt flowers without stencils. His studio supplies the Sanganer bazaar and this shop.',
    imageAsset: 'assets/products/blue_pottery_vase.jpg',
  ),
  Artisan(
    id: 'a2',
    name: 'Sunita Devi',
    craft: 'Terracotta diyas',
    village: 'Khurja',
    state: 'Uttar Pradesh',
    bio:
        'Leads a women’s self-help group that throws and fires festival diyas. Income from Diwali orders funds her daughters’ school fees.',
    imageAsset: 'assets/products/clay_diya_set.jpg',
  ),
  Artisan(
    id: 'a3',
    name: 'Kavitha Reddy',
    craft: 'Pochampally Ikat',
    village: 'Pochampally',
    state: 'Telangana',
    bio:
        'Weaves GI Pochampally Ikat on a pit loom. She tie-dyes the warp herself so every diamond lands exactly on the pallu edge.',
    imageAsset: 'assets/products/pochampally_saree.jpg',
  ),
  Artisan(
    id: 'a4',
    name: 'Suresh Weaver',
    craft: 'Khadi weaving',
    village: 'Wardha',
    state: 'Maharashtra',
    bio:
        'Spins and weaves khadi at a Gandhi ashram cooperative. His kurtas are cut by a local tailor, not a factory line.',
    imageAsset: 'assets/products/khadi_kurta.jpg',
  ),
  Artisan(
    id: 'a5',
    name: 'Gopal Suthar',
    craft: 'Saharanpur wood carving',
    village: 'Saharanpur',
    state: 'Uttar Pradesh',
    bio:
        'Carves sheesham elephants and screens with tools his grandfather used. No CNC — every fold of the ear is a chisel stroke.',
    imageAsset: 'assets/products/wooden_elephant_alt.jpg',
  ),
  Artisan(
    id: 'a6',
    name: 'Mohan Mistri',
    craft: 'Channapatna lacquerware',
    village: 'Channapatna',
    state: 'Karnataka',
    bio:
        'Turns ivory-wood on a hand lathe and colours toys with vegetable lac. Works with Ravi Lacquer in the same Gombegala Ooru lane.',
    imageAsset: 'assets/products/channapatna_toys.jpg',
  ),
  Artisan(
    id: 'a7',
    name: 'Phulwa Baiga',
    craft: 'Bamboo basketry',
    village: 'Bastar',
    state: 'Chhattisgarh',
    bio:
        'Baiga weaver who harvests bamboo after the monsoon and weaves lidded storage baskets used in Bastar kitchens for generations.',
    imageAsset: 'assets/products/bamboo_craft.jpg',
  ),
  Artisan(
    id: 'a8',
    name: 'Laxmi Munda',
    craft: 'Cane weaving',
    village: 'Mayurbhanj',
    state: 'Odisha',
    bio:
        'Munda tribal weaver. Splits cane by the river and weaves market baskets that last a decade if kept dry.',
    imageAsset: 'assets/products/cane_basket.jpg',
  ),
  Artisan(
    id: 'a9',
    name: 'Dulari Jha',
    craft: 'Madhubani painting',
    village: 'Jitwarpur',
    state: 'Bihar',
    bio:
        'Paints Mithila deities the way her mother painted courtyard walls. Works on handmade paper so the art can travel beyond the village.',
    imageAsset: 'assets/products/madhubani_painting.jpg',
  ),
  Artisan(
    id: 'a10',
    name: 'Anjali Pal',
    craft: 'Bankura terracotta',
    village: 'Panchmura',
    state: 'West Bengal',
    bio:
        'Throws the seven parts of a Bankura horse on the wheel, joins them, and fires in a shared village kiln with a reducing or oxidising atmosphere.',
    imageAsset: 'assets/products/bankura_horse.jpg',
  ),
  Artisan(
    id: 'a11',
    name: 'Venkatesh Reddy',
    craft: 'Srikalahasti kalamkari',
    village: 'Srikalahasti',
    state: 'Andhra Pradesh',
    bio:
        'Draws temple narratives with a bamboo pen. One wall hanging can take two weeks of outlining, mordanting and dyeing.',
    imageAsset: 'assets/products/kalamkari_wall.jpg',
  ),
  Artisan(
    id: 'a12',
    name: 'Jagdish Dhokra',
    craft: 'Lost-wax dhokra',
    village: 'Bastar',
    state: 'Chhattisgarh',
    bio:
        'Casts brass using beeswax and river clay. Village scenes — grinding grain, herding, musicians — are his favourite subjects.',
    imageAsset: 'assets/products/dhokra_figurine.jpg',
  ),
  Artisan(
    id: 'a13',
    name: 'Savita Vayeda',
    craft: 'Warli painting',
    village: 'Palghar',
    state: 'Maharashtra',
    bio:
        'Warli artist who paints harvest, marriage and forest stories in rice paste. Teaches the geometry of the triangle-human to schoolchildren on Sundays.',
    imageAsset: 'assets/products/warli_painting.jpg',
  ),
  Artisan(
    id: 'a14',
    name: 'Bilal Khatri',
    craft: 'Bagh block printing',
    village: 'Bagh',
    state: 'Madhya Pradesh',
    bio:
        'Master printer of GI Bagh. Carves teak blocks and prints with dyes that only hold their depth after a wash in the Baghini river.',
    imageAsset: 'assets/products/bagh_print.jpg',
  ),
  Artisan(
    id: 'a15',
    name: 'Meenakshi Nair',
    craft: 'Kerala brass lamps',
    village: 'Thrissur',
    state: 'Kerala',
    bio:
        'Casts nilavilakku and peacock lamps for temples and homes. Every lamp is filed, buffed and checked for a level oil bowl before it leaves the shed.',
    imageAsset: 'assets/products/golden_lamp.jpg',
  ),
];

Product? productById(String id) {
  try {
    return sampleProducts.firstWhere((p) => p.id == id);
  } catch (_) {
    return null;
  }
}

Artisan? artisanById(String id) {
  try {
    return sampleArtisans.firstWhere((a) => a.id == id);
  } catch (_) {
    return null;
  }
}
