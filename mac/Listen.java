import java.util.Scanner;
import org.jnativehook.*;
import org.jnativehook.keyboard.*;
import org.jnativehook.mouse.*;

public class Listen implements NativeKeyListener, NativeMouseInputListener, NativeMouseWheelListener {

	public static void main(String[] args) throws Exception {
		GlobalScreen.registerNativeHook();
		Listen listen = new Listen();
		GlobalScreen.getInstance().addNativeKeyListener(listen);
		GlobalScreen.getInstance().addNativeMouseListener(listen);
		GlobalScreen.getInstance().addNativeMouseMotionListener(listen);
		new Scanner(System.in).next();
	}

	public void nativeKeyPressed(NativeKeyEvent e) {
		if (e.getKeyCode() == 88) System.exit(0);
		process(e);
	}

	public void nativeKeyReleased(NativeKeyEvent e) {
		process(e);
	}

	public void nativeKeyTyped(NativeKeyEvent e) {
	}

	public void nativeMouseClicked(NativeMouseEvent e) {
		process(e);
	}

	public void nativeMousePressed(NativeMouseEvent e) {
		process(e);
	}

	public void nativeMouseReleased(NativeMouseEvent e) {
		process(e);
	}

	public void nativeMouseMoved(NativeMouseEvent e) {
		process(e);
	}

	public void nativeMouseDragged(NativeMouseEvent e) {
		process(e);
	}

	public void nativeMouseWheelMoved(NativeMouseWheelEvent e) {
		process(e);
	}

	private void process(NativeInputEvent e) {
		System.exit(1);
	}
}
