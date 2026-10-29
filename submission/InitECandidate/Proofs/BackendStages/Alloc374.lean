import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw374
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody374_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody374_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody374_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody374_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def AllocBody374_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody374_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody374_6 : StackLang.HolProg 64 :=
.call none (Sum.inl 370) none

def AllocBody374_7 : StackLang.HolProg 64 :=
.seq AllocBody374_5 AllocBody374_6

def AllocBody374_8 : StackLang.HolProg 64 :=
.seq AllocBody374_4 AllocBody374_7

def AllocBody374_9 : StackLang.HolProg 64 :=
.seq AllocBody374_3 AllocBody374_8

def AllocBody374_10 : StackLang.HolProg 64 :=
.seq AllocBody374_2 AllocBody374_9

def AllocBody374_11 : StackLang.HolProg 64 :=
.seq AllocBody374_1 AllocBody374_10

def AllocBody374_12 : StackLang.HolProg 64 :=
.seq AllocBody374_0 AllocBody374_11

def Alloc374 : Nat × StackLang.HolProg 64 := (374, AllocBody374_12)
theorem Alloc374_eq : StackAlloc.progComp (374, raw374) = Alloc374 := by
  kernel_rfl
#print axioms Alloc374_eq
end InitECandidate.Proofs.BackendStages
