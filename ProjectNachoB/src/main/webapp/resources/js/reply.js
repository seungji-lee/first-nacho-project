	console.log("Reply...........");
   var replyService = (function(){
   			
   			// replyService.add()
   			function add(reply, callback, error){
   				console.log("add reply...",reply);
   				
   				$.ajax({
   					type:'post',
   					url:"/replies/new",
   					data : JSON.stringify(reply),
   					contentType:"application/json; charset=utf-8",
   					success : function(result, status, xhr){
   						if(callback){
   							callback(result);
   						}
   					},
   					error : function(xhr, status, er){
   						if(error){
   							error(er);
   						}
   					}
   				});	
   			}
   			
   			
   			function getList(param, callback, error){
   				var bno = param.bno;
   				var page = param.page || 1;
   				
   				$.ajax({
   					type:'get',
   					url:"/replies/pages/" + bno + "/" + page + ".json",
   					success : function(result, status, xhr){
   						if(callback){
   							callback(result);
   						}
   					},
   					error : function(xhr, status, er){
   						if(error){
   							error(er);
   						}
   					}
   				});	
   			}
   			
   			function remove(param, callback, error){
   				var bno = param.bno;
   				var rno = param.rno;
   				$.ajax({
   					type:'delete',
   					url:"/replies/" + rno + "/" + bno,
   					success : function(result, status, xhr){
   						if(callback){
   							callback(result);
   						}
   					},
   					error : function(xhr, status, er){
   						if(error){
   							error(er);
   						}
   					}
   				});	
   			}
   			

   			
   			function update(reply, callback, error){
   				
   				$.ajax({
   					type:'put',
   					url:"/replies/" + reply.rno,
   					data : JSON.stringify(reply),
   					contentType:"application/json; charset=utf-8",
   					success : function(result, status, xhr){
   						if(callback){
   							callback(result);
   						}
   					},
   					error : function(xhr, status, er){
   						if(error){
   							error(er);
   						}
   					}
   				});	
   			}
   			
   			function get(rno, callback, error){
   				
   				$.ajax({
   					type:'get',
   					url:"/replies/" + rno + ".json",
   					success : function(result, status, xhr){
   						if(callback){
   							console.log('result-->' , result);
   							callback(result);
   						}
   					},
   					error : function(xhr, status, er){
   						if(error){
   							error(er);
   						}
   					}
   				});	
   			}
   			
   			return{
   				add: add,
   				getList:getList,
   				remove:remove,
   				update:update,
   				get:get
   			};


   		})();