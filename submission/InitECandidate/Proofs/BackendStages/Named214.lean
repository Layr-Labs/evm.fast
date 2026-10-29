import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed214
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody214_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody214_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody214_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 4611686018427387903#64)

def NamedBody214_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def NamedBody214_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def NamedBody214_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744072635809548#64)

def NamedBody214_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody214_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody214_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 208) none

def NamedBody214_9 : StackLang.HolProg 64 :=
.seq NamedBody214_7 NamedBody214_8

def NamedBody214_10 : StackLang.HolProg 64 :=
.seq NamedBody214_6 NamedBody214_9

def NamedBody214_11 : StackLang.HolProg 64 :=
.seq NamedBody214_5 NamedBody214_10

def NamedBody214_12 : StackLang.HolProg 64 :=
.seq NamedBody214_4 NamedBody214_11

def NamedBody214_13 : StackLang.HolProg 64 :=
.seq NamedBody214_3 NamedBody214_12

def NamedBody214_14 : StackLang.HolProg 64 :=
.seq NamedBody214_2 NamedBody214_13

def NamedBody214_15 : StackLang.HolProg 64 :=
.seq NamedBody214_1 NamedBody214_14

def NamedBody214_16 : StackLang.HolProg 64 :=
.seq NamedBody214_0 NamedBody214_15

def Named214 : Nat × StackLang.HolProg 64 := (214, NamedBody214_16)
theorem Named214_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed214 = Named214 := by
  kernel_rfl
#print axioms Named214_eq
end InitECandidate.Proofs.BackendStages
