	.text
	.file	"example1.c"
	.globl	test                            # -- Begin function test
	.p2align	4, 0x90
	.type	test,@function
test:                                   # @test
.Lfunc_begin0:
	.file	0 "/home/ywhan/Code/loop_vectorization/recitation3" "example1.c" md5 0x0585044a2df4eba681dcc161f25d791c
	.loc	0 9 0                           # example1.c:9:0
	.cfi_startproc
# %bb.0:
	#DEBUG_VALUE: test:a <- $rdi
	#DEBUG_VALUE: test:b <- $rsi
	#DEBUG_VALUE: test:i <- 0
	.loc	0 12 3 prologue_end             # example1.c:12:3
	leaq	65536(%rsi), %rax
	cmpq	%rdi, %rax
	jbe	.LBB0_2
.Ltmp0:
# %bb.1:
	#DEBUG_VALUE: test:a <- $rdi
	#DEBUG_VALUE: test:b <- $rsi
	#DEBUG_VALUE: test:i <- 0
	leaq	65536(%rdi), %rax
	cmpq	%rsi, %rax
	jbe	.LBB0_2
.Ltmp1:
# %bb.4:
	#DEBUG_VALUE: test:a <- $rdi
	#DEBUG_VALUE: test:b <- $rsi
	#DEBUG_VALUE: test:i <- 0
	.loc	0 0 3 is_stmt 0                 # example1.c:0:3
	xorl	%eax, %eax
.Ltmp2:
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: test:a <- $rdi
	#DEBUG_VALUE: test:b <- $rsi
	#DEBUG_VALUE: test:i <- $rax
	.loc	0 13 13 is_stmt 1               # example1.c:13:13
	movzbl	(%rsi,%rax), %ecx
	.loc	0 13 10 is_stmt 0               # example1.c:13:10
	addb	%cl, (%rdi,%rax)
.Ltmp3:
	#DEBUG_VALUE: test:i <- [DW_OP_constu 1, DW_OP_or, DW_OP_stack_value] $rax
	#DEBUG_VALUE: test:i <- [DW_OP_constu 1, DW_OP_or, DW_OP_stack_value] $rax
	.loc	0 13 13                         # example1.c:13:13
	movzbl	1(%rsi,%rax), %ecx
	.loc	0 13 10                         # example1.c:13:10
	addb	%cl, 1(%rdi,%rax)
.Ltmp4:
	#DEBUG_VALUE: test:i <- [DW_OP_constu 2, DW_OP_or, DW_OP_stack_value] $rax
	#DEBUG_VALUE: test:i <- [DW_OP_constu 2, DW_OP_or, DW_OP_stack_value] $rax
	.loc	0 13 13                         # example1.c:13:13
	movzbl	2(%rsi,%rax), %ecx
	.loc	0 13 10                         # example1.c:13:10
	addb	%cl, 2(%rdi,%rax)
.Ltmp5:
	#DEBUG_VALUE: test:i <- [DW_OP_constu 3, DW_OP_or, DW_OP_stack_value] $rax
	#DEBUG_VALUE: test:i <- [DW_OP_constu 3, DW_OP_or, DW_OP_stack_value] $rax
	.loc	0 13 13                         # example1.c:13:13
	movzbl	3(%rsi,%rax), %ecx
	.loc	0 13 10                         # example1.c:13:10
	addb	%cl, 3(%rdi,%rax)
.Ltmp6:
	.loc	0 12 26 is_stmt 1               # example1.c:12:26
	addq	$4, %rax
.Ltmp7:
	#DEBUG_VALUE: test:i <- $rax
	.loc	0 12 17 is_stmt 0               # example1.c:12:17
	cmpq	$65536, %rax                    # imm = 0x10000
.Ltmp8:
	.loc	0 12 3                          # example1.c:12:3
	jne	.LBB0_5
	jmp	.LBB0_6
.Ltmp9:
.LBB0_2:
	#DEBUG_VALUE: test:a <- $rdi
	#DEBUG_VALUE: test:b <- $rsi
	#DEBUG_VALUE: test:i <- 0
	.loc	0 0 3                           # example1.c:0:3
	xorl	%eax, %eax
.Ltmp10:
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: test:a <- $rdi
	#DEBUG_VALUE: test:b <- $rsi
	#DEBUG_VALUE: test:i <- 0
	.loc	0 13 13 is_stmt 1               # example1.c:13:13
	movdqu	(%rsi,%rax), %xmm0
	movdqu	16(%rsi,%rax), %xmm1
	.loc	0 13 10 is_stmt 0               # example1.c:13:10
	movdqu	(%rdi,%rax), %xmm2
	paddb	%xmm0, %xmm2
	movdqu	16(%rdi,%rax), %xmm0
	paddb	%xmm1, %xmm0
	movdqu	32(%rdi,%rax), %xmm1
	movdqu	48(%rdi,%rax), %xmm3
	movdqu	%xmm2, (%rdi,%rax)
	movdqu	%xmm0, 16(%rdi,%rax)
	.loc	0 13 13                         # example1.c:13:13
	movdqu	32(%rsi,%rax), %xmm0
	.loc	0 13 10                         # example1.c:13:10
	paddb	%xmm1, %xmm0
	.loc	0 13 13                         # example1.c:13:13
	movdqu	48(%rsi,%rax), %xmm1
	.loc	0 13 10                         # example1.c:13:10
	paddb	%xmm3, %xmm1
	movdqu	%xmm0, 32(%rdi,%rax)
	movdqu	%xmm1, 48(%rdi,%rax)
