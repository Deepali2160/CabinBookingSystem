<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Search Cabin</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"/>
    <style>
        body, html {
            height: 100%;
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: url('https://media.istockphoto.com/id/503044702/photo/illuminated-sky-and-outside-of-waterfront-buiding.jpg?s=612x612&w=0&k=20&c=xkDBkqmCVvhR4idfybXRb-yFS0KqOjqtikg_LtO4pzs=') no-repeat center center fixed;
            background-size: cover;
        }

        .search-container {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            backdrop-filter: blur(4px);
        }

        .search-box {
            background: rgba(255, 255, 255, 0.08);
            border-radius: 25px;
            padding: 40px;
            width: 800px;
            max-width: 90%;
            text-align: center;
            box-shadow: 0 8px 32px rgba(0,0,0,0.2);
        }

        .search-box h2 {
            color: #fff;
            margin-bottom: 30px;
            font-size: 28px;
        }

        .search-form {
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
            justify-content: center;
        }

        .search-form input[type="text"],
        .search-form input[type="date"],
        .search-form input[type="number"] {
            padding: 12px 15px 12px 38px;
            border-radius: 25px;
            border: none;
            outline: none;
            font-size: 15px;
            width: 180px;
            background-color: rgba(255, 255, 255, 0.2);
            color: #fff;
        }

        .search-form .input-icon {
            position: relative;
        }

        .search-form .input-icon i {
            position: absolute;
            left: 12px;
            top: 50%;
            transform: translateY(-50%);
            color: #fff;
            pointer-events: none;
        }

        .search-button-container {
            margin-top: 20px;
            text-align: center;
            width: 100%;
        }

        .search-button {
            padding: 12px 40px;
            font-size: 16px;
            border-radius: 25px;
            border: 2px solid #d9b27c;
            background-color: white;
            color: #d9b27c;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
        }

        .search-button:hover {
            background-color: #d9b27c;
            color: white;
        }

        ::placeholder {
            color: #eee;
        }

        @media screen and (max-width: 768px) {
            .search-form input {
                width: 100%;
            }
        }
    </style>
</head>
<body>
<div class="search-container">
    <div class="search-box">
        <h2>Find Your Luxury Cabin</h2>
        <form class="search-form" action="search" method="get">
            <div class="input-icon">
                <i class="fas fa-map-marker-alt"></i>
                <input type="text" name="location" placeholder="City or State" required>
            </div>
            <div class="input-icon">
                <i class="fas fa-calendar-alt"></i>
                <input type="date" name="startDate" placeholder="Start Date">
            </div>
            <div class="input-icon">
                <i class="fas fa-calendar-check"></i>
                <input type="date" name="endDate" placeholder="End Date">
            </div>
            <div class="input-icon">
                <i class="fas fa-user"></i>
                <input type="number" name="adults" placeholder="Adults" min="1" value="2">
            </div>
            <div class="input-icon">
                <i class="fas fa-child"></i>
                <input type="number" name="children" placeholder="Children" min="0" value="0">
            </div>

            <!-- Search Button in Last Line -->
            <div class="search-button-container">
                <button class="search-button" type="submit">Search</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>
