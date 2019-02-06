# WhiskeyVerse Capstone Project API

### How It Works
This is the API for WhiskeyVerse. A CSV file of whiskeys is seeded for the user to view. Once the user sign up and sign in, the user can browse the Whiskey List and add an item to a Favorites List and/or Wish List. In the Favorites List the user can view all the items that were added and delete an item or update the user score. In the Wish List the user can view all the added items and delete an item.

### Links
- Front End Repo: https://github.com/peterchang2/whiskeyverse-project-client
- Back End Repo: https://github.com/peterchang2/whiskeyverse-project-api
- Deployed Client: https://peterchang2.github.io/whiskeyverse-project-client/#/
- Heroku: https://smokeyverse.herokuapp.com/

### Install Instruction
1. Fork and clone this repository.
2. Create a new branch, training, for your work.
3. Checkout to the training branch.
4. Install dependencies with bundle install.
5. Run bin/rails server to run api on local

### Technologies
* Ruby on Rails
* PostgreSQL
* Heroku

### ERD
![ERD](https://i.imgur.com/YwW5A2g.jpg?1)

#### Authentication
| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/`    | `users#changepw`  |
| DELETE | `/sign-out/`           | `users#signout`   |

### Favorites
| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/favorites`           | `Favorites#create`|
| GET    | `/favorites`           | `Favorites#index` |
| GET    | `/favorites/:id`       | `Favorites#show`  |
| PATCH  | `/favorites/:id`       | `Favorites#update`|
| DELETE | `/favorites/:id`       | `Favorites#destroy`|

### Wishes
| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| GET    | `/wishes`              | `Wishes#index`    |
| GET    | `/wishes/:id`          | `Wishes#index`    |
| DELETE | `/wishes/:id`          | `Wishes#destroy`  |

### Thought Process and Planning
The process started with determining what to use for the back end infracture. For this application it makes sense to use Rails for the relational tables for the User and Whiskeys. First I generated scaffold for the Whiskey List and then seeded the CSV file into it. Then I generated scaffold for Favorites and Wish List with proper references and user_score column in Favorites List. All resources are set to ProtectedController so only authenticated user can view the proper resource.

### Future Implementations
Additional resources and custom user list may be implemented for future iteration.
