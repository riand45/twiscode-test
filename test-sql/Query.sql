CREATE TABLE orders (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  tanggal_order TIMESTAMP,
  status_pelunasan ENUM('pending', 'lunas') NOT NULL DEFAULT 'pending',
  tanggal_pembayaran TIMESTAMP NULL
);

INSERT INTO orders(
  tanggal_order,status_pelunasan,tanggal_pembayaran
) values(
  now(),'lunas',now()
);

INSERT INTO orders(
  tanggal_order,status_pelunasan,tanggal_pembayaran
) values(
  now(),'pending',NULL
);

CREATE TABLE order_details (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_transaksi int NOT NULL,
  harga int,
  jumlah int,
  subtotal int,
  FOREIGN KEY (id_transaksi) REFERENCES orders(id)
);

INSERT INTO order_details(
  id_transaksi,harga,jumlah,subtotal
) values(
  1,10000,2,20000
);

INSERT INTO order_details(
  id_transaksi,harga,jumlah,subtotal
) values(
  2,6250,4,25000
);

select
  orders.id,
  orders.tanggal_order,
  orders.status_pelunasan as status,
  orders.tanggal_pembayaran,
  order_details.subtotal as total,
  order_details.jumlah as jumlah_barang
from
  orders
inner join
  order_details
  on
  order_details.id_transaksi
  =
  orders.id
order by
  orders.id asc
