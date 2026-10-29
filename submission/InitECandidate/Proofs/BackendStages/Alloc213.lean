import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw213
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody213_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody213_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody213_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def AllocBody213_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def AllocBody213_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def AllocBody213_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583343#64)

def AllocBody213_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody213_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody213_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 210) none

def AllocBody213_9 : StackLang.HolProg 64 :=
.seq AllocBody213_7 AllocBody213_8

def AllocBody213_10 : StackLang.HolProg 64 :=
.seq AllocBody213_6 AllocBody213_9

def AllocBody213_11 : StackLang.HolProg 64 :=
.seq AllocBody213_5 AllocBody213_10

def AllocBody213_12 : StackLang.HolProg 64 :=
.seq AllocBody213_4 AllocBody213_11

def AllocBody213_13 : StackLang.HolProg 64 :=
.seq AllocBody213_3 AllocBody213_12

def AllocBody213_14 : StackLang.HolProg 64 :=
.seq AllocBody213_2 AllocBody213_13

def AllocBody213_15 : StackLang.HolProg 64 :=
.seq AllocBody213_1 AllocBody213_14

def AllocBody213_16 : StackLang.HolProg 64 :=
.seq AllocBody213_0 AllocBody213_15

def Alloc213 : Nat × StackLang.HolProg 64 := (213, AllocBody213_16)
theorem Alloc213_eq : StackAlloc.progComp (213, raw213) = Alloc213 := by
  kernel_rfl
#print axioms Alloc213_eq
end InitECandidate.Proofs.BackendStages
