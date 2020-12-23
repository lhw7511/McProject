package com.mc.p1.util;

import lombok.Data;


public class ProductPager {

	private long startRow;
	private long perPage; 
	private Integer curPage;
	private Integer mCode;
	private int wCode;
	private long totalCount;
	private long totalPage;
	public ProductPager() {
		this.perPage=4;
	}
	
	public void makeRow() {
		//startRow계산
		startRow=(this.getCurPage()-1)*this.getPerPage();
	}
	
	public void makePage() {
		//전체 페에지의 개수
		this.totalPage=this.getTotalCount()/this.getPerPage();
		if(this.getTotalCount()%this.getPerPage()!=0) {
			this.totalPage++;
		}
		
		
		
	}
	
	
	
	
	public long getStartRow() {
		return startRow;
	}

	public void setStartRow(long startRow) {
		this.startRow = startRow;
	}

	public long getPerPage() {
		return perPage;
	}

	public void setPerPage(long perPage) {
		this.perPage = perPage;
	}

	public int getwCode() {
		return wCode;
	}

	public void setwCode(int wCode) {
		this.wCode = wCode;
	}

	public long getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(long totalCount) {
		this.totalCount = totalCount;
	}

	public long getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(long totalPage) {
		this.totalPage = totalPage;
	}

	public int getCurPage() {
		if(this.curPage==null) {
			this.curPage=1;
		}
		return curPage;
	}
	public void setCurPage(Integer curPage) {
		if(curPage==null) {
			curPage=1;
			
		}
		this.curPage=curPage;
	}

	public Integer getmCode() {
		if(this.mCode==null) {
			this.mCode=1;
		}
		return mCode;
	}

	public void setmCode(Integer mCode) {
		if(mCode==null) {
			mCode=1;
		}
		this.mCode = mCode;
	}
	
	
	
}
