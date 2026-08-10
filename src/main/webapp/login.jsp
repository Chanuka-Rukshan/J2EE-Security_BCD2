<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>J2EE Security | Login</title>
    <!-- Tailwind CSS CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="min-h-screen flex items-center justify-center bg-gradient-to-br from-indigo-500 to-purple-600 p-4">

<!-- Login Card -->
<div class="bg-white p-8 rounded-xl shadow-2xl w-full max-w-sm">

    <h1 class="text-2xl font-bold text-center text-gray-800 mb-6">Secure Login</h1>

    <!-- J2EE Error Message Section -->
    <div class="text-red-500 text-sm text-center mb-4 min-h-[20px] font-medium">
        ${requestScope.message}
    </div>

    <form method="post" action="login" class="space-y-5">

        <!-- Username Input -->
        <div>
            <label for="username" class="block text-sm font-semibold text-gray-700 mb-1">Username</label>
            <input type="text" id="username" name="username" placeholder="Enter your username" required
                   class="w-full px-4 py-2 border border-gray-300 rounded-lg text-gray-900 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 transition-colors">
        </div>

        <!-- Password Input -->
        <div>
            <label for="password" class="block text-sm font-semibold text-gray-700 mb-1">Password</label>
            <input type="password" id="password" name="password" placeholder="Enter your password" required
                   class="w-full px-4 py-2 border border-gray-300 rounded-lg text-gray-900 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:border-indigo-500 transition-colors">
        </div>

        <!-- Submit Button -->
        <button type="submit"
                class="w-full bg-indigo-600 hover:bg-indigo-700 text-white font-bold py-2.5 px-4 rounded-lg transition duration-300 ease-in-out shadow-md hover:shadow-lg focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">
            Login
        </button>

    </form>
</div>

</body>
</html>