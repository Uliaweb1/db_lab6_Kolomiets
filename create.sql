drop table if exists disk_space;
drop table if exists Laptop;
drop table if exists gpu;
drop table if exists disk;

CREATE TABLE disk
(
  capacity VARCHAR(20) NOT NULL,
  type VARCHAR(100) NOT NULL,
  disk_id SERIAL NOT NULL,
  PRIMARY KEY(disk_id),
  CONSTRAINT unique_disk_params UNIQUE (capacity, type)
);

CREATE TABLE gpu
(
  Name VARCHAR(100) NOT NULL,
  vendor VARCHAR(100) NOT NULL,
  vram VARCHAR(20) NOT NULL,
  gpu_id SERIAL NOT NULL,
  PRIMARY KEY(gpu_id),
  CONSTRAINT unique_gpu_constraint UNIQUE (Name, vendor, vram)
);

CREATE TABLE Laptop
(
  brand VARCHAR(100) NOT NULL,
  laptop_name VARCHAR(100),
  display_size NUMERIC(5,1) NOT NULL,
  processor_type VARCHAR(100) NOT NULL,
  discount_price NUMERIC(20) NOT NULL,
  old_price NUMERIC(20) NOT NULL,
  ratings_5max NUMERIC(5,1) NOT NULL,
  laptop_id SERIAL NOT NULL,
  gpu_id INT NOT NULL,
  PRIMARY KEY (laptop_id),
  FOREIGN KEY (gpu_id) REFERENCES gpu(gpu_id)
);

CREATE TABLE disk_space
(
  relation_id SERIAL NOT NULL,
  laptop_id INT NOT NULL,
  disk_id INT NOT NULL,
  PRIMARY KEY (relation_id),
  FOREIGN KEY (laptop_id) REFERENCES Laptop(laptop_id),
  FOREIGN KEY (disk_id) REFERENCES disk(disk_id),
  CONSTRAINT unique_disk_space UNIQUE (laptop_id, disk_id)
);