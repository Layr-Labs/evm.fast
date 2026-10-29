import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw717
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody717_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody717_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody717_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def AllocBody717_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def AllocBody717_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def AllocBody717_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 0#64)

def AllocBody717_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def AllocBody717_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 1#64)

def AllocBody717_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody717_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody717_10 : StackLang.HolProg 64 :=
.call none (Sum.inl 714) none

def AllocBody717_11 : StackLang.HolProg 64 :=
.seq AllocBody717_9 AllocBody717_10

def AllocBody717_12 : StackLang.HolProg 64 :=
.seq AllocBody717_8 AllocBody717_11

def AllocBody717_13 : StackLang.HolProg 64 :=
.seq AllocBody717_7 AllocBody717_12

def AllocBody717_14 : StackLang.HolProg 64 :=
.seq AllocBody717_6 AllocBody717_13

def AllocBody717_15 : StackLang.HolProg 64 :=
.seq AllocBody717_5 AllocBody717_14

def AllocBody717_16 : StackLang.HolProg 64 :=
.seq AllocBody717_4 AllocBody717_15

def AllocBody717_17 : StackLang.HolProg 64 :=
.seq AllocBody717_3 AllocBody717_16

def AllocBody717_18 : StackLang.HolProg 64 :=
.seq AllocBody717_2 AllocBody717_17

def AllocBody717_19 : StackLang.HolProg 64 :=
.seq AllocBody717_1 AllocBody717_18

def AllocBody717_20 : StackLang.HolProg 64 :=
.seq AllocBody717_0 AllocBody717_19

def Alloc717 : Nat × StackLang.HolProg 64 := (717, AllocBody717_20)
theorem Alloc717_eq : StackAlloc.progComp (717, raw717) = Alloc717 := by
  kernel_rfl
#print axioms Alloc717_eq
end InitECandidate.Proofs.BackendStages
