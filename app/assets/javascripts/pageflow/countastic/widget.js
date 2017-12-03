
pageflow.widgetTypes.register('countastic', {
  enhance: function(element) {
    // selecteer de target node
    var target = document.querySelector('.page');

    // Check if an element with class 'content_and_background' is added
    var observer = new MutationObserver(function(mutations) {
      mutations.forEach(function(mutation) {
        mutation.addedNodes.forEach(node => {
          if (node.classList.contains('content_and_background')) addCounter(node);
        });
      });
    });

    var config = { attributes: false, childList: true, characterData: false };

    // Start observer
    observer.observe(target, config);

    // Add counter span and start counting
    function addCounter(node) {
      var numbersPresent = $(node).find('span');

      numbersPresent.each(function (i, node) {
          var containsNumber = node.innerText.match(/(\d+)/g);

          if (containsNumber) {
            var elWithNumber = $(node);

            // Replace number with span tag
            replaceNumbersWithCountasticSpan(elWithNumber);

            // Find counter span
            var counterNode = $(elWithNumber).find('.countastic');

            // Start counter
            if(counterNode.length) startCounter(counterNode[0], 0, containsNumber[0]);
          }
      });
    }

    function replaceNumbersWithCountasticSpan (el) {
      el.html(function(i, v) {
        return v.replace(/(\d+)/g, '<span class="countastic">$i</span>'); // Todo: set initial value
      });
    }

    function startCounter (el, start, end) {
        var numAnim = new CountUp(el, start, end);

         if (!numAnim.error) {
             numAnim.start();
         } else {
             console.error(numAnim.error);
         }
    }
  }
});
