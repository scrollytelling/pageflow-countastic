(function($) {
  $.widget('pageflow.countastic', {

    _create: function() {
      ReactDOM.unmountComponentAtNode(this.element[0]);
      var numbersPresent = this.element.find('h2 span');
      numbersPresent.html(function(i, v) {
        return v.replace(/(\d)/g, '<span class="countastic">$1</span>');
      });
    }

  });
}(jQuery));