.Ltmp11:
	.loc	0 12 26 is_stmt 1               # example1.c:12:26
	addq	$64, %rax
	cmpq	$65536, %rax                    # imm = 0x10000
	jne	.LBB0_3
.Ltmp12:
.LBB0_6:
	#DEBUG_VALUE: test:a <- $rdi
	#DEBUG_VALUE: test:b <- $rsi
	.loc	0 15 1                          # example1.c:15:1
	retq
.Ltmp13:
.Lfunc_end0:
	.size	test, .Lfunc_end0-test
	.cfi_endproc
                                        # -- End function
	.file	1 "/usr/include/x86_64-linux-gnu/bits" "types.h" md5 0xd108b5f93a74c50510d7d9bc0ab36df9
	.file	2 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h" md5 0x2bf2ae53c58c01b1a1b9383b5195125c
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 # Length
.Ldebug_list_header_start0:
	.short	5                               # Version
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
	.long	1                               # Offset entry count
.Lloclists_table_base0:
	.long	.Ldebug_loc0-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    #   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           #   ending offset
	.byte	5                               # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	49                              # DW_OP_lit1
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           #   ending offset
	.byte	5                               # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	50                              # DW_OP_lit2
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           #   ending offset
	.byte	5                               # Loc expr size
	.byte	112                             # DW_OP_breg0
	.byte	0                               # 0
	.byte	51                              # DW_OP_lit3
	.byte	33                              # DW_OP_or
	.byte	159                             # DW_OP_stack_value
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           #   ending offset
	.byte	1                               # Loc expr size
	.byte	80                              # DW_OP_reg0
	.byte	4                               # DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           #   starting offset
	.uleb128 .Ltmp12-.Lfunc_begin0          #   ending offset
	.byte	2                               # Loc expr size
	.byte	48                              # DW_OP_lit0
	.byte	159                             # DW_OP_stack_value
	.byte	0                               # DW_LLE_end_of_list
