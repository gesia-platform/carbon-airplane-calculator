# 🛩️ AirPlane Carbon Footprint Calculator

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

## 📖 Overview
The Smart Contract-Based Footprint Calculator is a decentralized tool designed to estimate the carbon footprint associated with pete consumption. This smart contract operates on a blockchain platform and provides a straightforward way to calculate and retrieve carbon emission data from the blockchain.

## ✨ Features
**Calculate Carbon Footprint (Public)**: Users can calculate the carbon footprint from the set AirPlane carbon emission factor. This public function returns an estimate of the carbon footprint associated with the weight of the AirPlane.
```
calculateCO2ByAirPlane(isBusiness, distance, p, seat, k, averageFuelBurn)

true(isBusiness), 1000km(distance), 0.8(p), 100(seat), 0.6(k), 5.01(averageFuelBurn)
 - Scale by 10000(distance, p, k, averageFuelBurn)
 - calculateCO2ByAirPlane(true, 10000000, 8000, 100, 6000, 50100)
 - 237474000000000000000 (in UI it should be divided by 18 decimals 237.474)
```

## 🚀 Smart Contract Deployment Information

The Smart Contract-Based Carbon Footprint Calculator has been deployed on the Gesia Chain. Below are the deployment details:

### Calculator Contract

- **Contract Address**: 0xd8bd5B6e36f0500357f33c71d3483446db903f2B
- **Transaction Hash**: 0xc8037e12bd394c0ed5c4ac842e8b4ece113eeabaf061002ddcfdd83bc5c29c0e

You can verify the deployment of the Calculator Contract by checking the contract address and transaction hash on [Gesia Explorer](https://explorer.gesia.io). Here are the links for your convenience:

- [Calculator Contract on Gesia Chain](https://explorer.gesia.io/address/0xd8bd5B6e36f0500357f33c71d3483446db903f2B)

## 📝 How is it calculated?
The carbon emissions are calculated based on the emission factors and calculation methods referenced from [wikipedia](https://en.wikipedia.org/wiki/Fuel_economy_in_aircraft) and [aeroflot](https://www.aeroflot.ru/kr-ko/about/calculator_co2/method)

The following formula is the essential formula of Carbon Footprint Calculator.
``` plain
# emission factor of individual passenger: 3.16
# T(tot): Total payload transport fuel consumption(Average Fuel Burn x range)
# P(pax/tot): Ratio of passenger weight to total payload weight
# N(seat): Total number of seats
# K(pax/seat): Ratio of seats occupied during flight

emission factor of airplane(kgCO2/kg) x is business class(true: 2, false: 1) x Average Fuel Burn(kg/km) x range(km) x P(pax/tot) ÷ (N(seat) x K(pax/seat))
```

Please refer to the [Link](https://docs.google.com/spreadsheets/d/1Ux_1j0GeKGeHm8ODT-M-Hr23sCayQYw70shNw2le0Bs/edit#gid=1445027139) for more detailed info.

## 📚 Sources
- [wikipedia](https://en.wikipedia.org/wiki/Fuel_economy_in_aircraft)
- [aeroflot](https://www.aeroflot.ru/kr-ko/about/calculator_co2/method)

## 📄 License
This project is licensed under the [MIT License](LICENSE).
