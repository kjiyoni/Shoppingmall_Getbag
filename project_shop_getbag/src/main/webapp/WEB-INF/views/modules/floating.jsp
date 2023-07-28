<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<div class="floating" id="floating">
    <ul>
     <li><a href="<%=request.getContextPath()%>/getbag/basket-empty"><i class="bi bi-cart2" style="font-size: 3rem;"></i></a></li>
     <li><a href="#"><i class="bi bi-arrow-up-circle" style="font-size: 3rem;"></i></a></li>
    </ul>
  </div>
  
  
  <script>
    // Debounce function to delay the execution of the scroll event handling
    function debounce(func, wait, immediate) {
      let timeout;
      return function () {
        const context = this;
        const args = arguments;
        const later = function () {
          timeout = null;
          if (!immediate) func.apply(context, args);
        };
        const callNow = immediate && !timeout;
        clearTimeout(timeout);
        timeout = setTimeout(later, wait);
        if (callNow) func.apply(context, args);
      };
    }

    // Function to smoothly animate opacity
    function animateOpacity(targetOpacity, element) {
      var currentOpacity = parseFloat(element.style.opacity || 0);

      if (currentOpacity.toFixed(2) !== targetOpacity.toFixed(2)) {
        // Incrementally update the opacity
        currentOpacity += (targetOpacity - currentOpacity) * 0.1;
        element.style.opacity = currentOpacity;
        requestAnimationFrame(function () {
          animateOpacity(targetOpacity, element);
        });
      } else {
        // Animation complete, set the final opacity and display
        element.style.opacity = targetOpacity;
        element.style.display = targetOpacity > 0 ? 'block' : 'none';
      }
    }

    // Function to check if the quick button should be visible
    function checkQuickButtonVisibility() {
      var floating = document.getElementById('floating');
      var scrollPosition = window.scrollY || window.pageYOffset;

      if (scrollPosition > 1800) { // Adjust the scroll position as needed
         floating.style.display = 'block';
        animateOpacity(1, floating);
      } else {
        animateOpacity(0, floating);
      }
    }

    // Add event listener for debounced scroll event
    window.addEventListener('scroll', debounce(checkQuickButtonVisibility, 100));
  </script>
