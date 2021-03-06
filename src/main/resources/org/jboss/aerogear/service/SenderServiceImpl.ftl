package ${package}.push.impl;

import ${package}.push.SenderService;
import org.jboss.aerogear.unifiedpush.DefaultPushSender;
import org.jboss.aerogear.unifiedpush.PushSender;
import org.jboss.aerogear.unifiedpush.message.UnifiedMessage;

public class SenderServiceImpl implements SenderService {

	private PushSender pushSender; 
	@Override
	public void send(UnifiedMessage message) {
		pushSender.send(message);

	}
	public SenderServiceImpl() {
		pushSender = DefaultPushSender.withConfig("META-INF/pushConfiguration.json").build();
	}	
}
