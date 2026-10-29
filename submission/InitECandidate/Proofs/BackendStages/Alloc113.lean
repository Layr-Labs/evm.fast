import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw113
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody113_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody113_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody113_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody113_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody113_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody113_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody113_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody113_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody113_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody113_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody113_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody113_11 : StackLang.HolProg 64 :=
.seq AllocBody113_9 AllocBody113_10

def AllocBody113_12 : StackLang.HolProg 64 :=
.seq AllocBody113_8 AllocBody113_11

def AllocBody113_13 : StackLang.HolProg 64 :=
.seq AllocBody113_7 AllocBody113_12

def AllocBody113_14 : StackLang.HolProg 64 :=
.seq AllocBody113_6 AllocBody113_13

def AllocBody113_15 : StackLang.HolProg 64 :=
.seq AllocBody113_5 AllocBody113_14

def AllocBody113_16 : StackLang.HolProg 64 :=
.seq AllocBody113_4 AllocBody113_15

def AllocBody113_17 : StackLang.HolProg 64 :=
.seq AllocBody113_3 AllocBody113_16

def AllocBody113_18 : StackLang.HolProg 64 :=
.seq AllocBody113_2 AllocBody113_17

def AllocBody113_19 : StackLang.HolProg 64 :=
.seq AllocBody113_1 AllocBody113_18

def AllocBody113_20 : StackLang.HolProg 64 :=
.seq AllocBody113_0 AllocBody113_19

def Alloc113 : Nat × StackLang.HolProg 64 := (113, AllocBody113_20)
theorem Alloc113_eq : StackAlloc.progComp (113, raw113) = Alloc113 := by
  kernel_rfl
#print axioms Alloc113_eq
end InitECandidate.Proofs.BackendStages
