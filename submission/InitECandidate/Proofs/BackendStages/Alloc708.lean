import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw708
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody708_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody708_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody708_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody708_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody708_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 1 1 7 0))

def AllocBody708_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody708_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 2 2 8 0))

def AllocBody708_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody708_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 3 3 9 0))

def AllocBody708_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody708_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 4 4 10 0))

def AllocBody708_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody708_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 5 5 11 0))

def AllocBody708_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody708_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 6 6 12 0))

def AllocBody708_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody708_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def AllocBody708_17 : StackLang.HolProg 64 :=
.seq AllocBody708_15 AllocBody708_16

def AllocBody708_18 : StackLang.HolProg 64 :=
.seq AllocBody708_14 AllocBody708_17

def AllocBody708_19 : StackLang.HolProg 64 :=
.seq AllocBody708_13 AllocBody708_18

def AllocBody708_20 : StackLang.HolProg 64 :=
.seq AllocBody708_12 AllocBody708_19

def AllocBody708_21 : StackLang.HolProg 64 :=
.seq AllocBody708_11 AllocBody708_20

def AllocBody708_22 : StackLang.HolProg 64 :=
.seq AllocBody708_10 AllocBody708_21

def AllocBody708_23 : StackLang.HolProg 64 :=
.seq AllocBody708_9 AllocBody708_22

def AllocBody708_24 : StackLang.HolProg 64 :=
.seq AllocBody708_8 AllocBody708_23

def AllocBody708_25 : StackLang.HolProg 64 :=
.seq AllocBody708_7 AllocBody708_24

def AllocBody708_26 : StackLang.HolProg 64 :=
.seq AllocBody708_6 AllocBody708_25

def AllocBody708_27 : StackLang.HolProg 64 :=
.seq AllocBody708_5 AllocBody708_26

def AllocBody708_28 : StackLang.HolProg 64 :=
.seq AllocBody708_4 AllocBody708_27

def AllocBody708_29 : StackLang.HolProg 64 :=
.seq AllocBody708_3 AllocBody708_28

def AllocBody708_30 : StackLang.HolProg 64 :=
.seq AllocBody708_2 AllocBody708_29

def AllocBody708_31 : StackLang.HolProg 64 :=
.seq AllocBody708_1 AllocBody708_30

def AllocBody708_32 : StackLang.HolProg 64 :=
.seq AllocBody708_0 AllocBody708_31

def Alloc708 : Nat × StackLang.HolProg 64 := (708, AllocBody708_32)
theorem Alloc708_eq : StackAlloc.progComp (708, raw708) = Alloc708 := by
  kernel_rfl
#print axioms Alloc708_eq
end InitECandidate.Proofs.BackendStages
