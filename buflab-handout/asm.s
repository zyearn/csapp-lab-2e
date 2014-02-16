
bufbomb:     file format elf32-i386


Disassembly of section .init:

080487dc <_init>:
 80487dc:	55                   	push   %ebp
 80487dd:	89 e5                	mov    %esp,%ebp
 80487df:	83 ec 08             	sub    $0x8,%esp
 80487e2:	e8 5d 02 00 00       	call   8048a44 <call_gmon_start>
 80487e7:	e8 e4 02 00 00       	call   8048ad0 <frame_dummy>
 80487ec:	e8 5f 17 00 00       	call   8049f50 <__do_global_ctors_aux>
 80487f1:	c9                   	leave  
 80487f2:	c3                   	ret    

Disassembly of section .plt:

080487f4 <__errno_location@plt-0x10>:
 80487f4:	ff 35 e4 b0 04 08    	pushl  0x804b0e4
 80487fa:	ff 25 e8 b0 04 08    	jmp    *0x804b0e8
 8048800:	00 00                	add    %al,(%eax)
	...

08048804 <__errno_location@plt>:
 8048804:	ff 25 ec b0 04 08    	jmp    *0x804b0ec
 804880a:	68 00 00 00 00       	push   $0x0
 804880f:	e9 e0 ff ff ff       	jmp    80487f4 <_init+0x18>

08048814 <sprintf@plt>:
 8048814:	ff 25 f0 b0 04 08    	jmp    *0x804b0f0
 804881a:	68 08 00 00 00       	push   $0x8
 804881f:	e9 d0 ff ff ff       	jmp    80487f4 <_init+0x18>

08048824 <srand@plt>:
 8048824:	ff 25 f4 b0 04 08    	jmp    *0x804b0f4
 804882a:	68 10 00 00 00       	push   $0x10
 804882f:	e9 c0 ff ff ff       	jmp    80487f4 <_init+0x18>

08048834 <connect@plt>:
 8048834:	ff 25 f8 b0 04 08    	jmp    *0x804b0f8
 804883a:	68 18 00 00 00       	push   $0x18
 804883f:	e9 b0 ff ff ff       	jmp    80487f4 <_init+0x18>

08048844 <mmap@plt>:
 8048844:	ff 25 fc b0 04 08    	jmp    *0x804b0fc
 804884a:	68 20 00 00 00       	push   $0x20
 804884f:	e9 a0 ff ff ff       	jmp    80487f4 <_init+0x18>

08048854 <getpid@plt>:
 8048854:	ff 25 00 b1 04 08    	jmp    *0x804b100
 804885a:	68 28 00 00 00       	push   $0x28
 804885f:	e9 90 ff ff ff       	jmp    80487f4 <_init+0x18>

08048864 <random@plt>:
 8048864:	ff 25 04 b1 04 08    	jmp    *0x804b104
 804886a:	68 30 00 00 00       	push   $0x30
 804886f:	e9 80 ff ff ff       	jmp    80487f4 <_init+0x18>

08048874 <signal@plt>:
 8048874:	ff 25 08 b1 04 08    	jmp    *0x804b108
 804887a:	68 38 00 00 00       	push   $0x38
 804887f:	e9 70 ff ff ff       	jmp    80487f4 <_init+0x18>

08048884 <__gmon_start__@plt>:
 8048884:	ff 25 0c b1 04 08    	jmp    *0x804b10c
 804888a:	68 40 00 00 00       	push   $0x40
 804888f:	e9 60 ff ff ff       	jmp    80487f4 <_init+0x18>

08048894 <calloc@plt>:
 8048894:	ff 25 10 b1 04 08    	jmp    *0x804b110
 804889a:	68 48 00 00 00       	push   $0x48
 804889f:	e9 50 ff ff ff       	jmp    80487f4 <_init+0x18>

080488a4 <write@plt>:
 80488a4:	ff 25 14 b1 04 08    	jmp    *0x804b114
 80488aa:	68 50 00 00 00       	push   $0x50
 80488af:	e9 40 ff ff ff       	jmp    80487f4 <_init+0x18>

080488b4 <memset@plt>:
 80488b4:	ff 25 18 b1 04 08    	jmp    *0x804b118
 80488ba:	68 58 00 00 00       	push   $0x58
 80488bf:	e9 30 ff ff ff       	jmp    80487f4 <_init+0x18>

080488c4 <__libc_start_main@plt>:
 80488c4:	ff 25 1c b1 04 08    	jmp    *0x804b11c
 80488ca:	68 60 00 00 00       	push   $0x60
 80488cf:	e9 20 ff ff ff       	jmp    80487f4 <_init+0x18>

080488d4 <_IO_getc@plt>:
 80488d4:	ff 25 20 b1 04 08    	jmp    *0x804b120
 80488da:	68 68 00 00 00       	push   $0x68
 80488df:	e9 10 ff ff ff       	jmp    80487f4 <_init+0x18>

080488e4 <read@plt>:
 80488e4:	ff 25 24 b1 04 08    	jmp    *0x804b124
 80488ea:	68 70 00 00 00       	push   $0x70
 80488ef:	e9 00 ff ff ff       	jmp    80487f4 <_init+0x18>

080488f4 <socket@plt>:
 80488f4:	ff 25 28 b1 04 08    	jmp    *0x804b128
 80488fa:	68 78 00 00 00       	push   $0x78
 80488ff:	e9 f0 fe ff ff       	jmp    80487f4 <_init+0x18>

08048904 <bcopy@plt>:
 8048904:	ff 25 2c b1 04 08    	jmp    *0x804b12c
 804890a:	68 80 00 00 00       	push   $0x80
 804890f:	e9 e0 fe ff ff       	jmp    80487f4 <_init+0x18>

08048914 <getopt@plt>:
 8048914:	ff 25 30 b1 04 08    	jmp    *0x804b130
 804891a:	68 88 00 00 00       	push   $0x88
 804891f:	e9 d0 fe ff ff       	jmp    80487f4 <_init+0x18>

08048924 <alarm@plt>:
 8048924:	ff 25 34 b1 04 08    	jmp    *0x804b134
 804892a:	68 90 00 00 00       	push   $0x90
 804892f:	e9 c0 fe ff ff       	jmp    80487f4 <_init+0x18>

08048934 <strcpy@plt>:
 8048934:	ff 25 38 b1 04 08    	jmp    *0x804b138
 804893a:	68 98 00 00 00       	push   $0x98
 804893f:	e9 b0 fe ff ff       	jmp    80487f4 <_init+0x18>

08048944 <printf@plt>:
 8048944:	ff 25 3c b1 04 08    	jmp    *0x804b13c
 804894a:	68 a0 00 00 00       	push   $0xa0
 804894f:	e9 a0 fe ff ff       	jmp    80487f4 <_init+0x18>

08048954 <strcasecmp@plt>:
 8048954:	ff 25 40 b1 04 08    	jmp    *0x804b140
 804895a:	68 a8 00 00 00       	push   $0xa8
 804895f:	e9 90 fe ff ff       	jmp    80487f4 <_init+0x18>

08048964 <srandom@plt>:
 8048964:	ff 25 44 b1 04 08    	jmp    *0x804b144
 804896a:	68 b0 00 00 00       	push   $0xb0
 804896f:	e9 80 fe ff ff       	jmp    80487f4 <_init+0x18>

08048974 <close@plt>:
 8048974:	ff 25 48 b1 04 08    	jmp    *0x804b148
 804897a:	68 b8 00 00 00       	push   $0xb8
 804897f:	e9 70 fe ff ff       	jmp    80487f4 <_init+0x18>

08048984 <fwrite@plt>:
 8048984:	ff 25 4c b1 04 08    	jmp    *0x804b14c
 804898a:	68 c0 00 00 00       	push   $0xc0
 804898f:	e9 60 fe ff ff       	jmp    80487f4 <_init+0x18>

08048994 <gethostname@plt>:
 8048994:	ff 25 50 b1 04 08    	jmp    *0x804b150
 804899a:	68 c8 00 00 00       	push   $0xc8
 804899f:	e9 50 fe ff ff       	jmp    80487f4 <_init+0x18>

080489a4 <puts@plt>:
 80489a4:	ff 25 54 b1 04 08    	jmp    *0x804b154
 80489aa:	68 d0 00 00 00       	push   $0xd0
 80489af:	e9 40 fe ff ff       	jmp    80487f4 <_init+0x18>

080489b4 <rand@plt>:
 80489b4:	ff 25 58 b1 04 08    	jmp    *0x804b158
 80489ba:	68 d8 00 00 00       	push   $0xd8
 80489bf:	e9 30 fe ff ff       	jmp    80487f4 <_init+0x18>

080489c4 <sscanf@plt>:
 80489c4:	ff 25 5c b1 04 08    	jmp    *0x804b15c
 80489ca:	68 e0 00 00 00       	push   $0xe0
 80489cf:	e9 20 fe ff ff       	jmp    80487f4 <_init+0x18>

080489d4 <munmap@plt>:
 80489d4:	ff 25 60 b1 04 08    	jmp    *0x804b160
 80489da:	68 e8 00 00 00       	push   $0xe8
 80489df:	e9 10 fe ff ff       	jmp    80487f4 <_init+0x18>

080489e4 <gethostbyname@plt>:
 80489e4:	ff 25 64 b1 04 08    	jmp    *0x804b164
 80489ea:	68 f0 00 00 00       	push   $0xf0
 80489ef:	e9 00 fe ff ff       	jmp    80487f4 <_init+0x18>

080489f4 <__strdup@plt>:
 80489f4:	ff 25 68 b1 04 08    	jmp    *0x804b168
 80489fa:	68 f8 00 00 00       	push   $0xf8
 80489ff:	e9 f0 fd ff ff       	jmp    80487f4 <_init+0x18>

08048a04 <exit@plt>:
 8048a04:	ff 25 6c b1 04 08    	jmp    *0x804b16c
 8048a0a:	68 00 01 00 00       	push   $0x100
 8048a0f:	e9 e0 fd ff ff       	jmp    80487f4 <_init+0x18>

Disassembly of section .text:

08048a20 <_start>:
 8048a20:	31 ed                	xor    %ebp,%ebp
 8048a22:	5e                   	pop    %esi
 8048a23:	89 e1                	mov    %esp,%ecx
 8048a25:	83 e4 f0             	and    $0xfffffff0,%esp
 8048a28:	50                   	push   %eax
 8048a29:	54                   	push   %esp
 8048a2a:	52                   	push   %edx
 8048a2b:	68 d0 9e 04 08       	push   $0x8049ed0
 8048a30:	68 e0 9e 04 08       	push   $0x8049ee0
 8048a35:	51                   	push   %ecx
 8048a36:	56                   	push   %esi
 8048a37:	68 5b 8f 04 08       	push   $0x8048f5b
 8048a3c:	e8 83 fe ff ff       	call   80488c4 <__libc_start_main@plt>
 8048a41:	f4                   	hlt    
 8048a42:	90                   	nop
 8048a43:	90                   	nop

08048a44 <call_gmon_start>:
 8048a44:	55                   	push   %ebp
 8048a45:	89 e5                	mov    %esp,%ebp
 8048a47:	53                   	push   %ebx
 8048a48:	83 ec 04             	sub    $0x4,%esp
 8048a4b:	e8 00 00 00 00       	call   8048a50 <call_gmon_start+0xc>
 8048a50:	5b                   	pop    %ebx
 8048a51:	81 c3 90 26 00 00    	add    $0x2690,%ebx
 8048a57:	8b 93 fc ff ff ff    	mov    -0x4(%ebx),%edx
 8048a5d:	85 d2                	test   %edx,%edx
 8048a5f:	74 05                	je     8048a66 <call_gmon_start+0x22>
 8048a61:	e8 1e fe ff ff       	call   8048884 <__gmon_start__@plt>
 8048a66:	58                   	pop    %eax
 8048a67:	5b                   	pop    %ebx
 8048a68:	c9                   	leave  
 8048a69:	c3                   	ret    
 8048a6a:	90                   	nop
 8048a6b:	90                   	nop
 8048a6c:	90                   	nop
 8048a6d:	90                   	nop
 8048a6e:	90                   	nop
 8048a6f:	90                   	nop

