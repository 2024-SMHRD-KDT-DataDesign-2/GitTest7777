package com.smhrd.model;

import lombok.Data;

@Data
public class SafePlaceDTO {
    private int sp_idx;    // 장소 ID
    private String sp_name; // 장소 이름
    private String sp_addr; // 장소 주소
    private double lat;     // 위도
    private double lon;     // 경도
}
