# rails-que-example

> An example of using Que to schedule jobs in a Rails app

The [`que`](https://github.com/chanks/que) gem is a Ruby job queue that uses
PostgreSQL.

## Usage

Start up the rails server:

```bash
$ rails s
```

Open up `localhost:3000`.

Click `New Order` and create a new order with an order number. The order
will be created asynchronously via a job scheduled by `que`.

## Setup

```bash
$ bundle install
$ rake db:create
$ rake db:migrate
```

## Details

See `config/initializers/que.rb` for details on how `que` is being
configured. You can override the default configurations using environment
variables.

For example,

```bash
$ QUE_MODE=sync WORKER_COUNT=8 rails s
```

## License

&copy; 2016 Josh Branchaud

This repository is licensed under the MIT license. See `LICENSE` for more
details.
