(English version available [here](https://github.com/bmeaut/ModellalapuSzoftverfejlesztes/blob/master/homework/homework_05/readme-en.md).)

# Mintaillesztés

A házifeladat során a Refinery keretrendszerben elérhető gráfmintaillesztő nyelvet fogjuk használni. A házi feladat a 6. laborra épít. A feladat során a cél pár egyszerű modell-lekérdezés megfogalmazása lesz.

## Előkészületek
-	Ismerkedjünk meg a Refinery-ben elérhető mintanyelvvel: https://refinery.tools/learn/language/predicates/
-	A laborhoz szükséges fejlesztőkörnyezet elérhető online webes editorban: https://refinery.services/
-	Töltsük le a [kiindulási állapotot](https://github.com/bmeaut/ModellalapuSzoftverfejlesztes/raw/master/homework/homework_05/social-empty.problem), és importáljuk a fejelsztőkörnyezetbe (`Open` ikon). A feladat elérhető az [alábbi linken is](https://refinery.services/#/1/KLUv_WAwF8UyABa3myYAsTYHFg5TuX21Oo0xE1uCrzxlVN92bB-YVlqkoyXzwVz63_vDC4oAjACSABN0F18MzzfcuTKubLg80XAbcsL1KzOtS7k_m_cUsuvIn6D-kVs1Qz33Ny-u_EYxG87syZZP6LT_OxqHPOVaPqc-yRGA3Iks5d6l26rfGb7oLaDryfH7Im88xZ893YQs_UKyphf-qZNY4giH3IFABBzn7cQY7X24gIDjRDTrMAgIoOvnMpe35IhxAb0WUvsV0Eoyw_MV0Oc-ltMqOBWLQkJut2LeDD-Xp0sr3bRyK83Dmj7c1fRerp_ukpO9GMxG4giR6CqJiOiqqW_lKZZLUW561U7zaVtauFItfyD0sOFrofGymusFdA7TTsovZri5skxwO2MXJnSfdrqWizEpxh7q93Ko0sY13pLKnhedm8unlVrNa-v0Eig6kQfkgQC8X0apndpijUUez4qO0y8zVz5mLFxg72ioMLMYWk3-3EpqxTj2SZuEjTTXvXidGTEyO2ykhgsddIfx01UTb636E3P12CdJJzkemd_0XCVNJDTDbY1Oci01Ugv5fTqEyM6nlEFAwR8rPo7oaLiaB6zpPzZQT7HjKym3IhQ_t1Vy00qLWjCasYdOMgSRB2tsNbbWitiSsNXYYmwt1hoUVSiUCYsgCWtsQf5AHCxqbEVQa2ytAUplQokmkqhJWFvsk0ULkjS2WgVilMqaUFg0YatFkGP15BY11tiCHMvh6MkPzUICgowFcCJN0qBKT4YGIEapTCjRhE2GLqB7fySTnxY1JmlsQdQf9mfFP9CTdvpKUHvChqUsFldcjEkaWxA0AFUokyiCA6iSYw0RjchIUpJMc0IKGhbmkRhrHhKg4jSJkxSCjDhlRIRoZkFBS20HhFdPbQ56whlVBJ2Vl263pA5CwT_1X5gLGLHixirHzECULo8i4FdVlVClElONmmQVaqxKUBVYCcJ2v4gKIJWxOeyR1svCLOOcvZpobTP7Ic2yF3AF2NjGZswkmM9xxtxTVrZY_c99iINwVmEGGnJAGUiIXGXC5lI_n0y9NWaylJYZQOUqKWbBiznkAPpauMpnlmZYwWgCJDOLLkjeecE_ZCmINLzkULa8BnyqVpDxHRHE8gL5sGxORpCRy44q1VmDj8sW3d9fp3jcGMLnIYoNwUnmOGi75jafO6bdYmzP2AjX8hhyiKo3SXg5gywwcX268ol7SLdUHkOJ9lLs8Y1qt56QlzCoVEBxG68y0_8-4fkRbBttHFSAlaUA6bEnaSFSEiZPS5HR6_d5Y3oIzX_Arv1qCafFJiqJaCMYa4no9xGUzceGHTqIJMoUnTf5MKPRkX6fcLkkqgOJKWVaLqSXoiZZqwD4zTCSQ6eAxmrilvMySHwcH7lHqEugCXAoXdJ7JVujve5Xtpr9C9wtY3FzeIV48GDKm2AoRmyt5ssUvVwhBsARYkN0iWAihvWff1QM8Tn0qfXUWhRmzlUVjEGCFKU33tgM4yoGiiVvhjFYuRnmGbHDLRu0kAU-Nca0LVnMhDYO-VbLpeZpzm1fw0L6YdDZcbOYVOKTVR08ofAZ7OTCmSIpoZKwSpiUbMcjto_ZGqxd3_dIqUQjPzG8sTbFhj2_VzLAgjzTT5CpGwV6Irxt6cfVSKxMjn4tOF56hb6jynEgEcZkNv4h6NXiIa89Lkjg1iHkXyv35qVgWypFiJaem0znRE7lV3dCbq3xWLNYXUvS24Fh6bcELBzPRvsa8FwDIMfwQFrcU3zECtY6cDwqsLLVAIDlbh-3kq3_FGgx4rvLhDbc_gq2LmRrLZ7hUgK4SlnkxQGoWPOO1jGClu0EtRI2YmzoOA9cnE5vgEwnKV20swFK_AmRN6oXgFXqqYTAyEE_QT3Flv8hj44xlbQlKXwgRY2YpOqcElgmLnNwvSMJAnS0oFfNoCmEasdTB6z3nIj3mfQ6Ha2v2A6EeEbTG_FHLKhAGiiFhee7Ehc-LjkFHx-ZNHRIlcIb2XIgT9n9oRVfyAChe1QZ6M8ehCbluz8Z10ybnd4m2MIxJekhcNz0JLIaVoXh4ksxwy9zCpwwwtkU3QycyEQl96rQKjafeNIGcYDjfETWys7LuDyHiAR76zDJoO8LckyRZLVrsxOdZ57DBGG3g08QCo8wzVtU8dju4oSiAjg-k1Y=).
-	Ne felejtsük el időnként lokális gépre menteni a probléma fájlunkat (`Save` vagy `Save as ...` gomb, `CTRL+S`).

## Feladat felépítése
### Feljesztőkörnyezet
A környezet 3 nézetre bontható, ahol a nézetek a középen felül elhelyezkedő gombokkal kapcsolhatóak ki és be.
-	**Code**: ez a nézet jeleníti meg a forráskódunkat. A házi feladat során ebben a nézetben szerkesztjük a megoldásunkat.
-	**Graph**: ez a nézet jeleníti meg a modellünket. A nézet sokat segíthet a házi feladat megoldásában, itt lehet ugyanis megnézni, hol különbözik a megoldás az elvárt viselkedéstől. A „filter panel” (bal felül) segítségével ki- és bekapcsolhatjuk különböző elemek megjelenítését. A nézet az 1 és 2 elemű relációk megjelenítését támogatja, magasabb aritású relációkat (például 2-nél több paraméteres predikátumokat) csak táblázatos nézetben lehet megjeleníteni.
-	**Table**: ez a nézet jeleníti meg a modellünk különböző relációit táblázatos formában. A Value érték mutatja az adott sor igazságértékét, ami a házi feladat során 3 értéket vehet fel:
      * `true`: igaz állítás.
      * `error`: olyan állítás, ahol a házi feladat megoldása és az elvárt érték ellentmondóak (pl. egyik igaz, másik hamis az adott sorra). *A házi feladat során ezeket az error sorokat kell majd eltüntetni.*
      * `false`: ha egy sor nincs a táblázatban, akkor azt hamis állításként értelmezzük.

### Forrásállományok
A feladatot tartalmazó problem állomány különböző részekből épül fel:
-	**Metamodel**: ez leírja a modellünkben található nyelvi elemeket. A metamodell leírása követi az XCore nyelv leírását (és nagyban hasonlít a C vagy Java alapú nyelvek osztáydefinícióira is). *Ezt a részt nem kell változtatni a feladat megoldása során.*
-	**Predicates**: itt találhatóak a modellekre illeszthető minták (predikátumok) definíciói. Jelen esetben minden predikátum definíciója egy egyszerű false; a minták sose illeszkednek. *A feladat során ezt a részt kell változtatni.* A minták fölött kommentben van megfogalmazva az elvárt viselkedése a feladatoknak.
-	**Expected result**: Ez a rész írja le, hogy helyes implementáció esetén hol várjuk el a minták illeszkedését. *Ezt a részt nem kell változtatni a feladat megoldása során.*
-	**Instance model**: Itt található egy példa modell definíciója. A declare rész bevezeti az objektumokat, a pozitív állítások típusokat és éleket vezetnek be (pl. `Person(person1).`), a többi állítás pedig hamisra állítja a modell többi értékét. A modell szándékosan tartalmazhat fura részeket, hiszen pont olyan minták írását akarjuk tesztelni amely képes ezen értelmetlen részek felfedezésére. *Ezt a részt nem kell változtatni a feladat megoldása során.*

## A feladat leírása
A feladat során az alábbi lépéseket kell elvégezni mindegyik predikátummal:
-	Elolvassuk a predikátum fölötti specifikációt.
-	Módosítjuk a predikátum definícióját (a `<->` utáni részt), hogy megvalósítsa a kívánt specifikációt. A predikátum nevét, paraméterlistáját ne változtassuk!
-	Ellenőrizzük a **Table** nézetben a predikátumok illeszkedéshalmazát:
    * Ha nincs `error`-al jelzett sor, akkor egyetértünk a megoldásban.
    * Különben az `error`-al jelzett sor mutatja az eltérést az elvárt viselkedés és a jelenlegi megvalósítás között.

Új predikátumot természetesen be lehet vezetni, törölni viszont nem lehet. Kérjük, hogy a fájl struktúráján ne változtasson! A feladat során a **GENERATE** funkció használata nem szükséges (azt az automatikus javításhoz használjuk majd).

A feladat végeztével mentsük a megoldásunk (`social.problem` néven), töltsük fel githubra, majd tag-eljük meg a megoldásunk `hw5-gt`-vel!
