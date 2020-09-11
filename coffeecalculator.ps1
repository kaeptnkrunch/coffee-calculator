# Greeting
Write-Host "
_________         _____  _____                             .__               .__          __                
\_   ___ \  _____/ ____\/ ____\____   ____     ____ _____  |  |   ____  __ __|  | _____ _/  |_  ___________ 
/    \  \/ /  _ \   __\\   __\/ __ \_/ __ \  _/ ___\\__  \ |  | _/ ___\|  |  \  | \__  \\   __\/  _ \_  __ \
\     \___(  <_> )  |   |  | \  ___/\  ___/  \  \___ / __ \|  |_\  \___|  |  /  |__/ __ \|  | (  <_> )  | \/
 \______  /\____/|__|   |__|  \___  >\___  >  \___  >____  /____/\___  >____/|____(____  /__|  \____/|__|   
        \/                        \/     \/       \/     \/          \/                \/                   
v1.0 made by Stephan Langenau `n" 

# Date
$datum = Get-Date 
Write-Host "Today we have $datum `n"

# Note 
Write-Host "Note: Decimal places are indicated by a point e.g. € 0.10"

# Query coffee in cups
$Input1 = Read-Host "Enter the weight of the coffee package in grams"
$Input2 = Read-Host "Please enter the price for the coffee pack in €"
$Input3 = Read-Host "Please enter the margin for the price per coffee in €"

# Break
Write-Host "`n"

# Note
Write-Host "Answears: yes or no"
$Input0 = Read-Host "Would you like to make a whole pot of coffee?"


# Example calculation (1 pot of coffee)
# x g coffee / 70 g per portion = 2 L coffee / 10 = amount of coffee from 2 L coffee = price per 200 ml cup + € 0.05; € 0.10 margin
# Example: 500g (11.50 €) / 70g = 7.14 servings (1.61 € 2L) / 10 = 0.16 € per 200ml + 0.05 €; € 0.10 margin (e.g. € 0.16 + € 0.10 margin = € 0.26 per 200ml cup of coffee)

# like query
if($Input0 -like "yes")
{
    # Calculation 1
    $calculation = ($Input1 / 70) 
    $calculation2 = ($Input2 / $calculation) / 10 + $Input3

    # Break
    Write-Host "`n"

    # Output 1
    Write-Host "With the weight of $Input1 g you get $calculation pots of coffee"
    Write-Host "The price per 200ml cup of coffee is $calculation2 € with a margin of $Input3 €"

} else {

    # Sample calculation (1 cup of coffee)
    # 70g = 2L of coffee / 200ml = 10 cups of coffee = 70/10 = 7g of coffee per cup

    # Input cups of coffee
    $Input4 = Read-Host "How many cups of coffee do you want to make?"
    
    # Break
    Write-Host "`n"

    # Calculation per cup
    $calculation3 = (7 * $Input4)

    # Calculation 2
    $calculation = ($Input1 / 70) 
    $calculation2 = ($Input2 / $calculation) / 10 + $Input3

    # Ausgabe Kaffee pro Tasse
    Write-Host "For $Input4 cups of coffee you need $calculation3 g of coffee"

    if ($Input4 -eq 10)
    {
        # Break
        echo "Then you can make a whole pot of coffee with 70g of coffee!"
        
    } else { 
            Write-Host "`n"
            }
    
    # Output 2
    Write-Host "With the weight of $Input1 g you get $calculation pots of coffee"
    Write-Host "The price per 200ml cup of coffee is $calculation2 € with a margin of $Input3 €"
}