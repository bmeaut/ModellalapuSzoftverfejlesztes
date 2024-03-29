# 3. házi feladat - ANTLR

## A házi feladat elvégzésének lépései

1. A [kiinduló](https://github.com/bmeaut/ModellalapuSzoftverfejlesztes/blob/master/practice/practice_04/Practice%2004%20-%20TinyScript%20codegen%20initial%20project.zip) projekt tartalmát másoljuk be a saját repónkba, egy újonnan létrehozott **TinyScript** mappába!
2. Oldjuk meg az alábbiakban leírt feladatot!
3. Készítsünk egy **hw3-antlr** nevű **tag**-et az utolsó commitra!

## A feladat

A TinyScript nyelv specifikációja a 2. gyakorlat anyagai között megtalálhatók. A 4. gyakorlat során megnéztük a TinyScript szemantikai elemzését, illetve a kódgenerátor egy részét. A kiinduló projekt leírása szintén a gyakorlati útmutatóban található. A feladat a kódgenerátor kiegészítése az alábbiak szerint::
* a függvény definíciókhoz tartozó kód kerüljön bele a generált (TinyScriptOutput) osztályba
    * a függvény fejléce és utasításai egyaránt kerüljenek bele
    * készítsünk új StringTemplate sablont függvények definíciójának
* a main függvénybe ne kerüljenek bele a függvények belsejében található utasítások
    * a kiinduló projekt szándékosan hibás, itt még bekerülnek az említett utasítások
    * a szintaxisfa bejárása során tartsuk számon, hogy függvényen belül vagyunk-e vagy sem
* a kommentekkel nem kell foglalkozni, ezeket a kódgenerálás során eldobjuk
* a megoldás során csak a *JavaGen.stg* és a *TinyScriptCodeGenerator.java* fájlokban dolgozzunk!

Az *input.tys* fájlban található minta TinyScript programra elvárt minta generált kód megtalálható a *TinyScriptOutputExample.java* fájlban. A formázást (indentálás) nem kell 100% követni, illetve a generált osztály neve *TinyScriptOutput* legyen, ezeket leszámítva tartalomra a generált kód meg kell, hogy egyezzen ezzel:


```
package tinyscript;

// This class is an example of Java code from the input.tys file; whitespace formatting may vary
public class TinyScriptOutputExample {
    public static int add(int a, int b) {
        return a + b;
    }

    public static void print(String s) {
    }

    public static void main(String[] args) {
        int a = 1 + 2 + 3;
        String s = "apple";
        boolean b = true;
        var i = a * 2;

        while (i < 15) {
            i = i + 1;
            print("i increased");
        }

        if (b) {
            add(1, 2);
        }
        else {
            print("not true");
        }

    }
}
```

### Pontozás

A házi feladatra összesen 0-2 pont szerezhető, a házi feladat legalább 1 pont elérésével sikeresnek minősül. Az ANTLR feladatra 1 pontot lehet kapni, ha a generált kód a kiadott mintát követi, és új StringTemplate sablon(ok) is készült(ek) és használva lett(ek) a megoldás során. Az [LLVM](../LLVM_HW/README.md) feladatra szintén 1 pontot lehet kapni.


## Referenciák

Hasznos linkek a házi feladat elkészítéséhez:

* Az 1. ANTLR gyakorlat [anyagai](https://github.com/bmeaut/ModellalapuSzoftverfejlesztes/tree/master/practice/practice_02)
    * IntelliJ és ANTLR technikai útmutatót is tartalmaz
* A 2. ANTLR gyakorlat [anyagai](https://github.com/bmeaut/ModellalapuSzoftverfejlesztes/tree/master/practice/practice_04)
    * StringTemplate beüzemelési útmutatót is tartalmaz
* [ANTLR](https://www.antlr.org/) ([Dokumentáció](https://github.com/antlr/antlr4/blob/master/doc/index.md))
* [StringTemplate](https://www.stringtemplate.org/) ([Dokumentáció](https://github.com/antlr/stringtemplate4/blob/master/doc/index.md))
