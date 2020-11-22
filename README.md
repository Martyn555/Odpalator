*MCServerlauncher* to idealne narzędzie dla własnego hosta serwerów minecraft na systemie Windows.

MCServerlauncher. Odpalator należy umieścić w katalogu z silnikiem gry i wywołać z konsoli lub innego programu wsadowego, używając odpowiednich parametrów.

INSTRUKCJA: Aby poprawnie używać odpalatora użyj polecenia call odpalator [argument 1] [argument 2] [argument 3] [argument 4] [argument 5] [argument 6] Argument 1 odpowiada za wybór w menu.

Opcje dla argumentu 1: 0 - brak wyboru 1 - start serwera 2 - zmiana ustawień 3 - wyświetlenie instrukcji

Resztę argumentów uzupełnia się wpisując [opcja argumentu]@[wartość]. Aby pozstawić pusty argument zastąp go samym znakiem "@". Jeśli jakiś argument zostanie pozostawiony pusty - ustawienie zostanie wczytane z zapisanych ustawień.

Opcje dla argumentów 2 - 6 shutdown - awaryjne wyłączenie komputera po zakończeniu pracy serwera copy - kopia zapasowa RAM - przydział pamięci ram name - nazwa serwera theme - motyw konsoli source - silnik serwera

Przykłady użycia: Przykład 1: call odpalator 1 shutdown@60 RAM@1 copy@f:\ source@spigot-1.16.3 theme@ciemny Przykład 2: call odpalator 0 RAM@1 theme@ciemny shutdown@60 @ @

Odpalator przeznaczony jest dla bardziej, jak i mniej zaawansowanych użytkowników przez możliwość zmiany ustawnień bez edycji kodu, a za pomocą menu wyboru. Dodatkowe funkcje - takie jak zapasowa kopia i awaryjne wyłączenie sprzętu ochronią dane serwera przed potencjalną utratą.
