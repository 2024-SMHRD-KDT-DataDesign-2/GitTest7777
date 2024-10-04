package com.smhrd.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import org.json.JSONObject;

@WebServlet("/KakaoService2")
public class KakaoService2 extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Kakao API Key
    private static final String KAKAO_API_KEY = "a89e83f486a4564e676dd0d4c814dade"; // Kakao Developers에서 발급받은 API Key

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 입력된 회원 정보를 받아옵니다.
        request.setCharacterEncoding("UTF-8");
        String cust_addr = request.getParameter("cust_addr"); // 주소 입력
        // Kakao Local API 엔드포인트
        String apiURL = "https://dapi.kakao.com/v2/local/search/address.json?query="
                + java.net.URLEncoder.encode(cust_addr, "UTF-8");
        System.out.println(apiURL);

        // Kakao API 요청
        URL url = new URL(apiURL);
        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
        connection.setRequestMethod("GET");
        connection.setRequestProperty("Authorization", "KakaoAK " + KAKAO_API_KEY);

        int responseCode = connection.getResponseCode();
        System.out.println(responseCode);

        if (responseCode == 200) { // 성공적으로 응답을 받으면
            BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream()));
            StringBuilder result = new StringBuilder();
            String line;
            while ((line = br.readLine()) != null) {
                result.append(line);
            }
            br.close();

            // JSON 파싱
            JSONObject jsonResponse = new JSONObject(result.toString());
            if (jsonResponse.getJSONArray("documents").length() > 0) {
                JSONObject location = jsonResponse.getJSONArray("documents").getJSONObject(0);
                String lat = location.getString("y");
                String lon = location.getString("x");

                // 회원 정보와 위도/경도 정보를 request 객체에 저장
                request.setAttribute("lat", lat);
                request.setAttribute("lon", lon);
                System.out.println(lat);
            } else {
                request.setAttribute("errorMessage", "해당 주소의 위도/경도 정보를 찾을 수 없습니다.");
            }
        } else {
            request.setAttribute("errorMessage", "API 요청 실패. 응답 코드: " + responseCode);
        }
        // 결과를 JoinService 서블릿으로 전달
        request.getRequestDispatcher("/result.jsp").forward(request, response);
    }
}
