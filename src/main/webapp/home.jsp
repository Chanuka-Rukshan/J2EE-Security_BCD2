<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>J2EE Security | User Dashboard</title>
    <!-- Tailwind CSS CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 min-h-screen">

    <!-- Navigation Bar -->
    <nav class="bg-indigo-600 text-white shadow-lg">
        <div class="max-w-6xl mx-auto px-4 py-3 flex justify-between items-center">
            <div class="flex items-center space-x-2">
                <span class="text-xl font-bold">J2EE Security Portal</span>
            </div>
            <div class="flex items-center space-x-4">
                <span class="text-sm bg-indigo-700 px-3 py-1 rounded-full">
                    User: <strong>${sessionScope.username}</strong> (${sessionScope.role})
                </span>
                <a href="${pageContext.request.contextPath}/logout" class="bg-red-500 hover:bg-red-600 text-white px-3 py-1.5 rounded-lg text-sm transition">
                    Logout
                </a>
            </div>
        </div>
    </nav>

    <!-- Content Area -->
    <div class="max-w-4xl mx-auto mt-10 p-6">
        
        <%-- Alert message if unauthorized access attempt occurred --%>
        <% if (request.getAttribute("message") != null) { %>
            <div class="mb-6 p-4 bg-red-100 border-l-4 border-red-500 text-red-700 rounded shadow">
                <p class="font-bold">Access Denied</p>
                <p><%= request.getAttribute("message") %></p>
            </div>
        <% } %>

        <div class="bg-white rounded-xl shadow-md p-8">
            <h1 class="text-3xl font-bold text-gray-800 mb-4">Welcome to User Dashboard</h1>
            <p class="text-gray-600 mb-6">
                You have successfully authenticated as a regular user. You have access to user level resources.
            </p>

            <div class="grid grid-cols-1 md:grid-cols-2 gap-4 mt-6">
                <a href="${pageContext.request.contextPath}/user/index.jsp" class="block p-6 bg-indigo-50 border border-indigo-200 rounded-lg hover:bg-indigo-100 transition">
                    <h2 class="text-xl font-semibold text-indigo-800 mb-2">User Profile Area</h2>
                    <p class="text-indigo-600 text-sm">Protected route at /user/* accessible by authenticated users.</p>
                </a>

                <a href="${pageContext.request.contextPath}/admin/home.jsp" class="block p-6 bg-purple-50 border border-purple-200 rounded-lg hover:bg-purple-100 transition">
                    <h2 class="text-xl font-semibold text-purple-800 mb-2">Admin Dashboard</h2>
                    <p class="text-purple-600 text-sm">Protected route at /admin/* (ADMIN role required).</p>
                </a>
            </div>
        </div>
    </div>

</body>
</html>
