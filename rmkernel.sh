rm -rf /boot/vmlinuz*4.18*
rm -rf /boot/initrd*4.18*
rm -rf /boot/System-map*4.18*
rm -rf /boot/config-*4.18*
rm -rf /lib/modules/*4.18*/
rm -rf /var/lib/initramfs/*4.18*/
sudo grub2-mkconfig -o /boot/grub2/grub.cfg
