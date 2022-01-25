### Cumulus: A Savings Algorithm 

An algorithm that saves 1p on the first day you start saving, 2p on the second day, 3p on the third day, etc until the end of the year. In 49 weeks, or 343 days you will have cumulatively saved £589.96 in time for Christmas.

INPUT | OUTPUT
------|-------
cumulus.save(today) | cumulus.balance == 0.01
2.times cumulus.save(today) | cumulus.balance == 0.03
3.times cumulus.save(today) | cumulus.balance == 0.06
343.times cumulus.save(today) | cumulus.balance == 589.96


#### Domain Model

* Class -> Cumulus
* Method -> .save(today=Date.new)
* Properties -> balance_saved, balance_available, dates_saved

