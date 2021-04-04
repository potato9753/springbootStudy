package com.example.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.example.dto.UploadDTO;

@Controller
public class MainController {

	@GetMapping("/uploadForm")
	public String uploadForm() {
		return "uploadForm"; // WEB-INF/views/world.jsp
	}
	
	@PostMapping("/upload")
	public String upload(UploadDTO dto) {
		String theText = dto.getTheText();
		MultipartFile theFile = dto.getTheFile();
		
		long size = theFile.getSize();
		String OriginalFilename = theFile.getOriginalFilename();
		String contentType = theFile.getContentType();
		System.out.println("size:" + size);
		System.out.println("OriginalFilename:" + OriginalFilename);
		System.out.println("contentType:" + contentType);
		
		//서버의 물리적인 디렉토리
		File f = new File("c://upload",OriginalFilename);
		
		//실제로 저장
		try {
			theFile.transferTo(f);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "upload"; // WEB-INF/views/world.jsp
	}
}

