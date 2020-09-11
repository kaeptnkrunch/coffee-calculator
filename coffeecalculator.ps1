#Begrüßung
Write-Host "
_________         _____  _____                             .__               .__          __                
\_   ___ \  _____/ ____\/ ____\____   ____     ____ _____  |  |   ____  __ __|  | _____ _/  |_  ___________ 
/    \  \/ /  _ \   __\\   __\/ __ \_/ __ \  _/ ___\\__  \ |  | _/ ___\|  |  \  | \__  \\   __\/  _ \_  __ \
\     \___(  <_> )  |   |  | \  ___/\  ___/  \  \___ / __ \|  |_\  \___|  |  /  |__/ __ \|  | (  <_> )  | \/
 \______  /\____/|__|   |__|  \___  >\___  >  \___  >____  /____/\___  >____/|____(____  /__|  \____/|__|   
        \/                        \/     \/       \/     \/          \/                \/                   
v1.0 made by Stephan Langenau `n" 

#Datum
$datum = Get-Date 
Write-Host "Heute haben wir den $datum `n"

# Hinweis
Write-Host "Hinweis: Dezimalstellen werden durch einen Punkt angegeben z.B. 0.10€"

# Abfrage Kaffee in Tassen
$Input1 = Read-Host "Gebe das Gewicht der Kaffeepackung in Gramm an"
$Input2 = Read-Host "Geb bitte den Preis für die Kaffeepackung in € an"
$Input3 = Read-Host "Geb bitte die Marge für den Preis pro Kaffee in € an"
$Input0 = Read-Host "Möchten Sie eine ganze Kanne Kaffee machen?"


# Beispielrechnung (1 Kanne Kaffee)
# x g Kaffee / 70g pro Portion = 2 L Kaffee / 10 = Mege Kaffees aus 2L Kaffee = Preis pro 200ml Tasse + 0,05€; 0,10€ Marge
# Beispiel: 500g(11,50€)/70g=7,14 Portionen (1,61€ 2L)/10 = 0,16€ pro 200ml + 0,05€; 0,10€ Marge (Bsp: 0,16€ + 0,10€ Marge = 0,26€ pro 200ml Tasse Kaffee)

# like Anfrage
if($Input0 -like "Ja")
{
    # Berechnung
    $calculation = ($Input1 / 70) 
    $calculation2 = ($Input2 / $calculation) / 10 + $Input3

    # Zeilenumbruch
    Write-Host "`n"

    # Ausgabe
    Write-Host "Mit dem Gewicht von $Input1 g erhälst du $calculation Kannen Kaffee"
    Write-Host "Der Preis pro 200ml Tasse Kaffee ist $calculation2 € mit einer Marge von $Input3 €"

} else {

    # Beispielrechnung (1 Tassee Kaffee)
    # 70g = 2L Kaffee/200ml = 10 Tassen Kaffee = 70/10=7g Kaffee pro Tasse

    # Input Tassen Kaffee
    $objForm.Controls.Add($objTextBox)
    $Input4 = Read-Host "Wieviele Tassen Kaffee möchten Sie machen?"
    
    # Zeilenumbruch
    Write-Host "`n"

    # Berechnung pro Tasse
    $calculation3 = (7 * $Input4)

    # Berechnung
    $calculation = ($Input1 / 70) 
    $calculation2 = ($Input2 / $calculation) / 10 + $Input3

    # Ausgabe Kaffee pro Tasse
    Write-Host "Für $Input4 Tassen Kaffee brauchen Sie $calculation3 g Kaffee"

    if ($Input4 -eq 10)
    {
        # Zeilenumbruch
        echo "Dann kannst du auch gleich eine ganze Kanne Kaffee mit 70g Kaffee machen!"
        
    } else { 
            Write-Host "`n"
            }
    
    # Ausgabe 2
    Write-Host "Mit dem Gewicht von $Input1 g erhälst du $calculation Kannen Kaffee"
    Write-Host "Der Preis pro 200ml Tasse Kaffee ist $calculation2 € mit einer Marge von $Input3 €"
}