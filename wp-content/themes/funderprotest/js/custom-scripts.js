<script src="<?php echo esc_url( includes_url( '/js/jquery/jquery.js' ) ); ?>"></script>

(function($) {
	$(document).ready(function() {
		$('#menu-toggle').click(function() {
			$(this).toggleClass('show-mobile-menu');
		});
	});
})(jQuery);