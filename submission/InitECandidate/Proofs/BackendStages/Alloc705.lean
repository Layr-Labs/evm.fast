import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw705
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody705_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody705_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody705_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody705_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody705_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody705_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody705_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody705_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody705_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody705_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody705_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody705_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody705_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody705_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody705_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody705_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody705_16 : StackLang.HolProg 64 :=
.seq AllocBody705_14 AllocBody705_15

def AllocBody705_17 : StackLang.HolProg 64 :=
.seq AllocBody705_13 AllocBody705_16

def AllocBody705_18 : StackLang.HolProg 64 :=
.seq AllocBody705_12 AllocBody705_17

def AllocBody705_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody705_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody705_18 AllocBody705_19

def AllocBody705_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody705_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody705_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody705_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody705_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody705_26 : StackLang.HolProg 64 :=
.seq AllocBody705_24 AllocBody705_25

def AllocBody705_27 : StackLang.HolProg 64 :=
.seq AllocBody705_23 AllocBody705_26

def AllocBody705_28 : StackLang.HolProg 64 :=
.seq AllocBody705_22 AllocBody705_27

def AllocBody705_29 : StackLang.HolProg 64 :=
.seq AllocBody705_21 AllocBody705_28

def AllocBody705_30 : StackLang.HolProg 64 :=
.seq AllocBody705_20 AllocBody705_29

def AllocBody705_31 : StackLang.HolProg 64 :=
.seq AllocBody705_11 AllocBody705_30

def AllocBody705_32 : StackLang.HolProg 64 :=
.seq AllocBody705_10 AllocBody705_31

def AllocBody705_33 : StackLang.HolProg 64 :=
.seq AllocBody705_9 AllocBody705_32

def AllocBody705_34 : StackLang.HolProg 64 :=
.seq AllocBody705_8 AllocBody705_33

def AllocBody705_35 : StackLang.HolProg 64 :=
.seq AllocBody705_7 AllocBody705_34

def AllocBody705_36 : StackLang.HolProg 64 :=
.seq AllocBody705_6 AllocBody705_35

def AllocBody705_37 : StackLang.HolProg 64 :=
.seq AllocBody705_5 AllocBody705_36

def AllocBody705_38 : StackLang.HolProg 64 :=
.seq AllocBody705_4 AllocBody705_37

def AllocBody705_39 : StackLang.HolProg 64 :=
.seq AllocBody705_3 AllocBody705_38

def AllocBody705_40 : StackLang.HolProg 64 :=
.seq AllocBody705_2 AllocBody705_39

def AllocBody705_41 : StackLang.HolProg 64 :=
.seq AllocBody705_1 AllocBody705_40

def AllocBody705_42 : StackLang.HolProg 64 :=
.seq AllocBody705_0 AllocBody705_41

def Alloc705 : Nat × StackLang.HolProg 64 := (705, AllocBody705_42)
theorem Alloc705_eq : StackAlloc.progComp (705, raw705) = Alloc705 := by
  kernel_rfl
#print axioms Alloc705_eq
end InitECandidate.Proofs.BackendStages
