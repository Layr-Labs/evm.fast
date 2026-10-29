import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw647
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody647_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody647_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody647_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744069414584321#64)

def AllocBody647_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def AllocBody647_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 4294967295#64)

def AllocBody647_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744073709551615#64)

def AllocBody647_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody647_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody647_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 210) none

def AllocBody647_9 : StackLang.HolProg 64 :=
.seq AllocBody647_7 AllocBody647_8

def AllocBody647_10 : StackLang.HolProg 64 :=
.seq AllocBody647_6 AllocBody647_9

def AllocBody647_11 : StackLang.HolProg 64 :=
.seq AllocBody647_5 AllocBody647_10

def AllocBody647_12 : StackLang.HolProg 64 :=
.seq AllocBody647_4 AllocBody647_11

def AllocBody647_13 : StackLang.HolProg 64 :=
.seq AllocBody647_3 AllocBody647_12

def AllocBody647_14 : StackLang.HolProg 64 :=
.seq AllocBody647_2 AllocBody647_13

def AllocBody647_15 : StackLang.HolProg 64 :=
.seq AllocBody647_1 AllocBody647_14

def AllocBody647_16 : StackLang.HolProg 64 :=
.seq AllocBody647_0 AllocBody647_15

def Alloc647 : Nat × StackLang.HolProg 64 := (647, AllocBody647_16)
theorem Alloc647_eq : StackAlloc.progComp (647, raw647) = Alloc647 := by
  kernel_rfl
#print axioms Alloc647_eq
end InitECandidate.Proofs.BackendStages
