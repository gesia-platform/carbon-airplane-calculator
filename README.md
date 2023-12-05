# 🚗 AirPlane Carbon Footprint Calculator

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

## 📖 Overview
The Smart Contract-Based Footprint Calculator is a decentralized tool designed to estimate the carbon footprint associated with pete consumption. This smart contract operates on a blockchain platform and provides a straightforward way to calculate and retrieve carbon emission data from the blockchain.

## ✨ Features
**Calculate Carbon Footprint (Public)**: Users can calculate the carbon footprint from the set AirPlane carbon emission factor. This public function returns an estimate of the carbon footprint associated with the weight of the AirPlane.
```
calculateCO2ByAirPlane(isBusiness, distance, p, seat, k, averageFuelBurn)

true(isBusiness), 1000km(distance), 0.8(p), 100(seat), 0.6(k), 5.01(averageFuelBurn)
 - Scale by 10000(distance, p, k, averageFuelBurn)
 - calculateCO2ByAirPlane(true, 10000000, 80000, 6000, 50100)
 - 237474000000000000000 (in UI it should be divided by 18 decimals 237.474)
```

## 📝 How is it calculated?
The carbon emissions are calculated based on the emission factors and calculation methods referenced from [wikipedia](https://en.wikipedia.org/wiki/Fuel_economy_in_aircraft) and [aeroflot](https://www.aeroflot.ru/kr-ko/about/calculator_co2/method)

## 📚 Sources
- [wikipedia](https://en.wikipedia.org/wiki/Fuel_economy_in_aircraft)
- [aeroflot](https://www.aeroflot.ru/kr-ko/about/calculator_co2/method)

## 📄 License
This project is licensed under the [MIT License](LICENSE).