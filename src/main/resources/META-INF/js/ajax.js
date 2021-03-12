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
						$("#colProductStatus-"+productId).html("<span class=\"badge badge-danger\">Đã xoá</span>");
					} else {
						alert('loi');
					}
				},
				error: function (jqXhr, textStatus, errorMessage) { // error callback 
			        
			    }
			});
		}
		
		/*addToCart: function(productId, quantity){
			var data = {};
			data["productId"] = id;
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
						alert('eror');
					}
				},
				error: function (jqXhr, textStatus, errorMessage) { // error callback 
				
			    }
			});
		}*/
}