import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw214
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody214_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody214_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody214_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 4611686018427387903#64)

def AllocBody214_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def AllocBody214_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def AllocBody214_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744072635809548#64)

def AllocBody214_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody214_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody214_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 208) none

def AllocBody214_9 : StackLang.HolProg 64 :=
.seq AllocBody214_7 AllocBody214_8

def AllocBody214_10 : StackLang.HolProg 64 :=
.seq AllocBody214_6 AllocBody214_9

def AllocBody214_11 : StackLang.HolProg 64 :=
.seq AllocBody214_5 AllocBody214_10

def AllocBody214_12 : StackLang.HolProg 64 :=
.seq AllocBody214_4 AllocBody214_11

def AllocBody214_13 : StackLang.HolProg 64 :=
.seq AllocBody214_3 AllocBody214_12

def AllocBody214_14 : StackLang.HolProg 64 :=
.seq AllocBody214_2 AllocBody214_13

def AllocBody214_15 : StackLang.HolProg 64 :=
.seq AllocBody214_1 AllocBody214_14

def AllocBody214_16 : StackLang.HolProg 64 :=
.seq AllocBody214_0 AllocBody214_15

def Alloc214 : Nat × StackLang.HolProg 64 := (214, AllocBody214_16)
theorem Alloc214_eq : StackAlloc.progComp (214, raw214) = Alloc214 := by
  kernel_rfl
#print axioms Alloc214_eq
end InitECandidate.Proofs.BackendStages
