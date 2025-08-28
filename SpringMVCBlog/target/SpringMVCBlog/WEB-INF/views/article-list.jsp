<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Articles - Admin | BlogSphere</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50 text-gray-800 font-sans">

    <!-- Navbar -->
    <nav class="bg-indigo-600 shadow-md">
        <div class="max-w-6xl mx-auto px-4 py-3 flex justify-between items-center">
            <h1 class="text-white text-2xl font-bold">BlogSphere</h1>
            <div class="space-x-4">
                <a href="${pageContext.request.contextPath}/blog" class="text-white hover:text-yellow-300">Public Blog</a>
                <a href="${pageContext.request.contextPath}/articles" class="text-white hover:text-yellow-300">Admin</a>
            </div>
        </div>
    </nav>

    <!-- Page Header -->
    <section class="text-center py-10 bg-gradient-to-r from-indigo-600 to-purple-600 text-white">
        <h2 class="text-3xl font-bold">Manage Articles</h2>
        <p class="mt-2 text-lg">View, edit, or delete articles</p>
    </section>

    <!-- Content -->
    <section class="max-w-6xl mx-auto px-4 py-12">

        <!-- Add New Article Button -->
        <div class="flex justify-between items-center mb-6">
            <h3 class="text-xl font-semibold text-gray-800">Articles List</h3>
            <a href="${pageContext.request.contextPath}/articles/new"
               class="px-5 py-2 bg-green-600 text-white rounded-lg shadow hover:bg-green-700 transition">
                ➕ Add New Article
            </a>
        </div>

        <!-- Articles Table -->
        <div class="overflow-x-auto bg-white shadow-lg rounded-2xl">
            <table class="min-w-full table-auto border-collapse">
                <thead class="bg-indigo-600 text-white">
                    <tr>
                        <th class="px-6 py-3 text-left">ID</th>
                        <th class="px-6 py-3 text-left">Title</th>
                        <th class="px-6 py-3 text-left">Author</th>
                        <th class="px-6 py-3 text-left">Created</th>
                        <th class="px-6 py-3 text-center">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="art" items="${articles}">
                        <tr class="border-b hover:bg-gray-50">
                            <td class="px-6 py-3">${art.id}</td>
                            <td class="px-6 py-3 font-medium text-indigo-700">${art.title}</td>
                            <td class="px-6 py-3">${art.author}</td>
                            <td class="px-6 py-3 text-gray-600">${art.createdAt}</td>
                            <td class="px-6 py-3 flex justify-center space-x-3">
                                <a href="${pageContext.request.contextPath}/articles/edit/${art.id}"
                                   class="px-4 py-2 bg-blue-600 text-white rounded-lg shadow hover:bg-blue-700 transition">
                                    ✏️ Edit
                                </a>
                                <a href="${pageContext.request.contextPath}/articles/delete/${art.id}"
                                   class="px-4 py-2 bg-red-600 text-white rounded-lg shadow hover:bg-red-700 transition"
                                   onclick="return confirm('Are you sure you want to delete this article?');">
                                    🗑️ Delete
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <!-- Back to Home -->
        <div class="mt-8">
            <a href="${pageContext.request.contextPath}/"
               class="inline-block px-5 py-2 bg-gray-200 text-gray-700 rounded-lg shadow hover:bg-gray-300 transition">
                ⬅️ Back to Home
            </a>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-gray-800 text-gray-300 py-6 text-center">
        <p>&copy; 2025 BlogSphere. All rights reserved.</p>
    </footer>

</body>
</html>
