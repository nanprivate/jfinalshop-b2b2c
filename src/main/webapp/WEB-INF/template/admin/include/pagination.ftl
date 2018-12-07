<input type="hidden" id="pageSize" name="pageable.pageSize" value="${pageable.pageSize}" />
<input type="hidden" id="searchProperty" name="pageable.searchProperty" value="${pageable.searchProperty}" />
<input type="hidden" id="orderProperty" name="pageable.orderProperty" value="${pageable.orderProperty}" />
<input type="hidden" id="orderDirection" name="pageable.orderDirection" value="${pageable.orderDirection}" />
[#if totalPages > 1]
	<div class="pagination">
		[#if isFirst]
			<span class="firstPage">&nbsp;</span>
		[#else]
			<a href="javascript: $.pageSkip(${firstPageNumber});" class="firstPage">&nbsp;</a>
		[/#if]
		[#if hasPrevious]
			<a href="javascript: $.pageSkip(${previousPageNumber});" class="previousPage">&nbsp;</a>
		[#else]
			<span class="previousPage">&nbsp;</span>
		[/#if]
		[#list segment as segmentPageNumber]
			[#if segmentPageNumber_index == 0 && segmentPageNumber > firstPageNumber + 1]
				<span class="pageBreak">...</span>
			[/#if]
			[#if segmentPageNumber != pageNumber]
				<a href="javascript: $.pageSkip(${segmentPageNumber});">${segmentPageNumber}</a>
			[#else]
				<span class="currentPage">${segmentPageNumber}</span>
			[/#if]
			[#if !segmentPageNumber_has_next && segmentPageNumber < lastPageNumber - 1]
				<span class="pageBreak">...</span>
			[/#if]
		[/#list]
		[#if hasNext]
			<a href="javascript: $.pageSkip(${nextPageNumber});" class="nextPage">&nbsp;</a>
		[#else]
			<span class="nextPage">&nbsp;</span>
		[/#if]
		[#if isLast]
			<span class="lastPage">&nbsp;</span>
		[#else]
			<a href="javascript: $.pageSkip(${lastPageNumber});" class="lastPage">&nbsp;</a>
		[/#if]
		<span class="pageSkip">
			${message("admin.page.totalPages", totalPages)}
			<input id="pageNumber" name="pageable.pageNumber" value="${pageNumber}" maxlength="9" onpaste="return false;" />
			<button type="submit">&nbsp;</button>
		</span>
	</div>
[/#if]