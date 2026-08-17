<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>J2EE Security | User Profile Area</title>
    <!-- Tailwind CSS CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 min-h-screen">

    <!-- Navigation Bar -->
    <nav class="bg-indigo-600 text-white shadow-lg">
        <div class="max-w-6xl mx-auto px-4 py-3 flex justify-between items-center">
            <div class="flex items-center space-x-2">
                <span class="text-xl font-bold">User Area</span>
            </div>
            <div class="flex items-center space-x-4">
                <span class="text-sm bg-indigo-700 px-3 py-1 rounded-full">
                    Logged in as: ${sessionScope.username}
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
            <h1 class="text-3xl font-bold text-gray-800 mb-4">User Area (/user/*)</h1>
            <p class="text-gray-600 mb-6">
                This page is protected by the AuthenticationFilter. Only logged in users can view this page.
            </p>

            <div class="bg-blue-50 border-l-4 border-blue-500 p-4 mb-6 rounded">
                <p class="text-blue-800 font-semibold">User Details:</p>
                <p class="text-blue-600 text-sm">Username: ${sessionScope.username}</p>
                <p class="text-blue-600 text-sm">Role: ${sessionScope.role}</p>
            </div>

            <a href="${pageContext.request.contextPath}/home.jsp" class="inline-block px-4 py-2 bg-indigo-600 hover:bg-indigo-700 text-white rounded-lg text-sm transition">
                &larr; Return to Home
            </a>
        </div>
    </div>

</body>
</html>
