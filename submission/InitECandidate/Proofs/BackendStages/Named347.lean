import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed347
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody347_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody347_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody347_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 144#64))

def NamedBody347_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody347_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody347_5 : StackLang.HolProg 64 :=
.seq NamedBody347_3 NamedBody347_4

def NamedBody347_6 : StackLang.HolProg 64 :=
.seq NamedBody347_2 NamedBody347_5

def NamedBody347_7 : StackLang.HolProg 64 :=
.seq NamedBody347_1 NamedBody347_6

def NamedBody347_8 : StackLang.HolProg 64 :=
.seq NamedBody347_0 NamedBody347_7

def Named347 : Nat × StackLang.HolProg 64 := (347, NamedBody347_8)
theorem Named347_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed347 = Named347 := by
  kernel_rfl
#print axioms Named347_eq
end InitECandidate.Proofs.BackendStages
