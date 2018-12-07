<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<meta name="format-detection" content="telephone=no">
	<meta name="author" content="JFinalShop Team">
	<meta name="copyright" content="JFinalShop">
	<title>${message("member.review.list")}[#if showPowered] - Powered By JFinalShop[/#if]</title>
	<link href="${base}/favicon.ico" rel="icon">
	<link href="${base}/resources/mobile/member/css/bootstrap.css" rel="stylesheet">
	<link href="${base}/resources/mobile/member/css/font-awesome.css" rel="stylesheet">
	<link href="${base}/resources/mobile/member/css/animate.css" rel="stylesheet">
	<link href="${base}/resources/mobile/member/css/common.css" rel="stylesheet">
	<link href="${base}/resources/mobile/member/css/profile.css" rel="stylesheet">
	<!--[if lt IE 9]>
		<script src="${base}/resources/mobile/member/js/html5shiv.js"></script>
		<script src="${base}/resources/mobile/member/js/respond.js"></script>
	<![endif]-->
	<script src="${base}/resources/mobile/member/js/jquery.js"></script>
	<script src="${base}/resources/mobile/member/js/bootstrap.js"></script>
	<script src="${base}/resources/mobile/member/js/underscore.js"></script>
	<script src="${base}/resources/mobile/member/js/moment.js"></script>
	<script src="${base}/resources/mobile/member/js/common.js"></script>
	<script id="reviewTemplate" type="text/template">
		<%_.each(reviews, function(review, i) {%>
			<div class="panel panel-flat">
				<div class="panel-heading small">
					${message("member.common.createdDate")}:
					<span title="<%-moment(review.createdDate).format('YYYY-MM-DD HH:mm:ss')%>"><%-moment(review.createdDate).format('YYYY-MM-DD')%></span>
				</div>
				<div class="panel-body">
					<div class="media">
						<div class="media-left media-middle">
							<a href="${base}<%-review.product.path%>#review" title="<%-review.product.name%>">
								<img src="<%-review.product.thumbnail != null ? review.product.thumbnail : "${setting.defaultThumbnailProductImage}"%>" alt="<%-review.product.name%>">
							</a>
						</div>
						<div class="media-body media-middle">
							<h4 class="media-heading">
								<a href="${base}<%-review.product.path%>#review" title="<%-review.product.name%>"><%-abbreviate(review.product.name, 30)%></a>
							</h4>
						</div>
						<div class="media-right media-middle">
							<span class="score">${message("Review.score")}: <%-review.score%></span>
						</div>
					</div>
				</div>
				<div class="panel-footer text-right">
					<a class="btn btn-sm btn-default" href="${base}<%-review.product.path%>#review">${message("member.common.view")}</a>
				</div>
			</div>
		<%})%>
	</script>
	<script type="text/javascript">
	$().ready(function() {
		
		var $reviewItems = $("#reviewItems");
		var reviewTemplate = _.template($("#reviewTemplate").html());
		
		// 无限滚动加载
		$reviewItems.infiniteScroll({
			url: function(pageNumber) {
				return "${base}/member/review/m_list?pageNumber=" + pageNumber;
			},
			pageSize: 10,
			template: function(pageNumber, data) {
				return reviewTemplate({
					reviews: data
				});
			}
		});
		
	});
	</script>
</head>
<body class="profile">
	<header class="header-fixed">
		<a class="pull-left" href="${base}/member/index">
			<span class="glyphicon glyphicon-menu-left"></span>
		</a>
		${message("member.review.list")}
	</header>
	<main>
		<div class="container-fluid">
			<div id="reviewItems"></div>
		</div>
	</main>
</body>
</html>