package com.as3long.node.native.http 
{
	/**
	 * ...
	 * @author lonnyhuang
	 */
	public class ServerRequest 
	{
		private var nativeRequest:*;
		
		public function ServerRequest(nativeRequest:*) 
		{
			this.nativeRequest = nativeRequest;
		}
		
		public function get socket():Object 
		{
			return nativeRequest.socket;
		}
		
		public function get headers():Object
		{
			return nativeRequest.headers;
		}
		
	}

}