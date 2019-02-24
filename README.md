# WRC-Trading-Platform
Trading platform for wrc ownerships
## Inspiration
The inspiration comes for integrating the most disruptive technology to one of the major problems that mankind is facing or will face in future. Water Reuse Certificates(WRC) need to have an economic value, so people can buy and trade those certificate which will help the mankind for the greater cause of mankind.

## What it does
Industry will first register on the trading platform, and after the installations of the meter A and B is done, a Target in terms of percentage is assigned by the regulator. Values of A and B received at each hour are updated on Blockchain accordingly. A factor sum will be calculated according to the formula:          
If the sum is positive, then that amount of WRCs will be allocated to the Industry from the token contract. If it is negative, the user will have to pay that amount of deficit WRCs (which will make him buy WRCs from good performers and this will create economic value for WRC) in the 2-hour window, when the calibration of meters is being done on monthly basis. The contract would be reset if the Industry pays within the time limit and if he fails the contract will reset and the deficit would be paid from the deposited WRCs. Each Industry needs to deposit a minimum number of WRCs in the beginning during registrations. The deposit will be different based on the volume of the previous financial year. 


## How I built it
We built it using Ethereum blockchain, NodeJs, ExpressJs for server side programming and solidity for smart contract programs.

## Challenges I ran into
The major technical challenge was to build WRCs and have an economic value to it on the platform. 
Having a floating point value of WRCs based on the supply and demand. With a minimum floor price.

## Accomplishments that I'm proud of
We successfully developed algorithms to manage WRCs using less variables and minimum transactions for the issuance of WRCs which will cut off a significant transaction cost. Everything is on blockchain so no tampering of data can be done. Only the important parameters are stored which makes the blockchain lighter.

## What I learned
Learned to worked on one of the most unique problem statements and we did find a feasible and scalable solution.
## What's next for WRC Trading Platform
Trading algorithms to design production level trading engines, to match the demand and supply of tokens.

## PPT link:
https://docs.google.com/presentation/d/13TUXo1WNRE4Qf5WFdIpcB4WYBAbzqUmjxwcDYCRyaIs/edit?usp=sharing
