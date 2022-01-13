<%@taglib prefix="c" tagdir="/WEB-INF/tags" %>

<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="${pageContext.request.contextPath}">P.O.S</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav me-auto mb-2 mb-md-0">
          <li class="nav-item">
            <a class="nav-link ${pageContext.request.requestURI eq '/ParkingLot/about.jsp' ? ' active' : ''}" aria-current="page" href="#">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link ${pageContext.request.requestURI eq '/ParkingLot/about.jsp' ? ' active' : ''}" 
               href="${pageContext.request.contextPath}/about.jsp">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link ${activePage eq 'Products' ? ' active' : ''}" 
               href="${pageContext.request.contextPath}/Products" >Products</a>
          </li>
        </ul>
       <ul class="navbar-nav d-flex"">
          <li class="nav-item">
            <a class="nav-link " href="${pageContext.request.contextPath}/Login.jsp">Login</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
