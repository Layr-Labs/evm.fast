import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed201
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody201_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody201_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody201_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody201_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody201_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody201_5 : StackLang.HolProg 64 :=
.seq NamedBody201_3 NamedBody201_4

def NamedBody201_6 : StackLang.HolProg 64 :=
.seq NamedBody201_2 NamedBody201_5

def NamedBody201_7 : StackLang.HolProg 64 :=
.seq NamedBody201_1 NamedBody201_6

def NamedBody201_8 : StackLang.HolProg 64 :=
.seq NamedBody201_0 NamedBody201_7

def Named201 : Nat × StackLang.HolProg 64 := (201, NamedBody201_8)
theorem Named201_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed201 = Named201 := by
  kernel_rfl
#print axioms Named201_eq
end InitECandidate.Proofs.BackendStages
