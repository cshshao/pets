package com.controller;

import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.entity.ChongwulingyangEntity;
import com.entity.ChongwuxinxiEntity;
import com.entity.view.ChongwulingyangView;
import com.service.ChongwulingyangService;
import com.service.ChongwuxinxiService;
import com.utils.MPUtil;
import com.utils.PageUtils;
import com.utils.R;


/**
 * 宠物领养
 * 后端接口
 * @author 
 * @email 
 * @date 2021-04-15 11:01:36
 */
@RestController
@RequestMapping("/chongwulingyang")
public class ChongwulingyangController {
	//自动注入
    @Autowired
    private ChongwulingyangService chongwulingyangService;
    
    @Autowired
    private ChongwuxinxiService chongwuxinxiServce;


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,ChongwulingyangEntity chongwulingyang, 
		HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yonghu")) {
			chongwulingyang.setYonghuming((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<ChongwulingyangEntity> ew = new EntityWrapper<ChongwulingyangEntity>();
    	PageUtils page = chongwulingyangService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, chongwulingyang), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,ChongwulingyangEntity chongwulingyang, HttpServletRequest request){
        EntityWrapper<ChongwulingyangEntity> ew = new EntityWrapper<ChongwulingyangEntity>();
    	PageUtils page = chongwulingyangService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, chongwulingyang), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( ChongwulingyangEntity chongwulingyang){
       	EntityWrapper<ChongwulingyangEntity> ew = new EntityWrapper<ChongwulingyangEntity>();
      	ew.allEq(MPUtil.allEQMapPre( chongwulingyang, "chongwulingyang")); 
        return R.ok().put("data", chongwulingyangService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(ChongwulingyangEntity chongwulingyang){
        EntityWrapper< ChongwulingyangEntity> ew = new EntityWrapper< ChongwulingyangEntity>();
 		ew.allEq(MPUtil.allEQMapPre( chongwulingyang, "chongwulingyang")); 
		ChongwulingyangView chongwulingyangView =  chongwulingyangService.selectView(ew);
		return R.ok("查询宠物领养成功").put("data", chongwulingyangView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        ChongwulingyangEntity chongwulingyang = chongwulingyangService.selectById(id);
        return R.ok().put("data", chongwulingyang);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        ChongwulingyangEntity chongwulingyang = chongwulingyangService.selectById(id);
        return R.ok().put("data", chongwulingyang);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody ChongwulingyangEntity chongwulingyang, HttpServletRequest request){
    	chongwulingyang.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(chongwulingyang);

        chongwulingyangService.insert(chongwulingyang);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody ChongwulingyangEntity chongwulingyang, HttpServletRequest request){
    	chongwulingyang.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(chongwulingyang);

        chongwulingyangService.insert(chongwulingyang);
        return R.ok();
    }

    /**
     * 修改/审核
     */
    @RequestMapping("/update")
    public R update(@RequestParam(required = false) Integer flag,@RequestBody ChongwulingyangEntity chongwulingyang, HttpServletRequest request){
        //ValidatorUtils.validateEntity(chongwulingyang);
        chongwulingyangService.updateById(chongwulingyang);//全部更新
        if(flag!=null &&flag==1 &&chongwulingyang.getSfsh().equals("是")) {
        	ChongwulingyangEntity cwly = chongwulingyangService.selectById(chongwulingyang.getId());
        	ChongwuxinxiEntity cw = chongwuxinxiServce.selectOne(new EntityWrapper<ChongwuxinxiEntity>().eq("chongwumingcheng", cwly.getChongwumingcheng()));
        	if(cw!=null) {
        		cw.setZhuangtai("已领养");
        	}
        	chongwuxinxiServce.updateById(cw);
        }
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        chongwulingyangService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<ChongwulingyangEntity> wrapper = new EntityWrapper<ChongwulingyangEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yonghu")) {
			wrapper.eq("yonghuming", (String)request.getSession().getAttribute("username"));
		}

		int count = chongwulingyangService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	
	


}
