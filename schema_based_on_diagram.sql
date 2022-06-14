CREATE TABLE patients (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    date_of_birth DATE
);

CREATE TABLE medical_histories (
	id	SERIAL PRIMARY KEY,
	admitted_at	TIMESTAMP,
	patient_id INT NOT NULL,
	status VARCHAR,
	FOREIGN KEY (patient_id) REFERENCES patients (id)
);

CREATE TABLE invoices (
	id SERIAL PRIMARY KEY,
	total_amount DECIMAL,
	generated_at TIMESTAMP,
	payed_at TIMESTAMP,
	medical_histories_id INT,
	FOREIGN KEY (medical_histories_id) REFERENCES medical_histories(id)
);

CREATE TABLE treatments (
	id SERIAL PRIMARY KEY,
	type VARCHAR,
	name VARCHAR
);

CREATE TABLE invoice_items (
	id SERIAL PRIMARY KEY,
	unit_price DECIMAL,
	quantity INT,
	total_price DECIMAL,
	invoice_id INT,
	treatment_id INT,
	FOREIGN KEY (invoice_id) REFERENCES invoices(id),
	FOREIGN KEY (treatment_id) REFERENCES treatments(id)
);

CREATE TABLE treatment_histories (
	id SERIAL PRIMARY KEY,
	medical_history_id INT,
	treatment_id INT,
	FOREIGN KEY (medical_history_id) REFERENCES medical_histories(id) 
	ON DELETE RESTRICT ON UPDATE CASCADE,
	FOREIGN KEY (treatment_id) REFERENCES treatments(id)
	ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE INDEX patient_id_asc ON medical_histories (patient_id ASC);
CREATE INDEX medical_histories_id_asc ON invoices (medical_histories_id ASC);
CREATE INDEX invoice_id_asc ON invoice_items (invoice_id ASC);
CREATE INDEX treatment_id_asc ON invoice_items (treatment_id ASC);
CREATE INDEX medical_history_id_asc ON treatment_histories (medical_history_id ASC);
CREATE INDEX treatments_id_asc ON treatment_histories (treatment_id ASC)