
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>Student Management Portal</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background: #f4f6fb;
            color: #333;
        }

        header {
            background: #252b48;
            color: white;
            padding: 20px 40px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        header h2 {
            font-size: 22px;
        }

        header span {
            color: #b9c4ff;
            font-size: 14px;
        }

        .container {
            padding: 35px 40px;
        }

        .welcome {
            margin-bottom: 25px;
        }

        .welcome h1 {
            margin-bottom: 8px;
            color: #252b48;
        }

        .welcome p {
            color: #777;
        }

        .cards {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            margin-bottom: 30px;
        }

        .card {
            background: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 2px 8px #0000000d;
        }

        .card p {
            color: #777;
            font-size: 14px;
        }

        .card h2 {
            margin-top: 12px;
            font-size: 30px;
            color: #252b48;
        }

        .section {
            background: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 2px 8px #0000000d;
        }

        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
            gap: 12px;
        }

        input {
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 6px;
            outline: none;
        }

        button {
            background: #5265d8;
            color: white;
            padding: 10px 16px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #eee;
        }

        th {
            background: #f8f9fc;
            color: #555;
        }

        .active {
            color: #18864b;
            background: #e4f7ed;
            padding: 6px 12px;
            border-radius: 20px;
        }

        .pending {
            color: #b7791f;
            background: #fff4d6;
            padding: 6px 12px;
            border-radius: 20px;
        }

        footer {
            text-align: center;
            padding: 25px;
            color: #888;
            font-size: 13px;
        }

        @media(max-width: 700px) {
            .cards {
                grid-template-columns: 1fr;
            }

            .container {
                padding: 20px;
            }

            .section {
                overflow-x: auto;
            }

            header {
                padding: 18px 20px;
            }
        }
    </style>
</head>

<body>

<header>
    <h2>EduTrack</h2>
    <span>Admin Dashboard</span>
</header>

<div class="container">

    <div class="welcome">
        <h1>Student Dashboard</h1>
        <p>Welcome back, Administrator!</p>
        <p>Today: <%= new Date() %></p>
    </div>

    <div class="cards">

        <div class="card">
            <p>Total Students</p>
            <h2>250</h2>
        </div>

        <div class="card">
            <p>Active Students</p>
            <h2>218</h2>
        </div>

        <div class="card">
            <p>Pending Registrations</p>
            <h2>32</h2>
        </div>

    </div>

    <div class="section">

        <div class="section-header">
            <h2>Student Records</h2>
            <button onclick="alert('Add Student feature selected!')">
                + Add Student
            </button>
        </div>

        <input type="text" id="search"
               placeholder="Search students..."
               onkeyup="searchStudents()">

        <br><br>

        <table id="studentTable">

            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Department</th>
                    <th>Email</th>
                    <th>Status</th>
                </tr>
            </thead>

            <tbody>
                <tr>
                    <td>101</td>
                    <td>Rahul Sharma</td>
                    <td>CSE</td>
                    <td>rahul@gmail.com</td>
                    <td><span class="active">Active</span></td>
                </tr>

                <tr>
                    <td>102</td>
                    <td>Ananya Reddy</td>
                    <td>IT</td>
                    <td>ananya@gmail.com</td>
                    <td><span class="active">Active</span></td>
                </tr>

                <tr>
                    <td>103</td>
                    <td>Arjun Kumar</td>
                    <td>ECE</td>
                    <td>arjun@gmail.com</td>
                    <td><span class="pending">Pending</span></td>
                </tr>

                <tr>
                    <td>104</td>
                    <td>Priya Singh</td>
                    <td>CSE</td>
                    <td>priya@gmail.com</td>
                    <td><span class="active">Active</span></td>
                </tr>
            </tbody>

        </table>

    </div>

</div>

<footer>
    © 2026 EduTrack Student Management System
    | Powered by Java & Maven
</footer>

<script>
    function searchStudents() {
        let input = document.getElementById("search")
                            .value.toLowerCase();

        let rows = document.querySelectorAll(
            "#studentTable tbody tr"
        );

        rows.forEach(row => {
            row.style.display =
                row.innerText.toLowerCase().includes(input)
                ? ""
                : "none";
        });
    }
</script>

</body>
</html>
