## button_to
- get 方法
要传 id, 不然默认的是 post 方法
```ruby
<%= button_to '修改文章', edit_article_path(article_id: @article.id),
                :method => :get, class: "btn btn-info" %>
```
