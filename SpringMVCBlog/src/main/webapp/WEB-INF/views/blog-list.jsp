<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Blog | BlogSphere</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        function toggleContent(id) {
            const shortText = document.getElementById("short-" + id);
            const fullText = document.getElementById("full-" + id);
            const btn = document.getElementById("btn-" + id);

            if (shortText.classList.contains("hidden")) {
                // Collapse back
                shortText.classList.remove("hidden");
                fullText.classList.add("hidden");
                btn.innerText = "📖 Read More";
            } else {
                // Expand
                shortText.classList.add("hidden");
                fullText.classList.remove("hidden");
                btn.innerText = "⬆️ Show Less";
            }
        }
    </script>
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
    <section class="text-center py-12 bg-gradient-to-r from-indigo-600 to-purple-600 text-white">
        <h1 class="text-4xl font-bold">Our Blog</h1>
        <p class="mt-2 text-lg">Read the latest posts from our writers</p>
    </section>

    <!-- Blog Feed -->
    <section class="max-w-6xl mx-auto px-4 py-12 grid gap-8 md:grid-cols-2 lg:grid-cols-3">
        <c:forEach var="art" items="${articles}">
            <div class="bg-white shadow-lg rounded-2xl overflow-hidden hover:shadow-2xl transition">
                <div class="p-6">
                    <h2 class="text-2xl font-semibold text-indigo-700 mb-2">
                        ${art.title}
                    </h2>
                    <p class="text-sm text-gray-500 mb-4 italic">By ${art.author} on ${art.createdAt}</p>

                    <!-- Short Preview -->
                    <p id="short-${art.id}" class="text-gray-700 mb-4">
                        ${fn:substring(art.content,0,200)}...
                    </p>

                    <!-- Full Content (hidden by default) -->
                    <p id="full-${art.id}" class="text-gray-700 mb-4 hidden whitespace-pre-wrap">
                        ${art.content}
                    </p>

                    <!-- Toggle Button -->
                    <button id="btn-${art.id}" onclick="toggleContent('${art.id}')"
                       class="px-4 py-2 bg-indigo-600 text-white rounded-lg shadow hover:bg-indigo-700 transition">
                        📖 Read More
                    </button>
                </div>
            </div>
        </c:forEach>
    </section>

    <!-- Back to Home -->
    <div class="text-center mb-12">
        <a href="${pageContext.request.contextPath}/"
           class="inline-block px-5 py-2 bg-gray-200 text-gray-700 rounded-lg shadow hover:bg-gray-300 transition">
            ⬅️ Back to Home
        </a>
    </div>

    <!-- Footer -->
    <footer class="bg-gray-800 text-gray-300 py-6 text-center">
        <p>&copy; 2025 BlogSphere. All rights reserved.</p>
    </footer>

</body>
</html>