08048a70 <__do_global_dtors_aux>:
 8048a70:	55                   	push   %ebp
 8048a71:	89 e5                	mov    %esp,%ebp
 8048a73:	53                   	push   %ebx
 8048a74:	83 ec 04             	sub    $0x4,%esp
 8048a77:	80 3d cc c1 04 08 00 	cmpb   $0x0,0x804c1cc
 8048a7e:	75 40                	jne    8048ac0 <__do_global_dtors_aux+0x50>
 8048a80:	8b 15 d0 c1 04 08    	mov    0x804c1d0,%edx
 8048a86:	b8 0c b0 04 08       	mov    $0x804b00c,%eax
 8048a8b:	2d 08 b0 04 08       	sub    $0x804b008,%eax
 8048a90:	c1 f8 02             	sar    $0x2,%eax
 8048a93:	8d 58 ff             	lea    -0x1(%eax),%ebx
 8048a96:	39 da                	cmp    %ebx,%edx
 8048a98:	73 1f                	jae    8048ab9 <__do_global_dtors_aux+0x49>
 8048a9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048aa0:	8d 42 01             	lea    0x1(%edx),%eax
 8048aa3:	a3 d0 c1 04 08       	mov    %eax,0x804c1d0
 8048aa8:	ff 14 85 08 b0 04 08 	call   *0x804b008(,%eax,4)
 8048aaf:	8b 15 d0 c1 04 08    	mov    0x804c1d0,%edx
 8048ab5:	39 da                	cmp    %ebx,%edx
 8048ab7:	72 e7                	jb     8048aa0 <__do_global_dtors_aux+0x30>
 8048ab9:	c6 05 cc c1 04 08 01 	movb   $0x1,0x804c1cc
 8048ac0:	83 c4 04             	add    $0x4,%esp
 8048ac3:	5b                   	pop    %ebx
 8048ac4:	5d                   	pop    %ebp
 8048ac5:	c3                   	ret    
 8048ac6:	8d 76 00             	lea    0x0(%esi),%esi
 8048ac9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048ad0 <frame_dummy>:
 8048ad0:	55                   	push   %ebp
 8048ad1:	89 e5                	mov    %esp,%ebp
 8048ad3:	83 ec 08             	sub    $0x8,%esp
 8048ad6:	a1 10 b0 04 08       	mov    0x804b010,%eax
 8048adb:	85 c0                	test   %eax,%eax
 8048add:	74 12                	je     8048af1 <frame_dummy+0x21>
 8048adf:	b8 00 00 00 00       	mov    $0x0,%eax
 8048ae4:	85 c0                	test   %eax,%eax
 8048ae6:	74 09                	je     8048af1 <frame_dummy+0x21>
 8048ae8:	c7 04 24 10 b0 04 08 	movl   $0x804b010,(%esp)
 8048aef:	ff d0                	call   *%eax
 8048af1:	c9                   	leave  
 8048af2:	c3                   	ret    
 8048af3:	90                   	nop
 8048af4:	90                   	nop
 8048af5:	90                   	nop
 8048af6:	90                   	nop
 8048af7:	90                   	nop
 8048af8:	90                   	nop
 8048af9:	90                   	nop
 8048afa:	90                   	nop
 8048afb:	90                   	nop
 8048afc:	90                   	nop
 8048afd:	90                   	nop
 8048afe:	90                   	nop
 8048aff:	90                   	nop

08048b00 <usage>:
 8048b00:	55                   	push   %ebp
 8048b01:	89 e5                	mov    %esp,%ebp
 8048b03:	83 ec 08             	sub    $0x8,%esp
 8048b06:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048b0a:	c7 04 24 a0 9f 04 08 	movl   $0x8049fa0,(%esp)
 8048b11:	e8 2e fe ff ff       	call   8048944 <printf@plt>
 8048b16:	c7 04 24 be 9f 04 08 	movl   $0x8049fbe,(%esp)
 8048b1d:	e8 82 fe ff ff       	call   80489a4 <puts@plt>
 8048b22:	c7 04 24 d4 9f 04 08 	movl   $0x8049fd4,(%esp)
 8048b29:	e8 76 fe ff ff       	call   80489a4 <puts@plt>
 8048b2e:	c7 04 24 dc a0 04 08 	movl   $0x804a0dc,(%esp)
 8048b35:	e8 6a fe ff ff       	call   80489a4 <puts@plt>
 8048b3a:	c7 04 24 18 a1 04 08 	movl   $0x804a118,(%esp)
 8048b41:	e8 5e fe ff ff       	call   80489a4 <puts@plt>
 8048b46:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048b4d:	e8 b2 fe ff ff       	call   8048a04 <exit@plt>

08048b52 <illegalhandler>:
 8048b52:	55                   	push   %ebp
 8048b53:	89 e5                	mov    %esp,%ebp
 8048b55:	83 ec 08             	sub    $0x8,%esp
 8048b58:	c7 04 24 40 a1 04 08 	movl   $0x804a140,(%esp)
 8048b5f:	e8 40 fe ff ff       	call   80489a4 <puts@plt>
 8048b64:	c7 04 24 ed 9f 04 08 	movl   $0x8049fed,(%esp)
 8048b6b:	e8 34 fe ff ff       	call   80489a4 <puts@plt>
 8048b70:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048b77:	e8 88 fe ff ff       	call   8048a04 <exit@plt>

08048b7c <seghandler>:
 8048b7c:	55                   	push   %ebp
 8048b7d:	89 e5                	mov    %esp,%ebp
 8048b7f:	83 ec 08             	sub    $0x8,%esp
 8048b82:	c7 04 24 6c a1 04 08 	movl   $0x804a16c,(%esp)
 8048b89:	e8 16 fe ff ff       	call   80489a4 <puts@plt>
 8048b8e:	c7 04 24 ed 9f 04 08 	movl   $0x8049fed,(%esp)
 8048b95:	e8 0a fe ff ff       	call   80489a4 <puts@plt>
 8048b9a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048ba1:	e8 5e fe ff ff       	call   8048a04 <exit@plt>

08048ba6 <bushandler>:
 8048ba6:	55                   	push   %ebp
 8048ba7:	89 e5                	mov    %esp,%ebp
 8048ba9:	83 ec 08             	sub    $0x8,%esp
 8048bac:	c7 04 24 94 a1 04 08 	movl   $0x804a194,(%esp)
 8048bb3:	e8 ec fd ff ff       	call   80489a4 <puts@plt>
 8048bb8:	c7 04 24 ed 9f 04 08 	movl   $0x8049fed,(%esp)
 8048bbf:	e8 e0 fd ff ff       	call   80489a4 <puts@plt>
 8048bc4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048bcb:	e8 34 fe ff ff       	call   8048a04 <exit@plt>

08048bd0 <uniqueval>:
 8048bd0:	55                   	push   %ebp
 8048bd1:	89 e5                	mov    %esp,%ebp
 8048bd3:	83 ec 08             	sub    $0x8,%esp
 8048bd6:	e8 79 fc ff ff       	call   8048854 <getpid@plt>
 8048bdb:	89 04 24             	mov    %eax,(%esp)
 8048bde:	e8 81 fd ff ff       	call   8048964 <srandom@plt>
 8048be3:	e8 7c fc ff ff       	call   8048864 <random@plt>
 8048be8:	c9                   	leave  
 8048be9:	c3                   	ret    

08048bea <Gets>:
 8048bea:	55                   	push   %ebp
 8048beb:	89 e5                	mov    %esp,%ebp
 8048bed:	57                   	push   %edi
 8048bee:	56                   	push   %esi
 8048bef:	53                   	push   %ebx
 8048bf0:	83 ec 0c             	sub    $0xc,%esp
 8048bf3:	c7 05 f0 c1 04 08 00 	movl   $0x0,0x804c1f0
 8048bfa:	00 00 00 
 8048bfd:	8b 5d 08             	mov    0x8(%ebp),%ebx
 8048c00:	bf 20 a3 04 08       	mov    $0x804a320,%edi
 8048c05:	eb 46                	jmp    8048c4d <Gets+0x63>
 8048c07:	89 c6                	mov    %eax,%esi
 8048c09:	88 03                	mov    %al,(%ebx)
 8048c0b:	8b 0d f0 c1 04 08    	mov    0x804c1f0,%ecx
 8048c11:	81 f9 ff 03 00 00    	cmp    $0x3ff,%ecx
 8048c17:	7f 31                	jg     8048c4a <Gets+0x60>
 8048c19:	8d 14 49             	lea    (%ecx,%ecx,2),%edx
 8048c1c:	c0 e8 04             	shr    $0x4,%al
 8048c1f:	0f be c0             	movsbl %al,%eax
 8048c22:	0f b6 04 07          	movzbl (%edi,%eax,1),%eax
 8048c26:	88 82 00 c2 04 08    	mov    %al,0x804c200(%edx)
 8048c2c:	89 f0                	mov    %esi,%eax
 8048c2e:	83 e0 0f             	and    $0xf,%eax
 8048c31:	0f b6 04 07          	movzbl (%edi,%eax,1),%eax
 8048c35:	88 82 01 c2 04 08    	mov    %al,0x804c201(%edx)
 8048c3b:	c6 82 02 c2 04 08 20 	movb   $0x20,0x804c202(%edx)
 8048c42:	8d 41 01             	lea    0x1(%ecx),%eax
 8048c45:	a3 f0 c1 04 08       	mov    %eax,0x804c1f0
 8048c4a:	83 c3 01             	add    $0x1,%ebx
 8048c4d:	a1 e0 c1 04 08       	mov    0x804c1e0,%eax
 8048c52:	89 04 24             	mov    %eax,(%esp)
 8048c55:	e8 7a fc ff ff       	call   80488d4 <_IO_getc@plt>
 8048c5a:	83 f8 ff             	cmp    $0xffffffff,%eax
 8048c5d:	74 05                	je     8048c64 <Gets+0x7a>
 8048c5f:	83 f8 0a             	cmp    $0xa,%eax
 8048c62:	75 a3                	jne    8048c07 <Gets+0x1d>
 8048c64:	c6 03 00             	movb   $0x0,(%ebx)
 8048c67:	a1 f0 c1 04 08       	mov    0x804c1f0,%eax
 8048c6c:	c6 84 40 00 c2 04 08 	movb   $0x0,0x804c200(%eax,%eax,2)
 8048c73:	00 
 8048c74:	8b 45 08             	mov    0x8(%ebp),%eax
 8048c77:	83 c4 0c             	add    $0xc,%esp
 8048c7a:	5b                   	pop    %ebx
 8048c7b:	5e                   	pop    %esi
 8048c7c:	5f                   	pop    %edi
 8048c7d:	5d                   	pop    %ebp
 8048c7e:	c3                   	ret    

08048c7f <testn>:
 8048c7f:	55                   	push   %ebp
 8048c80:	89 e5                	mov    %esp,%ebp
 8048c82:	53                   	push   %ebx
 8048c83:	83 ec 24             	sub    $0x24,%esp
 8048c86:	e8 45 ff ff ff       	call   8048bd0 <uniqueval>
 8048c8b:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048c8e:	e8 ad 04 00 00       	call   8049140 <getbufn>
 8048c93:	89 c3                	mov    %eax,%ebx
 8048c95:	e8 36 ff ff ff       	call   8048bd0 <uniqueval>
 8048c9a:	8b 55 f8             	mov    -0x8(%ebp),%edx
 8048c9d:	39 d0                	cmp    %edx,%eax
 8048c9f:	74 0e                	je     8048caf <testn+0x30>
 8048ca1:	c7 04 24 b4 a1 04 08 	movl   $0x804a1b4,(%esp)
 8048ca8:	e8 f7 fc ff ff       	call   80489a4 <puts@plt>
 8048cad:	eb 36                	jmp    8048ce5 <testn+0x66>
 8048caf:	3b 1d e4 c1 04 08    	cmp    0x804c1e4,%ebx
 8048cb5:	75 1e                	jne    8048cd5 <testn+0x56>
 8048cb7:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8048cbb:	c7 04 24 e0 a1 04 08 	movl   $0x804a1e0,(%esp)
 8048cc2:	e8 7d fc ff ff       	call   8048944 <printf@plt>
 8048cc7:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 8048cce:	e8 ad 04 00 00       	call   8049180 <validate>
 8048cd3:	eb 10                	jmp    8048ce5 <testn+0x66>
 8048cd5:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8048cd9:	c7 04 24 03 a0 04 08 	movl   $0x804a003,(%esp)
 8048ce0:	e8 5f fc ff ff       	call   8048944 <printf@plt>
 8048ce5:	83 c4 24             	add    $0x24,%esp
 8048ce8:	5b                   	pop    %ebx
 8048ce9:	5d                   	pop    %ebp
 8048cea:	c3                   	ret    

08048ceb <bang>:
 8048ceb:	55                   	push   %ebp
 8048cec:	89 e5                	mov    %esp,%ebp
 8048cee:	83 ec 08             	sub    $0x8,%esp
 8048cf1:	a1 ec c1 04 08       	mov    0x804c1ec,%eax
 8048cf6:	3b 05 e4 c1 04 08    	cmp    0x804c1e4,%eax
 8048cfc:	75 1e                	jne    8048d1c <bang+0x31>
 8048cfe:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048d02:	c7 04 24 00 a2 04 08 	movl   $0x804a200,(%esp)
 8048d09:	e8 36 fc ff ff       	call   8048944 <printf@plt>
 8048d0e:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 8048d15:	e8 66 04 00 00       	call   8049180 <validate>
 8048d1a:	eb 10                	jmp    8048d2c <bang+0x41>
 8048d1c:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048d20:	c7 04 24 1f a0 04 08 	movl   $0x804a01f,(%esp)
 8048d27:	e8 18 fc ff ff       	call   8048944 <printf@plt>
 8048d2c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048d33:	e8 cc fc ff ff       	call   8048a04 <exit@plt>

08048d38 <fizz>:
 8048d38:	55                   	push   %ebp
 8048d39:	89 e5                	mov    %esp,%ebp
 8048d3b:	83 ec 08             	sub    $0x8,%esp
 8048d3e:	8b 45 08             	mov    0x8(%ebp),%eax
 8048d41:	3b 05 e4 c1 04 08    	cmp    0x804c1e4,%eax
 8048d47:	75 1e                	jne    8048d67 <fizz+0x2f>
 8048d49:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048d4d:	c7 04 24 3d a0 04 08 	movl   $0x804a03d,(%esp)
 8048d54:	e8 eb fb ff ff       	call   8048944 <printf@plt>
 8048d59:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048d60:	e8 1b 04 00 00       	call   8049180 <validate>
 8048d65:	eb 10                	jmp    8048d77 <fizz+0x3f>
 8048d67:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048d6b:	c7 04 24 28 a2 04 08 	movl   $0x804a228,(%esp)
 8048d72:	e8 cd fb ff ff       	call   8048944 <printf@plt>
 8048d77:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048d7e:	e8 81 fc ff ff       	call   8048a04 <exit@plt>

08048d83 <smoke>:
 8048d83:	55                   	push   %ebp
 8048d84:	89 e5                	mov    %esp,%ebp
 8048d86:	83 ec 08             	sub    $0x8,%esp
 8048d89:	c7 04 24 5b a0 04 08 	movl   $0x804a05b,(%esp)
 8048d90:	e8 0f fc ff ff       	call   80489a4 <puts@plt>
 8048d95:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048d9c:	e8 df 03 00 00       	call   8049180 <validate>
 8048da1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048da8:	e8 57 fc ff ff       	call   8048a04 <exit@plt>

