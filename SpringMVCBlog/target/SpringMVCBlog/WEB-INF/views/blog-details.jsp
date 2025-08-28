<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${article.title} | BlogSphere</title>
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

    <!-- Blog Header -->
    <section class="text-center py-12 bg-gradient-to-r from-indigo-600 to-purple-600 text-white">
        <h1 class="text-4xl font-bold mb-2">${article.title}</h1>
        <p class="text-lg italic">By ${article.author} on ${article.createdAt}</p>
    </section>

    <!-- Blog Content -->
    <section class="max-w-4xl mx-auto bg-white shadow-lg rounded-2xl p-8 my-12">
        <article class="prose max-w-none prose-indigo">
            <p class="whitespace-pre-wrap leading-relaxed text-lg text-gray-700">
                ${article.content}
            </p>
        </article>

        <!-- Back Button -->
        <div class="mt-8">
            <a href="${pageContext.request.contextPath}/blog"
               class="inline-block px-5 py-2 bg-gray-200 text-gray-700 rounded-lg shadow hover:bg-gray-300 transition">
                ⬅️ Back to Blog
            </a>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-gray-800 text-gray-300 py-6 text-center">
        <p>&copy; 2025 BlogSphere. All rights reserved.</p>
    </footer>

</body>
</html>
