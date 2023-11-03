#Inkluderer en drive som gir meg flere funksjoner
include shared-gdrive(
"dcic-2021",
"1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")

include gdrive-sheets
include data-source
ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"
kWh-wealthy-consumer-data =
load-table: komponent, energi
source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
      #sanitize gjør alle verdier i kolonne energi om til string
    sanitize energi using string-sanitizer
end
#printer ut tabellen
print(kWh-wealthy-consumer-data)

fun energi-to-number(str :: String) -> Number:
  # gjør string om til tall i kolonne energi
  cases(Option) string-to-number(str):
    | some(a) => a
    | none => 0
  end
where:
  #kalibrering
energi-to-number("") is 0
  energi-to-number("48") is 48
end
#oppdaterer en ny tabell med endringene gjort i funksjonen over
transformed_new_table = transform-column(kWh-wealthy-consumer-data,"energi",energi-to-number)

#printer ut den nye tabellen
print(transformed_new_table)

#en beregning som beregner hvor mye bilenergi (kwh/dag) en vanlig nordmann bruker, tall er hentet fra google for å få nøyaktighet selv om det ikke trengs. Derfinerer to variabler inni parantesen i funksjonen som brukes  beregningen. Og når man skal regne ut så gir man de verdier , eks: car_energy_per_day(distance-per-day, distance-per.liter) Disse to har jeg allerede gitt en verdi som gjør at beregningen funker. 
fun car_energy_per_day(distance-travelled-per-day, distance-per-unit-of-fuel):
  energy-per-unit-of-fuel = 10
  
  (distance-travelled-per-day / 
    distance-per-unit-of-fuel) * 
  energy-per-unit-of-fuel
end 
#legger inn verdier for lengde kjørt hver dag og hvor langt man kommer per liter
distance-per-day = 35
distance-per-liter = 11
#regner ut den totale energien som blir brukt ved å summere det som er i tabellen (0), og den nye funksjonen vår som beregner hvor mye energi som blir brukt. Deretter printer jeg ut svaret.
total_car_energy_per_day = sum(transformed_new_table,"energi") +  car_energy_per_day(distance-per-day, distance-per-liter)
print(total_car_energy_per_day)


fun car-energi-to-number(str :: String) -> Number:
  # lager ny transformed tabell etter at jeg regnet ut hvor mye kwh/dag en nordmann bruker på bil hver dag
  cases(Option) string-to-number(str):
    | some(a) => a
    | none => car_energy_per_day(distance-per-day, distance-per-liter)
      
  end
where:
energi-to-number("") is 0
  energi-to-number("48") is 48
end
#lager ny oppdatert tabell
transformed_new_table2 = transform-column(kWh-wealthy-consumer-data,"energi",car-energi-to-number)

print(transformed_new_table2)

bar-chart(transformed_new_table2, "komponent", "energi")