08048dad <test>:
 8048dad:	55                   	push   %ebp
 8048dae:	89 e5                	mov    %esp,%ebp
 8048db0:	53                   	push   %ebx
 8048db1:	83 ec 24             	sub    $0x24,%esp
 8048db4:	e8 17 fe ff ff       	call   8048bd0 <uniqueval>
 8048db9:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048dbc:	e8 9d 03 00 00       	call   804915e <getbuf>
 8048dc1:	89 c3                	mov    %eax,%ebx
 8048dc3:	e8 08 fe ff ff       	call   8048bd0 <uniqueval>
 8048dc8:	8b 55 f8             	mov    -0x8(%ebp),%edx
 8048dcb:	39 d0                	cmp    %edx,%eax
 8048dcd:	74 0e                	je     8048ddd <test+0x30>
 8048dcf:	c7 04 24 b4 a1 04 08 	movl   $0x804a1b4,(%esp)
 8048dd6:	e8 c9 fb ff ff       	call   80489a4 <puts@plt>
 8048ddb:	eb 36                	jmp    8048e13 <test+0x66>
 8048ddd:	3b 1d e4 c1 04 08    	cmp    0x804c1e4,%ebx
 8048de3:	75 1e                	jne    8048e03 <test+0x56>
 8048de5:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8048de9:	c7 04 24 76 a0 04 08 	movl   $0x804a076,(%esp)
 8048df0:	e8 4f fb ff ff       	call   8048944 <printf@plt>
 8048df5:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
 8048dfc:	e8 7f 03 00 00       	call   8049180 <validate>
 8048e01:	eb 10                	jmp    8048e13 <test+0x66>
 8048e03:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8048e07:	c7 04 24 93 a0 04 08 	movl   $0x804a093,(%esp)
 8048e0e:	e8 31 fb ff ff       	call   8048944 <printf@plt>
 8048e13:	83 c4 24             	add    $0x24,%esp
 8048e16:	5b                   	pop    %ebx
 8048e17:	5d                   	pop    %ebp
 8048e18:	c3                   	ret    

08048e19 <launch>:
 8048e19:	55                   	push   %ebp
 8048e1a:	89 e5                	mov    %esp,%ebp
 8048e1c:	53                   	push   %ebx
 8048e1d:	83 ec 54             	sub    $0x54,%esp
 8048e20:	89 c3                	mov    %eax,%ebx
 8048e22:	8d 4d bc             	lea    -0x44(%ebp),%ecx
 8048e25:	81 e1 f0 3f 00 00    	and    $0x3ff0,%ecx
 8048e2b:	8d 44 11 1e          	lea    0x1e(%ecx,%edx,1),%eax
 8048e2f:	83 e0 f0             	and    $0xfffffff0,%eax
 8048e32:	29 c4                	sub    %eax,%esp
 8048e34:	8d 44 24 1b          	lea    0x1b(%esp),%eax
 8048e38:	83 e0 f0             	and    $0xfffffff0,%eax
 8048e3b:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 8048e3f:	c7 44 24 04 f4 00 00 	movl   $0xf4,0x4(%esp)
 8048e46:	00 
 8048e47:	89 04 24             	mov    %eax,(%esp)
 8048e4a:	e8 65 fa ff ff       	call   80488b4 <memset@plt>
 8048e4f:	c7 04 24 ae a0 04 08 	movl   $0x804a0ae,(%esp)
 8048e56:	e8 e9 fa ff ff       	call   8048944 <printf@plt>
 8048e5b:	85 db                	test   %ebx,%ebx
 8048e5d:	74 07                	je     8048e66 <launch+0x4d>
 8048e5f:	e8 1b fe ff ff       	call   8048c7f <testn>
 8048e64:	eb 07                	jmp    8048e6d <launch+0x54>
 8048e66:	66 90                	xchg   %ax,%ax
 8048e68:	e8 40 ff ff ff       	call   8048dad <test>
 8048e6d:	83 3d e8 c1 04 08 00 	cmpl   $0x0,0x804c1e8
 8048e74:	75 16                	jne    8048e8c <launch+0x73>
 8048e76:	c7 04 24 ed 9f 04 08 	movl   $0x8049fed,(%esp)
 8048e7d:	e8 22 fb ff ff       	call   80489a4 <puts@plt>
 8048e82:	c7 05 e8 c1 04 08 00 	movl   $0x0,0x804c1e8
 8048e89:	00 00 00 
 8048e8c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048e8f:	c9                   	leave  
 8048e90:	c3                   	ret    

08048e91 <launcher>:
 8048e91:	55                   	push   %ebp
 8048e92:	89 e5                	mov    %esp,%ebp
 8048e94:	83 ec 18             	sub    $0x18,%esp
 8048e97:	8b 45 08             	mov    0x8(%ebp),%eax
 8048e9a:	a3 f4 c1 04 08       	mov    %eax,0x804c1f4
 8048e9f:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048ea2:	a3 f8 c1 04 08       	mov    %eax,0x804c1f8
 8048ea7:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
 8048eae:	00 
 8048eaf:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
 8048eb6:	00 
 8048eb7:	c7 44 24 0c 32 01 00 	movl   $0x132,0xc(%esp)
 8048ebe:	00 
 8048ebf:	c7 44 24 08 07 00 00 	movl   $0x7,0x8(%esp)
 8048ec6:	00 
 8048ec7:	c7 44 24 04 00 00 10 	movl   $0x100000,0x4(%esp)
 8048ece:	00 
 8048ecf:	c7 04 24 00 60 58 55 	movl   $0x55586000,(%esp)
 8048ed6:	e8 69 f9 ff ff       	call   8048844 <mmap@plt>
 8048edb:	3d 00 60 58 55       	cmp    $0x55586000,%eax
 8048ee0:	74 31                	je     8048f13 <launcher+0x82>
 8048ee2:	a1 c0 c1 04 08       	mov    0x804c1c0,%eax
 8048ee7:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048eeb:	c7 44 24 08 47 00 00 	movl   $0x47,0x8(%esp)
 8048ef2:	00 
 8048ef3:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8048efa:	00 
 8048efb:	c7 04 24 48 a2 04 08 	movl   $0x804a248,(%esp)
 8048f02:	e8 7d fa ff ff       	call   8048984 <fwrite@plt>
 8048f07:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048f0e:	e8 f1 fa ff ff       	call   8048a04 <exit@plt>
 8048f13:	c7 05 04 ce 04 08 f8 	movl   $0x55685ff8,0x804ce04
 8048f1a:	5f 68 55 
 8048f1d:	ba f8 5f 68 55       	mov    $0x55685ff8,%edx
 8048f22:	89 e0                	mov    %esp,%eax
 8048f24:	89 d4                	mov    %edx,%esp
 8048f26:	89 c2                	mov    %eax,%edx
 8048f28:	89 15 fc c1 04 08    	mov    %edx,0x804c1fc
 8048f2e:	8b 15 f8 c1 04 08    	mov    0x804c1f8,%edx
 8048f34:	a1 f4 c1 04 08       	mov    0x804c1f4,%eax
 8048f39:	e8 db fe ff ff       	call   8048e19 <launch>
 8048f3e:	a1 fc c1 04 08       	mov    0x804c1fc,%eax
 8048f43:	89 c4                	mov    %eax,%esp
 8048f45:	c7 44 24 04 00 00 10 	movl   $0x100000,0x4(%esp)
 8048f4c:	00 
 8048f4d:	c7 04 24 00 60 58 55 	movl   $0x55586000,(%esp)
 8048f54:	e8 7b fa ff ff       	call   80489d4 <munmap@plt>
 8048f59:	c9                   	leave  
 8048f5a:	c3                   	ret    

08048f5b <main>:
 8048f5b:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8048f5f:	83 e4 f0             	and    $0xfffffff0,%esp
 8048f62:	ff 71 fc             	pushl  -0x4(%ecx)
 8048f65:	55                   	push   %ebp
 8048f66:	89 e5                	mov    %esp,%ebp
 8048f68:	57                   	push   %edi
 8048f69:	56                   	push   %esi
 8048f6a:	53                   	push   %ebx
 8048f6b:	51                   	push   %ecx
 8048f6c:	83 ec 18             	sub    $0x18,%esp
 8048f6f:	8b 31                	mov    (%ecx),%esi
 8048f71:	8b 59 04             	mov    0x4(%ecx),%ebx
 8048f74:	c7 44 24 04 7c 8b 04 	movl   $0x8048b7c,0x4(%esp)
 8048f7b:	08 
 8048f7c:	c7 04 24 0b 00 00 00 	movl   $0xb,(%esp)
 8048f83:	e8 ec f8 ff ff       	call   8048874 <signal@plt>
 8048f88:	c7 44 24 04 a6 8b 04 	movl   $0x8048ba6,0x4(%esp)
 8048f8f:	08 
 8048f90:	c7 04 24 07 00 00 00 	movl   $0x7,(%esp)
 8048f97:	e8 d8 f8 ff ff       	call   8048874 <signal@plt>
 8048f9c:	c7 44 24 04 52 8b 04 	movl   $0x8048b52,0x4(%esp)
 8048fa3:	08 
 8048fa4:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 8048fab:	e8 c4 f8 ff ff       	call   8048874 <signal@plt>
 8048fb0:	a1 c4 c1 04 08       	mov    0x804c1c4,%eax
 8048fb5:	a3 e0 c1 04 08       	mov    %eax,0x804c1e0
 8048fba:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 8048fc1:	bf 01 00 00 00       	mov    $0x1,%edi
 8048fc6:	eb 76                	jmp    804903e <main+0xe3>
 8048fc8:	83 e8 67             	sub    $0x67,%eax
 8048fcb:	3c 0e                	cmp    $0xe,%al
 8048fcd:	77 68                	ja     8049037 <main+0xdc>
 8048fcf:	0f b6 c0             	movzbl %al,%eax
 8048fd2:	ff 24 85 e4 a2 04 08 	jmp    *0x804a2e4(,%eax,4)
 8048fd9:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
 8048fe0:	bf 05 00 00 00       	mov    $0x5,%edi
 8048fe5:	eb 57                	jmp    804903e <main+0xe3>
 8048fe7:	8b 03                	mov    (%ebx),%eax
 8048fe9:	e8 12 fb ff ff       	call   8048b00 <usage>
 8048fee:	66 90                	xchg   %ax,%ax
 8048ff0:	eb 4c                	jmp    804903e <main+0xe3>
 8048ff2:	a1 c8 c1 04 08       	mov    0x804c1c8,%eax
 8048ff7:	89 04 24             	mov    %eax,(%esp)
 8048ffa:	e8 f5 f9 ff ff       	call   80489f4 <__strdup@plt>
 8048fff:	a3 d4 c1 04 08       	mov    %eax,0x804c1d4
 8049004:	89 04 24             	mov    %eax,(%esp)
 8049007:	e8 8f 0e 00 00       	call   8049e9b <gencookie>
 804900c:	a3 e4 c1 04 08       	mov    %eax,0x804c1e4
 8049011:	eb 2b                	jmp    804903e <main+0xe3>
 8049013:	c7 04 24 90 a2 04 08 	movl   $0x804a290,(%esp)
 804901a:	e8 85 f9 ff ff       	call   80489a4 <puts@plt>
 804901f:	c7 05 d8 c1 04 08 00 	movl   $0x0,0x804c1d8
 8049026:	00 00 00 
 8049029:	eb 13                	jmp    804903e <main+0xe3>
 804902b:	c7 05 dc c1 04 08 01 	movl   $0x1,0x804c1dc
 8049032:	00 00 00 
 8049035:	eb 07                	jmp    804903e <main+0xe3>
 8049037:	8b 03                	mov    (%ebx),%eax
 8049039:	e8 c2 fa ff ff       	call   8048b00 <usage>
 804903e:	c7 44 24 08 bb a0 04 	movl   $0x804a0bb,0x8(%esp)
 8049045:	08 
 8049046:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804904a:	89 34 24             	mov    %esi,(%esp)
 804904d:	e8 c2 f8 ff ff       	call   8048914 <getopt@plt>
 8049052:	3c ff                	cmp    $0xff,%al
 8049054:	0f 85 6e ff ff ff    	jne    8048fc8 <main+0x6d>
 804905a:	83 3d d4 c1 04 08 00 	cmpl   $0x0,0x804c1d4
 8049061:	75 19                	jne    804907c <main+0x121>
 8049063:	8b 03                	mov    (%ebx),%eax
 8049065:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049069:	c7 04 24 b8 a2 04 08 	movl   $0x804a2b8,(%esp)
 8049070:	e8 cf f8 ff ff       	call   8048944 <printf@plt>
 8049075:	8b 03                	mov    (%ebx),%eax
 8049077:	e8 84 fa ff ff       	call   8048b00 <usage>
 804907c:	e8 42 02 00 00       	call   80492c3 <initialize_bomb>
 8049081:	a1 d4 c1 04 08       	mov    0x804c1d4,%eax
 8049086:	89 44 24 04          	mov    %eax,0x4(%esp)
 804908a:	c7 04 24 c2 a0 04 08 	movl   $0x804a0c2,(%esp)
 8049091:	e8 ae f8 ff ff       	call   8048944 <printf@plt>
 8049096:	a1 e4 c1 04 08       	mov    0x804c1e4,%eax
 804909b:	89 44 24 04          	mov    %eax,0x4(%esp)
 804909f:	c7 04 24 ce a0 04 08 	movl   $0x804a0ce,(%esp)
 80490a6:	e8 99 f8 ff ff       	call   8048944 <printf@plt>
 80490ab:	a1 e4 c1 04 08       	mov    0x804c1e4,%eax
 80490b0:	89 04 24             	mov    %eax,(%esp)
 80490b3:	e8 ac f8 ff ff       	call   8048964 <srandom@plt>
 80490b8:	e8 a7 f7 ff ff       	call   8048864 <random@plt>
 80490bd:	25 f0 0f 00 00       	and    $0xff0,%eax
 80490c2:	05 00 01 00 00       	add    $0x100,%eax
 80490c7:	89 45 e8             	mov    %eax,-0x18(%ebp)
 80490ca:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
 80490d1:	00 
 80490d2:	89 3c 24             	mov    %edi,(%esp)
 80490d5:	e8 ba f7 ff ff       	call   8048894 <calloc@plt>
 80490da:	89 c6                	mov    %eax,%esi
 80490dc:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 80490e2:	83 ff 01             	cmp    $0x1,%edi
 80490e5:	7e 20                	jle    8049107 <main+0x1ac>
 80490e7:	bb 01 00 00 00       	mov    $0x1,%ebx
 80490ec:	e8 73 f7 ff ff       	call   8048864 <random@plt>
 80490f1:	25 f0 00 00 00       	and    $0xf0,%eax
 80490f6:	ba 80 00 00 00       	mov    $0x80,%edx
 80490fb:	29 c2                	sub    %eax,%edx
 80490fd:	89 14 9e             	mov    %edx,(%esi,%ebx,4)
 8049100:	83 c3 01             	add    $0x1,%ebx
 8049103:	39 fb                	cmp    %edi,%ebx
 8049105:	7c e5                	jl     80490ec <main+0x191>
 8049107:	85 ff                	test   %edi,%edi
 8049109:	7e 21                	jle    804912c <main+0x1d1>
 804910b:	bb 00 00 00 00       	mov    $0x0,%ebx
 8049110:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049113:	03 04 9e             	add    (%esi,%ebx,4),%eax
 8049116:	89 44 24 04          	mov    %eax,0x4(%esp)
 804911a:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804911d:	89 04 24             	mov    %eax,(%esp)
 8049120:	e8 6c fd ff ff       	call   8048e91 <launcher>
 8049125:	83 c3 01             	add    $0x1,%ebx
 8049128:	39 fb                	cmp    %edi,%ebx
 804912a:	7c e4                	jl     8049110 <main+0x1b5>
 804912c:	b8 00 00 00 00       	mov    $0x0,%eax
 8049131:	83 c4 18             	add    $0x18,%esp
 8049134:	59                   	pop    %ecx
 8049135:	5b                   	pop    %ebx
 8049136:	5e                   	pop    %esi
 8049137:	5f                   	pop    %edi
 8049138:	5d                   	pop    %ebp
 8049139:	8d 61 fc             	lea    -0x4(%ecx),%esp
 804913c:	c3                   	ret    
 804913d:	90                   	nop
 804913e:	90                   	nop
 804913f:	90                   	nop

