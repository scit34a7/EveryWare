package com.a7.everyware.resource.dao;

import java.util.ArrayList;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.a7.everyware.resource.vo.R_reservationVO;
import com.a7.everyware.resource.vo.ResourceVO;

@Repository
public class ResourceDAO {
	
	@Autowired
	SqlSession sqlsession;
	
	public ArrayList<ResourceVO> read_Resource(String resource_id){
		ArrayList<ResourceVO> result = new ArrayList<ResourceVO>();
		try{
			ResourceMapper mapper = sqlsession.getMapper(ResourceMapper.class);
			result = mapper.read_Resource(resource_id);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	public ArrayList<R_reservationVO> get_Resource(String resource_id){
		ArrayList<R_reservationVO> result = new ArrayList<R_reservationVO>();
		try{
			ResourceMapper mapper = sqlsession.getMapper(ResourceMapper.class);
			result = mapper.get_Resource(resource_id);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int Resource_add(R_reservationVO reservation_vo)
	{
		int result = 0;
		try{
			ResourceMapper mapper = sqlsession.getMapper(ResourceMapper.class);
			result = mapper.Resource_add(reservation_vo);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int Resource_delete(String R_reservation_id)
	{
		
		int result = 0;
		try{
			ResourceMapper mapper = sqlsession.getMapper(ResourceMapper.class);
			result = mapper.Resource_delete(R_reservation_id);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public R_reservationVO get_R_reservation(String R_reservation_id)
	{
		ResourceMapper mapper = sqlsession.getMapper(ResourceMapper.class);
		R_reservationVO result = mapper.get_R_reservation(R_reservation_id);
		return result;
	}
}
