package in.omkar.handler;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.IterationTag;
import javax.servlet.jsp.tagext.Tag;

public class ItrateHandler implements IterationTag {
	Integer count = null;
	
	
	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	@Override
	public int doEndTag() throws JspException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int doStartTag() throws JspException {
		if(count>0)
			return EVAL_BODY_INCLUDE;
		else
			return SKIP_BODY;
	}

	@Override
	public Tag getParent() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void release() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setPageContext(PageContext arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setParent(Tag arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int doAfterBody() throws JspException {
		--count;
		if(count>0)
			return EVAL_BODY_AGAIN;
		else
			return SKIP_BODY;	
		
	}

}