08049140 <getbufn>:
 8049140:	55                   	push   %ebp
 8049141:	89 e5                	mov    %esp,%ebp
 8049143:	81 ec 08 02 00 00    	sub    $0x208,%esp
 8049149:	8d 85 00 fe ff ff    	lea    -0x200(%ebp),%eax
 804914f:	89 04 24             	mov    %eax,(%esp)
 8049152:	e8 93 fa ff ff       	call   8048bea <Gets>
 8049157:	b8 01 00 00 00       	mov    $0x1,%eax
 804915c:	c9                   	leave  
 804915d:	c3                   	ret    

0804915e <getbuf>:
 804915e:	55                   	push   %ebp
 804915f:	89 e5                	mov    %esp,%ebp
 8049161:	83 ec 28             	sub    $0x28,%esp
 8049164:	8d 45 e0             	lea    -0x20(%ebp),%eax
 8049167:	89 04 24             	mov    %eax,(%esp)
 804916a:	e8 7b fa ff ff       	call   8048bea <Gets>
 804916f:	b8 01 00 00 00       	mov    $0x1,%eax
 8049174:	c9                   	leave  
 8049175:	c3                   	ret    
 8049176:	90                   	nop
 8049177:	90                   	nop
 8049178:	90                   	nop
 8049179:	90                   	nop
 804917a:	90                   	nop
 804917b:	90                   	nop
 804917c:	90                   	nop
 804917d:	90                   	nop
 804917e:	90                   	nop
 804917f:	90                   	nop

08049180 <validate>:
 8049180:	55                   	push   %ebp
 8049181:	89 e5                	mov    %esp,%ebp
 8049183:	81 ec 28 40 00 00    	sub    $0x4028,%esp
 8049189:	89 5d f8             	mov    %ebx,-0x8(%ebp)
 804918c:	89 7d fc             	mov    %edi,-0x4(%ebp)
 804918f:	8b 5d 08             	mov    0x8(%ebp),%ebx
 8049192:	83 3d d4 c1 04 08 00 	cmpl   $0x0,0x804c1d4
 8049199:	75 11                	jne    80491ac <validate+0x2c>
 804919b:	c7 04 24 30 a3 04 08 	movl   $0x804a330,(%esp)
 80491a2:	e8 fd f7 ff ff       	call   80489a4 <puts@plt>
 80491a7:	e9 0d 01 00 00       	jmp    80492b9 <validate+0x139>
 80491ac:	83 fb 04             	cmp    $0x4,%ebx
 80491af:	76 11                	jbe    80491c2 <validate+0x42>
 80491b1:	c7 04 24 5c a3 04 08 	movl   $0x804a35c,(%esp)
 80491b8:	e8 e7 f7 ff ff       	call   80489a4 <puts@plt>
 80491bd:	e9 f7 00 00 00       	jmp    80492b9 <validate+0x139>
 80491c2:	c7 05 e8 c1 04 08 01 	movl   $0x1,0x804c1e8
 80491c9:	00 00 00 
 80491cc:	ba a0 c1 04 08       	mov    $0x804c1a0,%edx
 80491d1:	8b 04 9a             	mov    (%edx,%ebx,4),%eax
 80491d4:	83 e8 01             	sub    $0x1,%eax
 80491d7:	89 04 9a             	mov    %eax,(%edx,%ebx,4)
 80491da:	85 c0                	test   %eax,%eax
 80491dc:	7e 11                	jle    80491ef <validate+0x6f>
 80491de:	c7 04 24 9f a4 04 08 	movl   $0x804a49f,(%esp)
 80491e5:	e8 ba f7 ff ff       	call   80489a4 <puts@plt>
 80491ea:	e9 ca 00 00 00       	jmp    80492b9 <validate+0x139>
 80491ef:	c7 04 24 aa a4 04 08 	movl   $0x804a4aa,(%esp)
 80491f6:	e8 a9 f7 ff ff       	call   80489a4 <puts@plt>
 80491fb:	83 3d d8 c1 04 08 00 	cmpl   $0x0,0x804c1d8
 8049202:	0f 84 a5 00 00 00    	je     80492ad <validate+0x12d>
 8049208:	bf 00 c2 04 08       	mov    $0x804c200,%edi
 804920d:	b8 00 00 00 00       	mov    $0x0,%eax
 8049212:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049217:	f2 ae                	repnz scas %es:(%edi),%al
 8049219:	f7 d1                	not    %ecx
 804921b:	83 c1 1f             	add    $0x1f,%ecx
 804921e:	81 f9 00 20 00 00    	cmp    $0x2000,%ecx
 8049224:	76 11                	jbe    8049237 <validate+0xb7>
 8049226:	c7 04 24 84 a3 04 08 	movl   $0x804a384,(%esp)
 804922d:	e8 72 f7 ff ff       	call   80489a4 <puts@plt>
 8049232:	e9 82 00 00 00       	jmp    80492b9 <validate+0x139>
 8049237:	c7 44 24 10 00 c2 04 	movl   $0x804c200,0x10(%esp)
 804923e:	08 
 804923f:	a1 e4 c1 04 08       	mov    0x804c1e4,%eax
 8049244:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049248:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804924c:	c7 44 24 04 b0 a4 04 	movl   $0x804a4b0,0x4(%esp)
 8049253:	08 
 8049254:	8d 9d f8 df ff ff    	lea    -0x2008(%ebp),%ebx
 804925a:	89 1c 24             	mov    %ebx,(%esp)
 804925d:	e8 b2 f5 ff ff       	call   8048814 <sprintf@plt>
 8049262:	8d 85 f8 bf ff ff    	lea    -0x4008(%ebp),%eax
 8049268:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804926c:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 8049273:	00 
 8049274:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8049278:	a1 d4 c1 04 08       	mov    0x804c1d4,%eax
 804927d:	89 04 24             	mov    %eax,(%esp)
 8049280:	e8 0b 0b 00 00       	call   8049d90 <driver_post>
 8049285:	85 c0                	test   %eax,%eax
 8049287:	75 0e                	jne    8049297 <validate+0x117>
 8049289:	c7 04 24 bc a3 04 08 	movl   $0x804a3bc,(%esp)
 8049290:	e8 0f f7 ff ff       	call   80489a4 <puts@plt>
 8049295:	eb 16                	jmp    80492ad <validate+0x12d>
 8049297:	8d 85 f8 bf ff ff    	lea    -0x4008(%ebp),%eax
 804929d:	89 44 24 04          	mov    %eax,0x4(%esp)
 80492a1:	c7 04 24 ec a3 04 08 	movl   $0x804a3ec,(%esp)
 80492a8:	e8 97 f6 ff ff       	call   8048944 <printf@plt>
 80492ad:	c7 04 24 b9 a4 04 08 	movl   $0x804a4b9,(%esp)
 80492b4:	e8 eb f6 ff ff       	call   80489a4 <puts@plt>
 80492b9:	8b 5d f8             	mov    -0x8(%ebp),%ebx
 80492bc:	8b 7d fc             	mov    -0x4(%ebp),%edi
 80492bf:	89 ec                	mov    %ebp,%esp
 80492c1:	5d                   	pop    %ebp
 80492c2:	c3                   	ret    

080492c3 <initialize_bomb>:
 80492c3:	55                   	push   %ebp
 80492c4:	89 e5                	mov    %esp,%ebp
 80492c6:	57                   	push   %edi
 80492c7:	56                   	push   %esi
 80492c8:	53                   	push   %ebx
 80492c9:	81 ec 0c 24 00 00    	sub    $0x240c,%esp
 80492cf:	83 3d dc c1 04 08 00 	cmpl   $0x0,0x804c1dc
 80492d6:	74 0c                	je     80492e4 <initialize_bomb+0x21>
 80492d8:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 80492df:	e8 aa 02 00 00       	call   804958e <init_timeout>
 80492e4:	83 3d d8 c1 04 08 00 	cmpl   $0x0,0x804c1d8
 80492eb:	0f 84 ef 00 00 00    	je     80493e0 <initialize_bomb+0x11d>
 80492f1:	c7 44 24 04 00 04 00 	movl   $0x400,0x4(%esp)
 80492f8:	00 
 80492f9:	8d 85 f4 fb ff ff    	lea    -0x40c(%ebp),%eax
 80492ff:	89 04 24             	mov    %eax,(%esp)
 8049302:	e8 8d f6 ff ff       	call   8048994 <gethostname@plt>
 8049307:	85 c0                	test   %eax,%eax
 8049309:	75 1e                	jne    8049329 <initialize_bomb+0x66>
 804930b:	a1 a0 b1 04 08       	mov    0x804b1a0,%eax
 8049310:	bb 00 00 00 00       	mov    $0x0,%ebx
 8049315:	8d bd f4 fb ff ff    	lea    -0x40c(%ebp),%edi
 804931b:	be a0 b1 04 08       	mov    $0x804b1a0,%esi
 8049320:	85 c0                	test   %eax,%eax
 8049322:	75 1d                	jne    8049341 <initialize_bomb+0x7e>
 8049324:	e9 8c 00 00 00       	jmp    80493b5 <initialize_bomb+0xf2>
 8049329:	c7 04 24 2c a4 04 08 	movl   $0x804a42c,(%esp)
 8049330:	e8 6f f6 ff ff       	call   80489a4 <puts@plt>
 8049335:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 804933c:	e8 c3 f6 ff ff       	call   8048a04 <exit@plt>
 8049341:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8049345:	89 04 24             	mov    %eax,(%esp)
 8049348:	e8 07 f6 ff ff       	call   8048954 <strcasecmp@plt>
 804934d:	85 c0                	test   %eax,%eax
 804934f:	74 0c                	je     804935d <initialize_bomb+0x9a>
 8049351:	83 c3 01             	add    $0x1,%ebx
 8049354:	8b 04 9e             	mov    (%esi,%ebx,4),%eax
 8049357:	85 c0                	test   %eax,%eax
 8049359:	75 e6                	jne    8049341 <initialize_bomb+0x7e>
 804935b:	eb 58                	jmp    80493b5 <initialize_bomb+0xf2>
 804935d:	8d 85 f4 db ff ff    	lea    -0x240c(%ebp),%eax
 8049363:	89 04 24             	mov    %eax,(%esp)
 8049366:	e8 85 00 00 00       	call   80493f0 <init_driver>
 804936b:	85 c0                	test   %eax,%eax
 804936d:	79 71                	jns    80493e0 <initialize_bomb+0x11d>
 804936f:	eb 22                	jmp    8049393 <initialize_bomb+0xd0>
 8049371:	89 04 24             	mov    %eax,(%esp)
 8049374:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049378:	e8 27 f6 ff ff       	call   80489a4 <puts@plt>
 804937d:	83 c3 01             	add    $0x1,%ebx
 8049380:	8b 04 9e             	mov    (%esi,%ebx,4),%eax
 8049383:	85 c0                	test   %eax,%eax
 8049385:	75 ea                	jne    8049371 <initialize_bomb+0xae>
 8049387:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 804938e:	e8 71 f6 ff ff       	call   8048a04 <exit@plt>
 8049393:	8d 85 f4 db ff ff    	lea    -0x240c(%ebp),%eax
 8049399:	89 44 24 04          	mov    %eax,0x4(%esp)
 804939d:	c7 04 24 c3 a4 04 08 	movl   $0x804a4c3,(%esp)
 80493a4:	e8 9b f5 ff ff       	call   8048944 <printf@plt>
 80493a9:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 80493b0:	e8 4f f6 ff ff       	call   8048a04 <exit@plt>
 80493b5:	8d 85 f4 fb ff ff    	lea    -0x40c(%ebp),%eax
 80493bb:	89 44 24 04          	mov    %eax,0x4(%esp)
 80493bf:	c7 04 24 64 a4 04 08 	movl   $0x804a464,(%esp)
 80493c6:	e8 79 f5 ff ff       	call   8048944 <printf@plt>
 80493cb:	a1 a0 b1 04 08       	mov    0x804b1a0,%eax
 80493d0:	bb 00 00 00 00       	mov    $0x0,%ebx
 80493d5:	be a0 b1 04 08       	mov    $0x804b1a0,%esi
 80493da:	85 c0                	test   %eax,%eax
 80493dc:	75 93                	jne    8049371 <initialize_bomb+0xae>
 80493de:	eb a7                	jmp    8049387 <initialize_bomb+0xc4>
 80493e0:	81 c4 0c 24 00 00    	add    $0x240c,%esp
 80493e6:	5b                   	pop    %ebx
 80493e7:	5e                   	pop    %esi
 80493e8:	5f                   	pop    %edi
 80493e9:	5d                   	pop    %ebp
 80493ea:	c3                   	ret    
 80493eb:	90                   	nop
 80493ec:	90                   	nop
 80493ed:	90                   	nop
 80493ee:	90                   	nop
 80493ef:	90                   	nop

