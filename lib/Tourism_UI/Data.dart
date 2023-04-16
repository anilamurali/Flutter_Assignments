import 'package:flutter/material.dart';

List<Map<String,dynamic>> dummyData=[
  {
    "id":1,
    "color":Colors.deepOrange,
    "name":"Canada",
    "image":"https://images.unsplash.com/photo-1503614472-8c93d56e92ce?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=811&q=80",
    "img1":"https://images.unsplash.com/photo-1513564774965-ac25ddf81e1e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGNhbmFkYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "img2":"https://images.unsplash.com/photo-1519832979-6fa011b87667?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Y2FuYWRhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "img3":"https://plus.unsplash.com/premium_photo-1672855379473-14a63d6ada68?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fGNhbmFkYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "about":"Canada is a country in North America. Its ten provinces and three territories extend from the Atlantic Ocean to the Pacific Ocean and northward into the Arctic Ocean, making it the world's second-largest country by total area, with the world's longest coastline. It is characterized by a wide range of both meteorologic and geological regions. The country is sparsely inhabited, with the vast majority residing south of the 55th parallel in urban areas. Canada's capital is Ottawa and its three largest metropolitan areas are Toronto, Montreal, and Vancouver."
  },
  {
    "id":2,
    "color":Colors.pinkAccent,
    "name":"Malta",
    "image":"https://images.unsplash.com/photo-1587974928552-4f4aac51b45d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFsdGF8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "img1":"https://images.unsplash.com/photo-1571856975545-119703c5225c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8TWFsdGF8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "img2":"https://images.unsplash.com/photo-1569311607906-1d8f9e2614b5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1333&q=80",
    "img3":"https://images.unsplash.com/photo-1512679186997-081a6da4e083?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1790&q=80",
    "about":"Malta, island country located in the central Mediterranean Sea. A small but strategically important group of islands, the archipelago has through its long and turbulent history played a vital role in the struggles of a succession of powers for domination of the Mediterranean and in the interplay between emerging Europe and the older cultures of Africa and the Middle East. As a result, Maltese society has been molded by centuries of foreign rule by various powers, including the Phoenicians, Romans, Greeks, Arabs, Normans, Sicilians, Swabians, Aragonese, Hospitallers, French, and British."
  },
  {
    "id":3,
    "color":Colors.blue,
    "name":"Paris",
    "image":"https://images.unsplash.com/photo-1499856871958-5b9627545d1a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGFyaXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "img1":"https://images.unsplash.com/photo-1550340499-a6c60fc8287c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8UGFyaXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "img2":"https://images.unsplash.com/photo-1471623432079-b009d30b6729?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fFBhcmlzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "img3":"https://images.unsplash.com/photo-1508050919630-b135583b29ab?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fFBhcmlzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "about":"Paris (nicknamed the 'City of light') is the capital city of France, and the largest city in France. The area is 105 square kilometres (41 square miles), and around 2.15 million people live there. If suburbs are counted, the population of the Paris area rises to 10.7 million people. It is the most densely populated city in the European Union, with 20.653 people per square kilometer.",


  },
  {
    "id":4,
    "color":Colors.green,
    "name":"London",
    "image":"https://images.unsplash.com/photo-1533929736458-ca588d08c8be?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bG9uZG9ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "rating":3.8,
    "img1":"https://plus.unsplash.com/premium_photo-1679582748726-c74fcb4aa95d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8TG9uZG9ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "img2":"https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8TG9uZG9ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "img3":"https://images.unsplash.com/photo-1517394834181-95ed159986c7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2074&q=80",
    "about":"London, the capital of England and the United Kingdom, is a 21st-century city with history stretching back to Roman times. At its centre stand the imposing Houses of Parliament, the iconic ‘Big Ben’ clock tower and Westminster Abbey, site of British monarch coronations",
  },
  {
    "id":5,
    "name":"spain",
    "color":Colors.redAccent,
    "image":"https://images.unsplash.com/photo-1495562569060-2eec283d3391?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c3BhaW58ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "img1":"https://images.unsplash.com/photo-1543783207-ec64e4d95325?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
    "img2":"https://images.unsplash.com/photo-1504019347908-b45f9b0b8dd5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8c3BhaW58ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "img3":"https://images.unsplash.com/photo-1561632669-7f55f7975606?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    "about":"Spain, a country on Europe’s Iberian Peninsula, includes 17 autonomous regions with diverse geography and cultures. Capital city Madrid is home to the Royal Palace and Prado museum, housing works by European masters. ",

  },
  {
    "id":6,
    "color":Colors.purpleAccent,
    "name":"Singapore",
    "image":"https://images.unsplash.com/photo-1495562569060-2eec283d3391?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c3BhaW58ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "img1":"https://images.unsplash.com/flagged/photo-1562503542-2a1e6f03b16b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c2luZ2Fwb3JlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "img2":"https://images.unsplash.com/photo-1565967511849-76a60a516170?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8c2luZ2Fwb3JlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "img3":"https://images.unsplash.com/photo-1525625293386-3f8f99389edd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=752&q=80",
    "about":"Singapore is famous for being a global financial center, being among the most densely populated places in the world, having a world-class city airport with a waterfall, and a Botanic Garden that is a World Heritage Site.",

  }


];