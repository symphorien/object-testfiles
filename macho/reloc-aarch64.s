	.subsections_via_symbols
	.text
	// ARM64_RELOC_BRANCH26
	bl _g0
	// ARM64_RELOC_ADDEND, ARM64_RELOC_BRANCH26
	bl _g0 + 20
	// ARM64_RELOC_PAGE21
	adrp x0, _g0@PAGE
	// ARM64_RELOC_PAGEOFF12
	ldr w0, [x0, _g0@PAGEOFF]
	// ARM64_RELOC_ADDEND, ARM64_RELOC_PAGE21
	adrp x0, _g0@PAGE + 20
	// ARM64_RELOC_ADDEND, ARM64_RELOC_PAGEOFF12
	ldr w0, [x0, _g0@PAGEOFF + 20]
	// ARM64_RELOC_GOT_LOAD_PAGE21
	adrp x0, _g0@GOTPAGE
	// ARM64_RELOC_GOT_LOAD_PAGEOFF12
	ldr w0, [x0, _g0@GOTPAGEOFF]
	// ARM64_RELOC_TLVP_LOAD_PAGE21
	adrp x0, _g0@TLVPPAGE
	// ARM64_RELOC_TLVP_LOAD_PAGEOFF12
	ldr w0, [x0, _g0@TLVPPAGEOFF]

	.data
_data:
	// ARM64_RELOC_UNSIGNED
        .quad _g0 + 20
	// ARM64_RELOC_SUBTRACTOR, ARM64_RELOC_UNSIGNED, length=3
        .quad _g0 - _g1 + 20
	// ARM64_RELOC_SUBTRACTOR, ARM64_RELOC_UNSIGNED, length=2
        .long _g0 - _g1 + 20
	// ARM64_RELOC_POINTER_TO_GOT, pcrel=0, length=3
        .quad _g0@GOT
	// ARM64_RELOC_POINTER_TO_GOT, pcrel=1, length=2
        .long _g0@GOT - .