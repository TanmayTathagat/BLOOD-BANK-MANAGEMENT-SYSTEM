<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Search Donor</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #74ebd5, #acb6e5);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .form-box {
            background: white;
            padding: 35px 45px;
            border-radius: 18px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            width: 380px;
            animation: fadeIn 0.8s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h2 {
            text-align: center;
            color: #2e86de;
            margin-bottom: 25px;
            font-size: 26px;
        }

        label {
            font-weight: 600;
            display: block;
            margin-bottom: 8px;
            color: #2d3436;
        }

        select {
            width: 100%;
            padding: 10px 12px;
            border-radius: 10px;
            border: 1px solid #ccc;
            font-size: 15px;
            box-sizing: border-box;
            transition: border-color 0.3s;
            margin-top: 6px;
        }

        select:focus {
            border-color: #2e86de;
            outline: none;
        }

        input[type="submit"] {
            margin-top: 25px;
            width: 100%;
            padding: 12px;
            background-color: #2e86de;
            color: white;
            border: none;
            border-radius: 10px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.2s;
        }

        input[type="submit"]:hover {
            background-color: #1e5fba;
            transform: scale(1.03);
        }
    </style>
</head>
<body>
    <div class="form-box">
        <h2>🔍 Search Blood Group</h2>
        <form action="SearchServlet" method="post">
            <label for="blood">Select Blood Group:</label>
            <select name="blood" required>
                <option value="">-- Select Blood Group --</option>
                <option value="A+">A+</option>
                <option value="A-">A-</option>
                <option value="B+">B+</option>
                <option value="B-">B-</option>
                <option value="AB+">AB+</option>
                <option value="AB-">AB-</option>
                <option value="O+">O+</option>
                <option value="O-">O-</option>
            </select>

            <input type="submit" value="Search">
        </form>
    </div>
</body>
</html>
