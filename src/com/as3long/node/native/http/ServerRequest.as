package com.as3long.node.native.http 
{
	/**
	 * ...
	 * @author lonnyhuang
	 */
	public class ServerRequest 
	{
		private var nativeRequest:*;
		public var _readableState:ReadableState;
		public function ServerRequest(nativeRequest:*) 
		{
			this.nativeRequest = nativeRequest;
			this._readableState = new ReadableState(nativeRequest._readableState);
			
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