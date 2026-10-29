import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed196
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody196_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody196_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody196_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody196_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody196_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody196_5 : StackLang.HolProg 64 :=
.seq NamedBody196_3 NamedBody196_4

def NamedBody196_6 : StackLang.HolProg 64 :=
.seq NamedBody196_2 NamedBody196_5

def NamedBody196_7 : StackLang.HolProg 64 :=
.seq NamedBody196_1 NamedBody196_6

def NamedBody196_8 : StackLang.HolProg 64 :=
.seq NamedBody196_0 NamedBody196_7

def Named196 : Nat × StackLang.HolProg 64 := (196, NamedBody196_8)
theorem Named196_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed196 = Named196 := by
  kernel_rfl
#print axioms Named196_eq
end InitECandidate.Proofs.BackendStages
