# Metamodellezés

## Bevezetés
A házi feladat során a metamodellezés gyakorlaton bemutatott EMF technológia megismerése a cél. A házi feladat megvalósításához:
- Kérjük nézze át az alábbi útmutatót: (https://github.com/bmeaut/ModellalapuSzoftverfejlesztes/raw/master/practice/practice_05/Modellalap%C3%BA%20szoftverfejleszt%C3%A9s_GY05_diasor.pdf). Az útmutató nagyon részletes, hogy bármikor teljesen reprodukálható legyen a feladat. Az útmutató videókra is hivatkozik, ha elakadna, a videó részletesen bemutatja az eszköz használatát. Az útmutató 1-10 oldala mutatja be a házi feladat elvégzéséhez szükséges ismereteket.
- Készítse össze a feladat elvégzéséhez szükséges környezetet:
  - [JDK](https://adoptium.net/) (ha nem lenne)
  - [Eclipse Modeling Tools](https://www.eclipse.org/downloads/packages/release/2023-03/r/eclipse-modeling-tools)
- Importálja a kiindulási állapotot (Az előadás során egy hasonló állapotig jutottunk).
  - A kiindulási állapot itt érhető el: [HW04-init.zip](https://github.com/bmeaut/ModellalapuSzoftverfejlesztes/raw/master/homework/homework_04/HW04-init.zip)
  - Importálja a fejlesztőkörnyezetébe:
    - `File > impport > Existing Projects into Workspace >  Select Archive file`
    - Kikeressük a zip állományt
    -  `Finish`

## A környezet bemutatása
A kiadott projekt az alábbi elemeket tartalmazza:
- `model` mappa: ez tartalmazza a modelleket.
 - `My.*`: A `.ecore` kiterjesztésű fájl tartalmazza a metamodellünket, amit tipikusan a `.aird` kiterjesztésű állományban lévő diagramok segítségével szerkesztünk. A diagramokat `Right click > Open` majd `Representation per category > Design > Entities in a Class Diagram` mappában találjuk. Ha befejeztük a szerkesztést, akkor a `.genmodel` állományt nyissuk meg, és a gyökérre kattintva  `Right click > Generate Model Code` parancssal frissíthetjük a kódbázisunkat (ami minden szerkesztés után szükséges lehet).
 - `model-input.xmi`: Ez egy kis példamodellt tartalmaz. Az egyszerű szerkesztéshez `Right click > Open With > Sample Reflective Ecore Model Editor` használjuk (az editort ki kellhet keresni egy listából).
 - `model-output.xmi`: Ez egy kis példamodellt tartalmaz. Ez lenne a kimenet modellmódosítások után. Szökség lehet az editorban frissíteni, ha nincs beállítva a környezetünkben a `Refresh using native hooks or polling` opció.
- `/src/mycode/FixModel.java`: Ez egy forrásállomány ami betölti a `model-input.xmi` modellünk, meghívja a `processModel` föggvényt, és az eredményt kimenti a `model-output.xmi` mappába. Ezt a `processModel` függvényt kell szerkesztenünk majd. A traszformációt `Right click > Run as > Java Application` paranccsal futtathatjuk.
- `test` mappa: pár ellenőrző tesztet tartalmaz. A teszteket `Right click > Run as > JUnit Test` opcióval futtathatjuk. Ideális esetben minden tesztnek futnia kéne a feladat elvégzésével.

  A gyakorlat során egy ehhez hasonló környezetet állítottunk össze, és első sorban az EMF-hez kapcsolódó technológiák bemutatását céloztuk. Az automatikus build és automatikus teszteléstől eltekintettünk, valamint a többi fejlesztőkörnyezetet is hanyagoltuk. Bár ezek a szempontok egy komoly projektben megkerülhetetlenek, most a célunk az volt, hogy minél hamarabb látható eredményt érjünk el. A házi feladat során is erre célzunk.

## A feladat leírása

A feladat elvégzéséhez az alábbi részfeladatokat kell elvégeznie:

### Metamodellezés
1. Egészítse ki a szociális háló metamodellt új elemekkel. Az új elemek esetén szabad kezet adunk: a modellezési nyelvét kiegészítheti Like opciókkal, üzenetekkel, egymásnak küldött üzenetekkel, rendszergazda felhasználókkal, feliratkozási modellekkel, projektekkel... A cél az, hogy IMDB, Facebook vagy Githubhoz hasonló hálózatot alkossunk.
2. A metamodell mérete legyen legalább az alábbi. A méretek formai betartását a `MetamodelTests.java` tesztjeivel ellenőrizhetjük.
  * 8 osztály
  * 10 referencia
  * 10 attribútum
4. A metamodellek legyenek valamennyire értelmesek; a modellek egy részét átnézzük kézzel, valamint a félév során egyetemünk pár kutatója megpróbálja mesterséges intelligencia módszerekkel kiértékelni a projekteket.
  * Ezért kerüljük, hogy egyszerűen csak `Class1, Class2, ...` osztályokkal csak formailag teljesítjük a teszteket
  * Illetve különösképpen kerüljük a másolást (mivel gráfok esetén sokkal erősebb bizonyítékot találni másolásra, mint szöveg esetén)

### Modellezés
5. Ezek után készítsünk egy kis példamodellt: a  `model-input.xmi` elemeit egészítsük ki újabb elemekkel. Amennyiben szükséges, módosítsa a metamodellt. Ha hibássá válik a példánymodell, akkor vagy kezdje újra a kiindulási projekttől, vagy használja a gyakorlaton bemutatott technikát.
6. A modell mérete legyen legalább az alábbi. A méretek formai betartását a `InputModelTests.java` tesztjeivel ellenőrizhetjük.
  * 20 objektum
  * 20 attribútum érték
    
### Modell manipuláció kódból
7. Végül készítsünk egy olyan alkalmazást, ami bejár egy modellt, és az üres (default) attribútum értékeket inicializálja: String-eket átirja például `"undefined"`-re vagy `"name1", "name2"`-re, kitöltetlen int attribútumokat például -1 értékre.
  7.1 Ehhez a `FixModel.pocessModel()` függvényben implementáljon egy olyan modellbejárást, amely megkeresi a modelljében található összes attribútumot.
  7.2 és egy értéket rendel hozzá, vagy esetleg módosítja az értéket (az attribútumhoz tartozó `.setXXX( )` függvény meghívásával).
8. A kódját a `/src/mycode/FixModel.java` alkalmazás futtatásával tesztelheti, az eredményt a `model-output.xmi` modellben tekintheti meg.
9. A kódját a `FixingTest.java` ellenőrzi. A teszt a biztonság kedvéért a modelljében minden értéket default értékre állít, hogy így tesztelje a helyes viselkedést. (A teszt nem írja felül a modelljeit).

### Tag-elés és feltöltés
Ellenőrizzük a munkánk helyességét a tesztekkel, töltsük fel a végleges verziót GitHub-ra, majd `hw4-emf` taggel jelöljük a megoldásunk.
