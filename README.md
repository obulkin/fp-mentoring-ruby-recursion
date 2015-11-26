# Recursive Friends!

Practice recursion and parsing through complex data structures.
- recursion
- data structures


### Requirements
- Ruby


### Installation
```
git clone git@github.com:KaoruDev/mentoring-recursive-friends.git
bundle install
```


### Objective

Figure out how to traverse down the tree to either:
 - collect a specific node
 - count nodes of a certain type

### Examples
Find Tom Hanks in this data set:
```
{
  "friends": [
    {
      "name": "Laura Halvorson I",
      "friends_count": 3,
      "company_name": "Sonair",
      "friends": [
        {
          "name": "Salvador Rice",
          "friends_count": 0,
          "company_name": "Job",
          "friends": []
        },
        {
          "name": "Dr. Percy Wilderman",
          "friends_count": 0,
          "company_name": "Tampflex",
          "friends": []
        },
        {
          "name": "Kenya Cartwright",
          "friends_count": 1,
          "company_name": "Stronghold",
          "friends": [
            {
            "name": "Tom Hanks",
            "friends_count": 0,
            "company_name": "Sub-Ex",
            "friends": []
            }
          ]
        }
      ]
    }
  ]
}
```


