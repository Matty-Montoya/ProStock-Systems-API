# ProStock Systems API

 * [Prostock Systems Deployed Site](http://mmontoya.me/Prostock-Systems-Client/)


Pro[stock] Systems is a full-stack application that allows registered users to be able to keep track of their inventory of parts, specifially repair parts of any kind.

I made this application with the intent of helping my previous employer with their in-store inventory of repair parts. Keeping a record of specific parts will cut costs

![alt text](https://i.imgur.com/D0PbLl5.png)

---

## Technologies Used
  * Ruby
  * Ruby on Rails
  * Heroku
  * Atom Editor
  * Terminal
    - Terminal Commands
      - bin/rails server
      - bin/rails db:drop
      - bin/rails db:create
      - bin/rails db:migrate
      - bin/rails generate migration
      - bin/rails generate scaffold
  * Google Chrome
  * Laptop

---

## Installation
  1. Fork and clone this repository.
  2. Change into a new directory.
  3. `bunlde install` dependencies.
  4.  Go to [`README.md`](README.md) and review information.

---

## Pro[Stock] Systems Client Links
* [ProStock Systems Client Repo](https://github.com/Matty-Montoya/Prostock-Systems-Client)
* [ProStock Systems Deployed Link](http://mmontoya.me/Prostock-Systems-Client/)

___

## Pro[Stock] Systems API Links

* [ProStock Systems Github Repo](https://github.com/Matty-Montoya/ProStock-Systems-API)
* [ProStock Systems Heroku Link](https://prostock-systems.herokuapp.com/)

---

## Entity Relationship Diagram

  Here you'll notice the entity relational diagram that showcases what I relationships between tables that I wanted to create. A user would have many collections of which would in turn have many parts. This would allow the user to keep track of parts based on their collections.

  ![alt text](https://i.imgur.com/hfaXv7S.jpg)

---

## Authentication

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password`     | `users#changepw`  |
| DELETE | `/sign-out`        | `users#signout`   |

#### POST /sign-up

Request:

```sh
curl http://localhost:4741/sign-up \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'
```

```sh
scripts/auth/sign-up.sh
```

Response:

```md
HTTP/1.1 201 Created
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 1,
    "email": "example@email.com"
  }
}
```

#### POST /sign-in

Request:

```sh
curl http://localhost:4741/sign-in \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'"
    }
  }'
```

```sh
scripts/auth/sign-in.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "user": {
    "id": 1,
    "email": "example@email.com",
    "token": "BAhJIiVlZDIwZTMzMzQzODg5NTBmYjZlNjRlZDZlNzYxYzU2ZAY6BkVG--7e7f77f974edcf5e4887b56918f34cd9fe293b9f"
  }
}
```

#### PATCH /change-password

Request:

```sh
curl --include --request PATCH "http://localhost:4741/change-password" \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'
```

```sh
scripts/auth/change-password.sh
```

Response:

```md
HTTP/1.1 204 No Content
```

#### DELETE /sign-out

Request:

```sh
curl http://localhost:4741/sign-out \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"
```

```sh
scripts/auth/sign-out.sh
```

Response:

```md
HTTP/1.1 204 No Content
```
---

## Parts

| Verb | URI Pattern | Controller#Action |
|------|-------------|-------------------|
| GET  | `/parts`    | `parts#index`     |
| POST  | `/parts`   | `parts#create`   |
| PATCH | `/parts/:id`| `parts#update`   |
| DELETE | `/parts/:id` | `parts#destroy`|

#### GET /parts

Request:

```sh
curl http://localhost:4741/parts \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"
```

```sh
scripts/parts/index-parts.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "parts": [
    {
      "id": 2,
      "name": "some name",
      "description": "some description",
      "sku": "some sku",
      "quantity": "some quantity"

    },
    {
      "id": 1,
      ""name": "some name",
      "description": "some description",
      "sku": "some sku",
      "quantity": "some quantity"
    }
  ]
}
```
### POST /parts

Request:

```sh
curl "http://localhost:4741/parts" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "part": {
      "name": "'"${NAME}"'",
      "description": "'"${DESC}"'",
      "sku": "'"${SKU}"'",
      "quantity": "'"${QTY}"'"
    }
  }'
```

```sh
scripts/parts/create-parts.sh
```

Response:

```md
HTTP/1.1 201 Created
Content-Type: application/json; charset=utf-8

{
  "part":
    {
      "id": 2,
      "name": "some name",
      "description": "some description",
      "sku": "some sku",
      "quantity": "some quantity"
    }
}
```


#### PATCH /parts/:id

Request:

```sh
curl "http://localhost:4741/parts/${ID}" \
--include \
--request PATCH \
  --headers "Content-Type: application/json" \
  --headers "Authorization: Token token=${TOKEN}" \
  --data '{
    "part": {
        "name": "'"${NAME}"'",
        "description": "'"${DESC}"'",
        "sku": "'"${SKU}"'",
        "quantity": "'"${QTY}"'"
    }
  }'
```

```sh
scripts/parts/updated-parts.sh
```

Response:

```md
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
  "part":
    {
      "id": 2,
      "name": "some name",
      "description": "some description",
      "sku": "some sku",
      "quantity": "some quantity"
    }
}
```

#### DELETE  /parts/:id

Request:

```sh
curl "http://localhost:4741/parts/${ID}" \
--include \
--request DELETE \
--headers "Content-Type: application/json" \
--headers "Authorization: Token token=${TOKEN}"
```
```sh
scripts/parts/destroy-parts.sh
```

Response:

```md
HTTP/1.1 204 NO CONTENT
Content-Type: application/json; charset=utf-8
```

___

### Unsolved Problems & Future Features

* An unsolved problem that I plan on getting to in the future is the relationship between collections and parts. This would allow the user to select a collection and be presented with all the parts pertaining to that collection.
* In addtion to the previous relationship, I would like to create a table for a cart and allow the user to have a cart that can have many parts for the user to order.
* In order to have the cart table available, I would have to seed the data for each respective store/user to showcase what possible inventory options the user could choose from to order for their person inventory.
