# Dokumentacja pracy na zajęciach i nie

## Podstawy pracy z silnikami gier wideo | wtorek, 21 paź 2025

1. Stworzenie directory *(ja swoje po prostu sklonowałem z Git'a)*.
2. Zapoznanie klasistów, przez wykładowcę, z UI Godota.

*Sprawdzić:*

- <https://thisisvini.com/aseprite-wizard/en/9.x-4/introduction/index.html>

## Metody level designu | środa, 22 paź 2025

1. Rozkładanie **TileSet**'u w programie **`Tiled`**.
   - Samo rozkładanie miało być w duchu designu poziomów **Goodboy Galaxy** (Goodboy Galaxy Limited, Rik Nicol, 2023).
2. Exportowanie poziomu (to dużo powiedziane) do directory z Godotem.
   - Stworzona mapka jest w folderze `pierwszy-projekt\maps`.

## Praca własna | niedziela, 26 paź 2025

1. Edycja **Project Settings**
   - Dostosowanie **Display > Window** (z włączonymi **Advanced Settings**) do wartości odpowiednich dla gry w pixel arcie.
   - W **General > Layer Names > 2D Physics** ustawienie warstwy 1 jako gracza, warstwy 2 jako świat.
2. Dodanie kamery śledzącej gracza.
   - *Smoothing dopier 28 pazia dodałem.*
3. Usunięcie TileSet'ów ze sceny, w celu poprawienia ich i rozłożenia ponownie, nadal tak samo jak w **Goodboy Galaxy**.

## Podstawy pracy z silnikami gier wideo | wtorek, 28 paź 2025

1. Edycja kodu poruszania się gracza.
   - Podstawy takie w sumie, czyli czym jest **const**, czym jest **var**.
   - Dodawanie komentarzy do kodu.
     - Czego nie wiedziałem to dwa hashe dodają komentarz do wewnętrznej dokumentacji (**F1** lub zakładka **Help**).
2. Rozkładanie kolajderów na scenie poziomu.
3. Dodanie kamery do sceny gracza.
   - Dodanie smoothing'u.
   - Wyjaśnienie czym jest "Dead zone".
   - Ustawienie Limit Camera2D, aby nie widzieć szarego tła.

## Metody level designu | środa, 29 paź 2025

1. Rozkładanie TileSet'u bez pomocy programu Tiled, przy pomocy Node'a TileMapLayer.
2. Dodawanie właściwości (w inspektorze i nie tylko) do TileMapLayer oraz TileSetów.
   - "Rysowanie" collider'ów na konkretnym kafelku, bez potrzeby rozkładania osobnego `CollisionShape2D` na scenie.
   - Custom Data Layers pomaga przypisywać odpowiednim kafelkom dany dźwięk.

## Podstawy pracy z silnikami gier wideo | wtorek, 28 paź 2025

1. Dodawania animacji cyklu chodzenia oraz idle do Player'a.
   - Collidery też można animować (np. PolygonShape)

## Praca własna | środa, 5 lis 2025

1. Dodanie platformy znikającej

## Metody level designu | środa, 5 lis 2025

Etapy level designu:

   1. Koncept.
   2. Makieta.
   3. Cel, zachęty, znaczniki.
   4. Scenariusz - czyli jakiś story np. enviromental story telling, czy worldbuilding, NIE wdrażamy ozdobników.
   5. Tło.
   6. Dekoracje

   **UWAGA!** Ziutki na zaliczeniu zazwyczaj pomijają wszystko poza 2, 3, 6. "Widać jak ktoś to pomija... najgorsze levele, z poprzednij lat, to te gdzie ktoś robi makietę poziomu i dekoracje." Tldr; po knur te graficy.
