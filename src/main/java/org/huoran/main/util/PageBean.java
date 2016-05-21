package org.huoran.main.util;

import java.util.List;

public class PageBean {
    private Integer currentPage=0;

    private Integer pageSize = 20;

    private Integer recordCount;

    private Integer pageCount;

    private List resultList;
    
    private String orderBy;
    
    private String orderType;
    
    public PageBean() {
	}
    
    @SuppressWarnings("rawtypes")
	public PageBean(Integer page, Integer size,Integer recordCount,List results){
    	this.setCurrentPage(page);
    	this.setPageSize(size);
    	this.setRecordCount(recordCount);
    	this.setResultList(results);
    }
    
    public String getOrderBy() {
        return orderBy;
    }

    public void setOrderBy(String orderBy) {
        this.orderBy = orderBy;
    }

    public String getOrderType() {
        return orderType;
    }

    public void setOrderType(String orderType) {
        this.orderType = orderType;
    }

    public Integer getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(Integer currentPage) {
    	if(currentPage != null){
    		this.currentPage=currentPage;
    	}
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
    	if(pageSize != null){
    		this.pageSize=pageSize;
    	}
    }

    public Integer getRecordCount() {
        return recordCount;
    }

    public void setRecordCount(Integer recordCount) {
        this.recordCount=recordCount;
        int size = this.pageSize;
        int page = this.currentPage;
        
        int count = recordCount%size==0 ? recordCount/size : recordCount/size+1;
        this.pageCount = count;
        //check page
        this.currentPage = page<1 ? 1 : ((page>count)? count : page);
    }

    public Integer getPageCount() {
        return pageCount;
    }

    public void setPageCount(Integer pageCount) {
        this.pageCount=pageCount;
    }

    public List getResultList() {
        return resultList;
    }

    public void setResultList(List resultList) {
        this.resultList=resultList;
    }
}