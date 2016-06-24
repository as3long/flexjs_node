package com.as3long.node.native.http 
{
	/**
	 * ...
	 * @author lonnyhuang
	 */
	public class Headers 
	{
		public var host:String;
		public var connection:String;
		public var cacheControl:String;
		public var accept:String;
		public var upgradeInsecureRequests:String;
		public var userAgent:String;
		public var acceptEncoding:String;
		public var acceptLanguage:String;
		public function Headers(nativeHeaders:Object) 
		{
			this.host = nativeHeaders.host;
			this.connection = nativeHeaders.connection;
			this.cacheControl = nativeHeaders['cache-control'];
			this.accept = nativeHeaders.accept;
			this.upgradeInsecureRequests = nativeHeaders['upgrade-insecure-requests'];
			this.userAgent = nativeHeaders['user-agent'];
			this.acceptEncoding = nativeHeaders['accept-encoding'];
			this.acceptLanguage = nativeHeaders['accept-language'];
		}
		
		
	}

}