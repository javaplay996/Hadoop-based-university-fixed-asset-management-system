package com.dao;

import com.entity.ZichanfenleiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ZichanfenleiVO;
import com.entity.view.ZichanfenleiView;


/**
 * 资产分类
 * 
 * @author 
 * @email 
 * @date 2023-02-20 10:44:33
 */
public interface ZichanfenleiDao extends BaseMapper<ZichanfenleiEntity> {
	
	List<ZichanfenleiVO> selectListVO(@Param("ew") Wrapper<ZichanfenleiEntity> wrapper);
	
	ZichanfenleiVO selectVO(@Param("ew") Wrapper<ZichanfenleiEntity> wrapper);
	
	List<ZichanfenleiView> selectListView(@Param("ew") Wrapper<ZichanfenleiEntity> wrapper);

	List<ZichanfenleiView> selectListView(Pagination page,@Param("ew") Wrapper<ZichanfenleiEntity> wrapper);
	
	ZichanfenleiView selectView(@Param("ew") Wrapper<ZichanfenleiEntity> wrapper);
	

}
