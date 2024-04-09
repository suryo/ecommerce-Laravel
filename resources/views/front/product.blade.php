<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Page</title>
</head>
<body>
    <div id="app">
        <h1>Product Page</h1>
        <div id="products"></div>
    </div>

    <script>
        // Function to fetch product details
        function fetchProductDetails(productId) {
            fetch(`http://api.zonainformatika.com/api/products/${productId}`)
                .then(response => response.json())
                .then(data => {
                    // Redirect to product detail page
                    window.location.href = `/product/${productId}`;
                })
                .catch(error => console.error('Error fetching product details:', error));
        }

        // Fetch data from API endpoint
        fetch('http://api.zonainformatika.com/api/products')
            .then(response => response.json())
            .then(data => {
                const productsDiv = document.getElementById('products');
                // Iterate over each product
                data.forEach(product => {
                    const productDiv = document.createElement('div');
                    productDiv.innerHTML = `
                        <h2>${product.title}</h2>
                        <p>${product.description}</p>
                        <p>Price: $${product.price}</p>
                        <p>Discount Percentage: ${product.discountPercentage}%</p>
                        <p>Rating: ${product.rating}</p>
                        <p>Stock: ${product.stock}</p>
                        <p>Brand: ${product.brand}</p>
                        <p>Category: ${product.category}</p>
                        <img src="${product.thumbnail}" alt="${product.title}">
                       
                        <button onclick="fetchProductDetails(${product.id})">Detail Product</button>
                    `;
                    productsDiv.appendChild(productDiv);
                });
            })
            .catch(error => console.error('Error fetching data:', error));
    </script>
</body>
</html>
