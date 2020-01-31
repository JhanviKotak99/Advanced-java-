<%@include file="header.jsp" %>
<html>
<body>
  <!-- Main Content -->
 

  <%!
    double add(double d1, double d2){
        double ans=d1+d2;
        return ans;
    }
    double sub(double d1, double d2){
        double ans=d1-d2;
        return ans;
    }
    double mult(double d1, double d2){
        double ans=d1*d2;
        return ans;
    }
    double div(double d1, double d2){
        double ans=d1/d2;
        return ans;
    }
  %>

  <%
  double ans=0;
  if(request.getParameter("operator")!=null){
  double n1 = Double.parseDouble(request.getParameter("operand1"));
  double n2 = Double.parseDouble(request.getParameter("operand2"));
  char op = request.getParameter("operator").charAt(0);
 
  

  switch(op){
    case '+' : ans=add(n1,n2);
                break;
    case '-' : ans=sub(n1,n2);
                break;
    case '*' : ans=mult(n1,n2);
                break;
    case '/' : ans=div(n1,n2);
                break;
  }
  //response.sendRedirect("calculator.jsp?answer="+ans);
  }
  //if(request.getParameter("answer")!=null){
   // ans = Double.parseDouble(request.getParameter("answer"));
 // }
  %>

 <form action=" " method="post">
      <input type="text" name="operand1" placeholder="Enter operand 1"><br><br>
      <input type="text" name="operand2" placeholder="Enter operand 2"><br><br>
          <input type="text" name="answer" placeholder="Answer" value="<%=ans%>"><br><br>
      <input type="submit" name ="operator" value="+">
      <input type="submit" name ="operator" value="-">
      <input type="submit" name ="operator" value="*">
      <input type="submit" name ="operator" value="/">
  </form>

        <!-- Pager -->
        <div class="clearfix">
          <a class="btn btn-primary float-right" href="#">Older Posts &rarr;</a>
        </div>
      </div>
    </div>
  </div>

  <hr>

  <!-- Footer -->
  <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <ul class="list-inline text-center">
            <li class="list-inline-item">
              <a href="#">
                <span class="fa-stack fa-lg">
                  <i class="fas fa-circle fa-stack-2x"></i>
                  <i class="fab fa-twitter fa-stack-1x fa-inverse"></i>
                </span>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <span class="fa-stack fa-lg">
                  <i class="fas fa-circle fa-stack-2x"></i>
                  <i class="fab fa-facebook-f fa-stack-1x fa-inverse"></i>
                </span>
              </a>
            </li>
            <li class="list-inline-item">
              <a href="#">
                <span class="fa-stack fa-lg">
                  <i class="fas fa-circle fa-stack-2x"></i>
                  <i class="fab fa-github fa-stack-1x fa-inverse"></i>
                </span>
              </a>
            </li>
          </ul>
          <p class="copyright text-muted">Copyright &copy; Your Website 2019</p>
        </div>
      </div>
    </div>
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/clean-blog.min.js"></script>

</body>

</html>
