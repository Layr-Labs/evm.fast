import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed716
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody716_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody716_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody716_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 29 1267921511277847466#64)

def NamedBody716_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 28 11130996698012816685#64)

def NamedBody716_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 27 7488229067341005760#64)

def NamedBody716_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 10224657059481499349#64)

def NamedBody716_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 754043588434789617#64)

def NamedBody716_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 17644856173732828998#64)

def NamedBody716_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody716_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody716_10 : StackLang.HolProg 64 :=
.call none (Sum.inl 714) none

def NamedBody716_11 : StackLang.HolProg 64 :=
.seq NamedBody716_9 NamedBody716_10

def NamedBody716_12 : StackLang.HolProg 64 :=
.seq NamedBody716_8 NamedBody716_11

def NamedBody716_13 : StackLang.HolProg 64 :=
.seq NamedBody716_7 NamedBody716_12

def NamedBody716_14 : StackLang.HolProg 64 :=
.seq NamedBody716_6 NamedBody716_13

def NamedBody716_15 : StackLang.HolProg 64 :=
.seq NamedBody716_5 NamedBody716_14

def NamedBody716_16 : StackLang.HolProg 64 :=
.seq NamedBody716_4 NamedBody716_15

def NamedBody716_17 : StackLang.HolProg 64 :=
.seq NamedBody716_3 NamedBody716_16

def NamedBody716_18 : StackLang.HolProg 64 :=
.seq NamedBody716_2 NamedBody716_17

def NamedBody716_19 : StackLang.HolProg 64 :=
.seq NamedBody716_1 NamedBody716_18

def NamedBody716_20 : StackLang.HolProg 64 :=
.seq NamedBody716_0 NamedBody716_19

def Named716 : Nat × StackLang.HolProg 64 := (716, NamedBody716_20)
theorem Named716_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed716 = Named716 := by
  kernel_rfl
#print axioms Named716_eq
end InitECandidate.Proofs.BackendStages
