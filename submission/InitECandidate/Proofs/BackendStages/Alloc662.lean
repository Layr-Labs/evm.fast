import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw662
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody662_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody662_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody662_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 493319470278259999#64)

def AllocBody662_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 5164255478447964150#64)

def AllocBody662_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 13107472804851548667#64)

def AllocBody662_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 17522657719365597833#64)

def AllocBody662_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody662_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody662_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 661) none

def AllocBody662_9 : StackLang.HolProg 64 :=
.seq AllocBody662_7 AllocBody662_8

def AllocBody662_10 : StackLang.HolProg 64 :=
.seq AllocBody662_6 AllocBody662_9

def AllocBody662_11 : StackLang.HolProg 64 :=
.seq AllocBody662_5 AllocBody662_10

def AllocBody662_12 : StackLang.HolProg 64 :=
.seq AllocBody662_4 AllocBody662_11

def AllocBody662_13 : StackLang.HolProg 64 :=
.seq AllocBody662_3 AllocBody662_12

def AllocBody662_14 : StackLang.HolProg 64 :=
.seq AllocBody662_2 AllocBody662_13

def AllocBody662_15 : StackLang.HolProg 64 :=
.seq AllocBody662_1 AllocBody662_14

def AllocBody662_16 : StackLang.HolProg 64 :=
.seq AllocBody662_0 AllocBody662_15

def Alloc662 : Nat × StackLang.HolProg 64 := (662, AllocBody662_16)
theorem Alloc662_eq : StackAlloc.progComp (662, raw662) = Alloc662 := by
  kernel_rfl
#print axioms Alloc662_eq
end InitECandidate.Proofs.BackendStages
