import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw216
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody216_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody216_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody216_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 18446744073709551615#64)

def AllocBody216_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 18446744073709551614#64)

def AllocBody216_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 13451932020343611451#64)

def AllocBody216_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 13822214165235122497#64)

def AllocBody216_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody216_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody216_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 135) none

def AllocBody216_9 : StackLang.HolProg 64 :=
.seq AllocBody216_7 AllocBody216_8

def AllocBody216_10 : StackLang.HolProg 64 :=
.seq AllocBody216_6 AllocBody216_9

def AllocBody216_11 : StackLang.HolProg 64 :=
.seq AllocBody216_5 AllocBody216_10

def AllocBody216_12 : StackLang.HolProg 64 :=
.seq AllocBody216_4 AllocBody216_11

def AllocBody216_13 : StackLang.HolProg 64 :=
.seq AllocBody216_3 AllocBody216_12

def AllocBody216_14 : StackLang.HolProg 64 :=
.seq AllocBody216_2 AllocBody216_13

def AllocBody216_15 : StackLang.HolProg 64 :=
.seq AllocBody216_1 AllocBody216_14

def AllocBody216_16 : StackLang.HolProg 64 :=
.seq AllocBody216_0 AllocBody216_15

def Alloc216 : Nat × StackLang.HolProg 64 := (216, AllocBody216_16)
theorem Alloc216_eq : StackAlloc.progComp (216, raw216) = Alloc216 := by
  kernel_rfl
#print axioms Alloc216_eq
end InitECandidate.Proofs.BackendStages
