import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw99
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody99_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody99_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody99_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody99_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody99_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody99_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody99_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody99_7 : StackLang.HolProg 64 :=
.seq AllocBody99_5 AllocBody99_6

def AllocBody99_8 : StackLang.HolProg 64 :=
.seq AllocBody99_4 AllocBody99_7

def AllocBody99_9 : StackLang.HolProg 64 :=
.seq AllocBody99_3 AllocBody99_8

def AllocBody99_10 : StackLang.HolProg 64 :=
.seq AllocBody99_2 AllocBody99_9

def AllocBody99_11 : StackLang.HolProg 64 :=
.seq AllocBody99_1 AllocBody99_10

def AllocBody99_12 : StackLang.HolProg 64 :=
.seq AllocBody99_0 AllocBody99_11

def Alloc99 : Nat × StackLang.HolProg 64 := (99, AllocBody99_12)
theorem Alloc99_eq : StackAlloc.progComp (99, raw99) = Alloc99 := by
  kernel_rfl
#print axioms Alloc99_eq
end InitECandidate.Proofs.BackendStages
