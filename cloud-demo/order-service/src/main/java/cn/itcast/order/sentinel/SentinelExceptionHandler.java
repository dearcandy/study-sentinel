package cn.itcast.order.sentinel;

import com.alibaba.csp.sentinel.adapter.spring.webmvc.callback.BlockExceptionHandler;
import com.alibaba.csp.sentinel.slots.block.BlockException;
import com.alibaba.csp.sentinel.slots.block.authority.AuthorityException;
import com.alibaba.csp.sentinel.slots.block.degrade.DegradeException;
import com.alibaba.csp.sentinel.slots.block.flow.FlowException;
import com.alibaba.csp.sentinel.slots.block.flow.param.ParamFlowException;
import org.springframework.stereotype.Component;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author liuhangfei
 * @create 2022-11-10 22:59
 * @description 自定义异常处理器
 */
@Component
public class SentinelExceptionHandler implements BlockExceptionHandler {


    @Override
    public void handle(HttpServletRequest request, HttpServletResponse response, BlockException e) throws Exception {
        String message = "未知异常";
        int status = 429;
        if (e instanceof FlowException){
            message = "请求被限流了";
        }else if (e instanceof ParamFlowException){
            message = "请求被热点参数限流";
        }else if(e instanceof DegradeException){
            message = "请求被降级了";
        }else if (e instanceof AuthorityException){
            message = "没有权限访问";
            status = 401;
        }

        response.setContentType("application/json;charset=utf-8");
        response.setStatus(status);
        response.getWriter().println("{\"message\": " + message + ",\"status\": " + status + "}");

    }
}
