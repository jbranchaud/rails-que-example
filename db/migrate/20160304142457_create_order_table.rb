class CreateOrderTable < ActiveRecord::Migration
  def up
    execute <<-SQL
      create table orders (
        id serial primary key,
        order_number varchar not null unique,
        created_at timestamptz not null default now(),
        updated_at timestamptz not null default now()
      );
    SQL
  end

  def down
    execute <<-SQL
      drop table orders;
    SQL
  end
end
