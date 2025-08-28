<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>BlogSphere - Home</title>
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

    <!-- Hero Section -->
    <section class="text-center py-16 bg-gradient-to-r from-indigo-600 to-purple-600 text-white">
        <h2 class="text-4xl font-bold mb-4">Welcome to BlogSphere</h2>
        <p class="text-lg mb-6">Your space to explore, write, and manage blogs with ease.</p>
        <div class="space-x-4">
            <a href="${pageContext.request.contextPath}/blog" class="px-6 py-3 bg-yellow-400 text-gray-900 rounded-xl shadow hover:bg-yellow-500 transition">Explore Blogs</a>
            <a href="${pageContext.request.contextPath}/articles" class="px-6 py-3 bg-white text-indigo-700 rounded-xl shadow hover:bg-gray-200 transition">Manage Articles</a>
        </div>
    </section>

    <!-- Feature Cards -->
    <section class="max-w-6xl mx-auto px-4 py-12 grid md:grid-cols-2 gap-8">
        <div class="bg-white shadow-lg rounded-2xl p-6 hover:shadow-2xl transition">
            <h3 class="text-xl font-semibold mb-2 text-indigo-700">Public Blog</h3>
            <p class="text-gray-600 mb-4">Browse and read posts from writers across the world. Stay inspired and informed.</p>
            <a href="${pageContext.request.contextPath}/blog" class="inline-block px-4 py-2 bg-indigo-600 text-white rounded-lg hover:bg-indigo-700">Visit</a>
        </div>

        <div class="bg-white shadow-lg rounded-2xl p-6 hover:shadow-2xl transition">
            <h3 class="text-xl font-semibold mb-2 text-indigo-700">Admin Panel</h3>
            <p class="text-gray-600 mb-4">Manage your blog posts, create new articles, update existing ones, and keep your readers engaged.</p>
            <a href="${pageContext.request.contextPath}/articles" class="inline-block px-4 py-2 bg-indigo-600 text-white rounded-lg hover:bg-indigo-700">Go to Admin</a>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-gray-800 text-gray-300 py-6 text-center">
        <p>&copy; 2025 BlogSphere. All rights reserved.</p>
    </footer>

</body>
</html>
