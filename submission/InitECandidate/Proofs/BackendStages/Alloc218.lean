import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw218
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody218_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody218_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody218_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def AllocBody218_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551614#64)

def AllocBody218_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 13451932020343611451#64)

def AllocBody218_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 13822214165235122495#64)

def AllocBody218_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody218_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody218_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 217) none

def AllocBody218_9 : StackLang.HolProg 64 :=
.seq AllocBody218_7 AllocBody218_8

def AllocBody218_10 : StackLang.HolProg 64 :=
.seq AllocBody218_6 AllocBody218_9

def AllocBody218_11 : StackLang.HolProg 64 :=
.seq AllocBody218_5 AllocBody218_10

def AllocBody218_12 : StackLang.HolProg 64 :=
.seq AllocBody218_4 AllocBody218_11

def AllocBody218_13 : StackLang.HolProg 64 :=
.seq AllocBody218_3 AllocBody218_12

def AllocBody218_14 : StackLang.HolProg 64 :=
.seq AllocBody218_2 AllocBody218_13

def AllocBody218_15 : StackLang.HolProg 64 :=
.seq AllocBody218_1 AllocBody218_14

def AllocBody218_16 : StackLang.HolProg 64 :=
.seq AllocBody218_0 AllocBody218_15

def Alloc218 : Nat × StackLang.HolProg 64 := (218, AllocBody218_16)
theorem Alloc218_eq : StackAlloc.progComp (218, raw218) = Alloc218 := by
  kernel_rfl
#print axioms Alloc218_eq
end InitECandidate.Proofs.BackendStages
