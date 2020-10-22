AUI().ready(function() {});

$('.get-out-session').text("CERRAR SESIÓN");

Liferay.Portlet.ready(function(portletId, node) {
	console.log(portletId);
	console.log(node);
});

Liferay.on('allPortletsReady',function() {});