#include <stdio.h>
#include <X11/Xlib.h>

int main(int argc, char **argv)
{
    Display *display;
    XEvent xevent;
    Window window;

    if((display = XOpenDisplay(NULL)) == NULL)
        return -1;

    window = DefaultRootWindow(display);
    XAllowEvents(display, AsyncBoth, CurrentTime);

    XGrabPointer(display, 
                 window,
                 1, 
                 PointerMotionMask | ButtonPressMask | ButtonReleaseMask , 
                 GrabModeAsync,
                 GrabModeAsync, 
                 None,
                 None,
                 CurrentTime);

    XNextEvent(display, &xevent);
    printf("done.\n");
    return 0;
}
