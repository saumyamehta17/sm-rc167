Railscast sm-rc167
==================

Virtual attributes with has_many:through
```
Virtual attributes are used if we require fields which are not present in table
```
scaffolding
```
#todo
```
create association
```
Article.rb
Tag.rb
Tagging.rb (rails g model tagging article:references tag:references)
```
see article.rb
```
used tag_names as virtual attribute assign to attr_accessible to allow mass-assignment
use attr_accessor for getter and setter method
use attr_writer if getter is manually defined

```
see articles/index.html.erb
```
use that new field
```
use find_or_create_by
```
to create if record doesnt exit
```
rails server
```
rails s
```
