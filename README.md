# README

MOXIE

- Designed and coded by Hung Le
- Artwork from various magazines and illustrations from 1940s - 1960s magazines

This is a capstone project for Flatiron bootcamp.

This application is designed to be a concept for a different type of e-commerce business. While most e-commerce business work as a store, this app takes the concept of loot boxes and gacha mechanics in video games and tries to implement it into an e-commerce application. Users can buy tickets using points charged on their accounts in hopes of winning an item. Currently only the winner will receive an item, and others will not receive anything at all, but for future development, all users who buy tickets will win something (digital goods?).

====================================================================

Working functionalities of this build for the back-end:

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

Things to be added:

- buy and sell rating based on average of rating when users rate each other
- password encryption using Bcrypt
- various validations for security
