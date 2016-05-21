package org.huoran.main.util;

public class ResultBean {

	public static final String STATUS_OK = "0";
	public static final String STATUS_FAILD = "1";
	public static final String STATUS_NONE = "2";
	public static final String STATUS_ERROR = "3";

	private String status;
	private String msg;
	private String data;
	private Object result;

	public void setStatus(String status) {
		this.status = status;
	}

	public void setMsg(String msg) {

		this.msg = msg;
	}

	public void setResult(Object result) {
		this.result = result;
	}

	public ResultBean(String status, String msg, Object result) {
		this.status = status;
		this.msg = msg;
		this.result = result;
	}

	public ResultBean(String status) {
		this.status = status;
		this.msg = "";
		this.result = null;
	}

	public ResultBean(String status, String msg) {
		this.status = status;
		this.msg = msg;
		this.result = null;
	}

	public ResultBean(String status, String data, String msg) {
		this.status = status;
		this.data = data;
		this.result = msg;
	}

	public ResultBean(String status, String msg, String data, Object result) {
		this.status = status;
		this.msg = msg;
		this.data = data;
		this.result = result;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public String getStatus() {
		return status;
	}

	public String getMsg() {
		return msg;
	}

	public Object getResult() {
		return result;
	}

	public static ResultBean Ok(String msg) {
		return new ResultBean(ResultBean.STATUS_OK, msg);
	}

	public static ResultBean Ok(String msg, Object result) {
		return new ResultBean(ResultBean.STATUS_OK, msg, result);
	}

	public static ResultBean Ok(String msg, String data) {
		return new ResultBean(ResultBean.STATUS_OK, msg, data);
	}

	public static ResultBean Ok(String msg, String data, Object result) {
		return new ResultBean(ResultBean.STATUS_OK, msg, data, result);
	}

	public static ResultBean Faild(String msg) {
		return new ResultBean(ResultBean.STATUS_FAILD, msg);
	}

	public static ResultBean None(String msg) {
		return new ResultBean(ResultBean.STATUS_NONE, msg);
	}
}