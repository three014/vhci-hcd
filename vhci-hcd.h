/*
 * vhci_hcd.h -- VHCI USB host controller driver header.
 *
 * Copyright (C) by Michael Singer, 2007-2008
 * <singer@conemis.com>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#ifndef _VHCI_HCD_H
#define _VHCI_HCD_H

#ifdef __KERNEL__
#	include <linux/types.h>
#else
#	include <stdint.h>
#	define __u8 uint8_t
#	define __s8 int8_t
#	define __u16 uint16_t
#	define __s16 int16_t
#	define __u32 uint32_t
#	define __s32 int32_t
#	define __u64 uint64_t
#	define __s64 int64_t
#endif
#include <linux/ioctl.h>

#define VHCI_HCD_MAJOR_NUM 138

#ifndef __KERNEL__

// wPortStatus bit field
// See USB 2.0 spec Table 11-21
#define USB_PORT_STAT_CONNECTION    0x0001
#define USB_PORT_STAT_ENABLE        0x0002
#define USB_PORT_STAT_SUSPEND       0x0004
#define USB_PORT_STAT_OVERCURRENT   0x0008
#define USB_PORT_STAT_RESET         0x0010
#define USB_PORT_STAT_POWER         0x0100
#define USB_PORT_STAT_LOW_SPEED     0x0200
#define USB_PORT_STAT_HIGH_SPEED    0x0400
//#define USB_PORT_STAT_TEST          0x0800
//#define USB_PORT_STAT_INDICATOR     0x1000

// wPortChange bit field
// See USB 2.0 spec Table 11-22
#define USB_PORT_STAT_C_CONNECTION  0x0001
#define USB_PORT_STAT_C_ENABLE      0x0002
#define USB_PORT_STAT_C_SUSPEND     0x0004
#define USB_PORT_STAT_C_OVERCURRENT 0x0008
#define USB_PORT_STAT_C_RESET       0x0010

#endif

// Struktur, die mit VHCI_HCD_IOCREGISTER übergeben wird
struct vhci_ioc_register
{
	__s32 id;         // [out] Die ID, die dem Controller zugewiesen wurde
	__s32 usb_busnum; // [out] Die Nummer des USB-Busses
	char bus_id[20];  // [out] Bus-ID des Controllers als null-terminierter String
	__u8 port_count;  // [in]  Registriere Host-Controller mit Anzahl Ports
};

struct vhci_ioc_port_stat
{
	__u16 status;    // Status des Ports
	__u16 change;    // Bits die sich geändert haben
	__u8 index;      // Index des Ports
	__u8 flags;      // Zusätzliche Informationen vom Kernel- zum Userspace
#define VHCI_IOC_PORT_STAT_FLAGS_RESUMING 0 // Zeigt den Zustand des Resuming an
	__u8 reserved1, reserved2; // Größe soll durch vier teilbar sein
};

struct vhci_ioc_setup_packet
{
	__u8 bmRequestType;
	__u8 bRequest;
	__u16 wValue;
	__u16 wIndex;
	__u16 wLength;
};

struct vhci_ioc_urb
{
	struct vhci_ioc_setup_packet setup_packet;   // Für Control-URBs
	__s32 buffer_length;                         // Anzahl der Bytes, die für
	                                             // den Puffer allociert wurden
	__s32 interval;
	__s32 packet_count;                          // Anzahl der ISO-Pakete
	__u16 flags;
#define VHCI_IOC_URB_FLAGS_SHORT_NOT_OK 0x0001   // Wenn bei einem IN zu kurze
                                                 // Packete übermittelt wurden,
                                                 // dann soll dies als Fehler
                                                 // interpretiert werden
#define VHCI_IOC_URB_FLAGS_ISO_ASAP     0x0002   // ISO: Einschieben sobald
                                                 // Bandbreite es erlaubt
#define VHCI_IOC_URB_FLAGS_ZERO_PACKET  0x0040   // BULK OUT: Übertragung immer
                                                 // mit kurzem Packet
                                                 // abschließen (Notfalls mit
                                                 // Länge 0)
	__u8 address;                                // Adresse des USB Devices, an
	                                             // das der URB gerichtet ist
	__u8 endpoint;                               // Endpoint inkl. Richtung
	__u8 type;
#define VHCI_IOC_URB_TYPE_ISO     0
#define VHCI_IOC_URB_TYPE_INT     1
#define VHCI_IOC_URB_TYPE_CONTROL 2
#define VHCI_IOC_URB_TYPE_BULK    3
};

union vhci_ioc_work_union
{
	struct vhci_ioc_urb urb;          // für VHCI_IOC_WORK_TYPE_PROCESS_URB
	struct vhci_ioc_port_stat port;   // für VHCI_IOC_WORK_TYPE_PORT_STAT
};

struct vhci_ioc_work
{
	__u64 handle;                         // für VHCI_IOC_WORK_TYPE_PROCESS_URB
	                                      // und VHCI_IOC_WORK_TYPE_CANCEL_URB
	                                      // Handle, über welches der URB
	                                      // identifiziert wird (ist in
	                                      // Wirklichkeit einfach der Zeiger auf
	                                      // den URB im Kernelspace)
	union vhci_ioc_work_union work;
	__u8 type;
#define VHCI_IOC_WORK_TYPE_PORT_STAT   0  // Status eines Ports hat sich
                                          // geändert
#define VHCI_IOC_WORK_TYPE_PROCESS_URB 1  // URB an die Hardware reichen
#define VHCI_IOC_WORK_TYPE_CANCEL_URB  2  // URB zurückziehen, falls noch nicht
                                          // bearbeitet
};

struct vhci_ioc_iso_packet_data
{
	__u32 offset;
	__u32 packet_length;
};

struct vhci_ioc_urb_data
{
	__u64 handle;        // Handle, über welches der URB identifiziert wird
	void *buffer;        // Zeiger auf den Anfang des Datenpuffers
	struct vhci_ioc_iso_packet_data *iso_packets; // Zeiger auf den Anfang des
	                                              // ISO-Paket-Arrays
	__s32 buffer_length; // Anzahl der Bytes, die für den Puffer allociert
	                     // wurden
	__s32 packet_count;  // Anzahl der ISO-Pakete
};

struct vhci_ioc_iso_packet_giveback
{
	__u32 packet_actual;
	__s32 status;
};

struct vhci_ioc_giveback
{
	__u64 handle;
	void *buffer;        // Nur für IN URBs: Die empfangenen Daten (für OUT URBs
	                     // immer NULL)
	struct vhci_ioc_iso_packet_giveback *iso_packets; // Für ISO
	__s32 status;        // (Wenn ISO, dann ignoriert)
	__s32 buffer_actual; // Anzahl der Bytes, die tatsächlich übertragen wurden
	                     // (Für IN-ISOs muss buffer_actual==buffer_length
						 // gelten; Für OUT-ISOs wird dieser Wert ignoriert)
	__s32 packet_count;  // Für ISO (muss mit dem Wert aus dem URB
	                     // übereinstimmen)
	__s32 error_count;   // Für ISO
};

#ifdef __KERNEL__
#ifdef CONFIG_COMPAT
#include <linux/compat.h>
struct vhci_ioc_urb_data32
{
	__u64 handle;
	compat_caddr_t buffer;
	compat_caddr_t iso_packets;
	__s32 buffer_length;
	__s32 packet_count;
};

struct vhci_ioc_giveback32
{
	__u64 handle;
	compat_caddr_t buffer;
	compat_caddr_t iso_packets;
	__s32 status;
	__s32 buffer_actual;
	__s32 packet_count;
	__s32 error_count;
};
#endif
#endif

#define VHCI_HCD_IOC_MAGIC      VHCI_HCD_MAJOR_NUM
#define VHCI_HCD_IOCREGISTER    _IOWR(VHCI_HCD_IOC_MAGIC, 0, \
                                      struct vhci_ioc_register)
#define VHCI_HCD_IOCPORTSTAT    _IOW (VHCI_HCD_IOC_MAGIC, 1, \
                                      struct vhci_ioc_port_stat)
#define VHCI_HCD_IOCFETCHWORK   _IOR (VHCI_HCD_IOC_MAGIC, 2, \
                                      struct vhci_ioc_work)
#define VHCI_HCD_IOCGIVEBACK    _IOW (VHCI_HCD_IOC_MAGIC, 3, \
                                      struct vhci_ioc_giveback)
#define VHCI_HCD_IOCGIVEBACK32  _IOW (VHCI_HCD_IOC_MAGIC, 3, \
                                      struct vhci_ioc_giveback32)
#define VHCI_HCD_IOCFETCHDATA   _IOW (VHCI_HCD_IOC_MAGIC, 4, \
                                      struct vhci_ioc_urb_data)
#define VHCI_HCD_IOCFETCHDATA32 _IOW (VHCI_HCD_IOC_MAGIC, 4, \
                                      struct vhci_ioc_urb_data32)
#define VHCI_HCD_IOC_MAXNR      4

#endif

