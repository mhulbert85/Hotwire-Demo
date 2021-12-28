# Turbo - Rails

Syntax in tutorial different to current requirements see:
[stimulus identifiers](https://stimulus.hotwired.dev/reference/controllers#identifiers)

`app/views/messages/new.html.erb line:5` <br>
```ruby 
data: {controller: "reset-form", action:"turbo:submit-end->reset-form#reset"}) do |form| %>
```