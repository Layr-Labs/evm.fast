import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed349
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody349_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody349_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody349_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 152#64))

def NamedBody349_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody349_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody349_5 : StackLang.HolProg 64 :=
.seq NamedBody349_3 NamedBody349_4

def NamedBody349_6 : StackLang.HolProg 64 :=
.seq NamedBody349_2 NamedBody349_5

def NamedBody349_7 : StackLang.HolProg 64 :=
.seq NamedBody349_1 NamedBody349_6

def NamedBody349_8 : StackLang.HolProg 64 :=
.seq NamedBody349_0 NamedBody349_7

def Named349 : Nat × StackLang.HolProg 64 := (349, NamedBody349_8)
theorem Named349_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed349 = Named349 := by
  kernel_rfl
#print axioms Named349_eq
end InitECandidate.Proofs.BackendStages
