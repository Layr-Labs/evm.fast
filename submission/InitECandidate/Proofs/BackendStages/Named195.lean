import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed195
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody195_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody195_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody195_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody195_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody195_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody195_5 : StackLang.HolProg 64 :=
.seq NamedBody195_3 NamedBody195_4

def NamedBody195_6 : StackLang.HolProg 64 :=
.seq NamedBody195_2 NamedBody195_5

def NamedBody195_7 : StackLang.HolProg 64 :=
.seq NamedBody195_1 NamedBody195_6

def NamedBody195_8 : StackLang.HolProg 64 :=
.seq NamedBody195_0 NamedBody195_7

def Named195 : Nat × StackLang.HolProg 64 := (195, NamedBody195_8)
theorem Named195_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed195 = Named195 := by
  kernel_rfl
#print axioms Named195_eq
end InitECandidate.Proofs.BackendStages
