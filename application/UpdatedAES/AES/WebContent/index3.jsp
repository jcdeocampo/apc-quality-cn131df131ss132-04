<%-- 		<%
			ResultSet totalduterte2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Rodrigo Duterte' and city='Navotas' and region='NCR';");
			String dutertetotal2 = totalduterte2.getString("TOTALVOTES");
			totalduterte2.close();
			
			ResultSet regionNCRduterte2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Rodrigo Duterte';");
			while (regionNCRduterte2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRduterte2.getString("candidacy") %></td>
			    		<td><%= regionNCRduterte2.getString("name") %></td>
			    		<td><%= dutertetotal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRduterte2.close();	%>
			
			<%
			ResultSet totalbinay2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Jejomar Binay' and city='Navotas' and region='NCR';");
			String binaytotal2 = totalbinay2.getString("TOTALVOTES");
			totalbinay2.close();
			
			ResultSet regionNCRbinay2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Jejomar Binay';");
			while (regionNCRbinay2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRbinay2.getString("candidacy") %></td>
			    		<td><%= regionNCRbinay2.getString("name") %></td>
			    		<td><%= binaytotal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRbinay2.close();	%>
			
			<%
			ResultSet totalsantiago2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Miriam Santiago' and city='Navotas' and region='NCR';");
			String santiagototal2 = totalsantiago2.getString("TOTALVOTES");
			totalsantiago2.close();
			
			ResultSet regionNCRsantiago2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Miriam Santiago';");
			while (regionNCRsantiago2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRsantiago2.getString("candidacy") %></td>
			    		<td><%= regionNCRsantiago2.getString("name") %></td>
			    		<td><%= santiagototal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRsantiago2.close();	%>
			
			<%
			ResultSet totalpoe2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Grace Poe' and city='Navotas' and region='NCR';");
			String poetotal2 = totalpoe2.getString("TOTALVOTES");
			totalpoe2.close();
			
			ResultSet regionNCRpoe2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Grace Poe';");
			while (regionNCRpoe2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRpoe2.getString("candidacy") %></td>
			    		<td><%= regionNCRpoe2.getString("name") %></td>
			    		<td><%= poetotal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRpoe2.close();	%>
			
			<%
			ResultSet totalroxas2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Mar Roxas' and city='Navotas' and region='NCR';");
			String roxastotal2 = totalroxas2.getString("TOTALVOTES");
			totalroxas2.close();
			
			ResultSet regionNCRroxas2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Mar Roxas';");
			while (regionNCRroxas2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRroxas2.getString("candidacy") %></td>
			    		<td><%= regionNCRroxas2.getString("name") %></td>
			    		<td><%= roxastotal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRroxas2.close();	%>
			
			<%
			ResultSet totalhonasan2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gringo Honasan' and city='Navotas' and region='NCR';");
			String honasantotal2 = totalhonasan2.getString("TOTALVOTES");
			totalhonasan2.close();
			
			ResultSet regionNCRhonasan2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gringo Honasan';");
			while (regionNCRhonasan2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRhonasan2.getString("candidacy") %></td>
			    		<td><%= regionNCRhonasan2.getString("name") %></td>
			    		<td><%= honasantotal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRhonasan2.close();	%>
			
			<%
			ResultSet totaltrillanes2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Antonio Trillanes' and city='Navotas' and region='NCR';");
			String trillanestotal2 = totaltrillanes2.getString("TOTALVOTES");
			totaltrillanes2.close();
			
			ResultSet regionNCRtrillanes2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Antonio Trillanes';");
			while (regionNCRtrillanes2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRtrillanes2.getString("candidacy") %></td>
			    		<td><%= regionNCRtrillanes2.getString("name") %></td>
			    		<td><%= trillanestotal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRtrillanes2.close();	%>
			
			<%
			ResultSet totalescudero2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Francis Escudero' and city='Navotas' and region='NCR';");
			String escuderototal2 = totalescudero2.getString("TOTALVOTES");
			totalescudero2.close();
			
			ResultSet regionNCRescudero2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Francis Escudero';");
			while (regionNCRescudero2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRescudero2.getString("candidacy") %></td>
			    		<td><%= regionNCRescudero2.getString("name") %></td>
			    		<td><%= escuderototal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRescudero2.close();	%>
			
			<%
			ResultSet totalrobredo2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Leni Robredo' and city='Navotas' and region='NCR';");
			String robredototal2 = totalrobredo2.getString("TOTALVOTES");
			totalrobredo2.close();
			
			ResultSet regionNCRrobredo2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Leni Robredo';");
			while (regionNCRrobredo2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRrobredo2.getString("candidacy") %></td>
			    		<td><%= regionNCRrobredo2.getString("name") %></td>
			    		<td><%= robredototal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRrobredo2.close();	%>
			
			<%
			ResultSet totalmarcos2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Bongbong Marcos' and city='Navotas' and region='NCR';");
			String marcostotal2 = totalmarcos2.getString("TOTALVOTES");
			totalmarcos2.close();
			
			ResultSet regionNCRmarcos2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Bongbong Marcos';");
			while (regionNCRmarcos2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRmarcos2.getString("candidacy") %></td>
			    		<td><%= regionNCRmarcos2.getString("name") %></td>
			    		<td><%= marcostotal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRmarcos2.close();	%>
			
			<%
			ResultSet totalalan2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Alan Peter Cayetano' and city='Navotas' and region='NCR';");
			String alantotal2 = totalalan2.getString("TOTALVOTES");
			totalalan2.close();
			
			ResultSet regionNCRalan2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Alan Peter Cayetano';");
			while (regionNCRmarcos2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRalan2.getString("candidacy") %></td>
			    		<td><%= regionNCRalan2.getString("name") %></td>
			    		<td><%= alantotal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRalan2.close();	%>
			
			<%
			ResultSet totalshariff2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Shariff Albani' and city='Navotas' and region='NCR';");
			String sharifftotal2 = totalshariff2.getString("TOTALVOTES");
			totalshariff2.close();
			
			ResultSet regionNCRshariff2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Shariff Albani';");
			while (regionNCRshariff2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRshariff2.getString("candidacy") %></td>
			    		<td><%= regionNCRshariff2.getString("name") %></td>
			    		<td><%= sharifftotal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRshariff2.close();	%>
			
			<%
			ResultSet totalaldin2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Aldin Ali' and city='Navotas' and region='NCR';");
			String aldintotal2 = totalaldin2.getString("TOTALVOTES");
			totalaldin2.close();
			
			ResultSet regionNCRaldin2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Aldin Ali';");
			while (regionNCRaldin2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRaldin2.getString("candidacy") %></td>
			    		<td><%= regionNCRaldin2.getString("name") %></td>
			    		<td><%= aldintotal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRaldin2.close();	%>
			
			<%
			ResultSet totalalunan2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Alunan Raffy' and city='Navotas' and region='NCR';");
			String alunantotal2 = totalalunan2.getString("TOTALVOTES");
			totalalunan2.close();
			
			ResultSet regionNCRalunan2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Alunan Raffy';");
			while (regionNCRalunan2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRalunan2.getString("candidacy") %></td>
			    		<td><%= regionNCRalunan2.getString("name") %></td>
			    		<td><%= alunantotal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRalunan2.close();	%>
			
			<%
			ResultSet totalambolodto2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Ambolodto Ina' and city='Navotas' and region='NCR';");
			String ambolodtototal2 = totalambolodto2.getString("TOTALVOTES");
			totalambolodto2.close();
			
			ResultSet regionNCRambolodto2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Ambolodto Ina';");
			while (regionNCRambolodto2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRambolodto2.getString("candidacy") %></td>
			    		<td><%= regionNCRambolodto2.getString("name") %></td>
			    		<td><%= ambolodtototal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRambolodto2.close();	%>
			
			<%
			ResultSet totalarquiza2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Godofredo Arquiza' and city='Navotas' and region='NCR';");
			String arquizatotal2 = totalarquiza2.getString("TOTALVOTES");
			totalarquiza2.close();
			
			ResultSet regionNCRarquiza2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Godofredo Arquiza';");
			while (regionNCRarquiza2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRarquiza2.getString("candidacy") %></td>
			    		<td><%= regionNCRarquiza2.getString("name") %></td>
			    		<td><%= arquizatotal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRarquiza2.close();	%>
			
			<%
			ResultSet totalbaligod2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Levito Baligod' and city='Navotas' and region='NCR';");
			String baligodtotal2 = totalbaligod2.getString("TOTALVOTES");
			totalbaligod2.close();
			
			ResultSet regionNCRbaligod2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Levito Baligod';");
			while (regionNCRbaligod2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRbaligod2.getString("candidacy") %></td>
			    		<td><%= regionNCRbaligod2.getString("name") %></td>
			    		<td><%= baligodtotal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRbaligod2.close();	%>
			
			<%
			ResultSet totalbello2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Bello Walden' and city='Navotas' and region='NCR';");
			String bellototal2 = totalbello2.getString("TOTALVOTES");
			totalbello2.close();
			
			ResultSet regionNCRbello2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Bello Walden';");
			while (regionNCRbello2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRbello2.getString("candidacy") %></td>
			    		<td><%= regionNCRbello2.getString("name") %></td>
			    		<td><%= bellototal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRbello2.close();	%>
			
			<%
			ResultSet totalcam2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Cam Sandra' and city='Navotas' and region='NCR';");
			String camtotal2 = totalcam2.getString("TOTALVOTES");
			totalcam2.close();
			
			ResultSet regionNCRcam2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Cam Sandra';");
			while (regionNCRcam2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRcam2.getString("candidacy") %></td>
			    		<td><%= regionNCRcam2.getString("name") %></td>
			    		<td><%= camtotal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRcam2.close();	%>
			
			<%
			ResultSet totalnel2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Chavez Nel' and city='Navotas' and region='NCR';");
			String neltotal2 = totalnel2.getString("TOTALVOTES");
			totalnel2.close();
			
			ResultSet regionNCRnel2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Chavez Nel';");
			while (regionNCRnel2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRnel2.getString("candidacy") %></td>
			    		<td><%= regionNCRnel2.getString("name") %></td>
			    		<td><%= neltotal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRnel2.close();	%>
			
			<%
			ResultSet totalneri2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Colmenares Neri' and city='Navotas' and region='NCR';");
			String neritotal2 = totalneri2.getString("TOTALVOTES");
			totalneri2.close();
			
			ResultSet regionNCRneri2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Colmenares Neri';");
			while (regionNCRneri2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRneri2.getString("candidacy") %></td>
			    		<td><%= regionNCRneri2.getString("name") %></td>
			    		<td><%= neritotal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRneri2.close();	%>
			
			<%
			ResultSet totalleila2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='De Lima Leila' and city='Navotas' and region='NCR';");
			String leilatotal2 = totalleila2.getString("TOTALVOTES");
			totalleila2.close();
			
			ResultSet regionNCRleila2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='De Lima Leila';");
			while (regionNCRleila2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRleila2.getString("candidacy") %></td>
			    		<td><%= regionNCRleila2.getString("name") %></td>
			    		<td><%= leilatotal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRleila2.close();	%>
			
			<%
			ResultSet totalisko2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Domagoso Isko Moreno' and city='Navotas' and region='NCR';");
			String iskototal2 = totalisko2.getString("TOTALVOTES");
			totalisko2.close();
			
			ResultSet regionNCRisko2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Domagoso Isko Moreno';");
			while (regionNCRisko2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRisko2.getString("candidacy") %></td>
			    		<td><%= regionNCRisko2.getString("name") %></td>
			    		<td><%= iskototal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRisko2.close();	%>
			
			<%
			ResultSet totaldorona2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Dorona Ray' and city='Navotas' and region='NCR';");
			String doronatotal2 = totaldorona2.getString("TOTALVOTES");
			totaldorona2.close();
			
			ResultSet regionNCRdorona2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Dorona Ray';");
			while (regionNCRdorona2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRdorona2.getString("candidacy") %></td>
			    		<td><%= regionNCRdorona2.getString("name") %></td>
			    		<td><%= doronatotal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRdorona2.close();	%>
			
			<%
			ResultSet totaldrilon2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Drilon Frank' and city='Navotas' and region='NCR';");
			String drilontotal2 = totaldrilon2.getString("TOTALVOTES");
			totaldrilon2.close();
			
			ResultSet regionNCRdrilon2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Drilon Frank';");
			while (regionNCRdorona2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRdrilon2.getString("candidacy") %></td>
			    		<td><%= regionNCRdrilon2.getString("name") %></td>
			    		<td><%= drilontotal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRdrilon2.close();	%>
			
			<%
			ResultSet totalgadon2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gadon Larry' and city='Navotas' and region='NCR';");
			String gadontotal2 = totalgadon2.getString("TOTALVOTES");
			totalgadon2.close();
			
			ResultSet regionNCRgadon2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gadon Larry';");
			while (regionNCRgadon2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRgadon2.getString("candidacy") %></td>
			    		<td><%= regionNCRgadon2.getString("name") %></td>
			    		<td><%= gadontotal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRgadon2.close();	%>
			
			<%
			ResultSet totalwin2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gatchalian Win' and city='Navotas' and region='NCR';");
			String wintotal2 = totalwin2.getString("TOTALVOTES");
			totalwin2.close();
			
			ResultSet regionNCRwin2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gatchalian Win';");
			while (regionNCRgadon2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRwin2.getString("candidacy") %></td>
			    		<td><%= regionNCRwin2.getString("name") %></td>
			    		<td><%= wintotal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRwin2.close();	%>
			
			<%
			ResultSet totaldick2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gordon Dick' and city='Navotas' and region='NCR';");
			String dicktotal2 = totaldick2.getString("TOTALVOTES");
			totaldick2.close();
			
			ResultSet regionNCRdick2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gordon Dick';");
			while (regionNCRdick2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRdick2.getString("candidacy") %></td>
			    		<td><%= regionNCRdick2.getString("name") %></td>
			    		<td><%= dicktotal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRdick2.close();	%>
			
			<%
			ResultSet totalrisa2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Hontiveros Risa' and city='Navotas' and region='NCR';");
			String risatotal2 = totalrisa2.getString("TOTALVOTES");
			totalrisa2.close();
			
			ResultSet regionNCRrisa2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Hontiveros Risa';");
			while (regionNCRrisa2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRrisa2.getString("candidacy") %></td>
			    		<td><%= regionNCRrisa2.getString("name") %></td>
			    		<td><%= risatotal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRrisa2.close();	%>
			
			<%
			ResultSet totalkabalo2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Kabalo Eid' and city='Navotas' and region='NCR';");
			String kabalototal2 = totalkabalo2.getString("TOTALVOTES");
			totalkabalo2.close();
			
			ResultSet regionNCRkabalo2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Kabalo Eid';");
			while (regionNCRkabalo2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRkabalo2.getString("candidacy") %></td>
			    		<td><%= regionNCRkabalo2.getString("name") %></td>
			    		<td><%= kabalototal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRkabalo2.close();	%>
			
			<%
			ResultSet totalatty2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Kapunan Atty. Lorna' and city='Navotas' and region='NCR';");
			String attytotal2 = totalatty2.getString("TOTALVOTES");
			totalatty2.close();
			
			ResultSet regionNCRatty2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Kapunan Atty. Lorna';");
			while (regionNCRatty2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRatty2.getString("candidacy") %></td>
			    		<td><%= regionNCRatty2.getString("name") %></td>
			    		<td><%= attytotal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRatty2.close();	%>
			
			<%
			ResultSet totalkiram2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Kiram Princess Jacel' and city='Navotas' and region='NCR';");
			String kiramtotal2 = totalkiram2.getString("TOTALVOTES");
			totalkiram2.close();
			
			ResultSet regionNCRkiram2 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Kiram Princess Jacel';");
			while (regionNCRkiram2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRkiram2.getString("candidacy") %></td>
			    		<td><%= regionNCRkiram2.getString("name") %></td>
			    		<td><%= kiramtotal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRkiram2.close();	%>
			
			<%
			ResultSet totallorna2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Lacsamana Alma Moreno' and city='Navotas' and region='NCR';");
			String lornatotal2 = totallorna2.getString("TOTALVOTES");
			totallorna2.close();
			
			ResultSet regionNCRlorna2= stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Lacsamana Alma Moreno';");
			while (regionNCRlorna2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRlorna2.getString("candidacy") %></td>
			    		<td><%= regionNCRlorna2.getString("name") %></td>
			    		<td><%= lornatotal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRlorna2.close();	%>
			
			<%
			ResultSet totallacson2 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Lacson Panfilo' and city='Navotas' and region='NCR';");
			String lacsontotal2 = totallacson2.getString("TOTALVOTES");
			totallacson2.close();
			
			ResultSet regionNCRlacson2= stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Lacson Panfilo';");
			while (regionNCRlacson2.next()) {	    
			    %>
			    	<tr>
			    		<td><%= regionNCRlacson2.getString("candidacy") %></td>
			    		<td><%= regionNCRlacson2.getString("name") %></td>
			    		<td><%= lacsontotal2 %></td>
			    	</tr>
			    <%
			}
			regionNCRlacson2.close();	%> --%>