080493f0 <init_driver>:
 80493f0:	55                   	push   %ebp
 80493f1:	89 e5                	mov    %esp,%ebp
 80493f3:	57                   	push   %edi
 80493f4:	56                   	push   %esi
 80493f5:	53                   	push   %ebx
 80493f6:	83 ec 2c             	sub    $0x2c,%esp
 80493f9:	8b 7d 08             	mov    0x8(%ebp),%edi
 80493fc:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049403:	00 
 8049404:	c7 04 24 0d 00 00 00 	movl   $0xd,(%esp)
 804940b:	e8 64 f4 ff ff       	call   8048874 <signal@plt>
 8049410:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049417:	00 
 8049418:	c7 04 24 1d 00 00 00 	movl   $0x1d,(%esp)
 804941f:	e8 50 f4 ff ff       	call   8048874 <signal@plt>
 8049424:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804942b:	00 
 804942c:	c7 04 24 1d 00 00 00 	movl   $0x1d,(%esp)
 8049433:	e8 3c f4 ff ff       	call   8048874 <signal@plt>
 8049438:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 804943f:	00 
 8049440:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049447:	00 
 8049448:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 804944f:	e8 a0 f4 ff ff       	call   80488f4 <socket@plt>
 8049454:	89 c6                	mov    %eax,%esi
 8049456:	85 c0                	test   %eax,%eax
 8049458:	79 4e                	jns    80494a8 <init_driver+0xb8>
 804945a:	c7 07 45 72 72 6f    	movl   $0x6f727245,(%edi)
 8049460:	c7 47 04 72 3a 20 43 	movl   $0x43203a72,0x4(%edi)
 8049467:	c7 47 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%edi)
 804946e:	c7 47 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%edi)
 8049475:	c7 47 10 61 62 6c 65 	movl   $0x656c6261,0x10(%edi)
 804947c:	c7 47 14 20 74 6f 20 	movl   $0x206f7420,0x14(%edi)
 8049483:	c7 47 18 63 72 65 61 	movl   $0x61657263,0x18(%edi)
 804948a:	c7 47 1c 74 65 20 73 	movl   $0x73206574,0x1c(%edi)
 8049491:	c7 47 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%edi)
 8049498:	66 c7 47 24 74 00    	movw   $0x74,0x24(%edi)
 804949e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80494a3:	e9 de 00 00 00       	jmp    8049586 <init_driver+0x196>
 80494a8:	c7 04 24 24 a5 04 08 	movl   $0x804a524,(%esp)
 80494af:	e8 30 f5 ff ff       	call   80489e4 <gethostbyname@plt>
 80494b4:	89 c2                	mov    %eax,%edx
 80494b6:	85 c0                	test   %eax,%eax
 80494b8:	75 2a                	jne    80494e4 <init_driver+0xf4>
 80494ba:	c7 44 24 08 24 a5 04 	movl   $0x804a524,0x8(%esp)
 80494c1:	08 
 80494c2:	c7 44 24 04 7c a5 04 	movl   $0x804a57c,0x4(%esp)
 80494c9:	08 
 80494ca:	89 3c 24             	mov    %edi,(%esp)
 80494cd:	e8 42 f3 ff ff       	call   8048814 <sprintf@plt>
 80494d2:	89 34 24             	mov    %esi,(%esp)
 80494d5:	e8 9a f4 ff ff       	call   8048974 <close@plt>
 80494da:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80494df:	e9 a2 00 00 00       	jmp    8049586 <init_driver+0x196>
 80494e4:	8d 5d e4             	lea    -0x1c(%ebp),%ebx
 80494e7:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
 80494ed:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
 80494f4:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
 80494fb:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
 8049502:	66 c7 45 e4 02 00    	movw   $0x2,-0x1c(%ebp)
 8049508:	8b 40 0c             	mov    0xc(%eax),%eax
 804950b:	89 44 24 08          	mov    %eax,0x8(%esp)
 804950f:	8d 45 e8             	lea    -0x18(%ebp),%eax
 8049512:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049516:	8b 42 10             	mov    0x10(%edx),%eax
 8049519:	8b 00                	mov    (%eax),%eax
 804951b:	89 04 24             	mov    %eax,(%esp)
 804951e:	e8 e1 f3 ff ff       	call   8048904 <bcopy@plt>
 8049523:	66 c7 45 e6 47 26    	movw   $0x2647,-0x1a(%ebp)
 8049529:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 8049530:	00 
 8049531:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8049535:	89 34 24             	mov    %esi,(%esp)
 8049538:	e8 f7 f2 ff ff       	call   8048834 <connect@plt>
 804953d:	85 c0                	test   %eax,%eax
 804953f:	79 2f                	jns    8049570 <init_driver+0x180>
 8049541:	c7 44 24 0c 26 47 00 	movl   $0x4726,0xc(%esp)
 8049548:	00 
 8049549:	c7 44 24 08 24 a5 04 	movl   $0x804a524,0x8(%esp)
 8049550:	08 
 8049551:	c7 44 24 04 a8 a5 04 	movl   $0x804a5a8,0x4(%esp)
 8049558:	08 
 8049559:	89 3c 24             	mov    %edi,(%esp)
 804955c:	e8 b3 f2 ff ff       	call   8048814 <sprintf@plt>
 8049561:	89 34 24             	mov    %esi,(%esp)
 8049564:	e8 0b f4 ff ff       	call   8048974 <close@plt>
 8049569:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804956e:	eb 16                	jmp    8049586 <init_driver+0x196>
 8049570:	89 34 24             	mov    %esi,(%esp)
 8049573:	e8 fc f3 ff ff       	call   8048974 <close@plt>
 8049578:	66 c7 07 4f 4b       	movw   $0x4b4f,(%edi)
 804957d:	c6 47 02 00          	movb   $0x0,0x2(%edi)
 8049581:	b8 00 00 00 00       	mov    $0x0,%eax
 8049586:	83 c4 2c             	add    $0x2c,%esp
 8049589:	5b                   	pop    %ebx
 804958a:	5e                   	pop    %esi
 804958b:	5f                   	pop    %edi
 804958c:	5d                   	pop    %ebp
 804958d:	c3                   	ret    

0804958e <init_timeout>:
 804958e:	55                   	push   %ebp
 804958f:	89 e5                	mov    %esp,%ebp
 8049591:	53                   	push   %ebx
 8049592:	83 ec 14             	sub    $0x14,%esp
 8049595:	8b 5d 08             	mov    0x8(%ebp),%ebx
 8049598:	85 db                	test   %ebx,%ebx
 804959a:	74 25                	je     80495c1 <init_timeout+0x33>
 804959c:	85 db                	test   %ebx,%ebx
 804959e:	79 05                	jns    80495a5 <init_timeout+0x17>
 80495a0:	bb 02 00 00 00       	mov    $0x2,%ebx
 80495a5:	c7 44 24 04 18 9e 04 	movl   $0x8049e18,0x4(%esp)
 80495ac:	08 
 80495ad:	c7 04 24 0e 00 00 00 	movl   $0xe,(%esp)
 80495b4:	e8 bb f2 ff ff       	call   8048874 <signal@plt>
 80495b9:	89 1c 24             	mov    %ebx,(%esp)
 80495bc:	e8 63 f3 ff ff       	call   8048924 <alarm@plt>
 80495c1:	83 c4 14             	add    $0x14,%esp
 80495c4:	5b                   	pop    %ebx
 80495c5:	5d                   	pop    %ebp
 80495c6:	c3                   	ret    

080495c7 <rio_readlineb>:
 80495c7:	55                   	push   %ebp
 80495c8:	89 e5                	mov    %esp,%ebp
 80495ca:	57                   	push   %edi
 80495cb:	56                   	push   %esi
 80495cc:	53                   	push   %ebx
 80495cd:	83 ec 2c             	sub    $0x2c,%esp
 80495d0:	89 c3                	mov    %eax,%ebx
 80495d2:	89 4d dc             	mov    %ecx,-0x24(%ebp)
 80495d5:	89 55 e0             	mov    %edx,-0x20(%ebp)
 80495d8:	8d 70 0c             	lea    0xc(%eax),%esi
 80495db:	bf 01 00 00 00       	mov    $0x1,%edi
 80495e0:	83 f9 01             	cmp    $0x1,%ecx
 80495e3:	77 37                	ja     804961c <rio_readlineb+0x55>
 80495e5:	eb 5b                	jmp    8049642 <rio_readlineb+0x7b>
 80495e7:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
 80495ee:	00 
 80495ef:	89 74 24 04          	mov    %esi,0x4(%esp)
 80495f3:	8b 03                	mov    (%ebx),%eax
 80495f5:	89 04 24             	mov    %eax,(%esp)
 80495f8:	e8 e7 f2 ff ff       	call   80488e4 <read@plt>
 80495fd:	89 43 04             	mov    %eax,0x4(%ebx)
 8049600:	85 c0                	test   %eax,%eax
 8049602:	79 11                	jns    8049615 <rio_readlineb+0x4e>
 8049604:	e8 fb f1 ff ff       	call   8048804 <__errno_location@plt>
 8049609:	83 38 04             	cmpl   $0x4,(%eax)
 804960c:	74 0e                	je     804961c <rio_readlineb+0x55>
 804960e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049613:	eb 47                	jmp    804965c <rio_readlineb+0x95>
 8049615:	85 c0                	test   %eax,%eax
 8049617:	74 3e                	je     8049657 <rio_readlineb+0x90>
 8049619:	89 73 08             	mov    %esi,0x8(%ebx)
 804961c:	8b 43 04             	mov    0x4(%ebx),%eax
 804961f:	85 c0                	test   %eax,%eax
 8049621:	7e c4                	jle    80495e7 <rio_readlineb+0x20>
 8049623:	85 c0                	test   %eax,%eax
 8049625:	75 42                	jne    8049669 <rio_readlineb+0xa2>
 8049627:	89 fa                	mov    %edi,%edx
 8049629:	83 fa 01             	cmp    $0x1,%edx
 804962c:	75 19                	jne    8049647 <rio_readlineb+0x80>
 804962e:	bf 00 00 00 00       	mov    $0x0,%edi
 8049633:	eb 18                	jmp    804964d <rio_readlineb+0x86>
 8049635:	83 c7 01             	add    $0x1,%edi
 8049638:	39 7d dc             	cmp    %edi,-0x24(%ebp)
 804963b:	77 df                	ja     804961c <rio_readlineb+0x55>
 804963d:	8d 76 00             	lea    0x0(%esi),%esi
 8049640:	eb 05                	jmp    8049647 <rio_readlineb+0x80>
 8049642:	bf 01 00 00 00       	mov    $0x1,%edi
 8049647:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804964a:	c6 00 00             	movb   $0x0,(%eax)
 804964d:	89 f8                	mov    %edi,%eax
 804964f:	83 c4 2c             	add    $0x2c,%esp
 8049652:	5b                   	pop    %ebx
 8049653:	5e                   	pop    %esi
 8049654:	5f                   	pop    %edi
 8049655:	5d                   	pop    %ebp
 8049656:	c3                   	ret    
 8049657:	b8 00 00 00 00       	mov    $0x0,%eax
 804965c:	89 fa                	mov    %edi,%edx
 804965e:	85 c0                	test   %eax,%eax
 8049660:	74 c7                	je     8049629 <rio_readlineb+0x62>
 8049662:	bf ff ff ff ff       	mov    $0xffffffff,%edi
 8049667:	eb e4                	jmp    804964d <rio_readlineb+0x86>
 8049669:	8b 43 08             	mov    0x8(%ebx),%eax
 804966c:	0f b6 00             	movzbl (%eax),%eax
 804966f:	88 45 f3             	mov    %al,-0xd(%ebp)
 8049672:	83 43 08 01          	addl   $0x1,0x8(%ebx)
 8049676:	83 6b 04 01          	subl   $0x1,0x4(%ebx)
 804967a:	8b 55 e0             	mov    -0x20(%ebp),%edx
 804967d:	88 02                	mov    %al,(%edx)
 804967f:	83 c2 01             	add    $0x1,%edx
 8049682:	89 55 e0             	mov    %edx,-0x20(%ebp)
 8049685:	80 7d f3 0a          	cmpb   $0xa,-0xd(%ebp)
 8049689:	75 aa                	jne    8049635 <rio_readlineb+0x6e>
 804968b:	eb ba                	jmp    8049647 <rio_readlineb+0x80>

