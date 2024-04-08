package com.multi.mvc.notice.model.vo;

public class NoticeParam {
	private int page;
	private int limit;
	private int offset;

	public NoticeParam() {
		super();
		page = 1;
	}

	public NoticeParam(int page, int limit, int offset) {
		super();
		this.page = page;
		this.limit = limit;
		this.offset = offset;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

	public int getOffset() {
		return offset;
	}

	public void setOffset(int offset) {
		this.offset = offset;
	}

}
