package com.websitebtl.dao;

import java.util.List;

import com.websitebtl.mapper.RowMapper;

public interface GenericDao {
	<T> List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters);
}
