import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function105
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody105_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody105_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody105_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody105_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody105_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody105_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody105_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody105_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody105_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody105_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody105_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody105_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody105_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody105_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody105_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody105_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody105_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody105_17 : StackLang.HolProg 64 :=
.seq rawBody105_15 rawBody105_16

def rawBody105_18 : StackLang.HolProg 64 :=
.seq rawBody105_14 rawBody105_17

def rawBody105_19 : StackLang.HolProg 64 :=
.seq rawBody105_13 rawBody105_18

def rawBody105_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody105_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody105_19 rawBody105_20

def rawBody105_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody105_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody105_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody105_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody105_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody105_27 : StackLang.HolProg 64 :=
.seq rawBody105_25 rawBody105_26

def rawBody105_28 : StackLang.HolProg 64 :=
.seq rawBody105_24 rawBody105_27

def rawBody105_29 : StackLang.HolProg 64 :=
.seq rawBody105_23 rawBody105_28

def rawBody105_30 : StackLang.HolProg 64 :=
.seq rawBody105_22 rawBody105_29

def rawBody105_31 : StackLang.HolProg 64 :=
.seq rawBody105_21 rawBody105_30

def rawBody105_32 : StackLang.HolProg 64 :=
.seq rawBody105_12 rawBody105_31

def rawBody105_33 : StackLang.HolProg 64 :=
.seq rawBody105_11 rawBody105_32

def rawBody105_34 : StackLang.HolProg 64 :=
.seq rawBody105_10 rawBody105_33

def rawBody105_35 : StackLang.HolProg 64 :=
.seq rawBody105_9 rawBody105_34

def rawBody105_36 : StackLang.HolProg 64 :=
.seq rawBody105_8 rawBody105_35

def rawBody105_37 : StackLang.HolProg 64 :=
.seq rawBody105_7 rawBody105_36

def rawBody105_38 : StackLang.HolProg 64 :=
.seq rawBody105_6 rawBody105_37

def rawBody105_39 : StackLang.HolProg 64 :=
.seq rawBody105_5 rawBody105_38

def rawBody105_40 : StackLang.HolProg 64 :=
.seq rawBody105_4 rawBody105_39

def rawBody105_41 : StackLang.HolProg 64 :=
.seq rawBody105_3 rawBody105_40

def rawBody105_42 : StackLang.HolProg 64 :=
.seq rawBody105_2 rawBody105_41

def rawBody105_43 : StackLang.HolProg 64 :=
.seq rawBody105_1 rawBody105_42

def rawBody105_44 : StackLang.HolProg 64 :=
.seq rawBody105_0 rawBody105_43

def raw105 : StackLang.HolProg 64 := rawBody105_44
theorem raw105_eq : StackRawCall.compTop RawInfo.rawInfo (function105 (.list [])).1 = raw105 := by
  kernel_rfl
#print axioms raw105_eq
end InitECandidate.Proofs.BackendStages
