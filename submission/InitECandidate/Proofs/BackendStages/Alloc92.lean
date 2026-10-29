import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw92
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody92_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody92_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody92_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody92_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody92_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody92_5 : StackLang.HolProg 64 :=
.seq AllocBody92_3 AllocBody92_4

def AllocBody92_6 : StackLang.HolProg 64 :=
.seq AllocBody92_2 AllocBody92_5

def AllocBody92_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody92_8 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody92_6 AllocBody92_7

def AllocBody92_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody92_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody92_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody92_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody92_13 : StackLang.HolProg 64 :=
.seq AllocBody92_11 AllocBody92_12

def AllocBody92_14 : StackLang.HolProg 64 :=
.seq AllocBody92_10 AllocBody92_13

def AllocBody92_15 : StackLang.HolProg 64 :=
.seq AllocBody92_9 AllocBody92_14

def AllocBody92_16 : StackLang.HolProg 64 :=
.seq AllocBody92_8 AllocBody92_15

def AllocBody92_17 : StackLang.HolProg 64 :=
.seq AllocBody92_1 AllocBody92_16

def AllocBody92_18 : StackLang.HolProg 64 :=
.seq AllocBody92_0 AllocBody92_17

def Alloc92 : Nat × StackLang.HolProg 64 := (92, AllocBody92_18)
theorem Alloc92_eq : StackAlloc.progComp (92, raw92) = Alloc92 := by
  kernel_rfl
#print axioms Alloc92_eq
end InitECandidate.Proofs.BackendStages
