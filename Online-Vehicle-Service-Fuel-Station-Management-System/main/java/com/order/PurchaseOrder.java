package com.order;

public class PurchaseOrder {

	    private int id;
	    private String supplier_name;
	    private String product_name;
	    private int quantity;
	    private String expected_date;
	    private String status;
	    
	    
		public PurchaseOrder(int id, String  supplier_name, String product_name,int quantity, String expected_date,
				String status) {
			super();
			this.id = id;
			this.supplier_name = supplier_name;
			this.product_name = product_name;
			this.quantity = quantity;
			this.expected_date = expected_date;
			this.status = status;
		}

		public PurchaseOrder() {
			// TODO Auto-generated constructor stub
		}

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getSupplier_name() {
			return supplier_name;
		}

		public void setSupplier_name(String supplier_name) {
			this.supplier_name = supplier_name;
		}

		public String getProduct_name() {
			return product_name;
		}

		public void setProduct_name(String product_name) {
			this.product_name = product_name;
		}

		public int getQuantity() {
			return quantity;
		}

		public void setQuantity(int quantity) {
			this.quantity = quantity;
		}

		public String getExpected_date() {
			return expected_date;
		}

		public void setExpected_date(String expected_date) {
			this.expected_date = expected_date;
		}

		public String getStatus() {
			return status;
		}

		public void setStatus(String status) {
			this.status = status;
		}


	
}
