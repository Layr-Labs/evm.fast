import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw286
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody286_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody286_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody286_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody286_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def AllocBody286_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody286_5 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody286_6 : StackLang.HolProg 64 :=
.seq AllocBody286_4 AllocBody286_5

def AllocBody286_7 : StackLang.HolProg 64 :=
.seq AllocBody286_3 AllocBody286_6

def AllocBody286_8 : StackLang.HolProg 64 :=
.seq AllocBody286_2 AllocBody286_7

def AllocBody286_9 : StackLang.HolProg 64 :=
.seq AllocBody286_1 AllocBody286_8

def AllocBody286_10 : StackLang.HolProg 64 :=
.seq AllocBody286_0 AllocBody286_9

def Alloc286 : Nat × StackLang.HolProg 64 := (286, AllocBody286_10)
theorem Alloc286_eq : StackAlloc.progComp (286, raw286) = Alloc286 := by
  kernel_rfl
#print axioms Alloc286_eq
end InitECandidate.Proofs.BackendStages
