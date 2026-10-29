import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw368
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody368_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody368_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody368_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody368_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody368_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody368_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody368_6 : StackLang.HolProg 64 :=
.call none (Sum.inl 367) none

def AllocBody368_7 : StackLang.HolProg 64 :=
.seq AllocBody368_5 AllocBody368_6

def AllocBody368_8 : StackLang.HolProg 64 :=
.seq AllocBody368_4 AllocBody368_7

def AllocBody368_9 : StackLang.HolProg 64 :=
.seq AllocBody368_3 AllocBody368_8

def AllocBody368_10 : StackLang.HolProg 64 :=
.seq AllocBody368_2 AllocBody368_9

def AllocBody368_11 : StackLang.HolProg 64 :=
.seq AllocBody368_1 AllocBody368_10

def AllocBody368_12 : StackLang.HolProg 64 :=
.seq AllocBody368_0 AllocBody368_11

def Alloc368 : Nat × StackLang.HolProg 64 := (368, AllocBody368_12)
theorem Alloc368_eq : StackAlloc.progComp (368, raw368) = Alloc368 := by
  kernel_rfl
#print axioms Alloc368_eq
end InitECandidate.Proofs.BackendStages
