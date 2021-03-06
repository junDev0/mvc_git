/**
 * 
 */
package member;

import java.util.List;

/**
 * @date     : 2016. 6. 17.
 * @author   : jun.dev
 * @fileName : StudentService.java
 * @story    : 
 */
public interface MemberService {
	public String regist(MemberBean bean);
	public MemberBean findBy();
	public List<MemberBean> show();
	public String update(MemberBean bean); //pw만 수정가능
	public String delete(MemberBean bean);
	public int count();
	public MemberBean findById(String id);
	public List<MemberBean> findByName(String name);
	public int findByGen(String gender);
	public String login(MemberBean bean);
	public String logout(MemberBean bean);
}
