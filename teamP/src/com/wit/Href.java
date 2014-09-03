package com.wit;

public class Href {
	String url;
	String menu;
	String script;
	
	public Href() {
		super();
	}
	public Href(String url, String menu) {
		super();
		this.url = url;
		this.menu = menu;
	}
	public Href(String url, String menu, String script) {
		super();
		this.url = url;
		this.menu = menu;
		this.script = script;
	}
	
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getMenu() {
		return menu;
	}
	public void setMenu(String menu) {
		this.menu = menu;
	}
	public String getScript() {
		return script;
	}
	public void setScript(String script) {
		this.script = script;
	}
	
}
