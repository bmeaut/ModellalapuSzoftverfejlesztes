# 3. házi feladat - LLVM

## A házi feladat elvégzésének lépései

1. Oldjuk meg az alábbiakban leírt feladatot!
2. Az elvárt szöveges indoklást tegyük az `LLVM\LLVM_HF.md` fájlba a repoban (hozzuk létre)!
3. Készítsünk egy **hw3-llvm** nevű **tag**-et az utolsó commitra!

## A feladat

A feladat egy kapott LLVM IR kódrészlet optimalizálása az LLVM `opt` eszközével.
A számozott kódrészletek a [Feladatok](./Feladatok) mappában a feladat bemenetei, a használandó bemenet sorszáma a Neptun kód alapján áll elő, az első számjegy a neptun első karaktere szerint:
* [A-M] -> Nincs
* [N-Z] -> 1

A második számjegy a második karakter szerint:
* [0-2] -> 0
* [3-6] -> 1
* [7-9] -> 2
* [A-D] -> 3
* [E-G] -> 4
* [H-K] -> 5
* [L-N] -> 6
* [O-R] -> 7
* [S-V] -> 8
* [W-Z] -> 9

Tehát például az N8ABCD neptun kód szerint a kapott bemenet az [in(12)](./Feladatok/in%20(12).ll) fájl.

## A megoldás menete

A cél megtalálni azt az LLVM optimalizációs pass-t, amely a legjobb optimalizáci(ók)ra képes a kapott kódrészleten.

A feladat legegyszerűbben [ebben az előkészített Compiler Explorer környezetben](https://godbolt.org/z/vcxxj8fqY) oldható meg.
A compiler explorer úgy van beállítva, hogy a gyakorlaton is bemutatott `opt` eszközt használja „fordítóként”, ezzel LLVM pass-ek futtatását lehetővé téve. 
A bemenet és kimenet is LLVM IR kód, ehhez nem szükséges változtatni a beállításokon.

A megoldáshoz használható az opt parancs help szekciója, ez [itt](./opthelp.txt) található.

Az egyszerűség kedvéért célszerű az alábbi passek közül választani:
- SROA (mivel csinál SSA-ra átalakítást) (`-p='sroa'`)
- ADCE (aggressive dead code elimination) (`-p='adce'`)
- LICM (loop invariant code motion) (`-p='licm'`)
- Loop unroll (`-p='loop-unroll'`)
- mem2reg (`-p="mem2reg"`)
- instcombine (`-p='instcombine'`)
- simplifycfg (`-p='simplifycfg'`)


## A megoldás leadandó része

Megoldásként a kimeneten megjelenő kódrészletet, 
valamint egy 1-2 mondatos indoklást/leírást kérünk, hogy miért 
tartjátok a választott optimalizációt a leginkább megfelelőnek,
és a tanultak közül mely optimalizáció(ka)t érte el az adott pass.
Ha úgy látjátok, hogy több pass is hasonló/ugyan annyira jó optimalizációhoz vezet, érdemes megnézni az optimalizációt végző részlépéseket, erre a gyakorlaton is bemutatott „Add” menüből elérhető `Opt pipeline` ablak használatával.

**Sok optimalizációra több pass is képes, ezért érdemes lehet többet is kipróbálni. Nem probléma ha egy adott pass nem jobb egyértelműen mint egy másik, viszont a kiadott kódrészletekben legalább egy a listában szereplő passek közül biztosan képes lesz látványos optimalizációra.**

A leadáskor a leírást kérjük a repó egy újonnan létrehozott `LLVM` mappájában egy `LLVM_HF.md` markdown fájlban készítsétek el, ha külön kódot csatolnátok, LLVM IR esetén a `.ll` kiterjesztést használjátok.

## Példa

Legyen a kapott kódrészlet a következő:
```
define i32 @myFunction(i32 %x) {
    %result = mul nsw i32 %x, 2 
    ret i32 %result
}
```

Ezt az alábbi linken elérhető (előre összeállított) környezetben
érdemes kipróbálni: [Compiler explorer](https://godbolt.org/z/dTGzr6qeb)

A keresett pass az ```instcombine``` (a fenti linken ezt már beállítottuk).
Az opt paramétere ez alapján ```-p='instcombine'```.


A példa esetén a kimenet, és az indoklás:
```
define i32 @myFunction(i32 %x) {
  %result = shl nsw i32 %x, 1
  ret i32 %result
}
```
A választott pass pedig az instcombine,
mivel ez képes a szorzást shift utasításra cserélni.

### Pontozás

A házi feladatra összesen 0-2 pont szerezhető, a házi feladat legalább 1 pont elérésével sikeresnek minősül. Az LLVM feladatra 1 pontot lehet kapni, ha a választott optimalizáció és az 1-2 mondatos indoklás helyes. Az [ANTLR](../ANTLR_HW/README.md) feladatra szintén 1 pontot lehet kapni.