import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed355
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody355_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody355_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody355_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 264#64))

def NamedBody355_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody355_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody355_5 : StackLang.HolProg 64 :=
.seq NamedBody355_3 NamedBody355_4

def NamedBody355_6 : StackLang.HolProg 64 :=
.seq NamedBody355_2 NamedBody355_5

def NamedBody355_7 : StackLang.HolProg 64 :=
.seq NamedBody355_1 NamedBody355_6

def NamedBody355_8 : StackLang.HolProg 64 :=
.seq NamedBody355_0 NamedBody355_7

def Named355 : Nat × StackLang.HolProg 64 := (355, NamedBody355_8)
theorem Named355_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed355 = Named355 := by
  kernel_rfl
#print axioms Named355_eq
end InitECandidate.Proofs.BackendStages
