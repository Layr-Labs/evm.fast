import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw209
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody209_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody209_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody209_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def AllocBody209_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def AllocBody209_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def AllocBody209_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583341#64)

def AllocBody209_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody209_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody209_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 208) none

def AllocBody209_9 : StackLang.HolProg 64 :=
.seq AllocBody209_7 AllocBody209_8

def AllocBody209_10 : StackLang.HolProg 64 :=
.seq AllocBody209_6 AllocBody209_9

def AllocBody209_11 : StackLang.HolProg 64 :=
.seq AllocBody209_5 AllocBody209_10

def AllocBody209_12 : StackLang.HolProg 64 :=
.seq AllocBody209_4 AllocBody209_11

def AllocBody209_13 : StackLang.HolProg 64 :=
.seq AllocBody209_3 AllocBody209_12

def AllocBody209_14 : StackLang.HolProg 64 :=
.seq AllocBody209_2 AllocBody209_13

def AllocBody209_15 : StackLang.HolProg 64 :=
.seq AllocBody209_1 AllocBody209_14

def AllocBody209_16 : StackLang.HolProg 64 :=
.seq AllocBody209_0 AllocBody209_15

def Alloc209 : Nat × StackLang.HolProg 64 := (209, AllocBody209_16)
theorem Alloc209_eq : StackAlloc.progComp (209, raw209) = Alloc209 := by
  kernel_rfl
#print axioms Alloc209_eq
end InitECandidate.Proofs.BackendStages
