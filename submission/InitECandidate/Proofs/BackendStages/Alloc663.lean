import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw663
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody663_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody663_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody663_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def AllocBody663_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def AllocBody663_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def AllocBody663_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def AllocBody663_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody663_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody663_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 661) none

def AllocBody663_9 : StackLang.HolProg 64 :=
.seq AllocBody663_7 AllocBody663_8

def AllocBody663_10 : StackLang.HolProg 64 :=
.seq AllocBody663_6 AllocBody663_9

def AllocBody663_11 : StackLang.HolProg 64 :=
.seq AllocBody663_5 AllocBody663_10

def AllocBody663_12 : StackLang.HolProg 64 :=
.seq AllocBody663_4 AllocBody663_11

def AllocBody663_13 : StackLang.HolProg 64 :=
.seq AllocBody663_3 AllocBody663_12

def AllocBody663_14 : StackLang.HolProg 64 :=
.seq AllocBody663_2 AllocBody663_13

def AllocBody663_15 : StackLang.HolProg 64 :=
.seq AllocBody663_1 AllocBody663_14

def AllocBody663_16 : StackLang.HolProg 64 :=
.seq AllocBody663_0 AllocBody663_15

def Alloc663 : Nat × StackLang.HolProg 64 := (663, AllocBody663_16)
theorem Alloc663_eq : StackAlloc.progComp (663, raw663) = Alloc663 := by
  kernel_rfl
#print axioms Alloc663_eq
end InitECandidate.Proofs.BackendStages