0804968d <submitr>:
 804968d:	55                   	push   %ebp
 804968e:	89 e5                	mov    %esp,%ebp
 8049690:	57                   	push   %edi
 8049691:	56                   	push   %esi
 8049692:	53                   	push   %ebx
 8049693:	81 ec 5c a0 00 00    	sub    $0xa05c,%esp
 8049699:	8b 75 08             	mov    0x8(%ebp),%esi
 804969c:	c7 85 d4 7f ff ff 00 	movl   $0x0,-0x802c(%ebp)
 80496a3:	00 00 00 
 80496a6:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 80496ad:	00 
 80496ae:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 80496b5:	00 
 80496b6:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 80496bd:	e8 32 f2 ff ff       	call   80488f4 <socket@plt>
 80496c2:	89 85 c0 5f ff ff    	mov    %eax,-0xa040(%ebp)
 80496c8:	85 c0                	test   %eax,%eax
 80496ca:	79 51                	jns    804971d <submitr+0x90>
 80496cc:	8b 45 20             	mov    0x20(%ebp),%eax
 80496cf:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 80496d5:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 80496dc:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 80496e3:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 80496ea:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 80496f1:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 80496f8:	c7 40 18 63 72 65 61 	movl   $0x61657263,0x18(%eax)
 80496ff:	c7 40 1c 74 65 20 73 	movl   $0x73206574,0x1c(%eax)
 8049706:	c7 40 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%eax)
 804970d:	66 c7 40 24 74 00    	movw   $0x74,0x24(%eax)
 8049713:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049718:	e9 0d 06 00 00       	jmp    8049d2a <submitr+0x69d>
 804971d:	89 34 24             	mov    %esi,(%esp)
 8049720:	e8 bf f2 ff ff       	call   80489e4 <gethostbyname@plt>
 8049725:	89 c2                	mov    %eax,%edx
 8049727:	85 c0                	test   %eax,%eax
 8049729:	75 2f                	jne    804975a <submitr+0xcd>
 804972b:	89 74 24 08          	mov    %esi,0x8(%esp)
 804972f:	c7 44 24 04 7c a5 04 	movl   $0x804a57c,0x4(%esp)
 8049736:	08 
 8049737:	8b 55 20             	mov    0x20(%ebp),%edx
 804973a:	89 14 24             	mov    %edx,(%esp)
 804973d:	e8 d2 f0 ff ff       	call   8048814 <sprintf@plt>
 8049742:	8b 8d c0 5f ff ff    	mov    -0xa040(%ebp),%ecx
 8049748:	89 0c 24             	mov    %ecx,(%esp)
 804974b:	e8 24 f2 ff ff       	call   8048974 <close@plt>
 8049750:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049755:	e9 d0 05 00 00       	jmp    8049d2a <submitr+0x69d>
 804975a:	8d 5d e4             	lea    -0x1c(%ebp),%ebx
 804975d:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
 8049763:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
 804976a:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
 8049771:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
 8049778:	66 c7 45 e4 02 00    	movw   $0x2,-0x1c(%ebp)
 804977e:	8b 40 0c             	mov    0xc(%eax),%eax
 8049781:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049785:	8d 45 e8             	lea    -0x18(%ebp),%eax
 8049788:	89 44 24 04          	mov    %eax,0x4(%esp)
 804978c:	8b 42 10             	mov    0x10(%edx),%eax
 804978f:	8b 00                	mov    (%eax),%eax
 8049791:	89 04 24             	mov    %eax,(%esp)
 8049794:	e8 6b f1 ff ff       	call   8048904 <bcopy@plt>
 8049799:	0f b7 45 0c          	movzwl 0xc(%ebp),%eax
 804979d:	66 c1 c8 08          	ror    $0x8,%ax
 80497a1:	66 89 45 e6          	mov    %ax,-0x1a(%ebp)
 80497a5:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 80497ac:	00 
 80497ad:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 80497b1:	8b 85 c0 5f ff ff    	mov    -0xa040(%ebp),%eax
 80497b7:	89 04 24             	mov    %eax,(%esp)
 80497ba:	e8 75 f0 ff ff       	call   8048834 <connect@plt>
 80497bf:	85 c0                	test   %eax,%eax
 80497c1:	79 2f                	jns    80497f2 <submitr+0x165>
 80497c3:	89 74 24 08          	mov    %esi,0x8(%esp)
 80497c7:	c7 44 24 04 d4 a5 04 	movl   $0x804a5d4,0x4(%esp)
 80497ce:	08 
 80497cf:	8b 55 20             	mov    0x20(%ebp),%edx
 80497d2:	89 14 24             	mov    %edx,(%esp)
 80497d5:	e8 3a f0 ff ff       	call   8048814 <sprintf@plt>
 80497da:	8b 8d c0 5f ff ff    	mov    -0xa040(%ebp),%ecx
 80497e0:	89 0c 24             	mov    %ecx,(%esp)
 80497e3:	e8 8c f1 ff ff       	call   8048974 <close@plt>
 80497e8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80497ed:	e9 38 05 00 00       	jmp    8049d2a <submitr+0x69d>
 80497f2:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
 80497f7:	8b 7d 1c             	mov    0x1c(%ebp),%edi
 80497fa:	ba 00 00 00 00       	mov    $0x0,%edx
 80497ff:	89 d9                	mov    %ebx,%ecx
 8049801:	89 d0                	mov    %edx,%eax
 8049803:	f2 ae                	repnz scas %es:(%edi),%al
 8049805:	89 ce                	mov    %ecx,%esi
 8049807:	f7 d6                	not    %esi
 8049809:	89 b5 bc 5f ff ff    	mov    %esi,-0xa044(%ebp)
 804980f:	8b 7d 10             	mov    0x10(%ebp),%edi
 8049812:	89 d9                	mov    %ebx,%ecx
 8049814:	f2 ae                	repnz scas %es:(%edi),%al
 8049816:	89 ce                	mov    %ecx,%esi
 8049818:	8b 7d 14             	mov    0x14(%ebp),%edi
 804981b:	89 d9                	mov    %ebx,%ecx
 804981d:	f2 ae                	repnz scas %es:(%edi),%al
 804981f:	f7 d1                	not    %ecx
 8049821:	89 8d b8 5f ff ff    	mov    %ecx,-0xa048(%ebp)
 8049827:	8b 7d 18             	mov    0x18(%ebp),%edi
 804982a:	89 d9                	mov    %ebx,%ecx
 804982c:	f2 ae                	repnz scas %es:(%edi),%al
 804982e:	89 ca                	mov    %ecx,%edx
 8049830:	8b 8d b8 5f ff ff    	mov    -0xa048(%ebp),%ecx
 8049836:	29 f1                	sub    %esi,%ecx
 8049838:	29 d1                	sub    %edx,%ecx
 804983a:	8b 95 bc 5f ff ff    	mov    -0xa044(%ebp),%edx
 8049840:	8d 44 52 fd          	lea    -0x3(%edx,%edx,2),%eax
 8049844:	8d 4c 01 7b          	lea    0x7b(%ecx,%eax,1),%ecx
 8049848:	81 f9 00 20 00 00    	cmp    $0x2000,%ecx
 804984e:	76 7c                	jbe    80498cc <submitr+0x23f>
 8049850:	8b 4d 20             	mov    0x20(%ebp),%ecx
 8049853:	c7 01 45 72 72 6f    	movl   $0x6f727245,(%ecx)
 8049859:	c7 41 04 72 3a 20 52 	movl   $0x52203a72,0x4(%ecx)
 8049860:	c7 41 08 65 73 75 6c 	movl   $0x6c757365,0x8(%ecx)
 8049867:	c7 41 0c 74 20 73 74 	movl   $0x74732074,0xc(%ecx)
 804986e:	c7 41 10 72 69 6e 67 	movl   $0x676e6972,0x10(%ecx)
 8049875:	c7 41 14 20 74 6f 6f 	movl   $0x6f6f7420,0x14(%ecx)
 804987c:	c7 41 18 20 6c 61 72 	movl   $0x72616c20,0x18(%ecx)
 8049883:	c7 41 1c 67 65 2e 20 	movl   $0x202e6567,0x1c(%ecx)
 804988a:	c7 41 20 49 6e 63 72 	movl   $0x72636e49,0x20(%ecx)
 8049891:	c7 41 24 65 61 73 65 	movl   $0x65736165,0x24(%ecx)
 8049898:	c7 41 28 20 53 55 42 	movl   $0x42555320,0x28(%ecx)
 804989f:	c7 41 2c 4d 49 54 52 	movl   $0x5254494d,0x2c(%ecx)
 80498a6:	c7 41 30 5f 4d 41 58 	movl   $0x58414d5f,0x30(%ecx)
 80498ad:	c7 41 34 42 55 46 00 	movl   $0x465542,0x34(%ecx)
 80498b4:	8b 85 c0 5f ff ff    	mov    -0xa040(%ebp),%eax
 80498ba:	89 04 24             	mov    %eax,(%esp)
 80498bd:	e8 b2 f0 ff ff       	call   8048974 <close@plt>
 80498c2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80498c7:	e9 5e 04 00 00       	jmp    8049d2a <submitr+0x69d>
 80498cc:	8d bd d8 9f ff ff    	lea    -0x6028(%ebp),%edi
 80498d2:	b9 00 08 00 00       	mov    $0x800,%ecx
 80498d7:	b8 00 00 00 00       	mov    $0x0,%eax
 80498dc:	f3 ab                	rep stos %eax,%es:(%edi)
 80498de:	8b 7d 1c             	mov    0x1c(%ebp),%edi
 80498e1:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 80498e6:	f2 ae                	repnz scas %es:(%edi),%al
 80498e8:	f7 d1                	not    %ecx
 80498ea:	89 cf                	mov    %ecx,%edi
 80498ec:	83 ef 01             	sub    $0x1,%edi
 80498ef:	0f 84 40 04 00 00    	je     8049d35 <submitr+0x6a8>
 80498f5:	8d 9d d8 9f ff ff    	lea    -0x6028(%ebp),%ebx
 80498fb:	be 00 00 00 00       	mov    $0x0,%esi
 8049900:	8b 4d 1c             	mov    0x1c(%ebp),%ecx
 8049903:	0f b6 14 31          	movzbl (%ecx,%esi,1),%edx
 8049907:	80 fa 2a             	cmp    $0x2a,%dl
 804990a:	74 24                	je     8049930 <submitr+0x2a3>
 804990c:	80 fa 2d             	cmp    $0x2d,%dl
 804990f:	74 1f                	je     8049930 <submitr+0x2a3>
 8049911:	80 fa 2e             	cmp    $0x2e,%dl
 8049914:	74 1a                	je     8049930 <submitr+0x2a3>
 8049916:	80 fa 5f             	cmp    $0x5f,%dl
 8049919:	74 15                	je     8049930 <submitr+0x2a3>
 804991b:	8d 42 d0             	lea    -0x30(%edx),%eax
 804991e:	3c 09                	cmp    $0x9,%al
 8049920:	76 0e                	jbe    8049930 <submitr+0x2a3>
 8049922:	8d 42 bf             	lea    -0x41(%edx),%eax
 8049925:	3c 19                	cmp    $0x19,%al
 8049927:	76 07                	jbe    8049930 <submitr+0x2a3>
 8049929:	8d 42 9f             	lea    -0x61(%edx),%eax
 804992c:	3c 19                	cmp    $0x19,%al
 804992e:	77 07                	ja     8049937 <submitr+0x2aa>
 8049930:	88 13                	mov    %dl,(%ebx)
 8049932:	83 c3 01             	add    $0x1,%ebx
 8049935:	eb 56                	jmp    804998d <submitr+0x300>
 8049937:	80 fa 20             	cmp    $0x20,%dl
 804993a:	75 08                	jne    8049944 <submitr+0x2b7>
 804993c:	c6 03 2b             	movb   $0x2b,(%ebx)
 804993f:	83 c3 01             	add    $0x1,%ebx
 8049942:	eb 49                	jmp    804998d <submitr+0x300>
 8049944:	8d 42 e0             	lea    -0x20(%edx),%eax
 8049947:	3c 5f                	cmp    $0x5f,%al
 8049949:	76 05                	jbe    8049950 <submitr+0x2c3>
 804994b:	80 fa 09             	cmp    $0x9,%dl
 804994e:	75 4d                	jne    804999d <submitr+0x310>
 8049950:	0f b6 c2             	movzbl %dl,%eax
 8049953:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049957:	c7 44 24 04 3d a5 04 	movl   $0x804a53d,0x4(%esp)
 804995e:	08 
 804995f:	8d 85 cc 5f ff ff    	lea    -0xa034(%ebp),%eax
 8049965:	89 04 24             	mov    %eax,(%esp)
 8049968:	e8 a7 ee ff ff       	call   8048814 <sprintf@plt>
 804996d:	0f b6 85 cc 5f ff ff 	movzbl -0xa034(%ebp),%eax
 8049974:	88 03                	mov    %al,(%ebx)
 8049976:	0f b6 85 cd 5f ff ff 	movzbl -0xa033(%ebp),%eax
 804997d:	88 43 01             	mov    %al,0x1(%ebx)
 8049980:	0f b6 85 ce 5f ff ff 	movzbl -0xa032(%ebp),%eax
 8049987:	88 43 02             	mov    %al,0x2(%ebx)
 804998a:	83 c3 03             	add    $0x3,%ebx
 804998d:	83 c6 01             	add    $0x1,%esi
 8049990:	39 fe                	cmp    %edi,%esi
 8049992:	0f 85 68 ff ff ff    	jne    8049900 <submitr+0x273>
 8049998:	e9 98 03 00 00       	jmp    8049d35 <submitr+0x6a8>
 804999d:	be fc a5 04 08       	mov    $0x804a5fc,%esi
 80499a2:	b9 10 00 00 00       	mov    $0x10,%ecx
 80499a7:	8b 7d 20             	mov    0x20(%ebp),%edi
 80499aa:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 80499ac:	0f b7 06             	movzwl (%esi),%eax
 80499af:	66 89 07             	mov    %ax,(%edi)
 80499b2:	0f b6 05 3e a6 04 08 	movzbl 0x804a63e,%eax
 80499b9:	88 47 02             	mov    %al,0x2(%edi)
 80499bc:	8b 95 c0 5f ff ff    	mov    -0xa040(%ebp),%edx
 80499c2:	89 14 24             	mov    %edx,(%esp)
 80499c5:	e8 aa ef ff ff       	call   8048974 <close@plt>
 80499ca:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80499cf:	e9 56 03 00 00       	jmp    8049d2a <submitr+0x69d>
 80499d4:	01 c6                	add    %eax,%esi
 80499d6:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 80499da:	89 74 24 04          	mov    %esi,0x4(%esp)
 80499de:	8b 8d c0 5f ff ff    	mov    -0xa040(%ebp),%ecx
 80499e4:	89 0c 24             	mov    %ecx,(%esp)
 80499e7:	e8 b8 ee ff ff       	call   80488a4 <write@plt>
 80499ec:	85 c0                	test   %eax,%eax
 80499ee:	7f 0f                	jg     80499ff <submitr+0x372>
 80499f0:	e8 0f ee ff ff       	call   8048804 <__errno_location@plt>
 80499f5:	83 38 04             	cmpl   $0x4,(%eax)
 80499f8:	75 0d                	jne    8049a07 <submitr+0x37a>
 80499fa:	b8 00 00 00 00       	mov    $0x0,%eax
 80499ff:	29 c3                	sub    %eax,%ebx
 8049a01:	75 d1                	jne    80499d4 <submitr+0x347>
 8049a03:	85 ff                	test   %edi,%edi
 8049a05:	79 67                	jns    8049a6e <submitr+0x3e1>
 8049a07:	8b 45 20             	mov    0x20(%ebp),%eax
 8049a0a:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049a10:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049a17:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049a1e:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049a25:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049a2c:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049a33:	c7 40 18 77 72 69 74 	movl   $0x74697277,0x18(%eax)
 8049a3a:	c7 40 1c 65 20 74 6f 	movl   $0x6f742065,0x1c(%eax)
 8049a41:	c7 40 20 20 74 68 65 	movl   $0x65687420,0x20(%eax)
 8049a48:	c7 40 24 20 73 65 72 	movl   $0x72657320,0x24(%eax)
 8049a4f:	c7 40 28 76 65 72 00 	movl   $0x726576,0x28(%eax)
 8049a56:	8b 95 c0 5f ff ff    	mov    -0xa040(%ebp),%edx
 8049a5c:	89 14 24             	mov    %edx,(%esp)
 8049a5f:	e8 10 ef ff ff       	call   8048974 <close@plt>
 8049a64:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049a69:	e9 bc 02 00 00       	jmp    8049d2a <submitr+0x69d>
 8049a6e:	8b 8d c0 5f ff ff    	mov    -0xa040(%ebp),%ecx
 8049a74:	89 8d d8 df ff ff    	mov    %ecx,-0x2028(%ebp)
 8049a7a:	c7 85 dc df ff ff 00 	movl   $0x0,-0x2024(%ebp)
 8049a81:	00 00 00 
 8049a84:	8d 85 d8 df ff ff    	lea    -0x2028(%ebp),%eax
 8049a8a:	8d 95 e4 df ff ff    	lea    -0x201c(%ebp),%edx
 8049a90:	89 95 e0 df ff ff    	mov    %edx,-0x2020(%ebp)
 8049a96:	8d 95 d8 bf ff ff    	lea    -0x4028(%ebp),%edx
 8049a9c:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049aa1:	e8 21 fb ff ff       	call   80495c7 <rio_readlineb>
 8049aa6:	85 c0                	test   %eax,%eax
 8049aa8:	7f 7b                	jg     8049b25 <submitr+0x498>
 8049aaa:	8b 45 20             	mov    0x20(%ebp),%eax
 8049aad:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049ab3:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049aba:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049ac1:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049ac8:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049acf:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049ad6:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 8049add:	c7 40 1c 20 66 69 72 	movl   $0x72696620,0x1c(%eax)
 8049ae4:	c7 40 20 73 74 20 68 	movl   $0x68207473,0x20(%eax)
 8049aeb:	c7 40 24 65 61 64 65 	movl   $0x65646165,0x24(%eax)
 8049af2:	c7 40 28 72 20 66 72 	movl   $0x72662072,0x28(%eax)
 8049af9:	c7 40 2c 6f 6d 20 73 	movl   $0x73206d6f,0x2c(%eax)
 8049b00:	c7 40 30 65 72 76 65 	movl   $0x65767265,0x30(%eax)
 8049b07:	66 c7 40 34 72 00    	movw   $0x72,0x34(%eax)
 8049b0d:	8b 95 c0 5f ff ff    	mov    -0xa040(%ebp),%edx
 8049b13:	89 14 24             	mov    %edx,(%esp)
 8049b16:	e8 59 ee ff ff       	call   8048974 <close@plt>
 8049b1b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049b20:	e9 05 02 00 00       	jmp    8049d2a <submitr+0x69d>
 8049b25:	8d 85 d4 5f ff ff    	lea    -0xa02c(%ebp),%eax
 8049b2b:	89 44 24 10          	mov    %eax,0x10(%esp)
 8049b2f:	8d 85 d4 7f ff ff    	lea    -0x802c(%ebp),%eax
 8049b35:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049b39:	8d 85 d8 7f ff ff    	lea    -0x8028(%ebp),%eax
 8049b3f:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049b43:	c7 44 24 04 44 a5 04 	movl   $0x804a544,0x4(%esp)
 8049b4a:	08 
 8049b4b:	8d 85 d8 bf ff ff    	lea    -0x4028(%ebp),%eax
 8049b51:	89 04 24             	mov    %eax,(%esp)
 8049b54:	e8 6b ee ff ff       	call   80489c4 <sscanf@plt>
 8049b59:	8b 95 d4 7f ff ff    	mov    -0x802c(%ebp),%edx
 8049b5f:	8d 9d d8 bf ff ff    	lea    -0x4028(%ebp),%ebx
 8049b65:	8d b5 d8 df ff ff    	lea    -0x2028(%ebp),%esi
 8049b6b:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
 8049b71:	0f 84 bd 00 00 00    	je     8049c34 <submitr+0x5a7>
 8049b77:	8d 85 d4 5f ff ff    	lea    -0xa02c(%ebp),%eax
 8049b7d:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049b81:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049b85:	c7 44 24 04 40 a6 04 	movl   $0x804a640,0x4(%esp)
 8049b8c:	08 
 8049b8d:	8b 4d 20             	mov    0x20(%ebp),%ecx
 8049b90:	89 0c 24             	mov    %ecx,(%esp)
 8049b93:	e8 7c ec ff ff       	call   8048814 <sprintf@plt>
 8049b98:	8b 85 c0 5f ff ff    	mov    -0xa040(%ebp),%eax
 8049b9e:	89 04 24             	mov    %eax,(%esp)
 8049ba1:	e8 ce ed ff ff       	call   8048974 <close@plt>
 8049ba6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049bab:	e9 7a 01 00 00       	jmp    8049d2a <submitr+0x69d>
 8049bb0:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049bb5:	89 da                	mov    %ebx,%edx
 8049bb7:	89 f0                	mov    %esi,%eax
 8049bb9:	e8 09 fa ff ff       	call   80495c7 <rio_readlineb>
 8049bbe:	85 c0                	test   %eax,%eax
 8049bc0:	7f 72                	jg     8049c34 <submitr+0x5a7>
 8049bc2:	8b 55 20             	mov    0x20(%ebp),%edx
 8049bc5:	c7 02 45 72 72 6f    	movl   $0x6f727245,(%edx)
 8049bcb:	c7 42 04 72 3a 20 43 	movl   $0x43203a72,0x4(%edx)
 8049bd2:	c7 42 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%edx)
 8049bd9:	c7 42 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%edx)
 8049be0:	c7 42 10 61 62 6c 65 	movl   $0x656c6261,0x10(%edx)
 8049be7:	c7 42 14 20 74 6f 20 	movl   $0x206f7420,0x14(%edx)
 8049bee:	c7 42 18 72 65 61 64 	movl   $0x64616572,0x18(%edx)
 8049bf5:	c7 42 1c 20 68 65 61 	movl   $0x61656820,0x1c(%edx)
 8049bfc:	c7 42 20 64 65 72 73 	movl   $0x73726564,0x20(%edx)
 8049c03:	c7 42 24 20 66 72 6f 	movl   $0x6f726620,0x24(%edx)
 8049c0a:	c7 42 28 6d 20 73 65 	movl   $0x6573206d,0x28(%edx)
 8049c11:	c7 42 2c 72 76 65 72 	movl   $0x72657672,0x2c(%edx)
 8049c18:	c6 42 30 00          	movb   $0x0,0x30(%edx)
 8049c1c:	8b 8d c0 5f ff ff    	mov    -0xa040(%ebp),%ecx
 8049c22:	89 0c 24             	mov    %ecx,(%esp)
 8049c25:	e8 4a ed ff ff       	call   8048974 <close@plt>
 8049c2a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049c2f:	e9 f6 00 00 00       	jmp    8049d2a <submitr+0x69d>
 8049c34:	80 3b 0d             	cmpb   $0xd,(%ebx)
 8049c37:	0f 85 73 ff ff ff    	jne    8049bb0 <submitr+0x523>
 8049c3d:	80 7b 01 0a          	cmpb   $0xa,0x1(%ebx)
 8049c41:	0f 85 69 ff ff ff    	jne    8049bb0 <submitr+0x523>
 8049c47:	80 7b 02 00          	cmpb   $0x0,0x2(%ebx)
 8049c4b:	90                   	nop
 8049c4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049c50:	0f 85 5a ff ff ff    	jne    8049bb0 <submitr+0x523>
 8049c56:	8d 95 d8 bf ff ff    	lea    -0x4028(%ebp),%edx
 8049c5c:	8d 85 d8 df ff ff    	lea    -0x2028(%ebp),%eax
 8049c62:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049c67:	e8 5b f9 ff ff       	call   80495c7 <rio_readlineb>
 8049c6c:	85 c0                	test   %eax,%eax
 8049c6e:	7f 79                	jg     8049ce9 <submitr+0x65c>
 8049c70:	8b 45 20             	mov    0x20(%ebp),%eax
 8049c73:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049c79:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
 8049c80:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
 8049c87:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
 8049c8e:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 8049c95:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 8049c9c:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
 8049ca3:	c7 40 1c 20 73 74 61 	movl   $0x61747320,0x1c(%eax)
 8049caa:	c7 40 20 74 75 73 20 	movl   $0x20737574,0x20(%eax)
 8049cb1:	c7 40 24 6d 65 73 73 	movl   $0x7373656d,0x24(%eax)
 8049cb8:	c7 40 28 61 67 65 20 	movl   $0x20656761,0x28(%eax)
 8049cbf:	c7 40 2c 66 72 6f 6d 	movl   $0x6d6f7266,0x2c(%eax)
 8049cc6:	c7 40 30 20 73 65 72 	movl   $0x72657320,0x30(%eax)
 8049ccd:	c7 40 34 76 65 72 00 	movl   $0x726576,0x34(%eax)
 8049cd4:	8b 95 c0 5f ff ff    	mov    -0xa040(%ebp),%edx
 8049cda:	89 14 24             	mov    %edx,(%esp)
 8049cdd:	e8 92 ec ff ff       	call   8048974 <close@plt>
 8049ce2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049ce7:	eb 41                	jmp    8049d2a <submitr+0x69d>
 8049ce9:	8d 85 d8 bf ff ff    	lea    -0x4028(%ebp),%eax
 8049cef:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049cf3:	8b 4d 20             	mov    0x20(%ebp),%ecx
 8049cf6:	89 0c 24             	mov    %ecx,(%esp)
 8049cf9:	e8 36 ec ff ff       	call   8048934 <strcpy@plt>
 8049cfe:	8b 85 c0 5f ff ff    	mov    -0xa040(%ebp),%eax
 8049d04:	89 04 24             	mov    %eax,(%esp)
 8049d07:	e8 68 ec ff ff       	call   8048974 <close@plt>
 8049d0c:	8b 55 20             	mov    0x20(%ebp),%edx
 8049d0f:	80 3a 4f             	cmpb   $0x4f,(%edx)
 8049d12:	75 11                	jne    8049d25 <submitr+0x698>
 8049d14:	80 7a 01 4b          	cmpb   $0x4b,0x1(%edx)
 8049d18:	75 0b                	jne    8049d25 <submitr+0x698>
 8049d1a:	b8 00 00 00 00       	mov    $0x0,%eax
 8049d1f:	80 7a 02 00          	cmpb   $0x0,0x2(%edx)
 8049d23:	74 05                	je     8049d2a <submitr+0x69d>
 8049d25:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049d2a:	81 c4 5c a0 00 00    	add    $0xa05c,%esp
 8049d30:	5b                   	pop    %ebx
 8049d31:	5e                   	pop    %esi
 8049d32:	5f                   	pop    %edi
 8049d33:	5d                   	pop    %ebp
 8049d34:	c3                   	ret    
 8049d35:	8d 85 d8 9f ff ff    	lea    -0x6028(%ebp),%eax
 8049d3b:	89 44 24 14          	mov    %eax,0x14(%esp)
 8049d3f:	8b 55 18             	mov    0x18(%ebp),%edx
 8049d42:	89 54 24 10          	mov    %edx,0x10(%esp)
 8049d46:	8b 4d 14             	mov    0x14(%ebp),%ecx
 8049d49:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
 8049d4d:	8b 45 10             	mov    0x10(%ebp),%eax
 8049d50:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049d54:	c7 44 24 04 70 a6 04 	movl   $0x804a670,0x4(%esp)
 8049d5b:	08 
 8049d5c:	8d bd d8 bf ff ff    	lea    -0x4028(%ebp),%edi
 8049d62:	89 3c 24             	mov    %edi,(%esp)
 8049d65:	e8 aa ea ff ff       	call   8048814 <sprintf@plt>
 8049d6a:	b8 00 00 00 00       	mov    $0x0,%eax
 8049d6f:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049d74:	f2 ae                	repnz scas %es:(%edi),%al
 8049d76:	f7 d1                	not    %ecx
 8049d78:	89 cf                	mov    %ecx,%edi
 8049d7a:	83 ef 01             	sub    $0x1,%edi
 8049d7d:	0f 84 eb fc ff ff    	je     8049a6e <submitr+0x3e1>
 8049d83:	89 fb                	mov    %edi,%ebx
 8049d85:	8d b5 d8 bf ff ff    	lea    -0x4028(%ebp),%esi
 8049d8b:	e9 46 fc ff ff       	jmp    80499d6 <submitr+0x349>

