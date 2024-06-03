package in.omkar.handler;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.Tag;


public class PlaceHandler implements Tag {
	private String where = null;
	private PageContext pageContext = null;
	



	public String getWhere() {
		return where;
	}

	public void setWhere(String where) {
		this.where = where;
	}

	public PageContext getPageContext() {
		return pageContext;
	}

	@Override
	public int doEndTag() throws JspException {
		return EVAL_PAGE;
	}

	@Override
	public int doStartTag() throws JspException {
		JspWriter out = pageContext.getOut();
		try {
			out.print("<h1>Boody of this tag is skippedo </h1></br>\n");
			if (where != null) {
				out.println("You are At ::" + where);				
			}else {
				out.println("You are at an nymus place");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		return SKIP_BODY;
	}

	@Override
	public Tag getParent() {
		return null;
	}

	@Override
	public void release() {
		
	}

	@Override
	public void setPageContext(PageContext arg0) {
		this.pageContext = arg0;
	}

	@Override
	public void setParent(Tag arg0) {
		
	}

}
