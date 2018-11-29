CREATE TABLE IF NOT EXISTS json00 (            
      tipo					    VARCHAR(4)        ,
      ts           			    TIMESTAMP NOT NULL,
      ts_code				    TIMESTAMP NOT NULL,      
      id_orig_h 	 		    VARCHAR           ,
      id_orig_p 	 	   	    UNSIGNED_LONG NOT NULL,
	  id_resp_h 	 	   	    VARCHAR           ,
	  id_resp_p 	 	   	    UNSIGNED_LONG NOT NULL,
	  proto        	    	    VARCHAR           ,
      uid          			    VARCHAR      	  ,        
      rowid    				    UNSIGNED_LONG NOT NULL,

	  "conn".service		    VARCHAR,
	  "conn".duration    	    UNSIGNED_LONG,
	  "conn".orig_bytes 	    UNSIGNED_LONG,
	  "conn".resp_bytes  	    UNSIGNED_LONG,	  
	  "conn".conn_state	 	    VARCHAR,
	  "conn".local_orig	 	    BOOLEAN,
	  "conn".local_resp	 	    BOOLEAN,
	  "conn".missed_bytes	    UNSIGNED_LONG,
	  "conn".history		    VARCHAR,
	  "conn".orig_pkts		    UNSIGNED_LONG,
	  "conn".orig_ip_bytes	    UNSIGNED_LONG,
	  "conn".resp_pkts		    UNSIGNED_LONG,
	  "conn".resp_ip_bytes      UNSIGNED_LONG,
	  "conn".tunnel_parents     VARCHAR[],
          
      "dns".trans_id	        UNSIGNED_LONG,
      "dns".rtt 			    DOUBLE,
      "dns".query  		        VARCHAR,
      "dns".qclass 			    UNSIGNED_LONG,
      "dns".qclass_name 	    VARCHAR,
      "dns".qtype 			    UNSIGNED_LONG,
      "dns".qtype_name 		    VARCHAR,
	  "dns".rcode   		    UNSIGNED_LONG,
	  "dns".rcode_name 		    VARCHAR,
	  "dns".AA 				    BOOLEAN,
	  "dns".TC				    BOOLEAN,
	  "dns".RD				    BOOLEAN,
	  "dns".RA				    BOOLEAN,
	  "dns".Z				    UNSIGNED_LONG,
	  "dns".answers			    VARCHAR[],
	  "dns".TTLs			    DOUBLE[],
	  "dns".rejected   		    BOOLEAN,

	  "http".trans_depth  		UNSIGNED_LONG,
	  "http".method				VARCHAR,
	  "http".host				VARCHAR,
	  "http".uri				VARCHAR,
	  "http".referrer			VARCHAR,  
	  "http".version      		VARCHAR,
	  "http".user_agent			VARCHAR,
	  "http".request_body_len   UNSIGNED_LONG,
	  "http".response_body_len  UNSIGNED_LONG,
	  "http".status_code		UNSIGNED_LONG,
	  "http".status_msg		    VARCHAR,
	  "http".info_code		    UNSIGNED_LONG,
	  "http".info_msg			VARCHAR,	 
	  "http".tags				VARCHAR[],
	  "http".username			VARCHAR,
	  "http".password			VARCHAR,
	  "http".proxied			VARCHAR[],
	  "http".orig_fuids			VARCHAR[],
	  "http".orig_filenames		VARCHAR[],
	  "http".orig_mime_types    VARCHAR[],
	  "http".resp_fuids		    VARCHAR[],
	  "http".resp_filenames     VARCHAR[],
	  "http".resp_mime_types    VARCHAR[]
	  
      CONSTRAINT pk PRIMARY KEY( tipo		,
								 ts         ,
								 ts_code	,
								 id_orig_h  ,
								 id_orig_p  ,
								 id_resp_h  ,
								 id_resp_p  ,
								 proto      ,
								 uid        ,
								 rowid ));


--Deixar o tipo por primeiro
--construir indices por query e ip de saida
--proxied	SERA que esta  certo 
	