08049d90 <driver_post>:
 8049d90:	55                   	push   %ebp
 8049d91:	89 e5                	mov    %esp,%ebp
 8049d93:	53                   	push   %ebx
 8049d94:	83 ec 24             	sub    $0x24,%esp
 8049d97:	8b 45 08             	mov    0x8(%ebp),%eax
 8049d9a:	8b 5d 14             	mov    0x14(%ebp),%ebx
 8049d9d:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
 8049da1:	74 23                	je     8049dc6 <driver_post+0x36>
 8049da3:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049da6:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049daa:	c7 04 24 55 a5 04 08 	movl   $0x804a555,(%esp)
 8049db1:	e8 8e eb ff ff       	call   8048944 <printf@plt>
 8049db6:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
 8049dbb:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 8049dbf:	b8 00 00 00 00       	mov    $0x0,%eax
 8049dc4:	eb 4c                	jmp    8049e12 <driver_post+0x82>
 8049dc6:	85 c0                	test   %eax,%eax
 8049dc8:	74 3a                	je     8049e04 <driver_post+0x74>
 8049dca:	80 38 00             	cmpb   $0x0,(%eax)
 8049dcd:	74 35                	je     8049e04 <driver_post+0x74>
 8049dcf:	89 5c 24 18          	mov    %ebx,0x18(%esp)
 8049dd3:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049dd6:	89 54 24 14          	mov    %edx,0x14(%esp)
 8049dda:	c7 44 24 10 6c a5 04 	movl   $0x804a56c,0x10(%esp)
 8049de1:	08 
 8049de2:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049de6:	c7 44 24 08 73 a5 04 	movl   $0x804a573,0x8(%esp)
 8049ded:	08 
 8049dee:	c7 44 24 04 26 47 00 	movl   $0x4726,0x4(%esp)
 8049df5:	00 
 8049df6:	c7 04 24 24 a5 04 08 	movl   $0x804a524,(%esp)
 8049dfd:	e8 8b f8 ff ff       	call   804968d <submitr>
 8049e02:	eb 0e                	jmp    8049e12 <driver_post+0x82>
 8049e04:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
 8049e09:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 8049e0d:	b8 00 00 00 00       	mov    $0x0,%eax
 8049e12:	83 c4 24             	add    $0x24,%esp
 8049e15:	5b                   	pop    %ebx
 8049e16:	5d                   	pop    %ebp
 8049e17:	c3                   	ret    

