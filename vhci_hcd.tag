<?xml version='1.0' encoding='ISO-8859-1' standalone='yes' ?>
<tagfile>
  <compound kind="file">
    <name>vhci-hcd.c</name>
    <path>/home/michael/proj/vhci_hcd/</path>
    <filename>vhci-hcd_8c</filename>
    <class kind="struct">vhci</class>
    <class kind="struct">vhci_conf</class>
    <class kind="struct">vhci_port</class>
    <class kind="struct">vhci_urb_priv</class>
    <member kind="define">
      <type>#define</type>
      <name>DEBUG</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>d72dbcf6d0153db1b8d8a58001feed83</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DRIVER_DESC</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>ae26107a17c06584f8bbd0d6fb91013d</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DRIVER_NAME</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>25634d21648ca7fb7a2aca614bafaaeb</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>DRIVER_VERSION</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>e578001fe043b4cca7a0edd801cfe9c4</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>trace_function</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>787808c8b9cd896cd55c77b884b9c95f</anchor>
      <arglist>(dev)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>vhci_dbg</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>23f76d8a7db5dc31aa53907cab709ace</anchor>
      <arglist>(fmt, args...)</arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>VHCI_PORT_FLAGS_RESUMING</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>dea558dee9b10b1b90ea5e366fd9ecfd</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>vhci_printk</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>5410bd15cf154a7af019ef103de3f081</anchor>
      <arglist>(level, fmt, args...)</arglist>
    </member>
    <member kind="enumeration">
      <name>vhci_rh_state</name>
      <anchor>8334440a476e27646ee1fdf852f4cae1</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>VHCI_RH_RESET</name>
      <anchor>8334440a476e27646ee1fdf852f4cae11f0966180bcb0463869da964cc89ba07</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>VHCI_RH_SUSPENDED</name>
      <anchor>8334440a476e27646ee1fdf852f4cae1b5baf8c33bb0f052d6f4508e8852e7f5</anchor>
      <arglist></arglist>
    </member>
    <member kind="enumvalue">
      <name>VHCI_RH_RUNNING</name>
      <anchor>8334440a476e27646ee1fdf852f4cae1d14ef4243f5f04a0f3c267d7be0e0dd0</anchor>
      <arglist></arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void __exit</type>
      <name>cleanup</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>05892a023f8cebf7a30dfd319be2a6d0</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static u16</type>
      <name>conv_urb_flags</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>d27a1cb6f41e63643c19d60699b542e1</anchor>
      <arglist>(unsigned int flags)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static u8</type>
      <name>conv_urb_type</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>83ef7539910f4da5a423ba21ebd717ee</anchor>
      <arglist>(u8 type)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static struct vhci_conf *</type>
      <name>dev_to_vhci_conf</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>110fabe855c150081738ec4ef5db28ca</anchor>
      <arglist>(struct device *dev)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static</type>
      <name>DEVICE_ATTR</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>8140a368812662cfa3eaa7113ffdd00d</anchor>
      <arglist>(urbs_canceling, S_IRUSR, show_urbs, NULL)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static</type>
      <name>DEVICE_ATTR</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>25679957293bbfcc8af9667213b5fde7</anchor>
      <arglist>(urbs_cancel, S_IRUSR, show_urbs, NULL)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static</type>
      <name>DEVICE_ATTR</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>272c20cb8ea9b4ddc4180e64faf27852</anchor>
      <arglist>(urbs_fetched, S_IRUSR, show_urbs, NULL)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static</type>
      <name>DEVICE_ATTR</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>6697c4f13b6d038d7d26b61aa753e58d</anchor>
      <arglist>(urbs_inbox, S_IRUSR, show_urbs, NULL)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>device_enum</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>af4d1da19a68d7b6944c5b59fc4d2bf7</anchor>
      <arglist>(struct device *dev, void *data)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>device_ioctl</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>1c1cae52ee0c9dfe8919aaa013a3c968</anchor>
      <arglist>(struct inode *inode, struct file *file, unsigned int cmd, unsigned long arg)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static loff_t</type>
      <name>device_llseek</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>91ed2fd01f043f3c414bb539e34cf006</anchor>
      <arglist>(struct file *file, loff_t offset, int origin)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>device_open</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>e551618a4770b820ca8e41cc4b1cfa48</anchor>
      <arglist>(struct inode *inode, struct file *file)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static ssize_t</type>
      <name>device_read</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>c25a70ecbf8ce2c82fb3f7723e965da5</anchor>
      <arglist>(struct file *file, char __user *buffer, size_t length, loff_t *offset)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>device_release</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>840f5f5a1916e668ef83d6acd94f06eb</anchor>
      <arglist>(struct inode *inode, struct file *file)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static ssize_t</type>
      <name>device_write</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>e86da577c3ccf2267f8f17feb8bd4c58</anchor>
      <arglist>(struct file *file, const char __user *buffer, size_t length, loff_t *offset)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static</type>
      <name>DRIVER_ATTR</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>0b3bd2d58d4267a5816b7414daccdf60</anchor>
      <arglist>(debug_output, S_IRUSR|S_IWUSR, show_debug_output, store_debug_output)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>dump_urb</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>4df3b930087df2dc28cdd7993c16afde</anchor>
      <arglist>(struct urb *urb)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>has_work</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>052202a54d37715152bc6a3e3f32f8d5</anchor>
      <arglist>(struct vhci *vhc)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static struct vhci *</type>
      <name>hcd_to_vhci</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>5cb2205ae7102f35acff3976061cd536</anchor>
      <arglist>(struct usb_hcd *hcd)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>hub_descriptor</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>3f0ed9a857b7729c9c73e5caeb635415</anchor>
      <arglist>(const struct vhci *vhc, char *buf, u16 len)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int __init</type>
      <name>init</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>2592d708cc006802b5c679c12779c163</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>ioc_fetch_data</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>c01e8babdf2c516abb1e66d34c8e0615</anchor>
      <arglist>(struct vhci *vhc, struct vhci_ioc_urb_data __user *arg)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>ioc_fetch_data_common</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>ed04ac54ebee322bc3b7fe7e188d94f7</anchor>
      <arglist>(struct vhci *vhc, const void *handle, void __user *user_buf, int user_len)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>ioc_fetch_work</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>2e6f99053a4a17df2135c3079d1cb71b</anchor>
      <arglist>(struct vhci *vhc, struct vhci_ioc_work __user *arg)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>ioc_giveback</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>ba134330ab698e218aaa1998f59841c6</anchor>
      <arglist>(struct vhci *vhc, const struct vhci_ioc_giveback __user *arg)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>ioc_giveback_common</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>572813f87033f821b696ee9dd9e2a577</anchor>
      <arglist>(struct vhci *vhc, const void *handle, int status, int act, const void __user *buf)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>ioc_port_stat</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>5a6f3ece62a5043c182bcc286d2ebc24</anchor>
      <arglist>(struct vhci *vhc, struct vhci_ioc_port_stat __user *arg)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>ioc_register</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>28b76e491b1aa17576a1ac908ce1af3d</anchor>
      <arglist>(struct file *file, struct vhci_ioc_register __user *arg)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>is_urb_dir_in</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>3239c5bfd0c0a11b1377a726a8eda98f</anchor>
      <arglist>(const struct urb *urb)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>maybe_set_status</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>60983b4f74308854907024142f4d933c</anchor>
      <arglist>(struct vhci_urb_priv *urbp, int status)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>MODULE_AUTHOR</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>5e8956161dea1dfcc6f117ce5cf100c5</anchor>
      <arglist>(&quot;Michael Singer &lt;singer@conemis.com&gt;&quot;)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>MODULE_DESCRIPTION</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>e37fd746c4a885eb3d25b19867c28c70</anchor>
      <arglist>(DRIVER_DESC&quot; driver&quot;)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>module_exit</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>26f1fe9613ac148f923593c5207c4499</anchor>
      <arglist>(cleanup)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>module_init</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>960f82decaba583a9c7eec8a79789dc1</anchor>
      <arglist>(init)</arglist>
    </member>
    <member kind="function">
      <type></type>
      <name>MODULE_LICENSE</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>d94b36675e7eb067ea3ce6ff9e244a44</anchor>
      <arglist>(&quot;GPL&quot;)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static ssize_t</type>
      <name>show_debug_output</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>40c0b33bac26a9ea81117025be610f58</anchor>
      <arglist>(struct device_driver *drv, char *buf)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static ssize_t</type>
      <name>show_urb</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>a880d7f1a55eb0c02255fc1a67e296e4</anchor>
      <arglist>(char *buf, size_t size, struct urb *urb)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static ssize_t</type>
      <name>show_urbs</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>044f76363e4b0c0ab11588e205ee4d61</anchor>
      <arglist>(struct device *dev, struct device_attribute *attr, char *buf)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static ssize_t</type>
      <name>store_debug_output</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>85223bef2b31110ebda255ff25857b07</anchor>
      <arglist>(struct device_driver *drv, const char *buf, size_t count)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>trigger_work_event</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>85d659ba8e043c8a7fc47b5ca4df09dd</anchor>
      <arglist>(struct vhci *vhc)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static struct vhci_urb_priv *</type>
      <name>urbp_from_handle</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>16448e55dd0962d64927bc1d419b2238</anchor>
      <arglist>(struct vhci *vhc, const void *handle)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static struct vhci_urb_priv *</type>
      <name>urbp_from_handle_in_cancel</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>266cde7bb57f9edbb6cc5c3f8ac76c2a</anchor>
      <arglist>(struct vhci *vhc, const void *handle)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static struct vhci_urb_priv *</type>
      <name>urbp_from_handle_in_canceling</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>1304cf94d1210cc6c73198cc88cfa28c</anchor>
      <arglist>(struct vhci *vhc, const void *handle)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>userspace_needs_port_update</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>d5e190efcd13677d5c88118eb9cd0fa8</anchor>
      <arglist>(struct vhci *vhc, u8 port)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>vhci_bus_resume</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>a66f95a58665abfa09f18a47cef436ad</anchor>
      <arglist>(struct usb_hcd *hcd)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>vhci_bus_suspend</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>03d9d94633b4a2af833f2ad1abb1a31e</anchor>
      <arglist>(struct usb_hcd *hcd)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static struct device *</type>
      <name>vhci_dev</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>2426bd91f39109bf6006f165aba8839b</anchor>
      <arglist>(struct vhci *vhc)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>vhci_get_frame</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>86750a99bd5dd6eb655d3791d10b54c5</anchor>
      <arglist>(struct usb_hcd *hcd)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>vhci_hcd_probe</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>94d2695ed151d94614ac4f9f41e85543</anchor>
      <arglist>(struct platform_device *pdev)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>vhci_hcd_remove</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>fbe80adbeab0893321c9b738a7806f20</anchor>
      <arglist>(struct platform_device *pdev)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>vhci_hcd_resume</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>d56aa02bb9604b14f91fe698d6e04816</anchor>
      <arglist>(struct platform_device *pdev)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>vhci_hcd_suspend</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>6ecf48ca33cb0b271aa15cb041addadb</anchor>
      <arglist>(struct platform_device *pdev, pm_message_t state)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>vhci_hub_control</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>ce2328d315482d3d8bca359de5e93482</anchor>
      <arglist>(struct usb_hcd *hcd, u16 typeReq, u16 wValue, u16 wIndex, char *buf, u16 wLength)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>vhci_hub_status</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>559a9efb75d38331c3e5a7cf1cac60f3</anchor>
      <arglist>(struct usb_hcd *hcd, char *buf)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>vhci_start</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>a053bea3baa021679daf5cb2917d56ab</anchor>
      <arglist>(struct usb_hcd *hcd)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>vhci_stop</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>00d4fcd4ec2f66330b5cd67bd62c7f53</anchor>
      <arglist>(struct usb_hcd *hcd)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static struct usb_hcd *</type>
      <name>vhci_to_hcd</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>59d784aa0cd4089931e07f2783ffeac3</anchor>
      <arglist>(struct vhci *vhc)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>vhci_urb_dequeue</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>f36af3d40e8c0aff61ff3f92ba867ed5</anchor>
      <arglist>(struct usb_hcd *hcd, struct urb *urb, int status)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static int</type>
      <name>vhci_urb_enqueue</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>78301e11106b43794de6226c0a0c75e5</anchor>
      <arglist>(struct usb_hcd *hcd, struct urb *urb, gfp_t mem_flags)</arglist>
    </member>
    <member kind="function" static="yes">
      <type>static void</type>
      <name>vhci_urb_giveback</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>2e9a555852470d202859c27832a2ae05</anchor>
      <arglist>(struct vhci *vhc, struct vhci_urb_priv *urbp)</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static int</type>
      <name>debug_output</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>2c4904c70c10d44249812275075f01a2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static spinlock_t</type>
      <name>dev_enum_lock</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>93f5f0002c40450683a705c2439837a9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const char</type>
      <name>driver_desc</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>67d55831eb21275403e8cfc7f08e4c15</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static const char</type>
      <name>driver_name</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>233dee63f005c51abbc2253360a99ece</anchor>
      <arglist>[]</arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static struct file_operations</type>
      <name>fops</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>28ee7ed9613033920e733c9da671f79c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>enum vhci_rh_state</type>
      <name>packed</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>3993b689d290409fb31a390ab1741f2c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static struct hc_driver</type>
      <name>vhci_hcd</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>bd003d0608c78359d0856c38d488aca0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable" static="yes">
      <type>static struct platform_driver</type>
      <name>vhci_hcd_driver</name>
      <anchorfile>vhci-hcd_8c.html</anchorfile>
      <anchor>d17d7890f8f5a3d9c5bc2e2eeded8cad</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="file">
    <name>vhci-hcd.h</name>
    <path>/home/michael/proj/vhci_hcd/</path>
    <filename>vhci-hcd_8h</filename>
    <class kind="struct">vhci_ioc_giveback</class>
    <class kind="struct">vhci_ioc_port_stat</class>
    <class kind="struct">vhci_ioc_register</class>
    <class kind="struct">vhci_ioc_setup_packet</class>
    <class kind="struct">vhci_ioc_urb</class>
    <class kind="struct">vhci_ioc_urb_data</class>
    <class kind="struct">vhci_ioc_work</class>
    <class kind="union">vhci_ioc_work_union</class>
    <member kind="define">
      <type>#define</type>
      <name>__s16</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>e989f74e53092e88163871e72eabff18</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>__s32</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>9e71c62a22848d27a6d286284c6cc850</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>__s64</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>c7f4bccc3d1104b430e01e53a4dd5e9c</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>__s8</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>94cb0172eebedc60077b3370bde5cc02</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>__u16</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>5ece5635db977edd094b1c365c0357a3</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>__u32</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>6328586d70f5190812c2957438e61b17</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>__u64</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>0207b43ea2a1ce8109db3da81fabbd3a</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>__u8</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>bb0f2ad1ab0fc28516dafcf956d11a6b</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>USB_PORT_STAT_C_CONNECTION</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>5b60ac4c466a99b964ff211abb388a36</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>USB_PORT_STAT_C_ENABLE</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>4a3181ffd2c44b41968ab23f067a2af6</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>USB_PORT_STAT_C_OVERCURRENT</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>c3318472c9c2e2aaea7469c5f76796e2</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>USB_PORT_STAT_C_RESET</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>5e456b46c9256cd8d413ca8936af33f8</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>USB_PORT_STAT_C_SUSPEND</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>f807b53548f52ff8c3652661897e1b23</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>USB_PORT_STAT_CONNECTION</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>fa48ca3b4410e42e94e88e02ae39cb5c</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>USB_PORT_STAT_ENABLE</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>83de322761bcbd68a650674cea127682</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>USB_PORT_STAT_HIGH_SPEED</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>93f6daee777b1c95d5bf8ab2dbe78c99</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>USB_PORT_STAT_LOW_SPEED</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>1f92d8d8bad69ef7727d6411c5670f01</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>USB_PORT_STAT_OVERCURRENT</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>49d618b3fa17d7b86b0539d5f0720a80</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>USB_PORT_STAT_POWER</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>b2ebdac2e06af9f75adf3fbecdafaef9</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>USB_PORT_STAT_RESET</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>f3fc4c6f4cc02bbdaf2fb7dabef6a5b4</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>USB_PORT_STAT_SUSPEND</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>a3a1b71d698c495360da2b420d803080</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>VHCI_HCD_IOC_MAGIC</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>ebacb6fd93e7f03d6b9ffd466d7781d6</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>VHCI_HCD_IOC_MAXNR</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>de46ee065a0148503d971d52a6864584</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>VHCI_HCD_IOCFETCHDATA</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>da98181605c2ad91de8ab7b97b6c207f</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>VHCI_HCD_IOCFETCHDATA32</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>0b1100313ad6f0a513e59f929a16747e</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>VHCI_HCD_IOCFETCHWORK</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>a70c5897c8cd7fb1c236dbd2ff6b7b6e</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>VHCI_HCD_IOCGIVEBACK</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>1834015adc8808e771199e2afc1a3088</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>VHCI_HCD_IOCGIVEBACK32</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>5d4c777fde2ac3308a1cce5e5877a452</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>VHCI_HCD_IOCPORTSTAT</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>1ac3585a5a0f92b2929acbaaaf2e5bc0</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>VHCI_HCD_IOCREGISTER</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>93647ac1f96ec90db4ed730c19af65cd</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>VHCI_HCD_MAJOR_NUM</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>79b3f7b5c70454504181653a2f4bdae7</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>VHCI_IOC_PORT_STAT_FLAGS_RESUMING</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>fd75cc1964de765a2616972fe57d73d4</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>VHCI_IOC_URB_FLAGS_ISO_ASAP</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>a5bd6ec1f9ca1fa19c8dc5e1b2a62159</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>VHCI_IOC_URB_FLAGS_SHORT_NOT_OK</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>1e25ac7ac3a16e5b3500c4f2ca43bb73</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>VHCI_IOC_URB_FLAGS_ZERO_PACKET</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>7cbbb2b6278d83f3bd3749e972a2a87f</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>VHCI_IOC_URB_TYPE_BULK</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>5d90436e805b75d8d93a2ca8e9dd96be</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>VHCI_IOC_URB_TYPE_CONTROL</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>50b5b84c69de2de26e5683d199f207b3</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>VHCI_IOC_URB_TYPE_INT</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>3d66ded4ea0f664dac91d16812f9aa21</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>VHCI_IOC_URB_TYPE_ISO</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>d4b11c1ef4090a3d7394cd6e9bebd91a</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>VHCI_IOC_WORK_TYPE_CANCEL_URB</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>2e83d0aedf17160f34e35b321a5afd30</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>VHCI_IOC_WORK_TYPE_PORT_STAT</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>7d43331794f3b36d2ca7ed59e21dd85c</anchor>
      <arglist></arglist>
    </member>
    <member kind="define">
      <type>#define</type>
      <name>VHCI_IOC_WORK_TYPE_PROCESS_URB</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>8d5972933e44088f20b098106fb00c7d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>struct vhci_ioc_work</type>
      <name>packed</name>
      <anchorfile>vhci-hcd_8h.html</anchorfile>
      <anchor>f6d05ea9c59c161903179bf1a8b5ae8c</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>vhci</name>
    <filename>structvhci.html</filename>
    <member kind="variable">
      <type>atomic_t</type>
      <name>frame_num</name>
      <anchorfile>structvhci.html</anchorfile>
      <anchor>c88c49b2f96b16869f52baac9321db10</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>spinlock_t</type>
      <name>lock</name>
      <anchorfile>structvhci.html</anchorfile>
      <anchor>c808e5a851422cd2cdd33b1db434075a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>u8</type>
      <name>port_count</name>
      <anchorfile>structvhci.html</anchorfile>
      <anchor>a23b5af075d21d69b5ba3ec48b9fdf9a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>u8</type>
      <name>port_sched_offset</name>
      <anchorfile>structvhci.html</anchorfile>
      <anchor>d559c1dfb445a77baed272c9d0c6ace9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>u32</type>
      <name>port_update</name>
      <anchorfile>structvhci.html</anchorfile>
      <anchor>8ab9f12f89efca0ba4598d1f936f4b1d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>struct vhci_port *</type>
      <name>ports</name>
      <anchorfile>structvhci.html</anchorfile>
      <anchor>8f3b0bf382eff8c3592c078af4e170ae</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>enum vhci_rh_state</type>
      <name>rh_state</name>
      <anchorfile>structvhci.html</anchorfile>
      <anchor>05d3da31f037b13ab6071b3eba02f5fd</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>struct list_head</type>
      <name>urbp_list_cancel</name>
      <anchorfile>structvhci.html</anchorfile>
      <anchor>897b921608e2d09609141ff36306104b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>struct list_head</type>
      <name>urbp_list_canceling</name>
      <anchorfile>structvhci.html</anchorfile>
      <anchor>105a728885b1678b88402472c7f6bf51</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>struct list_head</type>
      <name>urbp_list_fetched</name>
      <anchorfile>structvhci.html</anchorfile>
      <anchor>fe60cea7faecaeff440d786c4eff8332</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>struct list_head</type>
      <name>urbp_list_inbox</name>
      <anchorfile>structvhci.html</anchorfile>
      <anchor>3c73c2b34443913964c1d2e3301eff4f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>wait_queue_head_t</type>
      <name>work_event</name>
      <anchorfile>structvhci.html</anchorfile>
      <anchor>11384c21ea4c26b4dc213368c1cce6f1</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>vhci_conf</name>
    <filename>structvhci__conf.html</filename>
    <member kind="variable">
      <type>struct platform_device *</type>
      <name>pdev</name>
      <anchorfile>structvhci__conf.html</anchorfile>
      <anchor>f8e1f01d20ec1ab975561a5013d079cb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>u8</type>
      <name>port_count</name>
      <anchorfile>structvhci__conf.html</anchorfile>
      <anchor>2abaa475695ed98c7f154465869965ab</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>vhci_ioc_giveback</name>
    <filename>structvhci__ioc__giveback.html</filename>
    <member kind="variable">
      <type>void *</type>
      <name>buffer</name>
      <anchorfile>structvhci__ioc__giveback.html</anchorfile>
      <anchor>97dbadb9f83e7dc2d99d2f9098f6a876</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>__s32</type>
      <name>buffer_actual</name>
      <anchorfile>structvhci__ioc__giveback.html</anchorfile>
      <anchor>781262e057d2013b56db17d0f8176c4c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>__u64</type>
      <name>handle</name>
      <anchorfile>structvhci__ioc__giveback.html</anchorfile>
      <anchor>d8c020dc3f47be8f6fc4e60f64ee4132</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>__s32</type>
      <name>status</name>
      <anchorfile>structvhci__ioc__giveback.html</anchorfile>
      <anchor>7044b1099496c721c3909b0c1d65a35c</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>vhci_ioc_port_stat</name>
    <filename>structvhci__ioc__port__stat.html</filename>
    <member kind="variable">
      <type>__u16</type>
      <name>change</name>
      <anchorfile>structvhci__ioc__port__stat.html</anchorfile>
      <anchor>6242f45f0ef520358d250e3bc49b8d0f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>__u8</type>
      <name>flags</name>
      <anchorfile>structvhci__ioc__port__stat.html</anchorfile>
      <anchor>0c545c2c9a5aca7b842cf2aa014a95c0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>__u8</type>
      <name>index</name>
      <anchorfile>structvhci__ioc__port__stat.html</anchorfile>
      <anchor>937f30174b8311387749fd560c924320</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>__u16</type>
      <name>status</name>
      <anchorfile>structvhci__ioc__port__stat.html</anchorfile>
      <anchor>82e9df9b8b7fcda96286915ee5e8c2ca</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>vhci_ioc_register</name>
    <filename>structvhci__ioc__register.html</filename>
    <member kind="variable">
      <type>char</type>
      <name>bus_id</name>
      <anchorfile>structvhci__ioc__register.html</anchorfile>
      <anchor>2a60fb4dfab6bef4fda86b25ab4ae032</anchor>
      <arglist>[20]</arglist>
    </member>
    <member kind="variable">
      <type>__s32</type>
      <name>id</name>
      <anchorfile>structvhci__ioc__register.html</anchorfile>
      <anchor>711d716c8a0feb48edcc544ae3d74652</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>__u8</type>
      <name>port_count</name>
      <anchorfile>structvhci__ioc__register.html</anchorfile>
      <anchor>3b6464f9b9a80121029002fc8b905163</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>vhci_ioc_setup_packet</name>
    <filename>structvhci__ioc__setup__packet.html</filename>
    <member kind="variable">
      <type>__u8</type>
      <name>bmRequestType</name>
      <anchorfile>structvhci__ioc__setup__packet.html</anchorfile>
      <anchor>5acbfab168df51ca64a6d30593dfaa9e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>__u8</type>
      <name>bRequest</name>
      <anchorfile>structvhci__ioc__setup__packet.html</anchorfile>
      <anchor>1ff3cab824a245e3fe727511287536c9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>__u16</type>
      <name>wIndex</name>
      <anchorfile>structvhci__ioc__setup__packet.html</anchorfile>
      <anchor>b13381fb949b32ece0f2687601e03429</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>__u16</type>
      <name>wLength</name>
      <anchorfile>structvhci__ioc__setup__packet.html</anchorfile>
      <anchor>8d775d011baa0f1c06585cdb071c2418</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>__u16</type>
      <name>wValue</name>
      <anchorfile>structvhci__ioc__setup__packet.html</anchorfile>
      <anchor>6a6c682afc38b457086eeb5ed2433382</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>vhci_ioc_urb</name>
    <filename>structvhci__ioc__urb.html</filename>
    <member kind="variable">
      <type>__u8</type>
      <name>address</name>
      <anchorfile>structvhci__ioc__urb.html</anchorfile>
      <anchor>f0bc6d4bd66e61f6767643b78715ea51</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>__s32</type>
      <name>buffer_length</name>
      <anchorfile>structvhci__ioc__urb.html</anchorfile>
      <anchor>1ceddb81d3ef230eb67f109d0d521ae7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>__u8</type>
      <name>endpoint</name>
      <anchorfile>structvhci__ioc__urb.html</anchorfile>
      <anchor>4c87a6361bc2373214b922ffa05176c8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>__u16</type>
      <name>flags</name>
      <anchorfile>structvhci__ioc__urb.html</anchorfile>
      <anchor>27710220bf8748d7f826a09bd4d7b2cc</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>__s32</type>
      <name>interval</name>
      <anchorfile>structvhci__ioc__urb.html</anchorfile>
      <anchor>122c6ee2a90eb923f46fca7dc0bc7b66</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>struct vhci_ioc_setup_packet</type>
      <name>setup_packet</name>
      <anchorfile>structvhci__ioc__urb.html</anchorfile>
      <anchor>1fcf8b7c3d33daee733513b1b87c98d5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>__u8</type>
      <name>type</name>
      <anchorfile>structvhci__ioc__urb.html</anchorfile>
      <anchor>f6376f99fa7ed19af382b1045d7d6d9b</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>vhci_ioc_urb_data</name>
    <filename>structvhci__ioc__urb__data.html</filename>
    <member kind="variable">
      <type>void *</type>
      <name>buffer</name>
      <anchorfile>structvhci__ioc__urb__data.html</anchorfile>
      <anchor>3fd60e928b86080bd5441c3fc5fd5742</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>__s32</type>
      <name>buffer_length</name>
      <anchorfile>structvhci__ioc__urb__data.html</anchorfile>
      <anchor>22da4d0b0bc57cbc453137f0edd6b78b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>__u64</type>
      <name>handle</name>
      <anchorfile>structvhci__ioc__urb__data.html</anchorfile>
      <anchor>168b7d28cc9b621317b86d7618a76487</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>vhci_ioc_work</name>
    <filename>structvhci__ioc__work.html</filename>
    <member kind="variable">
      <type>__u64</type>
      <name>handle</name>
      <anchorfile>structvhci__ioc__work.html</anchorfile>
      <anchor>2cd0191de7fa2d239a1b9e99ca452f21</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>__u8</type>
      <name>reserved1</name>
      <anchorfile>structvhci__ioc__work.html</anchorfile>
      <anchor>99084d28c90557906c94d7a18bcbb141</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>__u8</type>
      <name>reserved2</name>
      <anchorfile>structvhci__ioc__work.html</anchorfile>
      <anchor>3e6ccbec20aac73f456251fa581f8736</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>__u8</type>
      <name>reserved3</name>
      <anchorfile>structvhci__ioc__work.html</anchorfile>
      <anchor>013179ee39504d0f9d6c6aad63de49a9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>__u8</type>
      <name>type</name>
      <anchorfile>structvhci__ioc__work.html</anchorfile>
      <anchor>e47c9494c397da5ba81c2d00b85c059c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>union vhci_ioc_work_union</type>
      <name>work</name>
      <anchorfile>structvhci__ioc__work.html</anchorfile>
      <anchor>5ad97751e334cff73cef4b58eedb14ad</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="union">
    <name>vhci_ioc_work_union</name>
    <filename>unionvhci__ioc__work__union.html</filename>
    <member kind="variable">
      <type>struct vhci_ioc_port_stat</type>
      <name>port</name>
      <anchorfile>unionvhci__ioc__work__union.html</anchorfile>
      <anchor>9eba71f511e9918be2566a6099d31955</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>struct vhci_ioc_urb</type>
      <name>urb</name>
      <anchorfile>unionvhci__ioc__work__union.html</anchorfile>
      <anchor>5767bc18671d92a9f8c5896a3cfe6dc4</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>vhci_port</name>
    <filename>structvhci__port.html</filename>
    <member kind="variable">
      <type>u16</type>
      <name>port_change</name>
      <anchorfile>structvhci__port.html</anchorfile>
      <anchor>49b896b48172c19215fa8c196b59de60</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>u8</type>
      <name>port_flags</name>
      <anchorfile>structvhci__port.html</anchorfile>
      <anchor>55de05d3afe26e20ff3b28752ce4707b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>u16</type>
      <name>port_status</name>
      <anchorfile>structvhci__port.html</anchorfile>
      <anchor>3041e467bf56268cf753ac8406dc0c37</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>vhci_urb_priv</name>
    <filename>structvhci__urb__priv.html</filename>
    <member kind="variable">
      <type>atomic_t</type>
      <name>status</name>
      <anchorfile>structvhci__urb__priv.html</anchorfile>
      <anchor>e4edaf8a4a8ef979b12a1549efba10f6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>struct urb *</type>
      <name>urb</name>
      <anchorfile>structvhci__urb__priv.html</anchorfile>
      <anchor>758829c9b27531dae6fb4a4ef45bf6ab</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>struct list_head</type>
      <name>urbp_list</name>
      <anchorfile>structvhci__urb__priv.html</anchorfile>
      <anchor>ff8f97e3c973b19c0aa1e64f61c92c27</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="dir">
    <name>proj/</name>
    <path>/home/michael/proj/</path>
    <filename>dir_23c30eea0c1ac1e1f0faaf0f3d9613f2.html</filename>
    <dir>proj/vhci_hcd/</dir>
  </compound>
  <compound kind="dir">
    <name>proj/vhci_hcd/</name>
    <path>/home/michael/proj/vhci_hcd/</path>
    <filename>dir_b4d1ca0d7d5369c448f1b141c7d97d29.html</filename>
    <file>vhci-hcd.c</file>
    <file>vhci-hcd.h</file>
  </compound>
</tagfile>
