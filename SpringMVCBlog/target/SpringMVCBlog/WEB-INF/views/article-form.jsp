<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Article Form - BlogSphere</title>
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
        <h2 class="text-3xl font-bold">Article Form</h2>
        <p class="mt-2 text-lg">Create or update your article</p>
    </section>

    <!-- Form Section -->
    <section class="max-w-4xl mx-auto bg-white shadow-lg rounded-2xl p-8 my-12">
        <form action="${pageContext.request.contextPath}/articles/save" method="post" class="space-y-6">
            
            <!-- Hidden ID -->
            <input type="hidden" name="id" value="${article.id}" />

            <!-- Title -->
            <div>
                <label for="title" class="block text-sm font-medium text-gray-700 mb-1">Title</label>
                <input type="text" id="title" name="title" value="${article.title}"
                       class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-indigo-500 focus:outline-none"
                       placeholder="Enter article title" required />
            </div>

            <!-- Author -->
            <div>
                <label for="author" class="block text-sm font-medium text-gray-700 mb-1">Author</label>
                <input type="text" id="author" name="author" value="${article.author}"
                       class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-indigo-500 focus:outline-none"
                       placeholder="Enter author name" required />
            </div>

            <!-- Content -->
            <div>
                <label for="content" class="block text-sm font-medium text-gray-700 mb-1">Content</label>
                <textarea id="content" name="content" rows="10"
                          class="w-full px-4 py-3 border rounded-lg focus:ring-2 focus:ring-indigo-500 focus:outline-none resize-y"
                          placeholder="Write your article here...">${article.content}</textarea>
            </div>

            <!-- Buttons -->
            <div class="flex space-x-4">
                <button type="submit" 
                        class="px-6 py-3 bg-indigo-600 text-white rounded-lg shadow hover:bg-indigo-700 transition">
                    💾 Save
                </button>
                <a href="${pageContext.request.contextPath}/articles"
                   class="px-6 py-3 bg-gray-200 text-gray-700 rounded-lg shadow hover:bg-gray-300 transition">
                    ❌ Cancel
                </a>
            </div>
        </form>
    </section>

    <!-- Footer -->
    <footer class="bg-gray-800 text-gray-300 py-6 text-center">
        <p>&copy; 2025 BlogSphere. All rights reserved.</p>
    </footer>

</body>
</html>
