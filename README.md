# TWitter
- - -

## Overview
アカウント作成, アカウント編集, ログイン ,ログアウト, 文字の投稿, 画像の投稿, フォロー機能
- - -

## Database Design
- - -
### tweets table
#### column
```
t.string     :body, null: false  
t.string     :image  
t.references :user, foreign_key: true  
t.timestamps  
```

#### association
```
belongs_to :user  
```
- - -

### users table
#### column
```
t.string :name, null:false  
t.string :user_name  
t.string :mail
t.string :phone_number  
t.string :password, null:false  
t.string :introduction  
t.string :birthday  
t.string :from  
t.string :profile_image  
t.string :background_image  
```
#### association
```
has_many :messages  
acts_in_relation with: :follow  
```
- - -

### follows table
#### column
```
t.integer :follow_user_id  
t.integer :target_user_id  
t.timestamps  
```
#### association
```
acts_in_relation :action, source: :user, target: :user  
```
- - -
