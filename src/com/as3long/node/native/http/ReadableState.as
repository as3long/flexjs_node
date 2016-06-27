package com.as3long.node.native.http 
{
	/**
	 * ...
	 * @author 黄龙
	 */
	public class ReadableState extends BaseNativeObject
	{
		public var objectMode:Boolean;
		public var highWaterMark:uint;
		public var buffer:Array;
		public var length:int;
		public var pipes:*
		public var pipesCount:int;
		public var flowing:*;
		public var ended:Boolean;
		public var endEmitted:Boolean;
		public var reading:Boolean;
		public var sync:Boolean;
		public var needReadable:Boolean;
		public var emittedReadable:Boolean;
		public var readableListening:Boolean;
		public var resumeScheduled:Boolean;
		public var defaultEncoding:String;
		public var ranOut:Boolean;
		public var awaitDrain:int;
		public var readingMore:Boolean;
		public var decoder:*;
		public var encoding:*;
		public function ReadableState(nativeObject:*) 
		{
			super(nativeObject);
		}
		
	}

}