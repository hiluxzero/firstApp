# < First App with ROR >

First app with ruby on rails , add examples basic and authenticate user.

## Firsts Steps?

Create Application

```
rails new app
```


Install Gems

```
bundle install
```


up the server

```
rails server 
```

## Generate MVC

Generate model

```
rails generate model NameModel
```


Generate Controller

```
rails generate controller nameControllers
```


## Rake db

Once you generate the model, you must modify the migration file for each of the models.

- You can access to files in   `db/migrate`

Example:

```
class CreateUsers < ActiveRecord::Migration
	def change
		create_table :users do |t|
			t.string :name
			t.string :email
			t.string :password
			t.date :birthday
			t.references :city
			t.string :fb_id
			t.string :description
			t.string :photo
			t.string :gender
			t.string :facebook
			t.string :twitter
			t.string :role
			t.timestamps null: false
		end
	end
end
```
Datatypes: :string, :text, :integer, :float, :decimal, :datetime, :timestamp, :time, :date, :binary, :boolean


Run Migrate

When we prepared the migration files, execute this code: 

```
rake db:migrate
```


You can also add test data:

- You can add testdata in   `db/seeds.rb`



```
rake db:seed
```