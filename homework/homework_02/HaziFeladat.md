# 2. házi feladat - Xtext

## A házi feladat elvégzésének lépései

1. A [kiinduló](https://github.com/MDSDLab/mdsd-2024-xtext-hw) repó az Xtext gyakorlathoz tartozó [Projektek létrehozása](../../practice/practice_03/GY3-Xtext-Projektek.pdf) c. útmutató végeredményét tartalmazza. Másolja a **statemachine.dsl.parent** könyvtárat a saját repója gyökerébe!
2. Nyissa meg a **statemachine.dsl.parent** könyvtárban található projekteket Eclipse-ben!
3. Oldja meg az [Xtext gyakorlat](../../practice/practice_03/GY3-Xtext-Utmutato.pdf) feladatait ezekre a projektekre építve!
4. **Bővítse ki a gyakorlat eredményét az alábbi leírás alapján!**
5. Készítsen egy **hw2-xtext** nevű **tag**-et az utolsó commitra!

## Az Xtext gyakorlat eredményének kibővítése

Bővítsük ki az Xcore metamodellt, az Xtext nyelvtant és az Xtend kódgenerátort, hogy az alábbi állapotgép kód is érvényes legyen:

```
machine Lamp
{
    int counter;

    initial state Off
    {
        event Flick
        {
            jump On;
        }
    }
    state On
    {
        entry
        {
            print "Turning on...";
            ++counter;
            print "Turned on ", counter, " times.";
        }
        event Flick
        {
            jump Off;
        }
        exit
        {
            print "Turning off...";
        }
    }
}

```

A bővítményeknek az alábbi tulajdoságaik vannak:

* A `machine` törzsében, még az állapotok felsorolása előtt, lehessen `int` típusú mezőket definiálni, akár többet is!
* A mezők kezdőértéke alapértelmezetten 0 legyen!
* Lehessen egy mező értékét eggyel megnövelni a prefix `++` operátor segítségével!
* A `print` parancsnak több argumentuma is lehessen, amelyeket vesszővel elválasztva lehet megadni. Egy argumentum lehet karakterlánc vagy egy mezőre történő hivatkozás. A kimeneten az összes argumentum összefűzve, egy sorban jelenik meg.

Például ha a fenti állapotgépet az alábbi programmal futtatjuk:

```Java
package statemachines;

public class Program {

    public static void main(String[] args) {
        var lamp = new Lamp();
        lamp.Flick();
        lamp.Flick();
        lamp.Flick();
        lamp.Flick();
    }

}
```

Akkor a kimenet a következő legyen:

```
Turning on...
Turned on 1 times.
Turning off...
Turning on...
Turned on 2 times.
Turning off...
```


## Referenciák

Hasznos linkek a házi feladat elkészítéséhez:

* Az Xtext gyakorlat [anyagai](../../practice/practice_03)
* [Xcore](https://wiki.eclipse.org/Xcore)
* [Xtext](https://eclipse.dev/Xtext/documentation/301_grammarlanguage.html)
* [Xtend](https://eclipse.dev/Xtext/xtend/documentation/203_xtend_expressions.html#templates)
