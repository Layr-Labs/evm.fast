import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed368
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody368_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody368_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody368_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody368_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody368_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody368_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody368_6 : StackLang.HolProg 64 :=
.call none (Sum.inl 367) none

def NamedBody368_7 : StackLang.HolProg 64 :=
.seq NamedBody368_5 NamedBody368_6

def NamedBody368_8 : StackLang.HolProg 64 :=
.seq NamedBody368_4 NamedBody368_7

def NamedBody368_9 : StackLang.HolProg 64 :=
.seq NamedBody368_3 NamedBody368_8

def NamedBody368_10 : StackLang.HolProg 64 :=
.seq NamedBody368_2 NamedBody368_9

def NamedBody368_11 : StackLang.HolProg 64 :=
.seq NamedBody368_1 NamedBody368_10

def NamedBody368_12 : StackLang.HolProg 64 :=
.seq NamedBody368_0 NamedBody368_11

def Named368 : Nat × StackLang.HolProg 64 := (368, NamedBody368_12)
theorem Named368_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed368 = Named368 := by
  kernel_rfl
#print axioms Named368_eq
end InitECandidate.Proofs.BackendStages
