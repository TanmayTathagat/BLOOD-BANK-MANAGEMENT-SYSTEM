<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Request Blood</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #ffecd2, #fcb69f);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .form-box {
            background: white;
            padding: 40px 50px;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            width: 400px;
            animation: fadeIn 0.8s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #d63031;
            font-size: 26px;
        }

        label {
            display: block;
            margin-top: 15px;
            font-weight: 600;
            color: #2d3436;
        }

        input[type="text"],
        select {
            width: 100%;
            padding: 10px 12px;
            margin-top: 8px;
            border-radius: 10px;
            border: 1px solid #ccc;
            font-size: 15px;
            box-sizing: border-box;
            transition: border-color 0.3s;
        }

        input[type="text"]:focus,
        select:focus {
            border-color: #d63031;
            outline: none;
        }

        input[type="submit"] {
            margin-top: 30px;
            width: 100%;
            padding: 12px;
            background-color: #d63031;
            color: white;
            border: none;
            border-radius: 10px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.2s;
        }

        input[type="submit"]:hover {
            background-color: #b71c1c;
            transform: scale(1.03);
        }
    </style>
</head>
<body>
    <div class="form-box">
        <h2>🩸 Blood Request Form</h2>
        <form action="RequestServlet" method="post">
            <label for="name">Name</label>
            <input type="text" name="name" required>

            <label for="blood">Blood Group</label>
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

            <label for="contact">Contact</label>
            <input type="text" name="contact" required>

            <input type="submit" value="Request Blood">
        </form>
    </div>
</body>
</html>
