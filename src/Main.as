package
{
	import com.as3long.node.native.http.Http;
	import com.as3long.node.native.http.Server;
	import com.as3long.node.native.http.ServerResponse;
	/**
	 * 入口文件
	 * @author lonnyhuang
	 */
	public class Main 
	{
		private var server:Server;
		private var port:int = 9922;
		public function Main() 
		{
			init();
		}
		
		private function init():void 
		{
			server = Http.createServer(route);
			server.listen(port);
			trace("服务启动端口" + port);
		}
		
		private function route(req:*, res:ServerResponse):void
		{
			res.write('hello1\n');
			res.write('hello2\n');
			res.write('hello world');
			res.end();
			//trace(req);
		}
		
	}

}