package com.online.booking.helper;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContext;

import org.springframework.stereotype.Component;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;

@Component("uploadFileHelper")
public class UploadFileHelper implements ServletContextAware {
	private ServletContext servletContext;
	// method save file
	public String saveFile(MultipartFile file) {
		try {
			// them thoi gian sau ten file de ko bi trung ten
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("ddMMyyyyHHmmss");
			String fileName = simpleDateFormat.format(new Date()) + file.getOriginalFilename();

			byte[] bytes = file.getBytes();
			Path path = Paths.get(servletContext.getRealPath("/uploads/images/" + fileName));
			Files.write(path, bytes);
			return fileName;
		} catch (Exception e) {
			return null;
		}
	}
	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
		
	}
}
