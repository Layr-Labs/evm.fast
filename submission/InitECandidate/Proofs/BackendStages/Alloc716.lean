import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw716
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody716_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody716_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody716_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1267921511277847466#64)

def AllocBody716_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 11130996698012816685#64)

def AllocBody716_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 7488229067341005760#64)

def AllocBody716_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 10224657059481499349#64)

def AllocBody716_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 754043588434789617#64)

def AllocBody716_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 17644856173732828998#64)

def AllocBody716_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody716_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody716_10 : StackLang.HolProg 64 :=
.call none (Sum.inl 714) none

def AllocBody716_11 : StackLang.HolProg 64 :=
.seq AllocBody716_9 AllocBody716_10

def AllocBody716_12 : StackLang.HolProg 64 :=
.seq AllocBody716_8 AllocBody716_11

def AllocBody716_13 : StackLang.HolProg 64 :=
.seq AllocBody716_7 AllocBody716_12

def AllocBody716_14 : StackLang.HolProg 64 :=
.seq AllocBody716_6 AllocBody716_13

def AllocBody716_15 : StackLang.HolProg 64 :=
.seq AllocBody716_5 AllocBody716_14

def AllocBody716_16 : StackLang.HolProg 64 :=
.seq AllocBody716_4 AllocBody716_15

def AllocBody716_17 : StackLang.HolProg 64 :=
.seq AllocBody716_3 AllocBody716_16

def AllocBody716_18 : StackLang.HolProg 64 :=
.seq AllocBody716_2 AllocBody716_17

def AllocBody716_19 : StackLang.HolProg 64 :=
.seq AllocBody716_1 AllocBody716_18

def AllocBody716_20 : StackLang.HolProg 64 :=
.seq AllocBody716_0 AllocBody716_19

def Alloc716 : Nat × StackLang.HolProg 64 := (716, AllocBody716_20)
theorem Alloc716_eq : StackAlloc.progComp (716, raw716) = Alloc716 := by
  kernel_rfl
#print axioms Alloc716_eq
end InitECandidate.Proofs.BackendStages
