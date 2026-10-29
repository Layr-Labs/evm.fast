import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed159
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody159_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody159_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody159_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody159_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody159_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody159_5 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody159_6 : StackLang.HolProg 64 :=
.seq NamedBody159_4 NamedBody159_5

def NamedBody159_7 : StackLang.HolProg 64 :=
.seq NamedBody159_3 NamedBody159_6

def NamedBody159_8 : StackLang.HolProg 64 :=
.seq NamedBody159_2 NamedBody159_7

def NamedBody159_9 : StackLang.HolProg 64 :=
.seq NamedBody159_1 NamedBody159_8

def NamedBody159_10 : StackLang.HolProg 64 :=
.seq NamedBody159_0 NamedBody159_9

def Named159 : Nat × StackLang.HolProg 64 := (159, NamedBody159_10)
theorem Named159_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed159 = Named159 := by
  kernel_rfl
#print axioms Named159_eq
end InitECandidate.Proofs.BackendStages
