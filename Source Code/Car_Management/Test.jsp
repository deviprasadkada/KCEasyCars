
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100
101
102
103
104
105
106
107
108
109
110
111
112
113
114
115
116
117
118
119
120
121
122
123
124
125
126
127
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="org.json.JSONArray"%>
<%@page import="net.sf.json.JSON"%>
<%@page import="org.apache.commons.httpclient.methods.GetMethod"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.json.JSONObject"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="org.apache.commons.httpclient.NameValuePair"%>
<%@page import="org.apache.commons.httpclient.methods.PostMethod"%>
<%@page import="org.apache.commons.httpclient.HttpClient"%>
<%@ page  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Email contacts</title>
</head>
<body>
 
<%!
String clientscrete = "client secret";
String clientId= "client id";
List<Map<String,Object>> gmailContactsList = new ArrayList<Map<String,Object>>();
%>
	<%
	// getting user consent code. We will use this code to obtain Autherization code. Ie access code
		String code = request.getParameter("code");
		HttpClient client = new HttpClient();
		PostMethod post = new PostMethod(
				"https://accounts.google.com/o/oauth2/token");
		post.addRequestHeader("Host", "accounts.google.com");
		post.addRequestHeader("Content-Type",
				"application/x-www-form-urlencoded");
		NameValuePair[] data = {
				new NameValuePair("code", code),
				new NameValuePair("client_id",
						clientId),
				new NameValuePair("client_secret",
						clientscrete),
				new NameValuePair("redirect_uri",
						"http://localhost:8080/gmailaccountcontactimport/getGmailcontacts.jsp"),
				new NameValuePair("grant_type", "authorization_code") };
 
		post.setRequestBody(data);
		client.executeMethod(post);
		BufferedReader b = new BufferedReader(new InputStreamReader(
				post.getResponseBodyAsStream()));
		StringBuilder sb = new StringBuilder();
		String str = null;
		while ((str = b.readLine()) != null) {
			sb.append(str);
		}
		JSONObject access_token = new JSONObject(sb.toString());
		try {
			// We will use contact api now to get contacts of google account. We also need to pass access_token with the request
			//so that google server identify it a valid request
			GetMethod get = new GetMethod(
					"https://www.google.com/m8/feeds/contacts/default/full?max-results=200&access_token="
							+ access_token.getString("access_token"));
			client.executeMethod(get);
			b = new BufferedReader(new InputStreamReader(
					get.getResponseBodyAsStream()));
			sb = new StringBuilder();
			str = null;
			while ((str = b.readLine()) != null) {
				sb.append(str);
			}
			// We are now converting xml response into json for easyness
			System.out.println((sb.toString().trim()));
			net.sf.json.xml.XMLSerializer xmlSerializer = new net.sf.json.xml.XMLSerializer();
			JSON json = xmlSerializer.read(sb.toString().trim()
					.replaceFirst("^([\\W]+)<", "<"));
			JSONObject jsonObject = new JSONObject(json.toString());
			JSONArray jsonArray = jsonObject.getJSONArray("entry");
			String tk = access_token.getString("access_token");
			
	%>
	<%
		for (int i = 0; i < jsonArray.length(); i++) {
				try {
					Map<String,Object> contactsDetail = new HashMap<String,Object>();
					//Appending access token with profile image url. Because for image it again verify request.
					String photoUrl = jsonArray.getJSONObject(i)
							.getJSONArray("link").getJSONObject(0)
							.getString("@href")
							+ "?access_token=" + tk;
					String title = jsonArray.getJSONObject(i).getString(
							"title");
					String contactEmail = jsonArray.getJSONObject(i)
							.getJSONObject("gd:email")
							.getString("@address");
					contactsDetail.put("contactEmail", contactEmail);
					contactsDetail.put("title", title);
					contactsDetail.put("photoUrl", photoUrl);
					gmailContactsList.add(contactsDetail);
	%>
	<%
		} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
	
	System.out.println(gmailContactsList.size());
	for(Map<String,Object> map:gmailContactsList){
	%>
	Name : <%=map.get("title").toString() %>
	Email : <%=map.get("contactEmail").toString() %>
	<img alt="" src="<%=map.get("photoUrl").toString() %>">
	<br>
	
	<%
	System.out.println();
	}
	%>
	
	<%
	} catch (Exception e) {
		e.printStackTrace();
		request.setAttribute("errorstatus",
				"unable to get the information.");
	}
%>
</body>
</html>