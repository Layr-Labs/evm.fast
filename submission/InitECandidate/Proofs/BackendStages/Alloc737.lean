import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw737
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody737_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody737_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody737_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody737_3 : StackLang.HolProg 64 :=
.call none (Sum.inl 734) none

def AllocBody737_4 : StackLang.HolProg 64 :=
.seq AllocBody737_2 AllocBody737_3

def AllocBody737_5 : StackLang.HolProg 64 :=
.seq AllocBody737_1 AllocBody737_4

def AllocBody737_6 : StackLang.HolProg 64 :=
.seq AllocBody737_0 AllocBody737_5

def Alloc737 : Nat × StackLang.HolProg 64 := (737, AllocBody737_6)
theorem Alloc737_eq : StackAlloc.progComp (737, raw737) = Alloc737 := by
  kernel_rfl
#print axioms Alloc737_eq
end InitECandidate.Proofs.BackendStages
