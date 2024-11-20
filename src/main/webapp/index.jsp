<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Engine - Your Gateway to Knowledge</title>
    <style>
        body {
            font-family: 'Roboto', Arial, sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #ffffff;
            flex-direction: column;
        }

        header {
            margin-bottom: 40px; /* Added margin for spacing */
            text-align: center;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: rgba(255, 255, 255, 0.1);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.3);
            margin: 10px;
            width: 300px;
            text-align: center;
        }

        h1 {
            margin-bottom: 10px;
            font-size: 55px; /* Increased font size */
            color: #ffffff;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.4);
        }

        p {
            margin: 0;
            font-size: 16px;
            color: rgba(255, 255, 255, 0.8);
        }

        input[type="text"] {
            width: 90%;
            padding: 12px 15px;
            margin: 15px 0;
            border: 1px solid rgba(255, 255, 255, 0.5);
            border-radius: 5px;
            background-color: rgba(255, 255, 255, 0.2);
            color: #ffffff;
            font-size: 16px;
            outline: none;
            transition: all 0.3s ease;
        }

        input[type="text"]::placeholder {
            color: #ddd;
        }

        input[type="text"]:focus {
            background-color: rgba(255, 255, 255, 0.3);
            border-color: #ffffff;
            box-shadow: 0 0 5px rgba(255, 255, 255, 0.5);
        }

        button {
            padding: 12px 20px;
            background-color: #007bff;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s, box-shadow 0.2s;
            width: 90%;
        }

        button:hover {
            background-color: #0056b3;
            transform: scale(1.05);
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
        }

        button:active {
            transform: scale(1);
            box-shadow: none;
        }

        footer {
            margin-top: 20px;
            font-size: 14px;
            color: rgba(255, 255, 255, 0.7);
            text-align: center;
        }

        footer a {
            color: #ffffff;
            text-decoration: none;
            font-weight: bold;
        }

        footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <center> <h1 style="font-family: 'Merriweather', serif;">Search Engine</h1>
 </center>
    <header>
        <h2>Welcome to the Search Engine</h2>
        <p>Find what you need quickly and easily!</p>
    </header>
    <main>
        <section>
            <form action="Search" method="get">
                <input type="text" name="keyword" placeholder="Enter your search term">
                <button type="submit">Search</button>
            </form>
        </section>
        <section>
            <form action="History" method="get">
                <button type="submit">View History</button>
            </form>
        </section>
    </main>
    <footer>
        <p>&copy; 2024 Search Engine. Made with &#10084;&#65039; by <a href="https://www.linkedin.com/in/gaganchauhan/">Gagan Chauhan</a>.</p>
    </footer>
</body>
</html>
