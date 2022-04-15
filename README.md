# MOXIE

> MOXIE - Capstone project for Flatiron bootcamp.

## Table of contents

1. [General info](#general)
2. [Project Demo](#project)
3. [Technologies](#technologies)
4. [Features](#features)
5. [To Be Added](#to-be-added)
6. [Contact](#contact)

<a name="general"></a>

## General info

- Designed and coded by Hung Le
- Artwork from various magazines and illustrations from 1940s - 1960s magazines

This application is designed to be a concept for a different type of p2p e-commerce business. While most e-commerce business work as a store, this app takes the concept of loot boxes and gacha mechanics in video games and tries to implement it into an e-commerce application. Users can buy tickets using points charged on their accounts in hopes of winning an item. Currently only the winner will receive an item, and others will not receive anything at all, but for future development, all users who buy tickets will win something (digital goods?).

<a name="project"></a>

## Project Demo

<div align="center">
<kbd>
<img src="./moxie-screenshot.png">
</kbd>
</div>

<div align="center">
<kbd>
<img src="./moxie-screenshot2.png">
</kbd>
</div>

<a name="technologies"></a>

## Technologies

Tools and libraries used:

### Frontend Development

- React.js - ^17.0.2
- GreenSock (GSAP) - ^3.9.1
- FUSE.JS - ^6.4.6
- Moment.js - 2.29.1

### Backend Development

- Ruby-on-Rails

<a name="features"></a>

## Features

- Basic CRUD functionality
- Table association from users to products
- Validation to ensure no invalid data is input into the database
- Serialization so user passwords arent sent to the front end
- New users are able to create accounts and log in (authentication is a work in progress)
- (work in progress) Functionality for users to remain logged in even when page is refreshed (currently using localStorage on react but it works)
- Users can charge points. For validations, each charge button has been embedded with an ID and a value so users cannot change how much they are able to charge besides a set amount

When users buy tickets, it will update user informations such as:

- history of amount of tickets bought
- amount of points users have in their wallets will be spent
- tickets cannot be bought if user does not have enough points
- which users currently hold tickets for items
- logic for dividing the total price by the total amount of tickets
- randomization logic to determine who wins the product when finished selling
- points sent to seller when product is finished selling
- points refunded to buyers if seller decides to delete a product

<a name="to-be-added"></a>

## Tools and libraries used

- Verified sellers title should only be held if seller rating is over 4.5
- Websocket for winner and seller to communicate
- Add "delivered" and "received" before seller's points are added to their account

<a name="contact"></a>

## Contact

- Name: Hung Le
- GitHub: https://github.com/The-Orange-Dot
- LinkedIn: https://www.linkedin.com/in/hung-le-fullstack/
