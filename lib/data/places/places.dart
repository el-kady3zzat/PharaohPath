import 'package:pharaohs_path/data/models/place_model.dart';
import 'package:pharaohs_path/data/preferences/shared_preferences.dart';

List<String> favPlaces = SharedPrefs().getFavPlaces();

List<Place> kPlaces = [
  Place(
    id: '0',
    imgPath: 'assets/images/sphinx.jpg',
    name: 'Sphinx',
    governorate: 'Giza',
    rate: '5.0',
    fav: favPlaces.contains('0') ? true : false,
  ),
  Place(
      id: '1',
      imgPath: 'assets/images/pyramids.jpg',
      name: 'Pyramids',
      governorate: 'Giza',
      rate: '5.0',
      fav: favPlaces.contains('1') ? true : false),
  Place(
      id: '2',
      imgPath: 'assets/images/saqqara.jpg',
      name: 'Saqqara',
      governorate: 'Giza',
      rate: '4.8',
      fav: favPlaces.contains('2') ? true : false),
  Place(
      id: '3',
      imgPath: 'assets/images/tomb_of_horemheb.jpg',
      name: 'Tomb of Horemheb',
      governorate: 'Giza',
      rate: '4.9',
      fav: favPlaces.contains('3') ? true : false),
  Place(
      id: '4',
      imgPath: 'assets/images/new_kingdom_cemetery.jpg',
      name: 'New Kingdom Cemetery',
      governorate: 'Giza',
      rate: '4.9',
      fav: favPlaces.contains('4') ? true : false),
  Place(
      id: '5',
      imgPath: 'assets/images/hatshepsut_temple.jpg',
      name: 'Hatshepsut Temple',
      governorate: 'Deir Al-bahari, Luxor',
      rate: '5.0',
      fav: favPlaces.contains('5') ? true : false),
  Place(
      id: '6',
      imgPath: 'assets/images/valley_of_the_kings_1.jpg',
      name: 'Valley of the Kings',
      governorate: 'Valley of the Kings, Luxor',
      rate: '5.0',
      fav: favPlaces.contains('6') ? true : false),
  Place(
      id: '7',
      imgPath: 'assets/images/tomb_of_ramesses.jpg',
      name: 'Tomb of Ramesses',
      governorate: 'Valley of the Kings, Luxor',
      rate: '5.0',
      fav: favPlaces.contains('7') ? true : false),
  Place(
      id: '8',
      imgPath: 'assets/images/tomb_of_sety.jpg',
      name: 'Tomb of Sety',
      governorate: 'Valley of the Kings, Luxor',
      rate: '5.0',
      fav: favPlaces.contains('8') ? true : false),
  Place(
      id: '9',
      imgPath: 'assets/images/tomb_of_tutankhamun.jpg',
      name: 'Tomb of Tutankhamun',
      governorate: 'Valley of the Kings, Luxor',
      rate: '5.0',
      fav: favPlaces.contains('9') ? true : false),
  Place(
      id: '10',
      imgPath: 'assets/images/karnak.jpg',
      name: 'Karnak',
      governorate: 'Karnak, Luxor',
      rate: '5.0',
      fav: favPlaces.contains('10') ? true : false),
  Place(
      id: '11',
      imgPath: 'assets/images/khonsu_temple.jpg',
      name: 'Khonsu Temple',
      governorate: 'Karnak, Luxor',
      rate: '5.0',
      fav: favPlaces.contains('11') ? true : false),
  Place(
      id: '12',
      imgPath: 'assets/images/philae.jpg',
      name: 'Philae',
      governorate: 'Aswan',
      rate: '5.0',
      fav: favPlaces.contains('12') ? true : false),
  Place(
      id: '13',
      imgPath: 'assets/images/abu_simbel.jpg',
      name: 'Abu Simbel',
      governorate: 'Aswan',
      rate: '5.0',
      fav: favPlaces.contains('13') ? true : false),
  Place(
      id: '14',
      imgPath: 'assets/images/beni_hasan.jpg',
      name: 'Beni Hasan',
      governorate: 'Minya',
      rate: '5.0',
      fav: favPlaces.contains('14') ? true : false),
  Place(
      id: '15',
      imgPath: 'assets/images/tomb_of_khety.jpg',
      name: 'Tomb of Khety',
      governorate: 'Minya',
      rate: '5.0',
      fav: favPlaces.contains('15') ? true : false),
  Place(
      id: '16',
      imgPath: 'assets/images/tomb_of_baqet_iii.jpg',
      name: 'Tomb of Baqet III',
      governorate: 'Minya',
      rate: '5.0',
      fav: favPlaces.contains('16') ? true : false),
  Place(
      id: '17',
      imgPath: 'assets/images/tomb_of_khnumhotep_ii.jpg',
      name: 'Tomb of Khnumhotep II',
      governorate: 'Minya',
      rate: '5.0',
      fav: favPlaces.contains('17') ? true : false),
  Place(
      id: '18',
      imgPath: 'assets/images/tomb_of_amenemhat.jpg',
      name: 'Tomb of Amenemhat',
      governorate: 'Minya',
      rate: '5.0',
      fav: favPlaces.contains('18') ? true : false),
];