08049e18 <sigalrm_handler>:
 8049e18:	55                   	push   %ebp
 8049e19:	89 e5                	mov    %esp,%ebp
 8049e1b:	83 ec 08             	sub    $0x8,%esp
 8049e1e:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
 8049e25:	00 
 8049e26:	c7 04 24 bc a6 04 08 	movl   $0x804a6bc,(%esp)
 8049e2d:	e8 12 eb ff ff       	call   8048944 <printf@plt>
 8049e32:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049e39:	e8 c6 eb ff ff       	call   8048a04 <exit@plt>
 8049e3e:	90                   	nop
 8049e3f:	90                   	nop

08049e40 <hash>:
 8049e40:	55                   	push   %ebp
 8049e41:	89 e5                	mov    %esp,%ebp
 8049e43:	8b 4d 08             	mov    0x8(%ebp),%ecx
 8049e46:	0f b6 01             	movzbl (%ecx),%eax
 8049e49:	ba 00 00 00 00       	mov    $0x0,%edx
 8049e4e:	84 c0                	test   %al,%al
 8049e50:	74 13                	je     8049e65 <hash+0x25>
 8049e52:	6b d2 67             	imul   $0x67,%edx,%edx
 8049e55:	0f be c0             	movsbl %al,%eax
 8049e58:	8d 14 10             	lea    (%eax,%edx,1),%edx
 8049e5b:	83 c1 01             	add    $0x1,%ecx
 8049e5e:	0f b6 01             	movzbl (%ecx),%eax
 8049e61:	84 c0                	test   %al,%al
 8049e63:	75 ed                	jne    8049e52 <hash+0x12>
 8049e65:	89 d0                	mov    %edx,%eax
 8049e67:	5d                   	pop    %ebp
 8049e68:	c3                   	ret    

08049e69 <check>:
 8049e69:	55                   	push   %ebp
 8049e6a:	89 e5                	mov    %esp,%ebp
 8049e6c:	8b 55 08             	mov    0x8(%ebp),%edx
 8049e6f:	89 d0                	mov    %edx,%eax
 8049e71:	c1 e8 1c             	shr    $0x1c,%eax
 8049e74:	85 c0                	test   %eax,%eax
 8049e76:	74 1c                	je     8049e94 <check+0x2b>
 8049e78:	b9 00 00 00 00       	mov    $0x0,%ecx
 8049e7d:	89 d0                	mov    %edx,%eax
 8049e7f:	d3 e8                	shr    %cl,%eax
 8049e81:	3c 0a                	cmp    $0xa,%al
 8049e83:	74 0f                	je     8049e94 <check+0x2b>
 8049e85:	83 c1 08             	add    $0x8,%ecx
 8049e88:	83 f9 20             	cmp    $0x20,%ecx
 8049e8b:	75 f0                	jne    8049e7d <check+0x14>
 8049e8d:	b8 01 00 00 00       	mov    $0x1,%eax
 8049e92:	eb 05                	jmp    8049e99 <check+0x30>
 8049e94:	b8 00 00 00 00       	mov    $0x0,%eax
 8049e99:	5d                   	pop    %ebp
 8049e9a:	c3                   	ret    

08049e9b <gencookie>:
 8049e9b:	55                   	push   %ebp
 8049e9c:	89 e5                	mov    %esp,%ebp
 8049e9e:	53                   	push   %ebx
 8049e9f:	83 ec 04             	sub    $0x4,%esp
 8049ea2:	8b 45 08             	mov    0x8(%ebp),%eax
 8049ea5:	89 04 24             	mov    %eax,(%esp)
 8049ea8:	e8 93 ff ff ff       	call   8049e40 <hash>
 8049ead:	89 04 24             	mov    %eax,(%esp)
 8049eb0:	e8 6f e9 ff ff       	call   8048824 <srand@plt>
 8049eb5:	e8 fa ea ff ff       	call   80489b4 <rand@plt>
 8049eba:	89 c3                	mov    %eax,%ebx
 8049ebc:	89 04 24             	mov    %eax,(%esp)
 8049ebf:	e8 a5 ff ff ff       	call   8049e69 <check>
 8049ec4:	85 c0                	test   %eax,%eax
 8049ec6:	74 ed                	je     8049eb5 <gencookie+0x1a>
 8049ec8:	89 d8                	mov    %ebx,%eax
 8049eca:	83 c4 04             	add    $0x4,%esp
 8049ecd:	5b                   	pop    %ebx
 8049ece:	5d                   	pop    %ebp
 8049ecf:	c3                   	ret    

08049ed0 <__libc_csu_fini>:
 8049ed0:	55                   	push   %ebp
 8049ed1:	89 e5                	mov    %esp,%ebp
 8049ed3:	5d                   	pop    %ebp
 8049ed4:	c3                   	ret    
 8049ed5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049ed9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08049ee0 <__libc_csu_init>:
 8049ee0:	55                   	push   %ebp
 8049ee1:	89 e5                	mov    %esp,%ebp
 8049ee3:	57                   	push   %edi
 8049ee4:	56                   	push   %esi
 8049ee5:	53                   	push   %ebx
 8049ee6:	e8 5e 00 00 00       	call   8049f49 <__i686.get_pc_thunk.bx>
 8049eeb:	81 c3 f5 11 00 00    	add    $0x11f5,%ebx
 8049ef1:	83 ec 1c             	sub    $0x1c,%esp
 8049ef4:	e8 e3 e8 ff ff       	call   80487dc <_init>
 8049ef9:	8d 83 20 ff ff ff    	lea    -0xe0(%ebx),%eax
 8049eff:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049f02:	8d 83 20 ff ff ff    	lea    -0xe0(%ebx),%eax
 8049f08:	29 45 f0             	sub    %eax,-0x10(%ebp)
 8049f0b:	c1 7d f0 02          	sarl   $0x2,-0x10(%ebp)
 8049f0f:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8049f12:	85 d2                	test   %edx,%edx
 8049f14:	74 2b                	je     8049f41 <__libc_csu_init+0x61>
 8049f16:	31 ff                	xor    %edi,%edi
 8049f18:	89 c6                	mov    %eax,%esi
 8049f1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049f20:	8b 45 10             	mov    0x10(%ebp),%eax
 8049f23:	83 c7 01             	add    $0x1,%edi
 8049f26:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049f2a:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049f2d:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049f31:	8b 45 08             	mov    0x8(%ebp),%eax
 8049f34:	89 04 24             	mov    %eax,(%esp)
 8049f37:	ff 16                	call   *(%esi)
 8049f39:	83 c6 04             	add    $0x4,%esi
 8049f3c:	39 7d f0             	cmp    %edi,-0x10(%ebp)
 8049f3f:	75 df                	jne    8049f20 <__libc_csu_init+0x40>
 8049f41:	83 c4 1c             	add    $0x1c,%esp
 8049f44:	5b                   	pop    %ebx
 8049f45:	5e                   	pop    %esi
 8049f46:	5f                   	pop    %edi
 8049f47:	5d                   	pop    %ebp
 8049f48:	c3                   	ret    

08049f49 <__i686.get_pc_thunk.bx>:
 8049f49:	8b 1c 24             	mov    (%esp),%ebx
 8049f4c:	c3                   	ret    
 8049f4d:	90                   	nop
 8049f4e:	90                   	nop
 8049f4f:	90                   	nop

08049f50 <__do_global_ctors_aux>:
 8049f50:	55                   	push   %ebp
 8049f51:	89 e5                	mov    %esp,%ebp
 8049f53:	53                   	push   %ebx
 8049f54:	83 ec 04             	sub    $0x4,%esp
 8049f57:	a1 00 b0 04 08       	mov    0x804b000,%eax
 8049f5c:	83 f8 ff             	cmp    $0xffffffff,%eax
 8049f5f:	74 13                	je     8049f74 <__do_global_ctors_aux+0x24>
 8049f61:	bb 00 b0 04 08       	mov    $0x804b000,%ebx
 8049f66:	66 90                	xchg   %ax,%ax
 8049f68:	83 eb 04             	sub    $0x4,%ebx
 8049f6b:	ff d0                	call   *%eax
 8049f6d:	8b 03                	mov    (%ebx),%eax
 8049f6f:	83 f8 ff             	cmp    $0xffffffff,%eax
 8049f72:	75 f4                	jne    8049f68 <__do_global_ctors_aux+0x18>
 8049f74:	83 c4 04             	add    $0x4,%esp
 8049f77:	5b                   	pop    %ebx
 8049f78:	5d                   	pop    %ebp
 8049f79:	c3                   	ret    
 8049f7a:	90                   	nop
 8049f7b:	90                   	nop

Disassembly of section .fini:

08049f7c <_fini>:
 8049f7c:	55                   	push   %ebp
 8049f7d:	89 e5                	mov    %esp,%ebp
 8049f7f:	53                   	push   %ebx
 8049f80:	83 ec 04             	sub    $0x4,%esp
 8049f83:	e8 00 00 00 00       	call   8049f88 <_fini+0xc>
 8049f88:	5b                   	pop    %ebx
 8049f89:	81 c3 58 11 00 00    	add    $0x1158,%ebx
 8049f8f:	e8 dc ea ff ff       	call   8048a70 <__do_global_dtors_aux>
 8049f94:	59                   	pop    %ecx
 8049f95:	5b                   	pop    %ebx
 8049f96:	c9                   	leave  
 8049f97:	c3                   	ret    
