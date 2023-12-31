// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CarbonAirPlaneCalculator {
    uint256 public passengerCo2Emission = 31600; // scaled by 10000 개별 승객 CO2 배출량 (3.16)

    // @param isBusiness : true or false
    // @param distance : scaled by 10000 (for ex : 1000km -> 10000000)
    // @param p (pax/tot) : scaled by 10000 (for ex : 0.6 -> 6000)
    // @param seat
    // @param k (pax/seat) : scaled by 10000 (for ex : 0.8 -> 8000)
    // @param averageFuelBurn : scaled by 10000 (for ex : 5.01 -> 50100)
    // @return  CO2 emission by airplane in (18 decimals);
    function calculateCO2ByAirPlane(bool isBusiness, uint256 distance, uint256 p, uint256 seat, uint256 k, uint256 averageFuelBurn) public view returns (uint256) {
        uint256 classType = 1;
        if (isBusiness) {
            classType = 2;
        }
        uint256 result = (((classType * averageFuelBurn * passengerCo2Emission * distance * p * 10e18) / seat) / k) / 10e12;
        return result;
    }
}
