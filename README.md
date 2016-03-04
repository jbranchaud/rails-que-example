# rails-que-example

> An example of using Que to schedule jobs in a Rails app

The [`que`](https://github.com/chanks/que) gem is a Ruby job queue that uses
PostgreSQL.

## Setup

```bash
$ bundle install
$ rake db:create
$ rake db:migrate
```

## Run

```
$ rails s
```

Open up `localhost:3000`

## Details

See `config/initializers/que.rb` for details on how `que` is being
configured. You can override the default configurations using environment
variables.

For example,

```bash
$ QUE_MODE=sync WORKER_COUNT=8 rails s
```
