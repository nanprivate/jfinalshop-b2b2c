<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<meta name="author" content="JFinalShop Team">
	<meta name="copyright" content="JFinalShop">
	<title>${message("business.coupon.list")} - Powered By JFinalShop</title>
	<link href="${base}/favicon.ico" rel="icon">
	<link href="${base}/resources/business/css/bootstrap.css" rel="stylesheet">
	<link href="${base}/resources/business/css/font-awesome.css" rel="stylesheet">
	<link href="${base}/resources/business/css/animate.css" rel="stylesheet">
	<link href="${base}/resources/business/css/adminLTE.css" rel="stylesheet">
	<link href="${base}/resources/business/css/common.css" rel="stylesheet">
	<!--[if lt IE 9]>
		<script src="${base}/resources/business/js/html5shiv.js"></script>
		<script src="${base}/resources/business/js/respond.js"></script>
	<![endif]-->
	<script src="${base}/resources/business/js/jquery.js"></script>
	<script src="${base}/resources/business/js/bootstrap.js"></script>
	<script src="${base}/resources/business/js/velocity.js"></script>
	<script src="${base}/resources/business/js/velocity.ui.js"></script>
	<script src="${base}/resources/business/js/icheck.js"></script>
	<script src="${base}/resources/business/js/adminLTE.js"></script>
	<script src="${base}/resources/business/js/common.js"></script>
	<script type="text/javascript">
	$().ready(function() {
	
		[#if flashMessage?has_content]
			$.alert("${flashMessage}");
		[/#if]
	
	});
	</script>
</head>
<body class="hold-transition sidebar-mini">
	<div class="container-fluid">
		<section class="content-header">
			<h1>优惠码列表</h1>
			<ol class="breadcrumb">
				<li>
					<a href="${base}/business/index/main">
						<i class="fa fa-home"></i>
						${message("business.common.index")}
					</a>
				</li>
				<li class="active">优惠码列表</li>
			</ol>
		</section>
		<section class="content">
			<div class="row">
				<div class="col-xs-12">
					<form action="${base}/business/coupon/view" method="get">
						<input name="pageable.pageSize" type="hidden" value="${pageable.pageSize}">
						<input name="pageable.pageNumber" type="hidden" value="${pageable.pageNumber}">
						<input name="pageable.searchProperty" type="hidden" value="${pageable.searchProperty}">
						<input name="pageable.orderProperty" type="hidden" value="${pageable.orderProperty}">
						<input name="pageable.orderDirection" type="hidden" value="${pageable.orderDirection}">
						<div class="box">
							<div class="box-header">
								<div class="row">
									<div class="col-xs-9">
										<div class="btn-group">
											<!-- <a class="btn btn-default" href="${base}/business/coupon/add">
												<i class="fa fa-plus"></i>
												${message("business.common.add")}
											</a> -->
											<!-- <button class="btn btn-default" type="button" data-toggle="delete" disabled>
												<i class="fa fa-times"></i>
												${message("business.common.delete")}
											</button> -->
											<button class="btn btn-default" type="button" data-toggle="refresh">
												<i class="fa fa-refresh"></i>
												${message("business.common.refresh")}
											</button>
											<div class="btn-group">
												<button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">
													${message("business.common.pageSize")}
													<span class="caret"></span>
												</button>
												<ul class="dropdown-menu">
													<li[#if pageable.pageSize == 10] class="active"[/#if] data-page-size="10">
														<a href="javascript:;">10</a>
													</li>
													<li[#if pageable.pageSize == 20] class="active"[/#if] data-page-size="20">
														<a href="javascript:;">20</a>
													</li>
													<li[#if pageable.pageSize == 50] class="active"[/#if] data-page-size="50">
														<a href="javascript:;">50</a>
													</li>
													<li[#if pageable.pageSize == 100] class="active"[/#if] data-page-size="100">
														<a href="javascript:;">100</a>
													</li>
												</ul>
											</div>
										</div>
									</div>
									<div class="col-xs-3">
										<div class="box-tools">
											<div id="search" class="input-group">
												<div class="input-group-btn">
													<button class="btn btn-default" type="button" data-toggle="dropdown">
														[#switch pageable.searchProperty]
															[#case "code"]
																<span>编码</span>
															[#break]
															[#default]
																<span></span>
														[/#switch]
														<i class="caret"></i>
													</button>
													<ul class="dropdown-menu">
														<li[#if !pageable.searchProperty?? || pageable.searchProperty == "name"] class="active"[/#if] data-search-property="name">
															<a href="javascript:;">${message("Coupon.name")}</a>
														</li>
														<li[#if pageable.searchProperty == "prefix"] class="active"[/#if] data-search-property="prefix">
															<a href="javascript:;">${message("Coupon.prefix")}</a>
														</li>
													</ul>
												</div>
												<input name="searchValue" class="form-control" type="text" value="${pageable.searchValue}" placeholder="${message("business.common.search")}">
												<div class="input-group-btn">
													<button class="btn btn-default" type="submit">
														<i class="fa fa-search"></i>
													</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="box-body table-responsive no-padding">
								<table class="table table-hover">
									<thead>
										<tr>
											<th>
												<i class="check-all fa fa-square-o" data-toggle="checkAll"></i>
											</th>
											<th>
												<a href="javascript:;" data-order-property="name">
													${message("Coupon.name")}
													<i class="fa fa-sort"></i>
												</a>
											</th>
											<th>
												<a href="javascript:;" data-order-property="prefix">
													${message("Coupon.prefix")}
													<i class="fa fa-sort"></i>
												</a>
											</th>
											<th>
												<a href="javascript:;" data-order-property="beginDate">
													编码
													<i class="fa fa-sort"></i>
												</a>
											</th>
											<th>
												<a href="javascript:;" data-order-property="endDate">
													是否使用
													<i class="fa fa-sort"></i>
												</a>
											</th>
											<th>
												<a href="javascript:;" data-order-property="isEnabled">
													使用日期
													<i class="fa fa-sort"></i>
												</a>
											</th>
											<th>
												<a href="javascript:;" data-order-property="isEnabled">
													使用会员
													<i class="fa fa-sort"></i>
												</a>
											</th>
											<th>${message("business.common.action")}</th>
										</tr>
									</thead>
									<tbody>
										[#list couponCodes as couponCode]
											<tr>
												<td>
													<input name="ids" type="checkbox" value="${coupon.id}">
												</td>
												<td>${couponCode.coupon.name}</td>
												<td>${couponCode.coupon.prefix}</td>
												<td>${couponCode.code}</td>
												<td>
													[#if couponCode.isUsed]
														<i class="fa fa-check"></i>
													[#else]
														<i class="fa fa-times"></i>
													[/#if]
												</td>
												<td>
													[#if couponCode.usedDate??]
														<span title="${coupon.endDate?string("yyyy-MM-dd HH:mm:ss")}">${couponCode.usedDate}</span>
													[#else]
														-
													[/#if]
												</td>
												<td>${couponCode.member.username}</td>
												<td></td>
											</tr>
										[/#list]
									</tbody>
								</table>
								[#if !couponCodes?has_content]
									<p class="no-result">${message("business.common.noResult")}</p>
								[/#if]
							</div>
							[@pagination pageNumber = page.pageNumber totalPages = page.totalPage]
								[#if totalPages > 1]
									<div class="box-footer clearfix">
										[#include "/business/include/pagination.ftl"]
									</div>
								[/#if]
							[/@pagination]
						</div>
					</form>
				</div>
			</div>
		</section>
	</div>
</body>
</html>