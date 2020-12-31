package com.nwsuaf.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nwsuaf.mapper.AdminMapper;

@Service
public class AdminServiceImpl {
	@Autowired
	AdminMapper AdminMapper;

}
