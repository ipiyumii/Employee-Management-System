<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Diamond Pvt Ltd Dashboard</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: white;
            color: black;
        }

        .dashboard-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: space-between;
            height: 100vh;
        }

        p {
            color: #778899;
        }

        .dashboard-left {
            width: 100%;
            text-align: center;
            padding: 14px;
        }

        .dashboard-right {
            width: 100%;
            text-align: center;
            padding: 50px; 
        }

        h2 {
            font-size: 4rem; 
            font-weight: 720;
            background-image: linear-gradient(to left, #00008B, #1E90FF);
            color: transparent;
            background-clip: text;
            -webkit-background-clip: text;
        }

        h3 {
            color: #000080;
        }

        .company-logo {
            max-width: 100%;
            height: auto;
        }

        .card-deck {
            margin-top: 15px;
        }

        .card-title {
            color: #00008B;
            font-size: 1.5rem;
            font-weight: bold;
        }

        .card-text {
            color: #778899;
            margin-top: 10px;
        }

        @media (min-width: 768px) {
            .dashboard-container {
                flex-direction: row;
            }

            .dashboard-left,
            .dashboard-right {
                width: 50%;
            }

            .dashboard-right {
                padding: 100px; /* Adjusted padding for larger screens */
            }
        }

        .card-link {
            background-color: #B0C4DE;
            color: #000000;
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease-in-out;
        }

        .card-body:hover {
            transform: scale(1.05);
        }

        .card-body {
            padding: 20px;
        }

        .btn-primary {
            background-color: #87CEEB;
        }

        .btn-success {
            background-color: #87CEEB;
        }
    </style>
</head>

<body>
    <div class="container mt-5">
        <div class="dashboard-container">
            <div class="dashboard-left">
                <h2 class="mt-4">DIAMOND Pvt Ltd</h2>

                <h3>Employee Management System</h3>
                <br><br>
                <p>
                    Empowering brilliance through innovation and teamwork, Diamond Pvt Ltd is dedicated to creating a
                    workplace where every individual's potential is valued and nurtured
                </p>
            </div>

            <div class="dashboard-right">
                <div>
                    <a href="${pageContext.request.contextPath}/add" class="card-link">
                        <div class="card-body" style="width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">Create Employee</h5>
                                <p class="card-text">Click to create a new employee record.</p>
                            </div>
                        </div>
                    </a>
                </div>

                <div>
                    <a href="${pageContext.request.contextPath}/list" class="card-link">
                        <div class="card-body" style="width: 18rem;">
                            <div class="card-body">
                                <h5 class="card-title">View Employee List</h5>
                                <p class="card-text">Click to view the list of employees.</p>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>

</html>
