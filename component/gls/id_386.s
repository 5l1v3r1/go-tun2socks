// Copyright 2018 Massimiliano Ghilardi. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


#include "go_asm.h"
#include "textflag.h" // for NOSPLIT
#include "go_tls.h"

TEXT ·getg(SB),NOSPLIT,$0-4
	get_tls(CX)
	MOVL g(CX), AX
	MOVL AX, ret+0(FP)
	RET
