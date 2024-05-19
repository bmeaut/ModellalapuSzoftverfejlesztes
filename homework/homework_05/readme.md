(English version available [here](https://github.com/bmeaut/ModellalapuSzoftverfejlesztes/blob/master/homework/homework_05/readme-en.md).)

# Mintaillesztés

A házifeladat során a Refinery keretrendszerben elérhető gráfmintaillesztő nyelvet fogjuk használni. A házi feladat a 6. laborra épít. A feladat során a cél pár egyszerű modellekérdezés megfogalmazása lesz.

## Előkészületek
-	Ismerkedjünk meg a Refinery-ben elérhető mintanyelvvel: https://refinery.tools/learn/language/predicates/
-	A laborhoz szükséges fejlesztőkörnyezet elérhető online webes editorban: https://refinery.services/
-	Töltsük le a [kiindulási állapotot](https://github.com/bmeaut/ModellalapuSzoftverfejlesztes/raw/master/homework/homework_05/social-empty.problem), és importáljuk a fejelsztőkörnyezetbe (`Open` ikon). A feladat elérhető az [alábbi linken is](https://refinery.services/#/1/KLUv_WD1FiUyAOY1mCYQrzYHBohXuXm1eolBE1vOCDyIV-4-w3pQ_bQY0q40uYkAAAWUCoQAiwCOABedm8unlVrNa-v0CbqKL4bnG-5cGVc2XI5ouA354PqVmdal3J_NewrZdeRPUP_IrZqhnvubF1d-o5gMZ_Zkyyd02v8djEOeci2fU5_kRB53IEu5d-m26neGL3oK6Hpy_L7IG0_xZ083IUuvkKzphX_qJIa4wR93Ho-I47ydGKO9DY9EAhFHLRi92EMnFXoppPYnoJVkhucnoM99LKdFcCaWBITcbsW8GX4uT5dWumnlVpqHNX24q-m9XD_dJSd7MZgNxA0g0VUQD9FVU9_KUyyXotz0qp3m07a0cKVa_jjo4cKXQuNlNdcK6BimnZRfzHBzZZng9sUmTOg-7XQt12JSiz3U7-VQpYxjvCWVPQMVyiSSQNGBOB7PA-D9Mkrt1BZrDOJ4VnScfpm58vEi4ZF9o6G25IhxMLMWWk3-3EpqxTT2SZuDjTTXvXidFzEyM2ykhgsddIfx01URb636E3Pl2CdJJzUemd_0XCVFHDTDbY1Oci01Ugv5fToDyM6nVEEAwR0rPo3Imr5jA_UUN76ScitC8XNbJTettDwSEAdrbDW21orYkrDV2GJsLdYaFFUolAmLIAlrbD3-PBosamxFUGtsLQFKZUKJJpKoSVhb7JNFC5I0tloFYpTKmlBYNGGrRVBj9eQWNdbYghqr0ejJDs3CgYGLBXAgTdKgSk-GBCBGqUwo0YRNhiqge38kk58WNSZpbEHUH_ZnxT_Qk3b6SlB7woWlLBZXXIxJGlsQJAAFggGokmMLEY3ISJKCZFoDIgoaGAaaGGMPEoDiNImTlIKMOEVEhGpmQUFLbQeEVUttDupBHVYED3WWZrehpUTNQWu2MEcxYlGMkyOVIJMyjwbkcyGExJVghjuiSC6JMzhDKLTSgu17ImpAJMZAPkNaLwszGE7h1WprN9mENws3hO6Bze0YQBjAXjwICCQOopuuebMPehDALMxASQ7oAQmRq3xs_arzSTyXZE6O0fK0Qq45xWS8MYfcQP-F42OYZYfNjiZDEryoNLf7F7QRrBzmGOM0ZOTX7J8uCjJ8Z-EB3yB_gDfHOXLMOMfjStbQ7bJ73fkfQwi8Rmf3QMqGwCNbjPh42bCfOLKd3RiesXnS0m7IhKoI_OBqBtk-cf1055MWT2epOG6J6nHa4Q3X7j4hRMKhFEMhT1mFSEv_0_NnsEg0PwiAupaCKLmP9Y-I0UqelaKSgt_hjfkQqv8Qu1bDmkgLikdEoU1jvBJhoM-3TBob9-OZ0wtKPuv10UWXK7c8MKhKSDr-lQIHr6xMPD1uudylysjNDlN2cZqwyD4LiDydhsmRLiQ2ArqURPH9ycqo0Q3pVuleMd6RsVg2QEQ-8AhlZprIkaLG9XVkLucDY-4ocg-YBbRnb1Wf4sWCrN43ZYUXLZfTqCghm5PYxNKjd3XpOIZBoe73ABhgcxVWGY2PRha7yDT4oHjxrKbQCzwbmpe_9efluap5wxrzuehFlv4sV_FwScueDnyGcjLCu8MFZ7iw4ZjEt4Ox8Bb6-uopTbbRmQ3xxIWrnzhe2cX_xTaIliv2uEN7Xs3qx32cLFkjN3fG8nGpmS89nUAOKhHm4j1CuUmYYQzg3f1tEEUsTe36r6Z692PxTog-iiGSMd6dmUkYdUDgm0rpz8BobOAjtuU797IWfrZvILyf_PBOEWy_1IgRvhfX6JyPhmvSgxkwjkViadMFLHTE11obgZhJviZ_MKWyDfwH1hIbchP0DwiN2plkr1nlaeef-ZFhanD45B00g8K4cMmLfg00xJ_ie6PwAovKLJV0keQikiCH4rbpIS1kpzSH0dMMFS9Wc1MiyARzTq7XJOGhDxRUz4wqhRDqmOuAUKVz9D7LW_ejnQrbEYvnNb2ffwoFodWArXCsfAB5yexyR2C7JAOh41opuMj2AnlmRD-g8CaOqO7DS90wi3mb1Ny9FLhm2mwrN-WVjqmQnqDGjGcnK1f1movVxZxfZrI44cX5KbrBnwmJkqyq5erATGFy7OT63UmDcsO-wLgmh2zCqOVjysDwRzlGSQqxcbETvDehZQIgbipIAAqPN83TVFZs53DCJ0wPgLMV).
-	Ne felejtsük el időnként lokális gépre menteni a probléma fájlunkat (`Save` vagy `Save as ...` gomb, `CTRL+S`).

## Feladat felépítése
### Feljesztőkörnyezet
A környezet 3 nézetre bontható, ahol a nézetek a középen felül elhelyezkedő gombokkal kapcsolhatóak ki és be.
-	**Code**: ez a nézet jeleníti meg a forráskódunkat. A házi feladat során ebben a nézetben szerkesztjük a megoldásunkat.
-	**Graph**: ez a nézet jeleníti meg a modellünket. A nézet sokat segíthet a házi feladat megoldásában, itt lehet ugyanis megnézni, hol különbözik a megoldás az elvárt viselkedéstől. A „filter panel” (bal felül) segítségével ki- és bekapcsolhatjuk különböző elemek megjelenítését. A nézet a 1 és 2 elemű relációk megjelenítését támogatja, magasabb aritású relációkat (például 2-nél több paraméteres predikátumokat) csak táblázatos nézetben lehet megjeleníteni.
-	**Table**: ez a nézet jeleníti meg a modellünk különböző relációit táblázatos formában. A Value érték mutatja az adott sor igazságértékét, ami a házi feladat során 3 értéket vehet fel:
      * `true`: igaz állítás.
      * `error`: olyan állítás, ahol a házi feladat megoldása és az elvárt érték ellentmondóak (pl. egyik igaz, másik hamis az adott sorra). *A házi feladat során ezeket az error sorokat kell majd eltüntetni.*
      * `false`: ha egy sor nincs a táblázatban, akkor azt hamis állításként értelmezzük.

### Forrásállományok
A feladat tartalmazó problem állomány a különböző részekből épül fel:
-	**Metamodel**: ez leírja a modellünkben található nyelvi elemeket. A metamodell leírása követi az XCore nyelv leírását (és nagyban hasonlít a C vagy Java alapú nyelvek osztáydefinícióira is). *Ezt a részt nem kell változtatni a feladat megoldása során.*
-	**Predicates**: itt találhatóak a modellekre illeszthető minták (predikátumok) definíciói. Jelen esetben minden predikátum definíciója egy egyszerű false; a minták sose illeszkednek. *A feladat során ezt a részt kell változtatni.* A minták fölött kommentben van megfogalmazva az elvárt viselkedése a feladatoknak.
-	**Expected result**: Ez a rész írja le, hogy helyes implementáció esetén hol várjuk el a minták illeszkedését. *Ezt a részt nem kell változtatni a feladat megoldása során.*
-	**Instance model**: Itt található egy példa modell definíciója. A declare rész bevezeti az objektumokat, a pozitív állítások meg típusokat és éleket vezetnek be (pl. `Person(person1).`), a többi állítás meg hamisra állítja a modell többi értékét. A modell szándékosan tartalmazhat fura részeket, hiszen pont olyan minták írását akarjuk tesztelni amely képes ezen értelmetlen részek felfedezésére. *Ezt a részt nem kell változtatni a feladat megoldása során.*

## A feladat leírása
A feladat során az alábbi lépéseket kell elvégezni az predikátummal:
-	Elolvassuk a predikátum fölötti specifikációt.
-	Módosítjuk a predikátum definícióját (a `<->` utáni részt), hogy megvalósítsa a kívánt specifikációt. A predikátum nevét, paraméterlistáját ne változtassuk!
-	Ellenőrizzük a **Table** nézetben a predikátumok illeszkedéshalmazát:
    * Ha nincs `error`-al jelzett sor, akkor egyetértünk a megoldásban.
    * Különben az `error`-al jelzett sor mutatja az eltérést az elvárt viselkedés és a jelenlegi megvalósítás között.

Új predikátumot természetesen be lehet vezetni, törölni viszont nem lehet. Kérjük, hogy a fájl a struktúráján ne változtasson! A feladat során a **GENERATE** funkció használata nem szükséges (azt az automatikus javításhoz használjuk majd).

A feladat végeztével mentsük a megoldásunk (`social.problem` néven), töltsük fel githubra, majd tag-eljük meg a megoldásunk `hw5-gt`-vel!
