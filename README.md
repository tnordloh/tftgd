Luke's gaming blog

## Pre-Install

```
    brew install memcached
    brew services start memcached
    brew install sqlite
```

## Running

```
bundle install
rake db
thin start
```
