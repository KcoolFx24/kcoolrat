<?php
// hub.php - Your Main Category Navigation Hub
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Store Categories | Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .hub-container {
            max-width: 1000px;
            margin: 50px auto;
            padding: 20px;
            text-align: center;
        }
        .hub-title {
            font-size: 28px;
            margin-bottom: 30px;
            color: #333;
        }
        .category-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
        }
        .category-card {
            background-color: #fff;
            padding: 40px 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            text-decoration: none;
            color: #333;
            transition: transform 0.3s ease;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .category-card:hover {
            transform: translateY(-5px);
            background-color: #f9f9f9;
        }
        .category-icon {
            font-size: 40px;
            margin-bottom: 15px;
        }
        .category-name {
            font-size: 22px;
            font-weight: bold;
        }
    </style>
</head>
<body>

    <div class="hub-container">
        <h1 class="hub-title">What are you looking for today?</h1>
        
        <div class="category-grid">
            <a href="category.php?type=repair" class="category-card">
                <div class="category-icon">🔧</div>
                <div class="category-name">Repair Service</div>
            </a>

            <a href="category.php?type=best_seller" class="category-card">
                <div class="category-icon">⭐</div>
                <div class="category-name">Best Selling</div>
            </a>

            <a href="category.php?type=promotion" class="category-card">
                <div class="category-icon">🎁</div>
                <div class="category-name">On Promotions</div>
            </a>
        </div>
    </div>

    </body>
</html>