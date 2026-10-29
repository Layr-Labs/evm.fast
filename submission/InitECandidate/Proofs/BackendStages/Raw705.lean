import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function705
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody705_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody705_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody705_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody705_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody705_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody705_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody705_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody705_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody705_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody705_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody705_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody705_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody705_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody705_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody705_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody705_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody705_16 : StackLang.HolProg 64 :=
.seq rawBody705_14 rawBody705_15

def rawBody705_17 : StackLang.HolProg 64 :=
.seq rawBody705_13 rawBody705_16

def rawBody705_18 : StackLang.HolProg 64 :=
.seq rawBody705_12 rawBody705_17

def rawBody705_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody705_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody705_18 rawBody705_19

def rawBody705_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody705_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody705_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody705_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody705_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody705_26 : StackLang.HolProg 64 :=
.seq rawBody705_24 rawBody705_25

def rawBody705_27 : StackLang.HolProg 64 :=
.seq rawBody705_23 rawBody705_26

def rawBody705_28 : StackLang.HolProg 64 :=
.seq rawBody705_22 rawBody705_27

def rawBody705_29 : StackLang.HolProg 64 :=
.seq rawBody705_21 rawBody705_28

def rawBody705_30 : StackLang.HolProg 64 :=
.seq rawBody705_20 rawBody705_29

def rawBody705_31 : StackLang.HolProg 64 :=
.seq rawBody705_11 rawBody705_30

def rawBody705_32 : StackLang.HolProg 64 :=
.seq rawBody705_10 rawBody705_31

def rawBody705_33 : StackLang.HolProg 64 :=
.seq rawBody705_9 rawBody705_32

def rawBody705_34 : StackLang.HolProg 64 :=
.seq rawBody705_8 rawBody705_33

def rawBody705_35 : StackLang.HolProg 64 :=
.seq rawBody705_7 rawBody705_34

def rawBody705_36 : StackLang.HolProg 64 :=
.seq rawBody705_6 rawBody705_35

def rawBody705_37 : StackLang.HolProg 64 :=
.seq rawBody705_5 rawBody705_36

def rawBody705_38 : StackLang.HolProg 64 :=
.seq rawBody705_4 rawBody705_37

def rawBody705_39 : StackLang.HolProg 64 :=
.seq rawBody705_3 rawBody705_38

def rawBody705_40 : StackLang.HolProg 64 :=
.seq rawBody705_2 rawBody705_39

def rawBody705_41 : StackLang.HolProg 64 :=
.seq rawBody705_1 rawBody705_40

def rawBody705_42 : StackLang.HolProg 64 :=
.seq rawBody705_0 rawBody705_41

def raw705 : StackLang.HolProg 64 := rawBody705_42
theorem raw705_eq : StackRawCall.compTop RawInfo.rawInfo (function705 (.list [])).1 = raw705 := by
  kernel_rfl
#print axioms raw705_eq
end InitECandidate.Proofs.BackendStages
