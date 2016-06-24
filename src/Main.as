package
{
	import com.as3long.node.native.http.Http;
	import com.as3long.node.native.http.Server;
	import com.as3long.node.native.http.ServerResponse;
	/**
	 * ...
	 * @author lonnyhuang
	 */
	public class Main 
	{
		private var server:Server;
		public function Main() 
		{
			init();
		}
		
		private function init():void 
		{
			server = Http.createServer(route);
			server.listen(9922);
		}
		
		private function route(req:*, res:ServerResponse):void
		{
			res.write('hello\n');
			res.write('hello2\n');
			res.write('hello world');
			res.end();
			//trace(req);
		}
		
	}

}