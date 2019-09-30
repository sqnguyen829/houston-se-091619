# ActiveRecord Associations

* **Practice with ActiveRecord::Base instance and class methods**
    * ActiveRecord give us few methods:
        * .new
        * #save
        * .create = .new + #save
        * .all
        * .first
        * .find
        * .find_by{ attribute: value } 
* **Implement one-to-many relationships using ActiveRecord has_many and belongs_to**
    * Find Author for Book:
        ```ruby
        def author
    	 Author.find(self.author_id)
        end
        ```
    * Find Books for Author:
        ```ruby
        def books
            Book.where(author_id: self_id)
        end
        ```
    * Currently relationship
    ```ruby
        has_many :books
        belongs_to :author
    ```
    * Rake console
        * Book.first.author
        * Author.first.books
    * Singular and plural naming
 
* **Implement many-to-many relationships using ActiveRecord has_many, :through**
    * Models
    * Episode->Appearance->Characters
    * Migrations
    * Models
 
* **Practice looking up library documentation**
    * Specifically, looking up documentation for ActiveRecord
    * Migrations
    * Association Macros
    * Rake tasks