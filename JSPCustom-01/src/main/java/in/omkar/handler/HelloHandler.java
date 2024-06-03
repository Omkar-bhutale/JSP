package in.omkar.handler;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.Tag;

public class HelloHandler implements Tag {
	private String name = null;
	PageContext pageContext = null;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	static {
		System.out.println("Hello handler class is loding");
	}

	public HelloHandler() {
		System.out.println("hello handler class is  instantiating");
	}

	@Override
	public int doEndTag() throws JspException {
		System.out.println("HelloHandler.doEndTag()");
		return EVAL_PAGE;
	}

	@Override
	public int doStartTag() throws JspException {
		
		System.out.println("HelloHandler.doStartTag()");
			JspWriter out = pageContext.getOut();
			try {
				if (name != null) {
					out.println("Wclcome ::" + name);
				}else {
					out.println("Welcome gust no name attribute is spacified");
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return EVAL_BODY_INCLUDE;
	}

	@Override
	public Tag getParent() {
		System.out.println("HelloHandler.getParent()");
		return null;
	}

	@Override
	public void release() {
		System.out.println("HelloHandler.release()");

	}

	@Override
	public void setPageContext(PageContext pageContext) {
		this.pageContext = pageContext;
		System.out.println("HelloHandler.setPageContext()");
	}

	@Override
	public void setParent(Tag arg0) {
		System.out.println("HelloHandler.setParent()"); 
	}

}
