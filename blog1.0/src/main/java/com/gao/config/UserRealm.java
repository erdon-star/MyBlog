package com.gao.config;

import com.gao.pojo.User;
import com.gao.service.UserService;
import com.gao.util.MD5Utils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;

public class UserRealm extends AuthorizingRealm {

    @Autowired
    private UserService userService;

    //授权
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        System.out.println("进行了授权");
        return null;
    }

    //认证
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {

        System.out.println("进行了认证");
        UsernamePasswordToken userToken = (UsernamePasswordToken) authenticationToken;
        User user = userService.checkUser(userToken.getUsername());

        if (null == user) {//没有
            return null;//会到LoginController层报出UnknownAccountException用户名不存在异常
        }

        Subject subject = SecurityUtils.getSubject();
        Session session = subject.getSession();
        session.setAttribute("user", user);


        //密码认证，shiro来做
        return new SimpleAuthenticationInfo("",user.getPassword(),"");
    }
}
