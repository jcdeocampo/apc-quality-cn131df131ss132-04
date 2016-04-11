<%-- <%
							ResultSet totalduterte3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Rodrigo Duterte' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String dutertetotal3 = totalduterte3.getString("TOTALVOTES");
							totalduterte3.close();
							
							ResultSet regionNCRduterte3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Rodrigo Duterte';");
							while (regionNCRduterte3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRduterte3.getString("candidacy") %></td>
							    		<td><%= regionNCRduterte3.getString("name") %></td>
							    		<td><%= dutertetotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRduterte3.close();	%>
							
							<%
							ResultSet totalbinay3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Jejomar Binay' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String binaytotal3 = totalbinay3.getString("TOTALVOTES");
							totalbinay3.close();
							
							ResultSet regionNCRbinay3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Jejomar Binay';");
							while (regionNCRbinay3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRbinay3.getString("candidacy") %></td>
							    		<td><%= regionNCRbinay3.getString("name") %></td>
							    		<td><%= binaytotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRbinay3.close();	%>
							
							<%
							ResultSet totalsantiago3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Miriam Santiago' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String santiagototal3 = totalsantiago3.getString("TOTALVOTES");
							totalsantiago3.close();
							
							ResultSet regionNCRsantiago3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Miriam Santiago';");
							while (regionNCRsantiago3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRsantiago3.getString("candidacy") %></td>
							    		<td><%= regionNCRsantiago3.getString("name") %></td>
							    		<td><%= santiagototal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRsantiago3.close();	%>
							
							<%
							ResultSet totalpoe3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Grace Poe' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String poetotal3 = totalpoe3.getString("TOTALVOTES");
							totalpoe3.close();
							
							ResultSet regionNCRpoe3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Grace Poe';");
							while (regionNCRpoe3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRpoe3.getString("candidacy") %></td>
							    		<td><%= regionNCRpoe3.getString("name") %></td>
							    		<td><%= poetotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRpoe3.close();	%>
							
							<%
							ResultSet totalroxas3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Mar Roxas' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String roxastotal3 = totalroxas3.getString("TOTALVOTES");
							totalroxas3.close();
							
							ResultSet regionNCRroxas3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Mar Roxas';");
							while (regionNCRroxas3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRroxas3.getString("candidacy") %></td>
							    		<td><%= regionNCRroxas3.getString("name") %></td>
							    		<td><%= roxastotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRroxas3.close();	%>
							
							<%
							ResultSet totalhonasan3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gringo Honasan' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String honasantotal3 = totalhonasan3.getString("TOTALVOTES");
							totalhonasan3.close();
							
							ResultSet regionNCRhonasan3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gringo Honasan';");
							while (regionNCRhonasan3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRhonasan3.getString("candidacy") %></td>
							    		<td><%= regionNCRhonasan3.getString("name") %></td>
							    		<td><%= honasantotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRhonasan3.close();	%>
							
							<%
							ResultSet totaltrillanes3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Antonio Trillanes' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String trillanestotal3 = totaltrillanes3.getString("TOTALVOTES");
							totaltrillanes3.close();
							
							ResultSet regionNCRtrillanes3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Antonio Trillanes';");
							while (regionNCRtrillanes3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRtrillanes3.getString("candidacy") %></td>
							    		<td><%= regionNCRtrillanes3.getString("name") %></td>
							    		<td><%= trillanestotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRtrillanes3.close();	%>
							
							<%
							ResultSet totalescudero3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Francis Escudero' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String escuderototal3 = totalescudero3.getString("TOTALVOTES");
							totalescudero3.close();
							
							ResultSet regionNCRescudero3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Francis Escudero';");
							while (regionNCRescudero3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRescudero3.getString("candidacy") %></td>
							    		<td><%= regionNCRescudero3.getString("name") %></td>
							    		<td><%= escuderototal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRescudero3.close();	%>
							
							<%
							ResultSet totalrobredo3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Leni Robredo' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String robredototal3 = totalrobredo3.getString("TOTALVOTES");
							totalrobredo3.close();
							
							ResultSet regionNCRrobredo3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Leni Robredo';");
							while (regionNCRrobredo3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRrobredo3.getString("candidacy") %></td>
							    		<td><%= regionNCRrobredo3.getString("name") %></td>
							    		<td><%= robredototal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRrobredo3.close();	%>
							
							<%
							ResultSet totalmarcos3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Bongbong Marcos' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String marcostotal3 = totalmarcos3.getString("TOTALVOTES");
							totalmarcos3.close();
							
							ResultSet regionNCRmarcos3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Bongbong Marcos';");
							while (regionNCRmarcos3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRmarcos3.getString("candidacy") %></td>
							    		<td><%= regionNCRmarcos3.getString("name") %></td>
							    		<td><%= marcostotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRmarcos3.close();	%>
							
							<%
							ResultSet totalalan3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Alan Peter Cayetano' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String alantotal3 = totalalan3.getString("TOTALVOTES");
							totalalan3.close();
							
							ResultSet regionNCRalan3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Alan Peter Cayetano';");
							while (regionNCRmarcos3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRalan3.getString("candidacy") %></td>
							    		<td><%= regionNCRalan3.getString("name") %></td>
							    		<td><%= alantotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRalan3.close();	%>
							
							<%
							ResultSet totalshariff3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Shariff Albani' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String sharifftotal3 = totalshariff3.getString("TOTALVOTES");
							totalshariff3.close();
							
							ResultSet regionNCRshariff3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Shariff Albani';");
							while (regionNCRshariff3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRshariff3.getString("candidacy") %></td>
							    		<td><%= regionNCRshariff3.getString("name") %></td>
							    		<td><%= sharifftotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRshariff3.close();	%>
							
							<%
							ResultSet totalaldin3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Aldin Ali' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String aldintotal3 = totalaldin3.getString("TOTALVOTES");
							totalaldin3.close();
							
							ResultSet regionNCRaldin3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Aldin Ali';");
							while (regionNCRaldin3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRaldin3.getString("candidacy") %></td>
							    		<td><%= regionNCRaldin3.getString("name") %></td>
							    		<td><%= aldintotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRaldin3.close();	%>
							
							<%
							ResultSet totalalunan3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Alunan Raffy' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String alunantotal3 = totalalunan3.getString("TOTALVOTES");
							totalalunan3.close();
							
							ResultSet regionNCRalunan3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Alunan Raffy';");
							while (regionNCRalunan3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRalunan3.getString("candidacy") %></td>
							    		<td><%= regionNCRalunan3.getString("name") %></td>
							    		<td><%= alunantotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRalunan3.close();	%>
							
							<%
							ResultSet totalambolodto3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Ambolodto Ina' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String ambolodtototal3 = totalambolodto3.getString("TOTALVOTES");
							totalambolodto3.close();
							
							ResultSet regionNCRambolodto3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Ambolodto Ina';");
							while (regionNCRambolodto3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRambolodto3.getString("candidacy") %></td>
							    		<td><%= regionNCRambolodto3.getString("name") %></td>
							    		<td><%= ambolodtototal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRambolodto3.close();	%>
							
							<%
							ResultSet totalarquiza3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Godofredo Arquiza' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String arquizatotal3 = totalarquiza3.getString("TOTALVOTES");
							totalarquiza3.close();
							
							ResultSet regionNCRarquiza3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Godofredo Arquiza';");
							while (regionNCRarquiza3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRarquiza3.getString("candidacy") %></td>
							    		<td><%= regionNCRarquiza3.getString("name") %></td>
							    		<td><%= arquizatotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRarquiza3.close();	%>
							
							<%
							ResultSet totalbaligod3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Levito Baligod' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String baligodtotal3 = totalbaligod3.getString("TOTALVOTES");
							totalbaligod3.close();
							
							ResultSet regionNCRbaligod3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Levito Baligod';");
							while (regionNCRbaligod3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRbaligod3.getString("candidacy") %></td>
							    		<td><%= regionNCRbaligod3.getString("name") %></td>
							    		<td><%= baligodtotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRbaligod3.close();	%>
							
							<%
							ResultSet totalbello3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Bello Walden' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String bellototal3 = totalbello3.getString("TOTALVOTES");
							totalbello3.close();
							
							ResultSet regionNCRbello3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Bello Walden';");
							while (regionNCRbello3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRbello3.getString("candidacy") %></td>
							    		<td><%= regionNCRbello3.getString("name") %></td>
							    		<td><%= bellototal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRbello3.close();	%>
							
							<%
							ResultSet totalcam3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Cam Sandra' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String camtotal3 = totalcam3.getString("TOTALVOTES");
							totalcam3.close();
							
							ResultSet regionNCRcam3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Cam Sandra';");
							while (regionNCRcam3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRcam3.getString("candidacy") %></td>
							    		<td><%= regionNCRcam3.getString("name") %></td>
							    		<td><%= camtotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRcam3.close();	%>
							
							<%
							ResultSet totalnel3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Chavez Nel' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String neltotal3 = totalnel3.getString("TOTALVOTES");
							totalnel3.close();
							
							ResultSet regionNCRnel3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Chavez Nel';");
							while (regionNCRnel3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRnel3.getString("candidacy") %></td>
							    		<td><%= regionNCRnel3.getString("name") %></td>
							    		<td><%= neltotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRnel3.close();	%>
							
							<%
							ResultSet totalneri3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Colmenares Neri' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String neritotal3 = totalneri3.getString("TOTALVOTES");
							totalneri3.close();
							
							ResultSet regionNCRneri3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Colmenares Neri';");
							while (regionNCRneri3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRneri3.getString("candidacy") %></td>
							    		<td><%= regionNCRneri3.getString("name") %></td>
							    		<td><%= neritotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRneri3.close();	%>
							
							<%
							ResultSet totalleila3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='De Lima Leila' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String leilatotal3 = totalleila3.getString("TOTALVOTES");
							totalleila3.close();
							
							ResultSet regionNCRleila3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='De Lima Leila';");
							while (regionNCRleila3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRleila3.getString("candidacy") %></td>
							    		<td><%= regionNCRleila3.getString("name") %></td>
							    		<td><%= leilatotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRleila3.close();	%>
							
							<%
							ResultSet totalisko3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Domagoso Isko Moreno' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String iskototal3 = totalisko3.getString("TOTALVOTES");
							totalisko3.close();
							
							ResultSet regionNCRisko3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Domagoso Isko Moreno';");
							while (regionNCRisko3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRisko3.getString("candidacy") %></td>
							    		<td><%= regionNCRisko3.getString("name") %></td>
							    		<td><%= iskototal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRisko3.close();	%>
							
							<%
							ResultSet totaldorona3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Dorona Ray' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String doronatotal3 = totaldorona3.getString("TOTALVOTES");
							totaldorona3.close();
							
							ResultSet regionNCRdorona3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Dorona Ray';");
							while (regionNCRdorona3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRdorona3.getString("candidacy") %></td>
							    		<td><%= regionNCRdorona3.getString("name") %></td>
							    		<td><%= doronatotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRdorona3.close();	%>
							
							<%
							ResultSet totaldrilon3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Drilon Frank' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String drilontotal3 = totaldrilon3.getString("TOTALVOTES");
							totaldrilon3.close();
							
							ResultSet regionNCRdrilon3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Drilon Frank';");
							while (regionNCRdorona3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRdrilon3.getString("candidacy") %></td>
							    		<td><%= regionNCRdrilon3.getString("name") %></td>
							    		<td><%= drilontotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRdrilon3.close();	%>
							
							<%
							ResultSet totalgadon3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gadon Larry' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String gadontotal3 = totalgadon3.getString("TOTALVOTES");
							totalgadon3.close();
							
							ResultSet regionNCRgadon3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gadon Larry';");
							while (regionNCRgadon3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRgadon3.getString("candidacy") %></td>
							    		<td><%= regionNCRgadon3.getString("name") %></td>
							    		<td><%= gadontotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRgadon3.close();	%>
							
							<%
							ResultSet totalwin3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gatchalian Win' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String wintotal3 = totalwin3.getString("TOTALVOTES");
							totalwin3.close();
							
							ResultSet regionNCRwin3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gatchalian Win';");
							while (regionNCRgadon3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRwin3.getString("candidacy") %></td>
							    		<td><%= regionNCRwin3.getString("name") %></td>
							    		<td><%= wintotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRwin3.close();	%>
							
							<%
							ResultSet totaldick3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Gordon Dick' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String dicktotal3 = totaldick3.getString("TOTALVOTES");
							totaldick3.close();
							
							ResultSet regionNCRdick3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Gordon Dick';");
							while (regionNCRdick3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRdick3.getString("candidacy") %></td>
							    		<td><%= regionNCRdick3.getString("name") %></td>
							    		<td><%= dicktotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRdick3.close();	%>
							
							<%
							ResultSet totalrisa3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Hontiveros Risa' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String risatotal3 = totalrisa3.getString("TOTALVOTES");
							totalrisa3.close();
							
							ResultSet regionNCRrisa3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Hontiveros Risa';");
							while (regionNCRrisa3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRrisa3.getString("candidacy") %></td>
							    		<td><%= regionNCRrisa3.getString("name") %></td>
							    		<td><%= risatotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRrisa3.close();	%>
							
							<%
							ResultSet totalkabalo3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Kabalo Eid' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String kabalototal3 = totalkabalo3.getString("TOTALVOTES");
							totalkabalo3.close();
							
							ResultSet regionNCRkabalo3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Kabalo Eid';");
							while (regionNCRkabalo3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRkabalo3.getString("candidacy") %></td>
							    		<td><%= regionNCRkabalo3.getString("name") %></td>
							    		<td><%= kabalototal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRkabalo3.close();	%>
							
							<%
							ResultSet totalatty3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Kapunan Atty. Lorna' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String attytotal3 = totalatty3.getString("TOTALVOTES");
							totalatty3.close();
							
							ResultSet regionNCRatty3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Kapunan Atty. Lorna';");
							while (regionNCRatty3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRatty3.getString("candidacy") %></td>
							    		<td><%= regionNCRatty3.getString("name") %></td>
							    		<td><%= attytotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRatty3.close();	%>
							
							<%
							ResultSet totalkiram3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Kiram Princess Jacel' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String kiramtotal3 = totalkiram3.getString("TOTALVOTES");
							totalkiram3.close();
							
							ResultSet regionNCRkiram3 = stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Kiram Princess Jacel';");
							while (regionNCRkiram3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRkiram3.getString("candidacy") %></td>
							    		<td><%= regionNCRkiram3.getString("name") %></td>
							    		<td><%= kiramtotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRkiram3.close();	%>
							
							<%
							ResultSet totallorna3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Lacsamana Alma Moreno' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String lornatotal3 = totallorna3.getString("TOTALVOTES");
							totallorna3.close();
							
							ResultSet regionNCRlorna3= stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Lacsamana Alma Moreno';");
							while (regionNCRlorna3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRlorna3.getString("candidacy") %></td>
							    		<td><%= regionNCRlorna3.getString("name") %></td>
							    		<td><%= lornatotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRlorna3.close();	%>
							
							<%
							ResultSet totallacson3 = stat.executeQuery("SELECT SUM(vote) as 'TOTALVOTES' FROM tapat WHERE name='Lacson Panfilo' and city='Navotas' and barangay='Sipac-Almacen' and region='NCR';");
							String lacsontotal3 = totallacson3.getString("TOTALVOTES");
							totallacson3.close();
							
							ResultSet regionNCRlacson3= stat.executeQuery("SELECT distinct candidacy,name FROM tapat WHERE region='NCR' and name='Lacson Panfilo';");
							while (regionNCRlacson3.next()) {	    
							    %>
							    	<tr>
							    		<td><%= regionNCRlacson3.getString("candidacy") %></td>
							    		<td><%= regionNCRlacson3.getString("name") %></td>
							    		<td><%= lacsontotal3 %></td>
							    	</tr>
							    <%
							}
							regionNCRlacson3.close();	%> --%>