<%
  Boolean canOpen = (Boolean) request.getAttribute("feedbackOpen");
  String role = (String) request.getAttribute("role");
  pageContext.setAttribute("feedbackOpen", canOpen);
  pageContext.setAttribute("role", role);
  System.out.println(role); 
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:choose>
  <c:when test= "${canOpen}">
    <h2 style="text-align: center">You may not submit feedback yet.</h2>
  </c:when>
  <c:otherwise>
    <c:choose>
      <c:when test= "${role = Interviewer}">
        <h1 class="text-center">Please submit your feedback for your interviewer below</h1>
        <form action="/action_page.php">
          <h5>Please Enter a value between 1 and 10 (1 being strongly disagree and 10 being strongly agree)</h5>
          <label for="question1">I was comfortable during the interview:</label><br>
          <input type="number" min="1" max="10" id="question1" name="question1"><br>
          <label for="question2">My interviewer moved at a decent pace:</label><br>
          <input type="number" min="1" max="10" id="question2" name="question2"><br>
          <label for="question3">My interviewer was able to stay on topic:</label><br>
          <input type="number" min="1" max="10" id="question3" name="question3"><br>
          <label for="question4">My interviewer was able to provide advice or suggestions along the way when I got stuck:</label><br>
          <input type="number" min="1" max="10" id="question4" name="question4"><br>
          <label for="question5">My interviewer answered my questions to the best of their ability:</label><br>
          <input type="number" min="1" max="10" id="question5" name="question5"><br>
          <label for="question6">I felt my interviewer came prepared:</label><br>
          <input type="number" min="1" max="10" id="question6" name="question5"><br>
          <label for="question7">This InterviewMe experience was helpful:</label><br>
          <input type="number" min="1" max="10" id="question7" name="question7"><br>
          <label for="question8">Is there anything in particular that your interviewer did to improve your overall experience?</label><br>
          <textarea rows="4" cols="50" id="question8" name="question8"></textarea><br>
          <label for="question9">What is something that you think your interviewer could have done better?</label><br>
          <textarea rows="4" cols="50" id="question9" name="question8"></textarea><br>
          <input type="submit" value="Submit">
        </form>
      </c:when>
      <c:otherwise>
        <h1 class="text-center">Please submit your feedback for your interviewee below</h1>
        <form action="/action_page.php">
          <h4>Please Enter a value between 1 and 10 (1 being strongly disagree and 10 being strongly agree)</h4>
          <label for="question1">The interviewee communicated their thought process as they went along:</label><br>
          <input type="number" min="1" max="10" id="question1" name="question1"><br>
          <label for="question2">The interviewee understood the time complexity of their solution:</label><br>
          <input type="number" min="1" max="10" id="question2" name="question2"><br>
          <label for="question3">The interviewee took the time to consider better solutions:</label><br>
          <input type="number" min="1" max="10" id="question3" name="question3"><br>
          <label for="question4">The interviewee came up with an example that they used to test their solution:</label><br>
          <input type="number" min="1" max="10" id="question4" name="question4"><br>
          <label for="question5">My interviewer answered my questions to the best of their ability:</label><br>
          <input type="number" min="1" max="10" id="question5" name="question5"><br>
          <label for="question6">The interviewee listed a handful of edge cases and accounted for their behaviour:</label><br>
          <input type="number" min="1" max="10" id="question6" name="question5"><br>
          <label for="question7">The interviewee asked clarifying questions:</label><br>
          <input type="number" min="1" max="10" id="question7" name="question7"><br>
          <label for="question8">This InterviewMe experience was helpful:</label><br>
          <input type="number" min="1" max="10" id="question8" name="question8"><br>
          <label for="question9">What is the interviewee's strongest skill?</label><br>
          <textarea rows="4" cols="50" id="question9" name="question9"></textarea><br>
          <label for="question10">What is one skill they should work on improving in order to become a better candidate?</label><br>
          <textarea rows="4" cols="50" id="question10" name="question10"></textarea><br>
          <label for="question11">What is the interviewee's strongest skill?</label><br>
          <textarea rows="4" cols="50" id="question11" name="question11"></textarea><br>
          <label for="question12">Evaluate this candidate's solution (Keep to three sentences or less).</label><br>
          <textarea rows="4" cols="50" id="question12" name="question12"></textarea><br>
          <label for="question13">Notes:</label><br>
          <textarea rows="4" cols="50" id="question13" name="question13"></textarea><br>
          <input type="submit" value="Submit">
        </form> 
      </c:otherwise>
    </c:choose>
  </c:otherwise>
</c:choose>