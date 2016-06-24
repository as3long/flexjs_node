package com.as3long.node.native.http 
{
	/**
	 * ...
	 * @author lonnyhuang
	 */
	public class ServerResponse 
	{
		private var _statusCode:int;
		private var nativeServerResponse:*;
		private var _sendDate:Boolean;
		public function ServerResponse(nativeServerResponse:*) 
		{
			this.nativeServerResponse = nativeServerResponse;
		}
		
		/**
		 * 发送一个 HTTP/1.1 100 Continue 消息至客户端，表明请求体可以被发送。可以在服务器上查
		 * @return
		 */
		public function writeContinue():*
		{
			return nativeServerResponse.writeContinue();
		}
		
		/**
		 * 向请求回复响应头
		 * @return
		 */
		public function writeHead(...args):*
		{
			return nativeServerResponse.writeHead.apply(nativeServerResponse, args);
		}
		
		public function write(chunk, encoding:String = 'utf8'):*
		{
			return nativeServerResponse.write.call(nativeServerResponse, chunk, encoding);
		}
		
		/**
		 * 设定套接字的超时时间为msecs。如果提供了回调函数，会将其添加为响应对象的'timeout'事件的监听器。
		 * @param	msecs
		 * @param	callback
		 * @return
		 */
		public function setTimeout(msecs:Number, callback:Function):*
		{
			return nativeServerResponse.setTimeout(msecs, callback);
		}
		
		/**
		 * 为默认或者已存在的头设置一条单独的头内容。如果这个头已经存在于 将被送出的头中，将会覆盖原来的内容。如果我想设置更多的头， 就使用一个相同名字的字符串数组
		 * @param	name
		 * @param	value
		 * @return
		 */
		public function setHeader(name:String, value:*):*
		{
			return nativeServerResponse.setHeader(name, value);
		}
		
		public function get headersSent():Boolean
		{
			return nativeServerResponse.headersSent;
		}
		
		public function getHeader(name:String):*
		{
			return nativeServerResponse.getHeader(name);
		}
		
		/**
		 * 取消掉一个在队列内等待发送的header。
		 * @param	name
		 */
		public function removeHeader(name:String):void
		{
			nativeServerResponse.removeHeader(name);
		}
		
		/**
		 * 这个方法添加HTTP尾随headers（一个在消息末尾的header）给响应。
		 * @param	headers
		 */
		public function addTrailers(headers:*):void
		{
			nativeServerResponse.addTrailers(headers);
		}
		
		public function end(data:* = null , encoding:String = "utf8"):void
		{
			nativeServerResponse.end(data, encoding);
		}
		
		
		public function get statusCode():int 
		{
			return _statusCode;
		}
		
		public function set statusCode(value:int):void 
		{
			_statusCode = value;
		}
		
		public function get sendDate():Boolean 
		{
			return _sendDate;
		}
		
		public function set sendDate(value:Boolean):void 
		{
			_sendDate = value;
		}
	}

}