List<String> kArDesc = [
//Giza///
//0
  '''تعتبر التماثيل الضخمة واحدة من السمات المميزة للحضارة المصرية القديمة، وتمثال أبو الهول في الجيزة هو أكثرها شهرة. تم نحت التمثال فى صخر المنطقة نفسها في عصر الأسرة الرابعة (حوالي2613-2494 ق.م.) مما يجعله الأقدم . كانت تماثيل أبي الهول المصرية القديمة تمثل الملك بجسد أسد كإشارة واضحة  لقوته.

تشير الدلائل إلى أن تمثال أبي الهول قد تم نحته في عهد الملك خفرع (حوالي عام 2558 - 2532 ق.م.)، صاحب ثاني أهرام الجيزة. يقع تمثال أبو الهول ومعبده الموجود أمامه بجوار معبد وادي خفرع مباشرة والجزء السفلي من الطريق الصاعد المؤدي إلى معبده الجنائزي والهرم. كشف التحليل الأثري الدقيق أن معبد الوادي قد انتهى قبل بدء العمل في تمثال أبو الهول ومعبده، بينما كشف تحليل ملامح وجه أبو الهول عن أوجه تشابه مذهلة مع تماثيل الملك خفرع.

استحوذ تمثال أبو الهول على خيال المسافرين والمستكشفين لآلاف السنين، حتى في العصور المصرية القديمة، فخلال الأسرة الثامنة عشرة (حوالي1550-1295 ق.م.) ، أصبح ينظر إليه على أنه مظهر من مظاهر إله الشمس، وكان يطلق عليه حور إم آخت "حورس في الأفق" وبني الملك أمنحتب الثاني (حوالي 1427-1400 ق.م.) معبدًا بجانب تمثال أبو الهول كرسه لهذا الإله، كما قام ابنه تحتمس الرابع (حوالي1400- 1390 ق.م.)، بتشييد لوحة ضخمة بين أقدامه الأمامية، والتي يطلق عليها اسم لوحة الحلم، والتي سجل فيها حدثًا رائعًا.''',
//1
  '''تعد هضبة الجيزة من بين أشهر المواقع السياحية منذ العصور القديمة وحتى اليوم. وتضم تلك الهضبة مقابر ملوك الأسرة الرابعة (حوالي2613- 2494ق.م) وهي أهرام كل من خوفو (حوالي2589-2566 ق.م) وابنه خفرع وحفيده منكاورع بالإضافة إلى تمثال أبو الهول الشهير. ويعد هرم خوفو هو الأكبر والأقدم بين تلك الأهرام والأطول في العالم طيلة 3800 عام.

ويحيط بتلك الأهرامات العظيمة آثارًا أخرى، حيث كان لكل هرم مجموعة هرمية بالإضافة إلى أهرام الملكات والهريم الصغير الجانبي الذي كان هرمًا رمزيًا للملك، وكذلك كانت هناك مصاطب خصصت لدفن كبار الشخصيات وأفراد العائلة الملكية، ومراكب خوفو المعروفة باسم مراكب الشمس. وكانت المجموعة الهرمية لكل ملك تتضمن معبدين أحدها هو معبد الوادي ومنه طريق صاعد جوانبه مزخرفة  يؤدي إلى معبد علوي والمعروف باسم المعبد الجنائزي المتاخم للهرم. وكان الكهنة يقومون بطقوس الدفن والجنازة الخاصة بالملك المتوفى داخل تلك المعابد حيث يتحول إلى معبود وتقدم القرابين الثرية لروحه كي ينعم بالسلام في العالم الآخر.''',
//2
  '''تعد سقارة جزءً هامًا جدًا من جبانة منف، وهي تبعد عن القاهرة بحوالي 40 كم. اتخذت سقارة اسمها غالبًا من المعبود "سُكر" المعبود الخاص بالجبانة.

     وتعد سقارة بحق متحفًا مفتوحًا حيث تضم سقارة بين جنباتها معظم آثار التاريخ المصري القديم، فبها مقابر ملوك وكبار موظفي الأسرتين الأولى والثانية (حوالي3040-2686 ق.م) ، كما ضمت الهرم المدرج أقدم بناء حجري ضخم في التاريخ للملك زسر (حوالي 2686-2667 ق.م)، وبها أهرامات لأهم الملوك في الأسرتين الخامسة (حوالي 2494- 2345 ق.م) والسادسة (حوالي 2345- 2181ق.م)، حيث هرم الملك ونيس (حوالي 2375- 2345 ق.م) أول من نقش غرفة دفنه بنصوص الأهرام والتي كان الهدف منها حماية الملك خلال رحلته في العالم الآخر. وبالإضافة إلى مقابر الدولة القديمة الملكية، احتوت سقارة على مجموعة هائلة من مقابر كبار الأفراد من تلك الفترة والتي زينت بمناظر ونقوش غاية في الروعة. كما ضمت مقابر ترجع لعصر الإنتقال الأول (حوالي2181-2055 ق.م) ومقابر أفراد تعود للدولة الوسطى (حوالي2055-1650 ق.م) وكذلك مقابر الدولة الحديثة (حوالي1550-1069 ق.م). وتمثل مقابر الدولة الحديثة أسلوبًا معماريًا مختلفًا تمامًا عما كانت عليه مقابر طيبة. ومن بين تلك المقابر نرى مقبرة الملك حورمحب (حوالي 1323-1295 ق.م) حين كان قائدًاً للجيش، ولم يدفن بها لأنه بعد إعتلاءه العرش قام بنحت مقبرة له في وادي الملوك.

     ومن أهم ماتتميز به سقارة مدفن العجل المقدس أبيس والمسمى بالسرابيوم والذي استمر استخدامه منذ الأسرة الثامنة عشرة حتى العصر البطلمي، حيث كان العجل أبيس يعتبر بمثابة تمثيل للمعبود بتاح نفسه وهو أحد أهم معبودات منطقة منف. وحين كان يموت العجل كان يتم دفنه في احتفالية مهيبة حتى يتم العثور على خليفته.

     بالإضافة إلى ذلك، تضم سقارة آثارًا قبطية حيث نجد دير الأنبا إرميا جنوب شرق المجموعة الهرمية للملك زوسر والذي ظل مستخدمًا حتى القرن الثامن الميلادي تقريبًا، ولا يمكن إغفال الحديث عن متحف إيمحتب والذي يحوي آثارًا رائعة من مختلف العصور والتي تم اكتشافها في سقارة.''',
//3
  '''حورمحب (حوالي1323-1295 ق. م) هو آخر ملوك الأسرة الثامنة عشرة. كان قائدًا للجيش - قبل صعوده إلى العرش-  في عهد توت عنخ آمون (حوالي1336-1327 ق.م.)، وحمل ألقاب أخرى مثل "نائب الملك في كامل الأرض". . تم دفنه في نهاية المطاف في وادي الملوك بما يليق بمكانته الملكية. لكن قبل ذلك، كان حورمحب بنى مقبرة أخرى في سقارة.

تلك المقبرة هي الأكبر في جبانة الدولة الحديثة جنوبي الطريق الصاعد للملك أوناس (حوالي 2375 - 2345 ق.م). مثل المقابر الرئيسية الأخرى في تلك الجبانة، يظهر تصميم المقبرة بطراز المقبرة المعبد تقليدًا معابد الدولة الكبرى المعاصرة لها. وتبدأ المقبرة بصرح يسبق فناءين مفتوحين يليهما الحجرات الداخلية للمقصورة، حيث كانت تتم ممارسة طقوس تقديم القرابين لحور محب. أما الحجرة الوسطى فكان يعلوها هريم وهو رمز شمسي للبعث وإعادة الولادة. وكانت حجرة الدفن الواقعة تحت الأرض يتم الوصول إليها من خلال بئر عمودي مقطوع عبر أرضية الفناء الداخلي. وقد تم اكتشاف بقايا عظام لجنين إلى جانب هيكل عظمي لأنثى  ربما كانت "موت نجمت" زوجة حورمحب في مقبرته بجبانة منف وهو ما دل على أنها لم تستخدم.

تشمل النقوش التي تزين تلك المقبرة  مناظر تصور حورمحب وهو يقوم بنشاطاته، حيث يظهر مجموعة من ممثلي الحكام الأجناب وهم يتوسلون أمام توت عنخ آمون، بينما يظهر حور محب بدور الوسيط. وهناك منظران يدلان على مدى مكانته الرفيعة حتى قبل صعوده إلى العرش، حيث يظهر متبوعًا بصفوف من الأسرى الأجانب وهو يتقلد مكافأته وهي ذهب الشجاعة من قبل توت عنخ آمون نفسه، فكان يتم منح ذهب الشجاعة من قبل الملوك لمسئوليهم مقابل خدماتهم الاستثنائية. كما تم تزيين المقبرة بمناظر جنائزية أيضًا ، منها طقسة فتح الفم.

لم يكن موقع تلك المقبرة معروفًا، حيث تم اكتشافها في أوائل القرن التاسع عشر ضمن العثور على الجبانة من قبل لصوص المقابر وتجار التحف الذين سرقوا وباعوا ما عثروا عليه للمتاحف وجامعي التحف بالخارج. ولم تكن تلك السرقات مقصورة على التماثيل وغيرها من القطع المنقولة فحسب، ولكن تمت إزالة أجزاء كاملة من جدران المقابر  ولم يتم تسجيل أي منها. وقد تأثرت مقبرة حورمحب بشكل خاص، حيث اندثر مكانها. ولحسن الحظ ، تم اعادة اكتشافها مرة أخرى ضمن جبانة الدولة الحديثة في عام 1975.''',
//4
  '''تحتوي جبانة سقارة الواسعة -التي كانت جزء من جبانة  منف القديمة- على مقابر من جميع فترات تاريخ مصر القديم. تقع جبانة  "الدولة الحديثة" (حوالي ١٥٥٠-١٠٦٩ ق.م.) جنوبي الطريق الصاعد للملك أوناس حيث تم دفن العديد من كبار رجال الأسرة الثامنة عشرة إلى العشرين، ومن بينهم بتاح إم ويا  "الوصيف الملكي  نظيف اليد" والذي عاش في عهد كل من أخناتون (حوالي 1352 - 1336 ق.م) وتوت عنخ آمون (1336 - 1332 ق.م.) ، ومايا  المشرف على الخزانة في عهد توت عنخ آمون ، وتيا المشرف على الخزانة في عهد رمسيس الثاني (حوالي 1279-1213 ق.م). بالإضافة إلى موقع مقبرة حورمحب كان معد له قبل أن يصبح ملكا.

مثل معظم مقابر الأفراد، تتكون مقابر جبانة "الدولة الحديثة" من جزأين: قسم مغلق تحت الأرض يضم حجرة الدفن، والمقصورة التي يمكن الوصول إليها فوق سطح الأرض، حيث تم ممارسة تقديم القرابين لروح المتوفى. لكن ما يميز مقابر هذه الجبانة هو أنها ليست مصاطب ولا مقابر منحوتة في الصخر، ولكنها مقاصير قائمة بذاتها تعرف باسم "المقبرة المعبد". أما المقابر الأكبر      حجمًا، فكان يتم دخولها عبر صرح حجري يؤدي إلى فناء مفتوح يتقدم مقصورة المقبرة. وفي بعض الأحيان كان المقصورة هريم صغير يرمز إلى إعادة الولادة والبعث. ويضم الفناء المفتوح بئر دفن يوصل إلى حجرة الدفن تحت الأرض.

تم اكتشاف هذا الجزء من سقارة على يد لصوص المقابر وتجار الآثار في القرن التاسع عشر، حيث تم سرقة العديد من التماثيل والنقوش دون تسجيلها وبيعها للمتاحف وجامعي التحف في الخارج. وقد ساعدت خريطة المنطقة التي رسمها عالم المصريات البروسي كارل ر. لبسيوس بالقرن 19 في إعادة اكتشاف جبانة الدولة الحديثة في عام 1975 من قبل البعثة الإنجليزية الهولندية بجمعية الاستكشاف المصرية في لندن والمتحف الوطني للآثار في ليدن ، بقيادة جيفري تي مارتن.''',
//Aswan///
//5
  '''تشمل آثار فيله العديد من المباني التي يعود تاريخها إلى العصر البطلمي (332-30 ق.م.)، وأبرزها ذلك المعبد الذى بدأه بطلميوس الثانى فيلادلفوس (285 – 246 ق.م.)، والذى كان مكرسًا لإيزيس أم حورس رب الملكية، وهناك منظر في الماميزي أو حجرة الولادة، حيث كان يتم الاحتفال بولادة حورس، تظهر فيها إيزيس وهي ترضع ابنها حورس في الأحراش.

يعتبر معبد إيزيس واحدًا من أكثر المعابد المصرية القديمة استمرارًا؛ حيث ظل المعبد يؤدي دوره حتى عهد الملك البيزنطي جستنيان الأول (527 – 565 م) والذي أمر بإغلاق كل المعابد الوثنية، حيث نقش كاهن يدعى اسمت-اخوم آخر نص هيروغليفي ويرجع ذلك إلى القرن الرابع الميلادي (394م). تم تحويل المعبد إلى كنيسة وتم محو العديد من نقوش المعبد.

يقع بجوار معبد إيزيس معبدًا مكرسًا لحتحور بناه بطلميوس السادس فيلوماتور (180 – 145 ق.م)، وأغسطس أول إمبراطور لروما (30 ق.م. – 14م). ولا تزال مقصورة تراجان (98 – 117 م) المقامة أمام معبد فيله قائمة على الرغم من أن سقفها لم يعد موجودًا، وكان الترتيب المنتظم لأعمدتها الرائعة قد جذب أنظار الرحالة وقاموا بوصفه وتصويره. كانت إيزيس المعبودة الرئيسية للمنطقة، حيث تم تصوير الإمبراطور يقدم القرابين لها ولزوجها أوزير وابنهما حورس.

تم نقل كل هذه الآثار من جزيرة فيلة الأصلية إلى جزيرة أجيلكيا القريبة خلال حملة اليونسكو للنوبة في الستينيات لإنقاذ المواقع التي غمرتها مياه النيل في عملية بناء السد العالي بأسوان.'''
//6//Repeated
  ,
  '''تشمل آثار فيله العديد من المباني التي يعود تاريخها إلى العصر البطلمي (332-30 ق.م.)، وأبرزها ذلك المعبد الذى بدأه بطلميوس الثانى فيلادلفوس (285 – 246 ق.م.)، والذى كان مكرسًا لإيزيس أم حورس رب الملكية، وهناك منظر في الماميزي أو حجرة الولادة، حيث كان يتم الاحتفال بولادة حورس، تظهر فيها إيزيس وهي ترضع ابنها حورس في الأحراش.

يعتبر معبد إيزيس واحدًا من أكثر المعابد المصرية القديمة استمرارًا؛ حيث ظل المعبد يؤدي دوره حتى عهد الملك البيزنطي جستنيان الأول (527 – 565 م) والذي أمر بإغلاق كل المعابد الوثنية، حيث نقش كاهن يدعى اسمت-اخوم آخر نص هيروغليفي ويرجع ذلك إلى القرن الرابع الميلادي (394م). تم تحويل المعبد إلى كنيسة وتم محو العديد من نقوش المعبد.

يقع بجوار معبد إيزيس معبدًا مكرسًا لحتحور بناه بطلميوس السادس فيلوماتور (180 – 145 ق.م)، وأغسطس أول إمبراطور لروما (30 ق.م. – 14م). ولا تزال مقصورة تراجان (98 – 117 م) المقامة أمام معبد فيله قائمة على الرغم من أن سقفها لم يعد موجودًا، وكان الترتيب المنتظم لأعمدتها الرائعة قد جذب أنظار الرحالة وقاموا بوصفه وتصويره. كانت إيزيس المعبودة الرئيسية للمنطقة، حيث تم تصوير الإمبراطور يقدم القرابين لها ولزوجها أوزير وابنهما حورس.

تم نقل كل هذه الآثار من جزيرة فيلة الأصلية إلى جزيرة أجيلكيا القريبة خلال حملة اليونسكو للنوبة في الستينيات لإنقاذ المواقع التي غمرتها مياه النيل في عملية بناء السد العالي بأسوان.'''
//7
  ,
  '''تشمل آثار فيله العديد من المباني التي يعود تاريخها إلى العصر البطلمي (332-30 ق.م.)، وأبرزها ذلك المعبد الذى بدأه بطلميوس الثانى فيلادلفوس (285 – 246 ق.م.)، والذى كان مكرسًا لإيزيس أم حورس رب الملكية، وهناك منظر في الماميزي أو حجرة الولادة، حيث كان يتم الاحتفال بولادة حورس، تظهر فيها إيزيس وهي ترضع ابنها حورس في الأحراش.

يعتبر معبد إيزيس واحدًا من أكثر المعابد المصرية القديمة استمرارًا؛ حيث ظل المعبد يؤدي دوره حتى عهد الملك البيزنطي جستنيان الأول (527 – 565 م) والذي أمر بإغلاق كل المعابد الوثنية، حيث نقش كاهن يدعى اسمت-اخوم آخر نص هيروغليفي ويرجع ذلك إلى القرن الرابع الميلادي (394م). تم تحويل المعبد إلى كنيسة وتم محو العديد من نقوش المعبد.

يقع بجوار معبد إيزيس معبدًا مكرسًا لحتحور بناه بطلميوس السادس فيلوماتور (180 – 145 ق.م)، وأغسطس أول إمبراطور لروما (30 ق.م. – 14م). ولا تزال مقصورة تراجان (98 – 117 م) المقامة أمام معبد فيله قائمة على الرغم من أن سقفها لم يعد موجودًا، وكان الترتيب المنتظم لأعمدتها الرائعة قد جذب أنظار الرحالة وقاموا بوصفه وتصويره. كانت إيزيس المعبودة الرئيسية للمنطقة، حيث تم تصوير الإمبراطور يقدم القرابين لها ولزوجها أوزير وابنهما حورس.

تم نقل كل هذه الآثار من جزيرة فيلة الأصلية إلى جزيرة أجيلكيا القريبة خلال حملة اليونسكو للنوبة في الستينيات لإنقاذ المواقع التي غمرتها مياه النيل في عملية بناء السد العالي بأسوان.'''
//8
  ,
  '''تشمل آثار فيله العديد من المباني التي يعود تاريخها إلى العصر البطلمي (332-30 ق.م.)، وأبرزها ذلك المعبد الذى بدأه بطلميوس الثانى فيلادلفوس (285 – 246 ق.م.)، والذى كان مكرسًا لإيزيس أم حورس رب الملكية، وهناك منظر في الماميزي أو حجرة الولادة، حيث كان يتم الاحتفال بولادة حورس، تظهر فيها إيزيس وهي ترضع ابنها حورس في الأحراش.

يعتبر معبد إيزيس واحدًا من أكثر المعابد المصرية القديمة استمرارًا؛ حيث ظل المعبد يؤدي دوره حتى عهد الملك البيزنطي جستنيان الأول (527 – 565 م) والذي أمر بإغلاق كل المعابد الوثنية، حيث نقش كاهن يدعى اسمت-اخوم آخر نص هيروغليفي ويرجع ذلك إلى القرن الرابع الميلادي (394م). تم تحويل المعبد إلى كنيسة وتم محو العديد من نقوش المعبد.

يقع بجوار معبد إيزيس معبدًا مكرسًا لحتحور بناه بطلميوس السادس فيلوماتور (180 – 145 ق.م)، وأغسطس أول إمبراطور لروما (30 ق.م. – 14م). ولا تزال مقصورة تراجان (98 – 117 م) المقامة أمام معبد فيله قائمة على الرغم من أن سقفها لم يعد موجودًا، وكان الترتيب المنتظم لأعمدتها الرائعة قد جذب أنظار الرحالة وقاموا بوصفه وتصويره. كانت إيزيس المعبودة الرئيسية للمنطقة، حيث تم تصوير الإمبراطور يقدم القرابين لها ولزوجها أوزير وابنهما حورس.

تم نقل كل هذه الآثار من جزيرة فيلة الأصلية إلى جزيرة أجيلكيا القريبة خلال حملة اليونسكو للنوبة في الستينيات لإنقاذ المواقع التي غمرتها مياه النيل في عملية بناء السد العالي بأسوان.'''
//9
  ,
  '''تشمل آثار فيله العديد من المباني التي يعود تاريخها إلى العصر البطلمي (332-30 ق.م.)، وأبرزها ذلك المعبد الذى بدأه بطلميوس الثانى فيلادلفوس (285 – 246 ق.م.)، والذى كان مكرسًا لإيزيس أم حورس رب الملكية، وهناك منظر في الماميزي أو حجرة الولادة، حيث كان يتم الاحتفال بولادة حورس، تظهر فيها إيزيس وهي ترضع ابنها حورس في الأحراش.

يعتبر معبد إيزيس واحدًا من أكثر المعابد المصرية القديمة استمرارًا؛ حيث ظل المعبد يؤدي دوره حتى عهد الملك البيزنطي جستنيان الأول (527 – 565 م) والذي أمر بإغلاق كل المعابد الوثنية، حيث نقش كاهن يدعى اسمت-اخوم آخر نص هيروغليفي ويرجع ذلك إلى القرن الرابع الميلادي (394م). تم تحويل المعبد إلى كنيسة وتم محو العديد من نقوش المعبد.

يقع بجوار معبد إيزيس معبدًا مكرسًا لحتحور بناه بطلميوس السادس فيلوماتور (180 – 145 ق.م)، وأغسطس أول إمبراطور لروما (30 ق.م. – 14م). ولا تزال مقصورة تراجان (98 – 117 م) المقامة أمام معبد فيله قائمة على الرغم من أن سقفها لم يعد موجودًا، وكان الترتيب المنتظم لأعمدتها الرائعة قد جذب أنظار الرحالة وقاموا بوصفه وتصويره. كانت إيزيس المعبودة الرئيسية للمنطقة، حيث تم تصوير الإمبراطور يقدم القرابين لها ولزوجها أوزير وابنهما حورس.

تم نقل كل هذه الآثار من جزيرة فيلة الأصلية إلى جزيرة أجيلكيا القريبة خلال حملة اليونسكو للنوبة في الستينيات لإنقاذ المواقع التي غمرتها مياه النيل في عملية بناء السد العالي بأسوان.'''
//10
  ,
  '''تشمل آثار فيله العديد من المباني التي يعود تاريخها إلى العصر البطلمي (332-30 ق.م.)، وأبرزها ذلك المعبد الذى بدأه بطلميوس الثانى فيلادلفوس (285 – 246 ق.م.)، والذى كان مكرسًا لإيزيس أم حورس رب الملكية، وهناك منظر في الماميزي أو حجرة الولادة، حيث كان يتم الاحتفال بولادة حورس، تظهر فيها إيزيس وهي ترضع ابنها حورس في الأحراش.

يعتبر معبد إيزيس واحدًا من أكثر المعابد المصرية القديمة استمرارًا؛ حيث ظل المعبد يؤدي دوره حتى عهد الملك البيزنطي جستنيان الأول (527 – 565 م) والذي أمر بإغلاق كل المعابد الوثنية، حيث نقش كاهن يدعى اسمت-اخوم آخر نص هيروغليفي ويرجع ذلك إلى القرن الرابع الميلادي (394م). تم تحويل المعبد إلى كنيسة وتم محو العديد من نقوش المعبد.

يقع بجوار معبد إيزيس معبدًا مكرسًا لحتحور بناه بطلميوس السادس فيلوماتور (180 – 145 ق.م)، وأغسطس أول إمبراطور لروما (30 ق.م. – 14م). ولا تزال مقصورة تراجان (98 – 117 م) المقامة أمام معبد فيله قائمة على الرغم من أن سقفها لم يعد موجودًا، وكان الترتيب المنتظم لأعمدتها الرائعة قد جذب أنظار الرحالة وقاموا بوصفه وتصويره. كانت إيزيس المعبودة الرئيسية للمنطقة، حيث تم تصوير الإمبراطور يقدم القرابين لها ولزوجها أوزير وابنهما حورس.

تم نقل كل هذه الآثار من جزيرة فيلة الأصلية إلى جزيرة أجيلكيا القريبة خلال حملة اليونسكو للنوبة في الستينيات لإنقاذ المواقع التي غمرتها مياه النيل في عملية بناء السد العالي بأسوان.'''
//11
  ,
  '''تشمل آثار فيله العديد من المباني التي يعود تاريخها إلى العصر البطلمي (332-30 ق.م.)، وأبرزها ذلك المعبد الذى بدأه بطلميوس الثانى فيلادلفوس (285 – 246 ق.م.)، والذى كان مكرسًا لإيزيس أم حورس رب الملكية، وهناك منظر في الماميزي أو حجرة الولادة، حيث كان يتم الاحتفال بولادة حورس، تظهر فيها إيزيس وهي ترضع ابنها حورس في الأحراش.

يعتبر معبد إيزيس واحدًا من أكثر المعابد المصرية القديمة استمرارًا؛ حيث ظل المعبد يؤدي دوره حتى عهد الملك البيزنطي جستنيان الأول (527 – 565 م) والذي أمر بإغلاق كل المعابد الوثنية، حيث نقش كاهن يدعى اسمت-اخوم آخر نص هيروغليفي ويرجع ذلك إلى القرن الرابع الميلادي (394م). تم تحويل المعبد إلى كنيسة وتم محو العديد من نقوش المعبد.

يقع بجوار معبد إيزيس معبدًا مكرسًا لحتحور بناه بطلميوس السادس فيلوماتور (180 – 145 ق.م)، وأغسطس أول إمبراطور لروما (30 ق.م. – 14م). ولا تزال مقصورة تراجان (98 – 117 م) المقامة أمام معبد فيله قائمة على الرغم من أن سقفها لم يعد موجودًا، وكان الترتيب المنتظم لأعمدتها الرائعة قد جذب أنظار الرحالة وقاموا بوصفه وتصويره. كانت إيزيس المعبودة الرئيسية للمنطقة، حيث تم تصوير الإمبراطور يقدم القرابين لها ولزوجها أوزير وابنهما حورس.

تم نقل كل هذه الآثار من جزيرة فيلة الأصلية إلى جزيرة أجيلكيا القريبة خلال حملة اليونسكو للنوبة في الستينيات لإنقاذ المواقع التي غمرتها مياه النيل في عملية بناء السد العالي بأسوان.'''
//12
  ,
  '''تشمل آثار فيله العديد من المباني التي يعود تاريخها إلى العصر البطلمي (332-30 ق.م.)، وأبرزها ذلك المعبد الذى بدأه بطلميوس الثانى فيلادلفوس (285 – 246 ق.م.)، والذى كان مكرسًا لإيزيس أم حورس رب الملكية، وهناك منظر في الماميزي أو حجرة الولادة، حيث كان يتم الاحتفال بولادة حورس، تظهر فيها إيزيس وهي ترضع ابنها حورس في الأحراش.

يعتبر معبد إيزيس واحدًا من أكثر المعابد المصرية القديمة استمرارًا؛ حيث ظل المعبد يؤدي دوره حتى عهد الملك البيزنطي جستنيان الأول (527 – 565 م) والذي أمر بإغلاق كل المعابد الوثنية، حيث نقش كاهن يدعى اسمت-اخوم آخر نص هيروغليفي ويرجع ذلك إلى القرن الرابع الميلادي (394م). تم تحويل المعبد إلى كنيسة وتم محو العديد من نقوش المعبد.

يقع بجوار معبد إيزيس معبدًا مكرسًا لحتحور بناه بطلميوس السادس فيلوماتور (180 – 145 ق.م)، وأغسطس أول إمبراطور لروما (30 ق.م. – 14م). ولا تزال مقصورة تراجان (98 – 117 م) المقامة أمام معبد فيله قائمة على الرغم من أن سقفها لم يعد موجودًا، وكان الترتيب المنتظم لأعمدتها الرائعة قد جذب أنظار الرحالة وقاموا بوصفه وتصويره. كانت إيزيس المعبودة الرئيسية للمنطقة، حيث تم تصوير الإمبراطور يقدم القرابين لها ولزوجها أوزير وابنهما حورس.

تم نقل كل هذه الآثار من جزيرة فيلة الأصلية إلى جزيرة أجيلكيا القريبة خلال حملة اليونسكو للنوبة في الستينيات لإنقاذ المواقع التي غمرتها مياه النيل في عملية بناء السد العالي بأسوان.'''
//13
  ,
  '''تشمل آثار فيله العديد من المباني التي يعود تاريخها إلى العصر البطلمي (332-30 ق.م.)، وأبرزها ذلك المعبد الذى بدأه بطلميوس الثانى فيلادلفوس (285 – 246 ق.م.)، والذى كان مكرسًا لإيزيس أم حورس رب الملكية، وهناك منظر في الماميزي أو حجرة الولادة، حيث كان يتم الاحتفال بولادة حورس، تظهر فيها إيزيس وهي ترضع ابنها حورس في الأحراش.

يعتبر معبد إيزيس واحدًا من أكثر المعابد المصرية القديمة استمرارًا؛ حيث ظل المعبد يؤدي دوره حتى عهد الملك البيزنطي جستنيان الأول (527 – 565 م) والذي أمر بإغلاق كل المعابد الوثنية، حيث نقش كاهن يدعى اسمت-اخوم آخر نص هيروغليفي ويرجع ذلك إلى القرن الرابع الميلادي (394م). تم تحويل المعبد إلى كنيسة وتم محو العديد من نقوش المعبد.

يقع بجوار معبد إيزيس معبدًا مكرسًا لحتحور بناه بطلميوس السادس فيلوماتور (180 – 145 ق.م)، وأغسطس أول إمبراطور لروما (30 ق.م. – 14م). ولا تزال مقصورة تراجان (98 – 117 م) المقامة أمام معبد فيله قائمة على الرغم من أن سقفها لم يعد موجودًا، وكان الترتيب المنتظم لأعمدتها الرائعة قد جذب أنظار الرحالة وقاموا بوصفه وتصويره. كانت إيزيس المعبودة الرئيسية للمنطقة، حيث تم تصوير الإمبراطور يقدم القرابين لها ولزوجها أوزير وابنهما حورس.

تم نقل كل هذه الآثار من جزيرة فيلة الأصلية إلى جزيرة أجيلكيا القريبة خلال حملة اليونسكو للنوبة في الستينيات لإنقاذ المواقع التي غمرتها مياه النيل في عملية بناء السد العالي بأسوان.'''
//14
  ,
  '''تشمل آثار فيله العديد من المباني التي يعود تاريخها إلى العصر البطلمي (332-30 ق.م.)، وأبرزها ذلك المعبد الذى بدأه بطلميوس الثانى فيلادلفوس (285 – 246 ق.م.)، والذى كان مكرسًا لإيزيس أم حورس رب الملكية، وهناك منظر في الماميزي أو حجرة الولادة، حيث كان يتم الاحتفال بولادة حورس، تظهر فيها إيزيس وهي ترضع ابنها حورس في الأحراش.

يعتبر معبد إيزيس واحدًا من أكثر المعابد المصرية القديمة استمرارًا؛ حيث ظل المعبد يؤدي دوره حتى عهد الملك البيزنطي جستنيان الأول (527 – 565 م) والذي أمر بإغلاق كل المعابد الوثنية، حيث نقش كاهن يدعى اسمت-اخوم آخر نص هيروغليفي ويرجع ذلك إلى القرن الرابع الميلادي (394م). تم تحويل المعبد إلى كنيسة وتم محو العديد من نقوش المعبد.

يقع بجوار معبد إيزيس معبدًا مكرسًا لحتحور بناه بطلميوس السادس فيلوماتور (180 – 145 ق.م)، وأغسطس أول إمبراطور لروما (30 ق.م. – 14م). ولا تزال مقصورة تراجان (98 – 117 م) المقامة أمام معبد فيله قائمة على الرغم من أن سقفها لم يعد موجودًا، وكان الترتيب المنتظم لأعمدتها الرائعة قد جذب أنظار الرحالة وقاموا بوصفه وتصويره. كانت إيزيس المعبودة الرئيسية للمنطقة، حيث تم تصوير الإمبراطور يقدم القرابين لها ولزوجها أوزير وابنهما حورس.

تم نقل كل هذه الآثار من جزيرة فيلة الأصلية إلى جزيرة أجيلكيا القريبة خلال حملة اليونسكو للنوبة في الستينيات لإنقاذ المواقع التي غمرتها مياه النيل في عملية بناء السد العالي بأسوان.'''
//15
  ,
  '''تشمل آثار فيله العديد من المباني التي يعود تاريخها إلى العصر البطلمي (332-30 ق.م.)، وأبرزها ذلك المعبد الذى بدأه بطلميوس الثانى فيلادلفوس (285 – 246 ق.م.)، والذى كان مكرسًا لإيزيس أم حورس رب الملكية، وهناك منظر في الماميزي أو حجرة الولادة، حيث كان يتم الاحتفال بولادة حورس، تظهر فيها إيزيس وهي ترضع ابنها حورس في الأحراش.

يعتبر معبد إيزيس واحدًا من أكثر المعابد المصرية القديمة استمرارًا؛ حيث ظل المعبد يؤدي دوره حتى عهد الملك البيزنطي جستنيان الأول (527 – 565 م) والذي أمر بإغلاق كل المعابد الوثنية، حيث نقش كاهن يدعى اسمت-اخوم آخر نص هيروغليفي ويرجع ذلك إلى القرن الرابع الميلادي (394م). تم تحويل المعبد إلى كنيسة وتم محو العديد من نقوش المعبد.

يقع بجوار معبد إيزيس معبدًا مكرسًا لحتحور بناه بطلميوس السادس فيلوماتور (180 – 145 ق.م)، وأغسطس أول إمبراطور لروما (30 ق.م. – 14م). ولا تزال مقصورة تراجان (98 – 117 م) المقامة أمام معبد فيله قائمة على الرغم من أن سقفها لم يعد موجودًا، وكان الترتيب المنتظم لأعمدتها الرائعة قد جذب أنظار الرحالة وقاموا بوصفه وتصويره. كانت إيزيس المعبودة الرئيسية للمنطقة، حيث تم تصوير الإمبراطور يقدم القرابين لها ولزوجها أوزير وابنهما حورس.

تم نقل كل هذه الآثار من جزيرة فيلة الأصلية إلى جزيرة أجيلكيا القريبة خلال حملة اليونسكو للنوبة في الستينيات لإنقاذ المواقع التي غمرتها مياه النيل في عملية بناء السد العالي بأسوان.'''
//16
  ,
  '''تشمل آثار فيله العديد من المباني التي يعود تاريخها إلى العصر البطلمي (332-30 ق.م.)، وأبرزها ذلك المعبد الذى بدأه بطلميوس الثانى فيلادلفوس (285 – 246 ق.م.)، والذى كان مكرسًا لإيزيس أم حورس رب الملكية، وهناك منظر في الماميزي أو حجرة الولادة، حيث كان يتم الاحتفال بولادة حورس، تظهر فيها إيزيس وهي ترضع ابنها حورس في الأحراش.

يعتبر معبد إيزيس واحدًا من أكثر المعابد المصرية القديمة استمرارًا؛ حيث ظل المعبد يؤدي دوره حتى عهد الملك البيزنطي جستنيان الأول (527 – 565 م) والذي أمر بإغلاق كل المعابد الوثنية، حيث نقش كاهن يدعى اسمت-اخوم آخر نص هيروغليفي ويرجع ذلك إلى القرن الرابع الميلادي (394م). تم تحويل المعبد إلى كنيسة وتم محو العديد من نقوش المعبد.

يقع بجوار معبد إيزيس معبدًا مكرسًا لحتحور بناه بطلميوس السادس فيلوماتور (180 – 145 ق.م)، وأغسطس أول إمبراطور لروما (30 ق.م. – 14م). ولا تزال مقصورة تراجان (98 – 117 م) المقامة أمام معبد فيله قائمة على الرغم من أن سقفها لم يعد موجودًا، وكان الترتيب المنتظم لأعمدتها الرائعة قد جذب أنظار الرحالة وقاموا بوصفه وتصويره. كانت إيزيس المعبودة الرئيسية للمنطقة، حيث تم تصوير الإمبراطور يقدم القرابين لها ولزوجها أوزير وابنهما حورس.

تم نقل كل هذه الآثار من جزيرة فيلة الأصلية إلى جزيرة أجيلكيا القريبة خلال حملة اليونسكو للنوبة في الستينيات لإنقاذ المواقع التي غمرتها مياه النيل في عملية بناء السد العالي بأسوان.'''
//17
  ,
  '''تشمل آثار فيله العديد من المباني التي يعود تاريخها إلى العصر البطلمي (332-30 ق.م.)، وأبرزها ذلك المعبد الذى بدأه بطلميوس الثانى فيلادلفوس (285 – 246 ق.م.)، والذى كان مكرسًا لإيزيس أم حورس رب الملكية، وهناك منظر في الماميزي أو حجرة الولادة، حيث كان يتم الاحتفال بولادة حورس، تظهر فيها إيزيس وهي ترضع ابنها حورس في الأحراش.

يعتبر معبد إيزيس واحدًا من أكثر المعابد المصرية القديمة استمرارًا؛ حيث ظل المعبد يؤدي دوره حتى عهد الملك البيزنطي جستنيان الأول (527 – 565 م) والذي أمر بإغلاق كل المعابد الوثنية، حيث نقش كاهن يدعى اسمت-اخوم آخر نص هيروغليفي ويرجع ذلك إلى القرن الرابع الميلادي (394م). تم تحويل المعبد إلى كنيسة وتم محو العديد من نقوش المعبد.

يقع بجوار معبد إيزيس معبدًا مكرسًا لحتحور بناه بطلميوس السادس فيلوماتور (180 – 145 ق.م)، وأغسطس أول إمبراطور لروما (30 ق.م. – 14م). ولا تزال مقصورة تراجان (98 – 117 م) المقامة أمام معبد فيله قائمة على الرغم من أن سقفها لم يعد موجودًا، وكان الترتيب المنتظم لأعمدتها الرائعة قد جذب أنظار الرحالة وقاموا بوصفه وتصويره. كانت إيزيس المعبودة الرئيسية للمنطقة، حيث تم تصوير الإمبراطور يقدم القرابين لها ولزوجها أوزير وابنهما حورس.

تم نقل كل هذه الآثار من جزيرة فيلة الأصلية إلى جزيرة أجيلكيا القريبة خلال حملة اليونسكو للنوبة في الستينيات لإنقاذ المواقع التي غمرتها مياه النيل في عملية بناء السد العالي بأسوان.'''
//18
  ,
  '''تشمل آثار فيله العديد من المباني التي يعود تاريخها إلى العصر البطلمي (332-30 ق.م.)، وأبرزها ذلك المعبد الذى بدأه بطلميوس الثانى فيلادلفوس (285 – 246 ق.م.)، والذى كان مكرسًا لإيزيس أم حورس رب الملكية، وهناك منظر في الماميزي أو حجرة الولادة، حيث كان يتم الاحتفال بولادة حورس، تظهر فيها إيزيس وهي ترضع ابنها حورس في الأحراش.

يعتبر معبد إيزيس واحدًا من أكثر المعابد المصرية القديمة استمرارًا؛ حيث ظل المعبد يؤدي دوره حتى عهد الملك البيزنطي جستنيان الأول (527 – 565 م) والذي أمر بإغلاق كل المعابد الوثنية، حيث نقش كاهن يدعى اسمت-اخوم آخر نص هيروغليفي ويرجع ذلك إلى القرن الرابع الميلادي (394م). تم تحويل المعبد إلى كنيسة وتم محو العديد من نقوش المعبد.

يقع بجوار معبد إيزيس معبدًا مكرسًا لحتحور بناه بطلميوس السادس فيلوماتور (180 – 145 ق.م)، وأغسطس أول إمبراطور لروما (30 ق.م. – 14م). ولا تزال مقصورة تراجان (98 – 117 م) المقامة أمام معبد فيله قائمة على الرغم من أن سقفها لم يعد موجودًا، وكان الترتيب المنتظم لأعمدتها الرائعة قد جذب أنظار الرحالة وقاموا بوصفه وتصويره. كانت إيزيس المعبودة الرئيسية للمنطقة، حيث تم تصوير الإمبراطور يقدم القرابين لها ولزوجها أوزير وابنهما حورس.

تم نقل كل هذه الآثار من جزيرة فيلة الأصلية إلى جزيرة أجيلكيا القريبة خلال حملة اليونسكو للنوبة في الستينيات لإنقاذ المواقع التي غمرتها مياه النيل في عملية بناء السد العالي بأسوان.'''
];

