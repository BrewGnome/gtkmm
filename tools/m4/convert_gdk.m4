## gtkmm - a C++ wrapper for the Gtk toolkit
##
## Copyright 2003-2010 The gtkmm Development Team
##
## This library is free software; you can redistribute it and/or
## modify it under the terms of the GNU Lesser General Public
## License as published by the Free Software Foundation; either
## version 2.1 of the License, or (at your option) any later version.
##
## This library is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
## Lesser General Public License for more details.
##
## You should have received a copy of the GNU Lesser General Public
## License along with this library; if not, write to the Free Software
## Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA

include(convert_glib.m4)
include(convert_gio.m4)

_EQUAL(gint8[],gint8*)
_EQUAL(guchar,guint8)
_EQUAL(guchar*,guint8*)
_EQUAL(gfloat,float)

# Enums
_CONV_ENUM(Gdk,AnchorHints)
_CONV_ENUM(Gdk,AxisFlags)
_CONV_ENUM(Gdk,AxisUse)
_CONV_ENUM(Gdk,ByteOrder)
_CONV_ENUM(Gdk,CapStyle)
_CONV_ENUM(Gdk,Colorspace)
_CONV_ENUM(Gdk,CrossingMode)
_CONV_INCLASS_ENUM(Gdk,Device,Type)
_CONV_ENUM(Gdk,DragAction)
_CONV_ENUM(Gdk,DragProtocol)
_CONV_ENUM(Gdk,EventMask)
_CONV_INCLASS_ENUM(Gdk,Event,Type)
_CONV_ENUM(Gdk,ExtensionMode)
_CONV_ENUM(Gdk,Fill)
_CONV_ENUM(Gdk,FillRule)
_CONV_ENUM(Gdk,FullscreenMode)
_CONV_ENUM(Gdk,Function)
_CONV_ENUM(Gdk,Gravity)
_CONV_ENUM(Gdk,GrabOwnership)
_CONV_ENUM(Gdk,InputCondition)
_CONV_ENUM(Gdk,InputMode)
_CONV_ENUM(Gdk,InputSource)
_CONV_ENUM(Gdk,InterpType)
_CONV_ENUM(Gdk,JoinStyle)
_CONV_ENUM(Gdk,LineStyle)
_CONV_ENUM(Gdk,ModifierType)
_CONV_ENUM(Gdk,ModifierIntent)
_CONV_ENUM(Gdk,NotifyType)
_CONV_ENUM(Gdk,OverlapType)
_CONV_ENUM(Gdk,OwnerChange)
_CONV_ENUM(Gdk,PropertyState)
_CONV_ENUM(Gdk,ScrollDirection)
_CONV_INCLASS_ENUM(Gdk,Seat,Capabilities)
_CONV_ENUM(Gdk,SettingAction)
_CONV_ENUM(Gdk,Status)
_CONV_ENUM(Gdk,SubpixelLayout)
_CONV_ENUM(Gdk,SubwindowMode)
_CONV_ENUM(Gdk,TouchpadGesturePhase)
_CONV_ENUM(Gdk,WindowAttributesType)
_CONV_ENUM(Gdk,WindowEdge)
_CONV_INCLASS_ENUM(Gdk,Window,Hints)
_CONV_INCLASS_ENUM(Gdk,Window,State)
_CONV_INCLASS_ENUM(Gdk,Window,Type)
_CONV_INCLASS_ENUM(Gdk,Window,TypeHint)
_CONV_ENUM(Gdk,WMDecoration)
_CONV_ENUM(Gdk,WMFunction)
_CONV_ENUM(Gdk,GrabStatus)
_CONV_INCLASS_ENUM(Gdk,Pixbuf,AlphaMode)
_CONV_INCLASS_ENUM(Gdk,Pixbuf,Rotation)
_CONV_ENUM(Gdk,GLError)

_CONVERSION(`guint32&',`guint32*',`&($3)')

_CONVERSION(`EventMask',`gint',`static_cast<gint>($3)')
_CONVERSION(`Gdk::EventMask',`gint',`static_cast<gint>($3)')
_CONVERSION(`gint',`Gdk::EventMask',`static_cast<Gdk::EventMask>($3)')
_CONVERSION(`ModifierType&',`GdkModifierType*',`(($2) &($3))')
_CONVERSION(`WMDecoration&',`GdkWMDecoration*',`(($2) &($3))')
_CONVERSION(`GdkDragProtocol&',`GdkDragProtocol*',`&($3)')

