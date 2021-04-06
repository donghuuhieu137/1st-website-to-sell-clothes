var product = {
		
		delete: function(productId) {
			var data = {};
			data["id"] = productId;
			
			$.ajax({
				url: "/admin/product-delete",
				type: "post",
				contentType: "application/json", // dữ liệu gửi lên web-service có dạng là json.
				data: JSON.stringify(data), // object json -> string json
				
				dataType: "json", // dữ liệu từ web-service trả về là json.
				success: function(jsonResult) { // được gọi khi web-service trả về dữ liệu.
					if(jsonResult.status == 200) {
						// location.reload();
						$("#ColProductStatus-"+productId).html("<span class=\"badge badge-danger\">Đã xoá</span>");
					} else {
						alert("eror");
					}
				},
				error: function (jqXhr, textStatus, errorMessage) { // error callback 
			        
			    }
			});
		},
		
		addToCart: function(productId, quantity, color, size){
			var data = {};
			data["productId"] = productId;
			data["color"] = color;
			data["size"] = size;
			data["quantity"] = quantity;
			
			$.ajax({
				url: "/add-to-cart",
				type: "post",
				contentType:"application/json",
				data: JSON.stringify(data),
				dataType: "json",
				success: function(jsonResult){
					if(jsonResult.status == 200){
						$("#cart-product-quantity").html(jsonResult.data);
					} else{
						alert("eror");
					}
				},
				error: function (jqXhr, textStatus, errorMessage) { // error callback 
				
			    }
			});
		},
		
		removeFromCart: function(productId){
			var data = {};
			data["productId"] = productId;
			
			$.ajax({
				url: "/remove-from-cart",
				type: "post",
				contentType:"application/json",
				data: JSON.stringify(data),
				dataType: "json",
				success: function(jsonResult){
					if(jsonResult.status == 200){
						$("#cart-product-quantity").html(jsonResult.data);
						$("#cart-product"+productId).remove();
					} else{
						alert("eror");
					}
				},
				error: function (jqXhr, textStatus, errorMessage) { // error callback 
				
			    }
			});
		}
};

var category = {
	
	delete: function(categoryId) {
			var data = {};
			data["id"] = categoryId;
			
			$.ajax({
				url: "/admin/category-delete",
				type: "post",
				contentType: "application/json", // dữ liệu gửi lên web-service có dạng là json.
				data: JSON.stringify(data), // object json -> string json
				
				dataType: "json", // dữ liệu từ web-service trả về là json.
				success: function(jsonResult) { // được gọi khi web-service trả về dữ liệu.
					if(jsonResult.status == 200) {
						// location.reload();
						$("#ColCategoryStatus-"+categoryId).html("<span class=\"badge badge-danger\">Đã xoá</span>");
					} else {
						alert("eror");
					}
				},
				error: function (jqXhr, textStatus, errorMessage) { // error callback 
			        
			    }
			});
		}
	
};

var order = {
	
	delete: function(orderId) {
			var data = {};
			data["id"] = orderId;
			
			$.ajax({
				url: "/admin/order-delete",
				type: "post",
				contentType: "application/json", // dữ liệu gửi lên web-service có dạng là json.
				data: JSON.stringify(data), // object json -> string json
				
				dataType: "json", // dữ liệu từ web-service trả về là json.
				success: function(jsonResult) { // được gọi khi web-service trả về dữ liệu.
					if(jsonResult.status == 200) {
						// location.reload();
						$("#order-"+orderId).remove();
					} else {
						alert("eror");
					}
				},
				error: function (jqXhr, textStatus, errorMessage) { // error callback 
			        
			    }
			});
		}
	
}