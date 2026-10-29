import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw201
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody201_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody201_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody201_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody201_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody201_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody201_5 : StackLang.HolProg 64 :=
.seq AllocBody201_3 AllocBody201_4

def AllocBody201_6 : StackLang.HolProg 64 :=
.seq AllocBody201_2 AllocBody201_5

def AllocBody201_7 : StackLang.HolProg 64 :=
.seq AllocBody201_1 AllocBody201_6

def AllocBody201_8 : StackLang.HolProg 64 :=
.seq AllocBody201_0 AllocBody201_7

def Alloc201 : Nat × StackLang.HolProg 64 := (201, AllocBody201_8)
theorem Alloc201_eq : StackAlloc.progComp (201, raw201) = Alloc201 := by
  kernel_rfl
#print axioms Alloc201_eq
end InitECandidate.Proofs.BackendStages
