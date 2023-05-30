# README

## See the exam question in the file: `URL-shortener-assignment.pdf`

## How to test

Example:

https://truong-shortener.herokuapp.com

1. Login to get credential (JWT token)
```
curl --location 'https://truong-shortener.herokuapp.com/api/login' \
--form 'email="admin@example.com"' \
--form 'password="123456"'
```

2. Request shortened url
```
curl --location 'https://truong-shortener.herokuapp.com/api/shorten' \
--header 'Authorization: Bearer xxx.yyy.zzz' \
--form 'original_url="https://www.google.com/"'
```
(with xxx.yyy.zzz is the token string that returned from (1))

3. You can check the returned shorten url from (2) with your browser
```
https://truong-shortener.herokuapp.com/abc
```
