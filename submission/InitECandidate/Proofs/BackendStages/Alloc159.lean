import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw159
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody159_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody159_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody159_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody159_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody159_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody159_5 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody159_6 : StackLang.HolProg 64 :=
.seq AllocBody159_4 AllocBody159_5

def AllocBody159_7 : StackLang.HolProg 64 :=
.seq AllocBody159_3 AllocBody159_6

def AllocBody159_8 : StackLang.HolProg 64 :=
.seq AllocBody159_2 AllocBody159_7

def AllocBody159_9 : StackLang.HolProg 64 :=
.seq AllocBody159_1 AllocBody159_8

def AllocBody159_10 : StackLang.HolProg 64 :=
.seq AllocBody159_0 AllocBody159_9

def Alloc159 : Nat × StackLang.HolProg 64 := (159, AllocBody159_10)
theorem Alloc159_eq : StackAlloc.progComp (159, raw159) = Alloc159 := by
  kernel_rfl
#print axioms Alloc159_eq
end InitECandidate.Proofs.BackendStages