List<String> kEnDesc = [
//Giza///
//0
  '''Colossal statues are one of the hallmarks of ancient Egyptian civilization, and the Great Sphinx of Giza is the most famous of them. The statue was carved into the rock of the same area during the Fourth Dynasty (c. 2613-2494 BC), making it the oldest. Ancient Egyptian sphinxes represented the king with the body of a lion as a clear sign of his power.

Evidence suggests that the Sphinx was carved during the reign of King Khafre (c. 2558-2532 BC), the owner of the second pyramid of Giza. The Sphinx and its temple in front of it are located directly next to the Valley Temple of Khafre and the lower part of the ascending causeway leading to his mortuary temple and pyramid. Careful archaeological analysis has revealed that the Valley Temple was completed before work on the Sphinx and its temple began, while analysis of the Sphinx’s facial features has revealed striking similarities to statues of King Khafre.

The Sphinx has captured the imagination of travelers and explorers for thousands of years, even in ancient Egypt. During the Eighteenth Dynasty (c. 1550–1295 BC), it came to be seen as a manifestation of the sun god, and was called Hor-em-akhet, “Horus of the Horizon.” King Amenhotep II (c. 1427–1400 BC) built a temple next to the Sphinx dedicated to this god. His son, Thutmose IV (c. 1400–1390 BC), erected a huge stela between its forelegs, called the Dream Stele, in which he recorded a remarkable event.''',
//1
  '''The Giza Plateau is one of the most famous tourist sites since ancient times until today. This plateau includes the tombs of the kings of the Fourth Dynasty (c. 2613-2494 BC), which are the pyramids of Khufu (c. 2589-2566 BC), his son Khafre, and his grandson Menkaure, in addition to the famous Sphinx. The Pyramid of Khufu is the largest and oldest of these pyramids and the tallest in the world for 3800 years.

These great pyramids are surrounded by other monuments, as each pyramid had a pyramid group in addition to the pyramids of the queens and the small side pyramid that was a symbolic pyramid for the king, as well as mastabas designated for the burial of important figures and members of the royal family, and Khufu's boats known as the solar boats. The pyramid group for each king included two temples, one of which was the valley temple, from which an ascending path with decorated sides led to an upper temple known as the funerary temple adjacent to the pyramid. The priests performed the burial and funeral rituals for the deceased king inside these temples, where he was transformed into a deity and rich offerings were presented to his soul so that he could enjoy peace in the afterlife.''',
//2
  '''Saqqara is a very important part of the Memphis Necropolis, and it is about 40 km away from Cairo. Saqqara took its name mostly from the god "Sokar", the god of the necropolis. Saqqara is truly an open museum, as it contains most of the artifacts of ancient Egyptian history, as it contains the tombs of kings and senior officials of the First and Second Dynasties (about 3040-2686 BC), as well as the Step Pyramid, the oldest large stone building in history, for King Djoser (about 2686-2667 BC), and it contains pyramids for the most important kings of the Fifth Dynasty (about 2494-2345 BC) and Sixth Dynasty (about 2345-2181 BC), where the pyramid of King Unis (about 2375-2345 BC) was the first to engrave his burial chamber with the Pyramid Texts, the purpose of which was to protect the king during his journey in the afterlife. In addition to the royal tombs of the Old Kingdom, Saqqara contains a huge collection of tombs of prominent individuals from that period, which were decorated with magnificent scenes and engravings. It also included tombs dating back to the First Intermediate Period (c. 2181-2055 BC), tombs of individuals dating back to the Middle Kingdom (c. 2055-1650 BC), and tombs of the New Kingdom (c. 1550-1069 BC). The tombs of the New Kingdom represent an architectural style completely different from the tombs of Thebes. Among these tombs we see the tomb of King Horemheb (c. 1323-1295 BC) when he was an army commander, and he was not buried there because after ascending the throne he carved a tomb for himself in the Valley of the Kings. One of the most important features of Saqqara is the tomb of the sacred Apis bull, called the Serapeum, which continued to be used from the Eighteenth Dynasty until the Ptolemaic period, as the Apis bull was considered a representation of the god Ptah himself, one of the most important deities of the Memphis region. When the bull died, it was buried in a grand ceremony until its successor was found.

In addition, Saqqara contains Coptic antiquities, as we find the Monastery of Anba Jeremiah southeast of the pyramid complex of King Djoser, which remained in use until approximately the eighth century AD. We cannot ignore talking about the Imhotep Museum, which contains wonderful antiquities from different eras that were discovered in Saqqara.''',
//3
  '''Horemheb (c. 1323–1295 BC) was the last king of the Eighteenth Dynasty. Before ascending to the throne, he was an army commander under Tutankhamun (c. 1336–1327 BC), and held other titles such as “Vice-King of the Whole Earth”. He was eventually buried in the Valley of the Kings, as befitted his royal status. Before that, however, Horemheb had built another tomb at Saqqara. This tomb is the largest in the New Kingdom necropolis south of the causeway of King Unas (c. 2375–2345 BC). Like the other major tombs in this necropolis, the tomb’s design is in the style of a temple-tomb, in imitation of the Great Kingdom temples of its time. The tomb begins with a pylon preceding two open courtyards followed by the inner chambers of the shrine, where ritual offerings to Horemheb were performed. The central chamber was surmounted by a pyramid, a solar symbol of resurrection and rebirth. The underground burial chamber was accessed through a vertical shaft cut through the floor of the inner courtyard. The remains of a fetus and the skeleton of a female, possibly Horemheb's wife Mutnedjmet, were discovered in his tomb in the Memphis necropolis, indicating that it was not used.

The reliefs that decorate this tomb include scenes depicting Horemheb in action, showing a group of representatives of foreign rulers pleading before Tutankhamun, while Horemheb acts as an intermediary. Two scenes that indicate his high status even before his accession to the throne show him followed by rows of foreign captives receiving his reward of courage gold from Tutankhamun himself, the courage gold being given by kings to their officials for exceptional services. The tomb is also decorated with funerary scenes, including the opening of the mouth ritual.

The location of this tomb was unknown, having been discovered in the early 19th century as part of a cemetery find by tomb robbers and antique dealers who stole and sold their finds to museums and collectors abroad. Not only were statues and other movable objects stolen, but entire sections of tomb walls were removed and none of this was recorded. The tomb of Horemheb was particularly affected, as its location had disappeared. Fortunately, it was rediscovered in the New Kingdom cemetery in 1975.''',
//4

  '''The vast Saqqara necropolis, which was part of the ancient Memphis necropolis, contains tombs from all periods of ancient Egyptian history. The New Kingdom necropolis (c. 1550–1069 BC) lies south of the causeway of King Unas, where many of the great men of the Eighteenth to Twentieth Dynasties were buried, including Ptah-em-wia, the "clean-handed royal attendant" who lived under both Akhenaten (c. 1352–1336 BC) and Tutankhamun (c. 1336–1332 BC), Maya, the treasury overseer under Tutankhamun, and Tiah, the treasury overseer under Ramesses II (c. 1279–1213 BC). In addition, the site of Horemheb's tomb was prepared for him before he became king. Like most individual tombs, the New Kingdom cemetery tombs consist of two parts: a closed underground section containing the burial chamber, and an accessible above-ground chamber, where offerings to the soul of the deceased were performed. What distinguishes the tombs of this cemetery is that they are not mastabas or rock-cut tombs, but freestanding chambers known as “temple tombs.” The larger tombs were entered through a stone pylon leading to an open courtyard preceding the tomb chamber. Sometimes the chamber was a small pyramid symbolizing rebirth and resurrection. The open courtyard contained a burial shaft leading to the underground burial chamber. This part of Saqqara was discovered by tomb robbers and antiquities dealers in the 19th century, when many statues and reliefs were stolen without being recorded and sold to museums and collectors abroad. A map of the area drawn by the Prussian Egyptologist Karl R. Lepsius in the 19th century in the rediscovery of the New Kingdom necropolis in 1975 by the Anglo-Dutch expedition of the Egypt Exploration Society in London and the National Museum of Antiquities in Leiden, led by Geoffrey T. Martin.''',
//Aswan///
//5
  '''The ruins of Philae include many buildings dating back to the Ptolemaic period (332-30 BC), most notably the temple begun by Ptolemy II Philadelphus (285-246 BC), which was dedicated to Isis, mother of Horus, the god of kingship. A scene in the mammisi, or birth chamber, where the birth of Horus was celebrated, shows Isis nursing her son Horus in the groves.

The Temple of Isis is one of the longest-lasting ancient Egyptian temples; it continued to function until the reign of the Byzantine king Justinian I (527-565 AD), who ordered the closure of all pagan temples. A priest named Ismet-Akhom inscribed the last hieroglyphic text, dating from the 4th century AD (394 AD). The temple was converted into a church and many of the temple inscriptions were erased.

Adjacent to the Temple of Isis is a temple dedicated to Hathor built by Ptolemy VI Philometor (180–145 BC) and Augustus, the first emperor of Rome (30 BC–AD 14). The Kiosk of Trajan (AD 98–117) in front of the Temple of Philae still stands, although its roof has disappeared, and the regular arrangement of its magnificent columns has attracted the attention of travelers who have described and photographed it. Isis was the main deity of the area, and the emperor is depicted making offerings to her, her husband Osiris, and their son Horus. All of these monuments were moved from the original island of Philae to nearby Agilkia during UNESCO’s Nubia campaign in the 1960s to save sites flooded by the Nile during the construction of the Aswan High Dam.'''
//6//////////////////Repeated
  ,
  '''The ruins of Philae include many buildings dating back to the Ptolemaic period (332-30 BC), most notably the temple begun by Ptolemy II Philadelphus (285-246 BC), which was dedicated to Isis, mother of Horus, the god of kingship. A scene in the mammisi, or birth chamber, where the birth of Horus was celebrated, shows Isis nursing her son Horus in the groves.

The Temple of Isis is one of the longest-lasting ancient Egyptian temples; it continued to function until the reign of the Byzantine king Justinian I (527-565 AD), who ordered the closure of all pagan temples. A priest named Ismet-Akhom inscribed the last hieroglyphic text, dating from the 4th century AD (394 AD). The temple was converted into a church and many of the temple inscriptions were erased.

Adjacent to the Temple of Isis is a temple dedicated to Hathor built by Ptolemy VI Philometor (180–145 BC) and Augustus, the first emperor of Rome (30 BC–AD 14). The Kiosk of Trajan (AD 98–117) in front of the Temple of Philae still stands, although its roof has disappeared, and the regular arrangement of its magnificent columns has attracted the attention of travelers who have described and photographed it. Isis was the main deity of the area, and the emperor is depicted making offerings to her, her husband Osiris, and their son Horus. All of these monuments were moved from the original island of Philae to nearby Agilkia during UNESCO’s Nubia campaign in the 1960s to save sites flooded by the Nile during the construction of the Aswan High Dam.'''
//7
  ,
  '''The ruins of Philae include many buildings dating back to the Ptolemaic period (332-30 BC), most notably the temple begun by Ptolemy II Philadelphus (285-246 BC), which was dedicated to Isis, mother of Horus, the god of kingship. A scene in the mammisi, or birth chamber, where the birth of Horus was celebrated, shows Isis nursing her son Horus in the groves.

The Temple of Isis is one of the longest-lasting ancient Egyptian temples; it continued to function until the reign of the Byzantine king Justinian I (527-565 AD), who ordered the closure of all pagan temples. A priest named Ismet-Akhom inscribed the last hieroglyphic text, dating from the 4th century AD (394 AD). The temple was converted into a church and many of the temple inscriptions were erased.

Adjacent to the Temple of Isis is a temple dedicated to Hathor built by Ptolemy VI Philometor (180–145 BC) and Augustus, the first emperor of Rome (30 BC–AD 14). The Kiosk of Trajan (AD 98–117) in front of the Temple of Philae still stands, although its roof has disappeared, and the regular arrangement of its magnificent columns has attracted the attention of travelers who have described and photographed it. Isis was the main deity of the area, and the emperor is depicted making offerings to her, her husband Osiris, and their son Horus. All of these monuments were moved from the original island of Philae to nearby Agilkia during UNESCO’s Nubia campaign in the 1960s to save sites flooded by the Nile during the construction of the Aswan High Dam.'''
//8
  ,
  '''The ruins of Philae include many buildings dating back to the Ptolemaic period (332-30 BC), most notably the temple begun by Ptolemy II Philadelphus (285-246 BC), which was dedicated to Isis, mother of Horus, the god of kingship. A scene in the mammisi, or birth chamber, where the birth of Horus was celebrated, shows Isis nursing her son Horus in the groves.

The Temple of Isis is one of the longest-lasting ancient Egyptian temples; it continued to function until the reign of the Byzantine king Justinian I (527-565 AD), who ordered the closure of all pagan temples. A priest named Ismet-Akhom inscribed the last hieroglyphic text, dating from the 4th century AD (394 AD). The temple was converted into a church and many of the temple inscriptions were erased.

Adjacent to the Temple of Isis is a temple dedicated to Hathor built by Ptolemy VI Philometor (180–145 BC) and Augustus, the first emperor of Rome (30 BC–AD 14). The Kiosk of Trajan (AD 98–117) in front of the Temple of Philae still stands, although its roof has disappeared, and the regular arrangement of its magnificent columns has attracted the attention of travelers who have described and photographed it. Isis was the main deity of the area, and the emperor is depicted making offerings to her, her husband Osiris, and their son Horus. All of these monuments were moved from the original island of Philae to nearby Agilkia during UNESCO’s Nubia campaign in the 1960s to save sites flooded by the Nile during the construction of the Aswan High Dam.'''
//9
  ,
  '''The ruins of Philae include many buildings dating back to the Ptolemaic period (332-30 BC), most notably the temple begun by Ptolemy II Philadelphus (285-246 BC), which was dedicated to Isis, mother of Horus, the god of kingship. A scene in the mammisi, or birth chamber, where the birth of Horus was celebrated, shows Isis nursing her son Horus in the groves.

The Temple of Isis is one of the longest-lasting ancient Egyptian temples; it continued to function until the reign of the Byzantine king Justinian I (527-565 AD), who ordered the closure of all pagan temples. A priest named Ismet-Akhom inscribed the last hieroglyphic text, dating from the 4th century AD (394 AD). The temple was converted into a church and many of the temple inscriptions were erased.

Adjacent to the Temple of Isis is a temple dedicated to Hathor built by Ptolemy VI Philometor (180–145 BC) and Augustus, the first emperor of Rome (30 BC–AD 14). The Kiosk of Trajan (AD 98–117) in front of the Temple of Philae still stands, although its roof has disappeared, and the regular arrangement of its magnificent columns has attracted the attention of travelers who have described and photographed it. Isis was the main deity of the area, and the emperor is depicted making offerings to her, her husband Osiris, and their son Horus. All of these monuments were moved from the original island of Philae to nearby Agilkia during UNESCO’s Nubia campaign in the 1960s to save sites flooded by the Nile during the construction of the Aswan High Dam.'''
//10
  ,
  '''The ruins of Philae include many buildings dating back to the Ptolemaic period (332-30 BC), most notably the temple begun by Ptolemy II Philadelphus (285-246 BC), which was dedicated to Isis, mother of Horus, the god of kingship. A scene in the mammisi, or birth chamber, where the birth of Horus was celebrated, shows Isis nursing her son Horus in the groves.

The Temple of Isis is one of the longest-lasting ancient Egyptian temples; it continued to function until the reign of the Byzantine king Justinian I (527-565 AD), who ordered the closure of all pagan temples. A priest named Ismet-Akhom inscribed the last hieroglyphic text, dating from the 4th century AD (394 AD). The temple was converted into a church and many of the temple inscriptions were erased.

Adjacent to the Temple of Isis is a temple dedicated to Hathor built by Ptolemy VI Philometor (180–145 BC) and Augustus, the first emperor of Rome (30 BC–AD 14). The Kiosk of Trajan (AD 98–117) in front of the Temple of Philae still stands, although its roof has disappeared, and the regular arrangement of its magnificent columns has attracted the attention of travelers who have described and photographed it. Isis was the main deity of the area, and the emperor is depicted making offerings to her, her husband Osiris, and their son Horus. All of these monuments were moved from the original island of Philae to nearby Agilkia during UNESCO’s Nubia campaign in the 1960s to save sites flooded by the Nile during the construction of the Aswan High Dam.'''
//11
  ,
  '''The ruins of Philae include many buildings dating back to the Ptolemaic period (332-30 BC), most notably the temple begun by Ptolemy II Philadelphus (285-246 BC), which was dedicated to Isis, mother of Horus, the god of kingship. A scene in the mammisi, or birth chamber, where the birth of Horus was celebrated, shows Isis nursing her son Horus in the groves.

The Temple of Isis is one of the longest-lasting ancient Egyptian temples; it continued to function until the reign of the Byzantine king Justinian I (527-565 AD), who ordered the closure of all pagan temples. A priest named Ismet-Akhom inscribed the last hieroglyphic text, dating from the 4th century AD (394 AD). The temple was converted into a church and many of the temple inscriptions were erased.

Adjacent to the Temple of Isis is a temple dedicated to Hathor built by Ptolemy VI Philometor (180–145 BC) and Augustus, the first emperor of Rome (30 BC–AD 14). The Kiosk of Trajan (AD 98–117) in front of the Temple of Philae still stands, although its roof has disappeared, and the regular arrangement of its magnificent columns has attracted the attention of travelers who have described and photographed it. Isis was the main deity of the area, and the emperor is depicted making offerings to her, her husband Osiris, and their son Horus. All of these monuments were moved from the original island of Philae to nearby Agilkia during UNESCO’s Nubia campaign in the 1960s to save sites flooded by the Nile during the construction of the Aswan High Dam.'''
//12
  ,
  '''The ruins of Philae include many buildings dating back to the Ptolemaic period (332-30 BC), most notably the temple begun by Ptolemy II Philadelphus (285-246 BC), which was dedicated to Isis, mother of Horus, the god of kingship. A scene in the mammisi, or birth chamber, where the birth of Horus was celebrated, shows Isis nursing her son Horus in the groves.

The Temple of Isis is one of the longest-lasting ancient Egyptian temples; it continued to function until the reign of the Byzantine king Justinian I (527-565 AD), who ordered the closure of all pagan temples. A priest named Ismet-Akhom inscribed the last hieroglyphic text, dating from the 4th century AD (394 AD). The temple was converted into a church and many of the temple inscriptions were erased.

Adjacent to the Temple of Isis is a temple dedicated to Hathor built by Ptolemy VI Philometor (180–145 BC) and Augustus, the first emperor of Rome (30 BC–AD 14). The Kiosk of Trajan (AD 98–117) in front of the Temple of Philae still stands, although its roof has disappeared, and the regular arrangement of its magnificent columns has attracted the attention of travelers who have described and photographed it. Isis was the main deity of the area, and the emperor is depicted making offerings to her, her husband Osiris, and their son Horus. All of these monuments were moved from the original island of Philae to nearby Agilkia during UNESCO’s Nubia campaign in the 1960s to save sites flooded by the Nile during the construction of the Aswan High Dam.'''
//13
  ,
  '''The ruins of Philae include many buildings dating back to the Ptolemaic period (332-30 BC), most notably the temple begun by Ptolemy II Philadelphus (285-246 BC), which was dedicated to Isis, mother of Horus, the god of kingship. A scene in the mammisi, or birth chamber, where the birth of Horus was celebrated, shows Isis nursing her son Horus in the groves.

The Temple of Isis is one of the longest-lasting ancient Egyptian temples; it continued to function until the reign of the Byzantine king Justinian I (527-565 AD), who ordered the closure of all pagan temples. A priest named Ismet-Akhom inscribed the last hieroglyphic text, dating from the 4th century AD (394 AD). The temple was converted into a church and many of the temple inscriptions were erased.

Adjacent to the Temple of Isis is a temple dedicated to Hathor built by Ptolemy VI Philometor (180–145 BC) and Augustus, the first emperor of Rome (30 BC–AD 14). The Kiosk of Trajan (AD 98–117) in front of the Temple of Philae still stands, although its roof has disappeared, and the regular arrangement of its magnificent columns has attracted the attention of travelers who have described and photographed it. Isis was the main deity of the area, and the emperor is depicted making offerings to her, her husband Osiris, and their son Horus. All of these monuments were moved from the original island of Philae to nearby Agilkia during UNESCO’s Nubia campaign in the 1960s to save sites flooded by the Nile during the construction of the Aswan High Dam.'''
//14
  ,
  '''The ruins of Philae include many buildings dating back to the Ptolemaic period (332-30 BC), most notably the temple begun by Ptolemy II Philadelphus (285-246 BC), which was dedicated to Isis, mother of Horus, the god of kingship. A scene in the mammisi, or birth chamber, where the birth of Horus was celebrated, shows Isis nursing her son Horus in the groves.

The Temple of Isis is one of the longest-lasting ancient Egyptian temples; it continued to function until the reign of the Byzantine king Justinian I (527-565 AD), who ordered the closure of all pagan temples. A priest named Ismet-Akhom inscribed the last hieroglyphic text, dating from the 4th century AD (394 AD). The temple was converted into a church and many of the temple inscriptions were erased.

Adjacent to the Temple of Isis is a temple dedicated to Hathor built by Ptolemy VI Philometor (180–145 BC) and Augustus, the first emperor of Rome (30 BC–AD 14). The Kiosk of Trajan (AD 98–117) in front of the Temple of Philae still stands, although its roof has disappeared, and the regular arrangement of its magnificent columns has attracted the attention of travelers who have described and photographed it. Isis was the main deity of the area, and the emperor is depicted making offerings to her, her husband Osiris, and their son Horus. All of these monuments were moved from the original island of Philae to nearby Agilkia during UNESCO’s Nubia campaign in the 1960s to save sites flooded by the Nile during the construction of the Aswan High Dam.'''
//15
  ,
  '''The ruins of Philae include many buildings dating back to the Ptolemaic period (332-30 BC), most notably the temple begun by Ptolemy II Philadelphus (285-246 BC), which was dedicated to Isis, mother of Horus, the god of kingship. A scene in the mammisi, or birth chamber, where the birth of Horus was celebrated, shows Isis nursing her son Horus in the groves.

The Temple of Isis is one of the longest-lasting ancient Egyptian temples; it continued to function until the reign of the Byzantine king Justinian I (527-565 AD), who ordered the closure of all pagan temples. A priest named Ismet-Akhom inscribed the last hieroglyphic text, dating from the 4th century AD (394 AD). The temple was converted into a church and many of the temple inscriptions were erased.

Adjacent to the Temple of Isis is a temple dedicated to Hathor built by Ptolemy VI Philometor (180–145 BC) and Augustus, the first emperor of Rome (30 BC–AD 14). The Kiosk of Trajan (AD 98–117) in front of the Temple of Philae still stands, although its roof has disappeared, and the regular arrangement of its magnificent columns has attracted the attention of travelers who have described and photographed it. Isis was the main deity of the area, and the emperor is depicted making offerings to her, her husband Osiris, and their son Horus. All of these monuments were moved from the original island of Philae to nearby Agilkia during UNESCO’s Nubia campaign in the 1960s to save sites flooded by the Nile during the construction of the Aswan High Dam.'''
//16
  ,
  '''The ruins of Philae include many buildings dating back to the Ptolemaic period (332-30 BC), most notably the temple begun by Ptolemy II Philadelphus (285-246 BC), which was dedicated to Isis, mother of Horus, the god of kingship. A scene in the mammisi, or birth chamber, where the birth of Horus was celebrated, shows Isis nursing her son Horus in the groves.

The Temple of Isis is one of the longest-lasting ancient Egyptian temples; it continued to function until the reign of the Byzantine king Justinian I (527-565 AD), who ordered the closure of all pagan temples. A priest named Ismet-Akhom inscribed the last hieroglyphic text, dating from the 4th century AD (394 AD). The temple was converted into a church and many of the temple inscriptions were erased.

Adjacent to the Temple of Isis is a temple dedicated to Hathor built by Ptolemy VI Philometor (180–145 BC) and Augustus, the first emperor of Rome (30 BC–AD 14). The Kiosk of Trajan (AD 98–117) in front of the Temple of Philae still stands, although its roof has disappeared, and the regular arrangement of its magnificent columns has attracted the attention of travelers who have described and photographed it. Isis was the main deity of the area, and the emperor is depicted making offerings to her, her husband Osiris, and their son Horus. All of these monuments were moved from the original island of Philae to nearby Agilkia during UNESCO’s Nubia campaign in the 1960s to save sites flooded by the Nile during the construction of the Aswan High Dam.'''
//17
  ,
  '''The ruins of Philae include many buildings dating back to the Ptolemaic period (332-30 BC), most notably the temple begun by Ptolemy II Philadelphus (285-246 BC), which was dedicated to Isis, mother of Horus, the god of kingship. A scene in the mammisi, or birth chamber, where the birth of Horus was celebrated, shows Isis nursing her son Horus in the groves.

The Temple of Isis is one of the longest-lasting ancient Egyptian temples; it continued to function until the reign of the Byzantine king Justinian I (527-565 AD), who ordered the closure of all pagan temples. A priest named Ismet-Akhom inscribed the last hieroglyphic text, dating from the 4th century AD (394 AD). The temple was converted into a church and many of the temple inscriptions were erased.

Adjacent to the Temple of Isis is a temple dedicated to Hathor built by Ptolemy VI Philometor (180–145 BC) and Augustus, the first emperor of Rome (30 BC–AD 14). The Kiosk of Trajan (AD 98–117) in front of the Temple of Philae still stands, although its roof has disappeared, and the regular arrangement of its magnificent columns has attracted the attention of travelers who have described and photographed it. Isis was the main deity of the area, and the emperor is depicted making offerings to her, her husband Osiris, and their son Horus. All of these monuments were moved from the original island of Philae to nearby Agilkia during UNESCO’s Nubia campaign in the 1960s to save sites flooded by the Nile during the construction of the Aswan High Dam.'''
//18
  ,
  '''The ruins of Philae include many buildings dating back to the Ptolemaic period (332-30 BC), most notably the temple begun by Ptolemy II Philadelphus (285-246 BC), which was dedicated to Isis, mother of Horus, the god of kingship. A scene in the mammisi, or birth chamber, where the birth of Horus was celebrated, shows Isis nursing her son Horus in the groves.

The Temple of Isis is one of the longest-lasting ancient Egyptian temples; it continued to function until the reign of the Byzantine king Justinian I (527-565 AD), who ordered the closure of all pagan temples. A priest named Ismet-Akhom inscribed the last hieroglyphic text, dating from the 4th century AD (394 AD). The temple was converted into a church and many of the temple inscriptions were erased.

Adjacent to the Temple of Isis is a temple dedicated to Hathor built by Ptolemy VI Philometor (180–145 BC) and Augustus, the first emperor of Rome (30 BC–AD 14). The Kiosk of Trajan (AD 98–117) in front of the Temple of Philae still stands, although its roof has disappeared, and the regular arrangement of its magnificent columns has attracted the attention of travelers who have described and photographed it. Isis was the main deity of the area, and the emperor is depicted making offerings to her, her husband Osiris, and their son Horus. All of these monuments were moved from the original island of Philae to nearby Agilkia during UNESCO’s Nubia campaign in the 1960s to save sites flooded by the Nile during the construction of the Aswan High Dam.'''
];
