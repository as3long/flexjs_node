package com.as3long.node.native.http 
{
	/**
	 * ...
	 * @author lonnyhuang
	 */
	public class Agent 
	{
		public var maxSockets:int;
		public var maxFreeSockets:int = 256;
		public var sockets:Array;
		public var freeSockets:Array;
		public var requests:Array;
		public function Agent(options:Object = null) 
		{
			
		}
		
		public function destroy():void
		{
			
		}
		
	}

}