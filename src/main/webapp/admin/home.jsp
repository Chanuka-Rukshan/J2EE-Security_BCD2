<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>J2EE Security | Admin Dashboard</title>
    <!-- Tailwind CSS CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 min-h-screen">

    <!-- Navigation Bar -->
    <nav class="bg-purple-800 text-white shadow-lg">
        <div class="max-w-6xl mx-auto px-4 py-3 flex justify-between items-center">
            <div class="flex items-center space-x-2">
                <span class="text-xl font-bold">Admin Portal</span>
            </div>
            <div class="flex items-center space-x-4">
                <span class="text-sm bg-purple-900 px-3 py-1 rounded-full font-semibold text-yellow-300">
                    Administrator: ${sessionScope.username}
                </span>
                <a href="${pageContext.request.contextPath}/logout" class="bg-red-500 hover:bg-red-600 text-white px-3 py-1.5 rounded-lg text-sm transition">
                    Logout
                </a>
            </div>
        </div>
    </nav>

    <!-- Content Area -->
    <div class="max-w-4xl mx-auto mt-10 p-6">
        <div class="bg-white rounded-xl shadow-md p-8">
            <div class="flex items-center space-x-3 mb-6">
                <div class="p-3 bg-purple-100 text-purple-700 rounded-full">
                    <svg class="w-8 h-8" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z"></path>
                    </svg>
                </div>
                <div>
                    <h1 class="text-3xl font-bold text-gray-800">Admin Control Center</h1>
                    <p class="text-gray-500 text-sm">Protected route at /admin/*</p>
                </div>
            </div>

            <p class="text-gray-600 mb-6">
                Welcome, <strong>${sessionScope.username}</strong>! You have full Administrative privileges.
            </p>

            <div class="mt-6 flex space-x-4">
                <a href="${pageContext.request.contextPath}/home.jsp" class="px-4 py-2 bg-gray-200 hover:bg-gray-300 text-gray-800 rounded-lg text-sm transition">
                    &larr; Back to Home
                </a>
            </div>
        </div>
    </div>

</body>
</html>