.Ldebug_list_header_end0:
	.section	.debug_abbrev,"",@progbits
	.byte	1                               # Abbreviation Code
	.byte	17                              # DW_TAG_compile_unit
	.byte	1                               # DW_CHILDREN_yes
	.byte	37                              # DW_AT_producer
	.byte	37                              # DW_FORM_strx1
	.byte	19                              # DW_AT_language
	.byte	5                               # DW_FORM_data2
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	114                             # DW_AT_str_offsets_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	16                              # DW_AT_stmt_list
	.byte	23                              # DW_FORM_sec_offset
	.byte	27                              # DW_AT_comp_dir
	.byte	37                              # DW_FORM_strx1
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	115                             # DW_AT_addr_base
	.byte	23                              # DW_FORM_sec_offset
	.ascii	"\214\001"                      # DW_AT_loclists_base
	.byte	23                              # DW_FORM_sec_offset
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	2                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	1                               # DW_CHILDREN_yes
	.byte	17                              # DW_AT_low_pc
	.byte	27                              # DW_FORM_addrx
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	122                             # DW_AT_call_all_calls
	.byte	25                              # DW_FORM_flag_present
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	39                              # DW_AT_prototyped
	.byte	25                              # DW_FORM_flag_present
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	3                               # Abbreviation Code
	.byte	5                               # DW_TAG_formal_parameter
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	24                              # DW_FORM_exprloc
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	4                               # Abbreviation Code
	.byte	52                              # DW_TAG_variable
	.byte	0                               # DW_CHILDREN_no
	.byte	2                               # DW_AT_location
	.byte	34                              # DW_FORM_loclistx
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	5                               # Abbreviation Code
	.byte	15                              # DW_TAG_pointer_type
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	6                               # Abbreviation Code
	.byte	22                              # DW_TAG_typedef
	.byte	0                               # DW_CHILDREN_no
	.byte	73                              # DW_AT_type
	.byte	19                              # DW_FORM_ref4
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	7                               # Abbreviation Code
	.byte	36                              # DW_TAG_base_type
	.byte	0                               # DW_CHILDREN_no
	.byte	3                               # DW_AT_name
	.byte	37                              # DW_FORM_strx1
	.byte	62                              # DW_AT_encoding
	.byte	11                              # DW_FORM_data1
	.byte	11                              # DW_AT_byte_size
	.byte	11                              # DW_FORM_data1
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	5                               # DWARF version number
	.byte	1                               # DWARF Unit Type
	.byte	8                               # Address Size (in bytes)
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	1                               # Abbrev [1] 0xc:0x72 DW_TAG_compile_unit
	.byte	0                               # DW_AT_producer
	.short	12                              # DW_AT_language
	.byte	1                               # DW_AT_name
	.long	.Lstr_offsets_base0             # DW_AT_str_offsets_base
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.byte	2                               # DW_AT_comp_dir
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.long	.Laddr_table_base0              # DW_AT_addr_base
	.long	.Lloclists_table_base0          # DW_AT_loclists_base
	.byte	2                               # Abbrev [2] 0x27:0x29 DW_TAG_subprogram
	.byte	0                               # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
                                        # DW_AT_call_all_calls
	.byte	3                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	9                               # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	3                               # Abbrev [3] 0x32:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	85
	.byte	4                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	9                               # DW_AT_decl_line
	.long	80                              # DW_AT_type
	.byte	3                               # Abbrev [3] 0x3c:0xa DW_TAG_formal_parameter
	.byte	1                               # DW_AT_location
	.byte	84
	.byte	8                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	9                               # DW_AT_decl_line
	.long	80                              # DW_AT_type
	.byte	4                               # Abbrev [4] 0x46:0x9 DW_TAG_variable
	.byte	0                               # DW_AT_location
	.byte	9                               # DW_AT_name
	.byte	0                               # DW_AT_decl_file
	.byte	10                              # DW_AT_decl_line
	.long	105                             # DW_AT_type
	.byte	0                               # End Of Children Mark
	.byte	5                               # Abbrev [5] 0x50:0x5 DW_TAG_pointer_type
	.long	85                              # DW_AT_type
	.byte	6                               # Abbrev [6] 0x55:0x8 DW_TAG_typedef
	.long	93                              # DW_AT_type
	.byte	7                               # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	24                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x5d:0x8 DW_TAG_typedef
	.long	101                             # DW_AT_type
	.byte	6                               # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	38                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x65:0x4 DW_TAG_base_type
	.byte	5                               # DW_AT_name
	.byte	8                               # DW_AT_encoding
	.byte	1                               # DW_AT_byte_size
	.byte	6                               # Abbrev [6] 0x69:0x8 DW_TAG_typedef
	.long	113                             # DW_AT_type
	.byte	12                              # DW_AT_name
	.byte	2                               # DW_AT_decl_file
	.byte	27                              # DW_AT_decl_line
	.byte	6                               # Abbrev [6] 0x71:0x8 DW_TAG_typedef
	.long	121                             # DW_AT_type
	.byte	11                              # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	45                              # DW_AT_decl_line
	.byte	7                               # Abbrev [7] 0x79:0x4 DW_TAG_base_type
	.byte	10                              # DW_AT_name
	.byte	7                               # DW_AT_encoding
	.byte	8                               # DW_AT_byte_size
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.long	56                              # Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 14.0.0-1ubuntu1.1" # string offset=0
.Linfo_string1:
	.asciz	"example1.c"                    # string offset=39
.Linfo_string2:
	.asciz	"/home/ywhan/Code/loop_vectorization/recitation3" # string offset=50
.Linfo_string3:
	.asciz	"test"                          # string offset=98
.Linfo_string4:
	.asciz	"a"                             # string offset=103
.Linfo_string5:
	.asciz	"unsigned char"                 # string offset=105
.Linfo_string6:
	.asciz	"__uint8_t"                     # string offset=119
.Linfo_string7:
	.asciz	"uint8_t"                       # string offset=129
.Linfo_string8:
	.asciz	"b"                             # string offset=137
.Linfo_string9:
	.asciz	"i"                             # string offset=139
.Linfo_string10:
	.asciz	"unsigned long"                 # string offset=141
.Linfo_string11:
	.asciz	"__uint64_t"                    # string offset=155
.Linfo_string12:
	.asciz	"uint64_t"                      # string offset=166
	.section	.debug_str_offsets,"",@progbits
	.long	.Linfo_string0
	.long	.Linfo_string1
	.long	.Linfo_string2
	.long	.Linfo_string3
	.long	.Linfo_string4
	.long	.Linfo_string5
	.long	.Linfo_string6
	.long	.Linfo_string7
	.long	.Linfo_string8
	.long	.Linfo_string9
	.long	.Linfo_string10
	.long	.Linfo_string11
	.long	.Linfo_string12
	.section	.debug_addr,"",@progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 # Length of contribution
.Ldebug_addr_start0:
	.short	5                               # DWARF version number
	.byte	8                               # Address size
	.byte	0                               # Segment selector size
.Laddr_table_base0:
	.quad	.Lfunc_begin0
.Ldebug_addr_end0:
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.section	.debug_line,"",@progbits
.Lline_table_start0:
