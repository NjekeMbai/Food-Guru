<?php 

function component($productname,$productprice,$productimage,$productid)
{
	$element="

		<div class=\"col-md-3 col-sm-6 my-3 my-md-0\">
			<form action=\"index.php\" method=\"post\">
				<div class=\"card shadow\">
					<div>
						<img src=\"$productimage\" alt=\"image1\" class=\"img-fluid card-img-top\">
					</div>
					<div class=\"card-body\">
						<h5 class=\"card-title\">$productname</h5>
						<h4>
							<i class=\"fas fa-star\"></i>
							<i class=\"fas fa-star\"></i>
							<i class=\"fas fa-star\"></i>
							<i class=\"fas fa-star\"></i>
							<i class=\"far fa-star\"></i>

						</h4>
							
							<h5>
								<small><s class=\"text-secondary\">519</s></small>
								<span class=\"price\">$productprice</span>
							</h5>

							<button type=\"submit\" name=\"add\" class=\"btn btn-warning my-3\">Add to Cart <i class=\"fas fa-shopping-cart\"></i></button>
							<input type=\"hidden\" name=\"product_id\" value=\"$productid\">

					</div>

				</div>

			</form>


		</div>



	";
	echo $element;
}


function cartElement( $productimg,$productname,$productprice,$productid)
{
	$element="

	<form action=\"cart.php?action=remove&id=$productid\" method=\"post\" class=\"cart-items\" >
 					<div class=\"border rounded\">
 						<div class=\"row bg-white\">
 							<div class=\"col-md-3 pl-0\">
 								<img src=$productimg alt=\"image1\" class=\"img-fluid\">

 							</div>
 							<div class=\"col-md-6\">
 								<h5 class=\"pt-2\">$productname</h5>
 								<small class=\"text-secondary\">Seller:cimi</small>
 								<h5 class=\"pt-2\">$productprice</h5>
 								<button type=\"submit\" class=\"btn btn-warning\">save for later</button>
 								<button class=\"btn btn-danger mx-2\" type=\"submit\" name=\"remove\">Remove</button>
 							</div>
 							<div class=\"col-md-3 py-5\">
 								<div>
 									<button class=\"btn bg-light border rounded-circle\"><i class=\"fas fa-minus\"></i></button>
 									<input type=\"text\" value=\"1\" class=\"form-control w-25 d-inline\">
 									<button class=\"btn bg-light border rounded-circle\"><i class=\"fas fa-plus\"></i></button>

 								</div>

 							</div>


 						</div>

 					</div>



 				</form>






	";


	echo $element;
}





















 ?>