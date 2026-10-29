import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw759
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody759_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody759_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody759_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody759_3 : StackLang.HolProg 64 :=
.call none (Sum.inl 758) none

def AllocBody759_4 : StackLang.HolProg 64 :=
.seq AllocBody759_2 AllocBody759_3

def AllocBody759_5 : StackLang.HolProg 64 :=
.seq AllocBody759_1 AllocBody759_4

def AllocBody759_6 : StackLang.HolProg 64 :=
.seq AllocBody759_0 AllocBody759_5

def Alloc759 : Nat × StackLang.HolProg 64 := (759, AllocBody759_6)
theorem Alloc759_eq : StackAlloc.progComp (759, raw759) = Alloc759 := by
  kernel_rfl
#print axioms Alloc759_eq
end InitECandidate.Proofs.BackendStages