_CONVERSION(`GdkRectangle&',`GdkRectangle*',`&$3',`*$3')

_CONVERSION(`GdkKeymap*',`const GdkKeymap*',`$3')


# Ref (gdkmm) -> Ptr (gtk+)
_CONVERSION(`const RGBA&',`const GdkRGBA*',`($3).gobj()')
_CONVERSION(`RGBA&',`GdkRGBA*',`($3).gobj()')
_CONVERSION(`Gdk::RGBA&',`GdkRGBA*',`($3).gobj()')
_CONVERSION(`const RGBA&',`GdkRGBA*',`const_cast<RGBA&>($3).gobj()')
_CONVERSION(`const Gdk::RGBA&',`const GdkRGBA*',`($3).gobj()')
_CONVERSION(`Rectangle&',`GdkRectangle*',($3).gobj())
_CONVERSION(`Gdk::Rectangle&',`GdkRectangle*',($3).gobj())
_CONVERSION(`const Rectangle&',`const GdkRectangle*',($3).gobj())
_CONVERSION(`const Gdk::Rectangle&',`const GdkRectangle*',($3).gobj())

_CONVERSION(`const ::Cairo::RefPtr< ::Cairo::Context>&',`cairo_t*',`(($3) ? ($3)->cobj() : nullptr)')
_CONVERSION(`cairo_t*',`::Cairo::RefPtr< ::Cairo::Context>',`Gdk::Cairo::wrap($3)')
_CONVERSION(`cairo_t*',`::Cairo::RefPtr<const ::Cairo::Context>',`Gdk::Cairo::wrap($3)')
_CONVERSION(`const ::Cairo::RefPtr< ::Cairo::Region>&',`const cairo_region_t*',`(($3) ? ($3)->cobj() : nullptr)')
_CONVERSION(`const ::Cairo::RefPtr<const ::Cairo::Region>&',`cairo_region_t*',`const_cast<cairo_region_t*>(($3) ? ($3)->cobj() : nullptr)')
_CONVERSION(`const ::Cairo::RefPtr<const ::Cairo::Region>&',`const cairo_region_t*',`(($3) ? ($3)->cobj() : nullptr)')
_CONVERSION(`cairo_region_t*',`::Cairo::RefPtr< ::Cairo::Region>',`Gdk::Cairo::wrap($3)')
_CONVERSION(`const ::Cairo::RefPtr< ::Cairo::Surface>&',`cairo_surface_t*',`(($3) ? ($3)->cobj() : nullptr)')
_CONVERSION(`cairo_surface_t*',`::Cairo::RefPtr< ::Cairo::Surface>',`Gdk::Cairo::wrap($3)')

_CONVERSION(`const Glib::RefPtr<Cursor>&',`GdkCursor*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<const Cursor>&',`GdkCursor*',__CONVERT_CONST_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<Gdk::Cursor>&',`GdkCursor*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<const Gdk::Cursor>&',`GdkCursor*',__CONVERT_CONST_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<Gdk::Window>&',`GdkWindow*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<Window>&',`GdkWindow*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<GLContext>&',`GdkGLContext*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<Gdk::GLContext>&',`GdkGLContext*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<DrawContext>&',`GdkDrawContext*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<DrawingContext>&',`GdkDrawingContext*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<Bitmap>&',`GdkBitmap*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<Gdk::Bitmap>&',`GdkBitmap*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<Drawable>&',`GdkDrawable*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<Gdk::Drawable>&',`GdkDrawable*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<const Drawable>&',`GdkDrawable*',__CONVERT_CONST_REFPTR_TO_P_SUN(Drawable))
_CONVERSION(`const Glib::RefPtr<Pixbuf>&',`GdkPixbuf*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<const Pixbuf>&',`const GdkPixbuf*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<const Pixbuf>&',`GdkPixbuf*',__CONVERT_CONST_REFPTR_TO_P_SUN(Pixbuf))
_CONVERSION(`const Glib::RefPtr<Gdk::Pixbuf>&',`GdkPixbuf*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`Glib::RefPtr<Gdk::Pixbuf>',`GdkPixbuf*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<Gdk::PixbufAnimation>&',`GdkPixbufAnimation*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<Gdk::PixbufAnimationIter>&',`GdkPixbufAnimationIter*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<Gdk::DragContext>&',`GdkDragContext*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<Display>&',`GdkDisplay*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<Gdk::Display>&',`GdkDisplay*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<Gdk::Device>&',`GdkDevice*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<Device>&',`GdkDevice*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<const Device>&',`GdkDevice*',__CONVERT_CONST_REFPTR_TO_P_SUN(Gdk::Device))
_CONVERSION(`const Glib::RefPtr<Gdk::Monitor>&',`GdkMonitor*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<const Texture>&',`GdkTexture*',__CONVERT_CONST_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<const Gdk::Texture>&',`GdkTexture*',__CONVERT_CONST_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<Gdk::Texture>&',`GdkTexture*',__CONVERT_REFPTR_TO_P)

define(`__CFR2P',`const_cast<$`'2>($`'3.gobj())')
_CONVERSION(const Gdk::Rectangle&,GdkRectangle*,__CFR2P)
_CONVERSION(const Rectangle&,GdkRectangle*,__CFR2P)
_CONVERSION(const Geometry&,const GdkGeometry*,&($3))
_CONVERSION(const Gdk::Geometry&,GdkGeometry*,const_cast<$2>(&($3)))
_CONVERSION(const Geometry&,GdkGeometry*,const_cast<$2>(&($3)))

_CONVERSION(`Gdk::Rectangle*',`GdkRectangle*',`Glib::unwrap($3)')
_CONVERSION(`const Gdk::Rectangle*',`GdkRectangle*',`Glib::unwrap(const_cast<Gdk::Rectangle*>($3))')
_CONVERSION(`GdkRectangle*',`Gdk::Rectangle*',`&Glib::wrap($3)')
_CONVERSION(`GdkRectangle*',`const Gdk::Rectangle*',`&Glib::wrap($3)')

# Special treatment for the Sun Forte compiler
#_CONVERSION(const Glib::RefPtr<const Gdk::Window>&,GdkWindow*,__CONVERT_CONST_REFPTR_TO_P)
#_CONVERSION(const Glib::RefPtr<const Gdk::Bitmap>&,GdkBitmap*,__CONVERT_CONST_REFPTR_TO_P)

_CONVERSION(`const Glib::RefPtr<const Gdk::Device>&', `GdkDevice*',__CONVERT_CONST_REFPTR_TO_P_SUN(Gdk::Device))
_CONVERSION(`const Glib::RefPtr<const Gdk::Window>&', `GdkWindow*',__CONVERT_CONST_REFPTR_TO_P_SUN(Gdk::Window))
_CONVERSION(`const Glib::RefPtr<const Window>&', `GdkWindow*',__CONVERT_CONST_REFPTR_TO_P_SUN(Gdk::Window))
_CONVERSION(`const Glib::RefPtr<const Gdk::GLContext>&', `GdkGLContext*',__CONVERT_CONST_REFPTR_TO_P_SUN(Gdk::GLContext))
_CONVERSION(`const Glib::RefPtr<const GLContext>&', `GdkGLContext*',__CONVERT_CONST_REFPTR_TO_P_SUN(Gdk::GLContext))
_CONVERSION(`const Glib::RefPtr<const Gdk::Bitmap>&', `GdkBitmap*',__CONVERT_CONST_REFPTR_TO_P_SUN(Gdk::Bitmap))
#_CONVERSION(`const Glib::RefPtr<const Gdk::Drawable>&', `GdkDrawable*',__CONVERT_CONST_REFPTR_TO_P_SUN(Gdk::Drawable))
#_CONVERSION(`const Glib::RefPtr<const Drawable>&', `GdkDrawable*',__CONVERT_CONST_REFPTR_TO_P_SUN(Drawable))
#_CONVERSION(`const Glib::RefPtr<const Display>&', `GdkDrawable*',__CONVERT_CONST_REFPTR_TO_P_SUN(Drawable))


_CONVERSION(`GdkWindow*',`Glib::RefPtr<Window>', `Glib::wrap($3)')
_CONVERSION(`GdkWindow*',`Glib::RefPtr<const Window>', `Glib::wrap($3)')
_CONVERSION(`GdkWindow*',`Glib::RefPtr<Gdk::Window>', `Glib::wrap($3)')
_CONVERSION(`GdkWindow*',`Glib::RefPtr<const Gdk::Window>', `Glib::wrap($3)')
_CONVERSION(`GdkGLContext*',`Glib::RefPtr<GLContext>', `Glib::wrap($3)')
_CONVERSION(`GdkGLContext*',`Glib::RefPtr<const GLContext>', `Glib::wrap($3)')
_CONVERSION(`GdkGLContext*',`Glib::RefPtr<Gdk::GLContext>', `Glib::wrap($3)')
_CONVERSION(`GdkGLContext*',`Glib::RefPtr<const Gdk::GLContext>', `Glib::wrap($3)')
_CONVERSION(`GdkDrawContext*',`Glib::RefPtr<DrawContext>', `Glib::wrap($3)')
_CONVERSION(`GdkDrawContext*',`Glib::RefPtr<const DrawContext>', `Glib::wrap($3)')
_CONVERSION(`GdkDrawingContext*',`Glib::RefPtr<DrawingContext>', `Glib::wrap($3)')
_CONVERSION(`GdkCursor*',`Glib::RefPtr<Cursor>', `Glib::wrap($3)')
_CONVERSION(`GdkCursor*',`Glib::RefPtr<const Cursor>', `Glib::wrap($3)')
_CONVERSION(`GdkCursor*',`Glib::RefPtr<Gdk::Cursor>', `Glib::wrap($3)')
_CONVERSION(`GdkCursor*',`Glib::RefPtr<const Gdk::Cursor>', `Glib::wrap($3)')
_CONVERSION(`GdkPixbuf*',`Glib::RefPtr<Pixbuf>', `Glib::wrap($3)')
_CONVERSION(`GdkPixbuf*',`Glib::RefPtr<Gdk::Pixbuf>', `Glib::wrap($3)')
_CONVERSION(`GdkPixbuf*',`Glib::RefPtr<const Gdk::Pixbuf>', `Glib::wrap($3)')
_CONVERSION(`GdkPixbufAnimationIter*',`Glib::RefPtr<PixbufAnimationIter>', `Glib::wrap($3)')
_CONVERSION(`GdkPixbuf*',`Glib::RefPtr<Gdk::Pixbuf>', Glib::wrap($3))
_CONVERSION(`GdkPixbufAnimation*',`Glib::RefPtr<Gdk::PixbufAnimation>', `Glib::wrap($3)')
_CONVERSION(`GdkPixbufAnimation*',`Glib::RefPtr<const Gdk::PixbufAnimation>', `Glib::wrap($3)')

_CONVERSION(`GdkDisplay*',`Glib::RefPtr<Display>', `Glib::wrap($3)')
_CONVERSION(`GdkDisplay*',`Glib::RefPtr<const Display>', `Glib::wrap($3)')
_CONVERSION(`GdkDisplay*',`Glib::RefPtr<Gdk::Display>', `Glib::wrap($3)')
_CONVERSION(`GdkDisplay*',`Glib::RefPtr<const Gdk::Display>', `Glib::wrap($3)')

_CONVERSION(`GdkDisplayManager*',`Glib::RefPtr<DisplayManager>', `Glib::wrap($3)')
_CONVERSION(`GdkDisplayManager*',`Glib::RefPtr<const DisplayManager>', `Glib::wrap($3)')

_CONVERSION(`GdkDevice*',`Glib::RefPtr<Device>', `Glib::wrap($3)')
_CONVERSION(`GdkDevice*',`Glib::RefPtr<Gdk::Device>', `Glib::wrap($3)')
_CONVERSION(`GdkDevice*',`Glib::RefPtr<const Device>', `Glib::wrap($3)')
_CONVERSION(`GdkDevice*',`Glib::RefPtr<const Gdk::Device>', `Glib::wrap($3)')

_CONVERSION(`GdkSeat*',`Glib::RefPtr<Seat>', `Glib::wrap($3)')
_CONVERSION(`GdkSeat*',`Glib::RefPtr<Gdk::Seat>', `Glib::wrap($3)')
_CONVERSION(`GdkSeat*',`Glib::RefPtr<const Seat>', `Glib::wrap($3)')
_CONVERSION(`GdkSeat*',`Glib::RefPtr<const Gdk::Seat>', `Glib::wrap($3)')

_CONVERSION(`GdkTexture*',`Glib::RefPtr<Texture>', `Glib::wrap($3)')
_CONVERSION(`GdkTexture*',`Glib::RefPtr<Gdk::Texture>', `Glib::wrap($3)')
_CONVERSION(`GdkTexture*',`Glib::RefPtr<const Texture>', `Glib::wrap($3)')
_CONVERSION(`GdkTexture*',`Glib::RefPtr<const Gdk::Texture>', `Glib::wrap($3)')

_CONVERSION(`GdkMonitor*',`Glib::RefPtr<Monitor>', `Glib::wrap($3)')
_CONVERSION(`GdkMonitor*',`Glib::RefPtr<const Monitor>', `Glib::wrap($3)')

_CONVERSION(`gpointer',`const void*', `static_cast<$2>($3)')

# Clipboard
_CONVERSION(`const Glib::RefPtr<Gdk::Clipboard>&',`GdkClipboard*',__CONVERT_REFPTR_TO_P($3))
_CONVERSION(`GdkClipboard*',`Glib::RefPtr<Clipboard>',`Glib::wrap($3)')
_CONVERSION(`GdkClipboard*',`Glib::RefPtr<const Clipboard>',`Glib::wrap($3)')
_CONVERSION(`GdkClipboard*',`Glib::RefPtr<Gdk::Clipboard>',`Glib::wrap($3)')
_CONVERSION(`GdkClipboard*',`Glib::RefPtr<const Gdk::Clipboard>',`Glib::wrap($3)')

# ContentFormats
_CONVERSION(`const Glib::RefPtr<ContentFormats>&',`GdkContentFormats*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<const ContentFormats>&',`GdkContentFormats*',__CONVERT_CONST_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<const ContentFormats>&',`const GdkContentFormats*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<Gdk::ContentFormats>&',`GdkContentFormats*',__CONVERT_REFPTR_TO_P)
_CONVERSION(`const Glib::RefPtr<const Gdk::ContentFormats>&',`GdkContentFormats*',__CONVERT_CONST_REFPTR_TO_P)
_CONVERSION(`GdkContentFormats*',`Glib::RefPtr<ContentFormats>',`Glib::wrap($3)')
_CONVERSION(`GdkContentFormats*',`Glib::RefPtr<const ContentFormats>',`Glib::wrap($3)')
_CONVERSION(`GdkContentFormats*',`Glib::RefPtr<Gdk::ContentFormats>',`Glib::wrap($3)')
_CONVERSION(`GdkContentFormats*',`Glib::RefPtr<const Gdk::ContentFormats>',`Glib::wrap($3)')

# XPM data
_CONVERSION(`const char*const*',`const char**',`const_cast<const char**>($3)',`$3')


_CONVERSION(`GdkTimeCoord**&',`GdkTimeCoord***',`&($3)')

dnl _CONVERSION(GdkBitmap*,Gdk::Bitmap&,`Glib::unwrap_boxed($3)',`$3')

dnl Atom -> string and vice versa
_CONVERSION(`GdkAtom',`Glib::ustring',`Gdk::AtomString::to_cpp_type($3)')
_CONVERSION(`const Glib::ustring&', `GdkAtom', `Gdk::AtomString::to_c_type($3)')
_CONVERSION(`Glib::ustring&',`GdkAtom',`Gdk::AtomString::to_c_type($3)')

dnl GdkEvent and GdkEventSequence
_CONVERSION(`GdkEvent*',`Event',`Glib::wrap($3)')
_CONVERSION(`GdkEvent*',`Gdk::Event',`Glib::wrap($3)')
_CONVERSION(`const GdkEvent*',`Gdk::Event',`Glib::wrap(const_cast<GdkEvent*>($3), true)')
_CONVERSION(`Event&',`GdkEvent*',`($3).gobj()')
_CONVERSION(`Gdk::Event&',`GdkEvent*',`($3).gobj()')
_CONVERSION(`const Event&',`GdkEvent*',`const_cast<$2>(($3).gobj())')
_CONVERSION(`const Gdk::Event&',`GdkEvent*',`const_cast<$2>(($3).gobj())')
_CONVERSION(`const Event&',`const GdkEvent*',`($3).gobj()')
_CONVERSION(`const Gdk::Event&',`const GdkEvent*',`($3).gobj()')
_CONVERSION(`Gdk::EventButton&',`GdkEventButton*',`($3).gobj()')
_CONVERSION(`Gdk::EventKey&',`GdkEventKey*',`($3).gobj()')
_CONVERSION(`Gdk::EventSequence*',`GdkEventSequence*',`reinterpret_cast<$2>($3)')
_CONVERSION(`GdkEventSequence*',`Gdk::EventSequence*',`reinterpret_cast<$2>($3)')

_CONVERSION(`GdkDragContext*',`Glib::RefPtr<DragContext>',Glib::wrap($3))
_CONVERSION(`GdkDragContext*',`Glib::RefPtr<Gdk::DragContext>',Glib::wrap($3))

