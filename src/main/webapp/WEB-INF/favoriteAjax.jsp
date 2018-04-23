<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${currentUser!=null}">
    <c:forEach items="${productId}" var="pId">
    <c:if test="${favoriteProduct.contains(pId)}">
        <button onclick="save(${pId})" type="button"
                class="btn btn-outline-secondary btn-sm btn-wishlist "
                data-toggle="tooltip"
                title="Whishlist"><i class="icon-heart"></i></button>
    </c:if>
    <c:if test="${!favoriteProduct.contains(pId)}">
        <button onclick="save(${pId})" type="button"
                class="btn btn-outline-secondary btn-sm btn-wishlist "
                data-toggle="tooltip" title="" id="passive" data-original-title="Whishlist">
            <i class="icon-heart"></i></button>
    </c:if>
    </c:forEach>
</c:if>