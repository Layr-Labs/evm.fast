import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw219
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody219_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody219_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody219_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def AllocBody219_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551614#64)

def AllocBody219_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 13451932020343611451#64)

def AllocBody219_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 13822214165235122497#64)

def AllocBody219_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody219_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody219_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 210) none

def AllocBody219_9 : StackLang.HolProg 64 :=
.seq AllocBody219_7 AllocBody219_8

def AllocBody219_10 : StackLang.HolProg 64 :=
.seq AllocBody219_6 AllocBody219_9

def AllocBody219_11 : StackLang.HolProg 64 :=
.seq AllocBody219_5 AllocBody219_10

def AllocBody219_12 : StackLang.HolProg 64 :=
.seq AllocBody219_4 AllocBody219_11

def AllocBody219_13 : StackLang.HolProg 64 :=
.seq AllocBody219_3 AllocBody219_12

def AllocBody219_14 : StackLang.HolProg 64 :=
.seq AllocBody219_2 AllocBody219_13

def AllocBody219_15 : StackLang.HolProg 64 :=
.seq AllocBody219_1 AllocBody219_14

def AllocBody219_16 : StackLang.HolProg 64 :=
.seq AllocBody219_0 AllocBody219_15

def Alloc219 : Nat × StackLang.HolProg 64 := (219, AllocBody219_16)
theorem Alloc219_eq : StackAlloc.progComp (219, raw219) = Alloc219 := by
  kernel_rfl
#print axioms Alloc219_eq
end InitECandidate.Proofs.BackendStages
