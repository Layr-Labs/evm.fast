import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw112
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody112_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody112_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody112_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody112_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody112_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody112_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody112_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody112_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody112_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody112_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody112_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody112_11 : StackLang.HolProg 64 :=
.seq AllocBody112_9 AllocBody112_10

def AllocBody112_12 : StackLang.HolProg 64 :=
.seq AllocBody112_8 AllocBody112_11

def AllocBody112_13 : StackLang.HolProg 64 :=
.seq AllocBody112_7 AllocBody112_12

def AllocBody112_14 : StackLang.HolProg 64 :=
.seq AllocBody112_6 AllocBody112_13

def AllocBody112_15 : StackLang.HolProg 64 :=
.seq AllocBody112_5 AllocBody112_14

def AllocBody112_16 : StackLang.HolProg 64 :=
.seq AllocBody112_4 AllocBody112_15

def AllocBody112_17 : StackLang.HolProg 64 :=
.seq AllocBody112_3 AllocBody112_16

def AllocBody112_18 : StackLang.HolProg 64 :=
.seq AllocBody112_2 AllocBody112_17

def AllocBody112_19 : StackLang.HolProg 64 :=
.seq AllocBody112_1 AllocBody112_18

def AllocBody112_20 : StackLang.HolProg 64 :=
.seq AllocBody112_0 AllocBody112_19

def Alloc112 : Nat × StackLang.HolProg 64 := (112, AllocBody112_20)
theorem Alloc112_eq : StackAlloc.progComp (112, raw112) = Alloc112 := by
  kernel_rfl
#print axioms Alloc112_eq
end InitECandidate.Proofs.BackendStages
