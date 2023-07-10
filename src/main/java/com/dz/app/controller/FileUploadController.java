package com.dz.app.controller;

import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller
public class FileUploadController {

	@RequestMapping("fileUploadForm")
	public String showUploadPage() {

		return "upload-form";
	}

	@RequestMapping(path = "/uploadImage", method = RequestMethod.POST)
//	public String handleUploadImage(@RequestParam("uploadImg") MultipartFile file) {
	public String handleUploadImage(@RequestParam("uploadImg") CommonsMultipartFile file, HttpSession httpSession,
			Model model) {

		System.out.println("File Upload Handler...");
		System.out.println(file.getSize());
		System.out.println(file.getContentType());
		System.out.println(file.getName());
		System.out.println(file.getOriginalFilename());
		System.out.println(file.getStorageDescription());

		byte[] bytes = file.getBytes();
//		we have to save this file to server and need the location name to store the file ..
//		for that we have to get the context path 
		String realPath = httpSession.getServletContext().getRealPath("/");
		System.out.println("context path " + realPath);

//		String targetFolder=realPath+file.getOriginalFilename();
		String targetFolder = realPath + "WEB-INF" + File.separator + "resources" + File.separator + "uploadFiles"
				+ File.separator + file.getOriginalFilename();
		System.out.println("target folder : " + targetFolder);
		try {
			FileOutputStream fos = new FileOutputStream(targetFolder);
			fos.write(bytes);
			fos.close();
			model.addAttribute("response", "file uploaded successfully ...");
			model.addAttribute("fileName", file.getOriginalFilename());
			System.out.println("file uploaded successfully ...");

		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("response", "fail to upload......");
			System.out.println("fail to upload... .");
		}

//		return "redirect:fileUploadForm";
		return "upload-form";
	}
}
