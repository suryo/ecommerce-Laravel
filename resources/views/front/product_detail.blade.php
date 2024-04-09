<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Detail</title>
</head>
<body>
    <h1>Product Detail</h1>
    <div>
        <h2>{{ $product['title'] }}</h2>
        <p>Description: {{ $product['description'] }}</p>
        <p>Price: ${{ $product['price'] }}</p>
        <p>Discount Percentage: {{ $product['discount_percentage'] }}%</p>
        <p>Rating: {{ $product['rating'] }}</p>
        <p>Stock: {{ $product['stock'] }}</p>
        <p>Brand: {{ $product['brand'] }}</p>
        <p>Category: {{ $product['category'] }}</p>
        <img src="{{ $product['thumbnail'] }}" alt="{{ $product['title'] }}">
        {{-- <div>Images:
            <ul>
                @foreach ($product['images'] as $image)
                    <li><img src="{{ $image }}" alt="{{ $product['title'] }}"></li>
                @endforeach
            </ul>
        </div> --}}
    </div>
    <a href="{{ route('products.index') }}">Back to Products</a>
</body>
</html>
