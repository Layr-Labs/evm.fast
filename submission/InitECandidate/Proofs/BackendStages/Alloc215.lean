import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw215
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody215_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody215_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody215_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 18446744073709551615#64)

def AllocBody215_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 18446744073709551614#64)

def AllocBody215_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 13451932020343611451#64)

def AllocBody215_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 13822214165235122497#64)

def AllocBody215_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody215_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody215_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 136) none

def AllocBody215_9 : StackLang.HolProg 64 :=
.seq AllocBody215_7 AllocBody215_8

def AllocBody215_10 : StackLang.HolProg 64 :=
.seq AllocBody215_6 AllocBody215_9

def AllocBody215_11 : StackLang.HolProg 64 :=
.seq AllocBody215_5 AllocBody215_10

def AllocBody215_12 : StackLang.HolProg 64 :=
.seq AllocBody215_4 AllocBody215_11

def AllocBody215_13 : StackLang.HolProg 64 :=
.seq AllocBody215_3 AllocBody215_12

def AllocBody215_14 : StackLang.HolProg 64 :=
.seq AllocBody215_2 AllocBody215_13

def AllocBody215_15 : StackLang.HolProg 64 :=
.seq AllocBody215_1 AllocBody215_14

def AllocBody215_16 : StackLang.HolProg 64 :=
.seq AllocBody215_0 AllocBody215_15

def Alloc215 : Nat × StackLang.HolProg 64 := (215, AllocBody215_16)
theorem Alloc215_eq : StackAlloc.progComp (215, raw215) = Alloc215 := by
  kernel_rfl
#print axioms Alloc215_eq
end InitECandidate.Proofs.BackendStages
