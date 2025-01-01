<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>Error Page</title>
    <link rel="icon" href="/images/PLogo.png" type="image/x-icon" />
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            padding: 50px;
        }
        .error-container {
            margin-top: 50px;
            background-color: #f8d7da;
            color: #721c24;
            border: 1px solid #f5c6cb;
            padding: 20px;
            border-radius: 5px;
        }
        .error-container h1 {
            font-size: 3em;
        }
    </style>
</head>
<body>

    <div class="error-container">
        <h1>Error</h1>
        <p>An unexpected error has occurred.</p>
        <p><b>Status:</b> ${status}</p>
        <p><b>Message:</b> ${message}</p>
        <br>
        <a href="/" style="text-decoration: none; color: blue;">Go back to home</a>
    </div>

</body>
</html>
