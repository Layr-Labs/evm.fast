import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw105
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody105_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody105_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody105_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody105_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody105_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody105_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody105_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody105_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody105_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody105_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody105_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody105_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody105_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody105_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody105_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody105_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody105_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody105_17 : StackLang.HolProg 64 :=
.seq AllocBody105_15 AllocBody105_16

def AllocBody105_18 : StackLang.HolProg 64 :=
.seq AllocBody105_14 AllocBody105_17

def AllocBody105_19 : StackLang.HolProg 64 :=
.seq AllocBody105_13 AllocBody105_18

def AllocBody105_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody105_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody105_19 AllocBody105_20

def AllocBody105_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody105_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody105_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody105_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody105_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody105_27 : StackLang.HolProg 64 :=
.seq AllocBody105_25 AllocBody105_26

def AllocBody105_28 : StackLang.HolProg 64 :=
.seq AllocBody105_24 AllocBody105_27

def AllocBody105_29 : StackLang.HolProg 64 :=
.seq AllocBody105_23 AllocBody105_28

def AllocBody105_30 : StackLang.HolProg 64 :=
.seq AllocBody105_22 AllocBody105_29

def AllocBody105_31 : StackLang.HolProg 64 :=
.seq AllocBody105_21 AllocBody105_30

def AllocBody105_32 : StackLang.HolProg 64 :=
.seq AllocBody105_12 AllocBody105_31

def AllocBody105_33 : StackLang.HolProg 64 :=
.seq AllocBody105_11 AllocBody105_32

def AllocBody105_34 : StackLang.HolProg 64 :=
.seq AllocBody105_10 AllocBody105_33

def AllocBody105_35 : StackLang.HolProg 64 :=
.seq AllocBody105_9 AllocBody105_34

def AllocBody105_36 : StackLang.HolProg 64 :=
.seq AllocBody105_8 AllocBody105_35

def AllocBody105_37 : StackLang.HolProg 64 :=
.seq AllocBody105_7 AllocBody105_36

def AllocBody105_38 : StackLang.HolProg 64 :=
.seq AllocBody105_6 AllocBody105_37

def AllocBody105_39 : StackLang.HolProg 64 :=
.seq AllocBody105_5 AllocBody105_38

def AllocBody105_40 : StackLang.HolProg 64 :=
.seq AllocBody105_4 AllocBody105_39

def AllocBody105_41 : StackLang.HolProg 64 :=
.seq AllocBody105_3 AllocBody105_40

def AllocBody105_42 : StackLang.HolProg 64 :=
.seq AllocBody105_2 AllocBody105_41

def AllocBody105_43 : StackLang.HolProg 64 :=
.seq AllocBody105_1 AllocBody105_42

def AllocBody105_44 : StackLang.HolProg 64 :=
.seq AllocBody105_0 AllocBody105_43

def Alloc105 : Nat × StackLang.HolProg 64 := (105, AllocBody105_44)
theorem Alloc105_eq : StackAlloc.progComp (105, raw105) = Alloc105 := by
  kernel_rfl
#print axioms Alloc105_eq
end InitECandidate.Proofs.BackendStages
