import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed213
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody213_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody213_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody213_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def NamedBody213_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def NamedBody213_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def NamedBody213_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583343#64)

def NamedBody213_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody213_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody213_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 210) none

def NamedBody213_9 : StackLang.HolProg 64 :=
.seq NamedBody213_7 NamedBody213_8

def NamedBody213_10 : StackLang.HolProg 64 :=
.seq NamedBody213_6 NamedBody213_9

def NamedBody213_11 : StackLang.HolProg 64 :=
.seq NamedBody213_5 NamedBody213_10

def NamedBody213_12 : StackLang.HolProg 64 :=
.seq NamedBody213_4 NamedBody213_11

def NamedBody213_13 : StackLang.HolProg 64 :=
.seq NamedBody213_3 NamedBody213_12

def NamedBody213_14 : StackLang.HolProg 64 :=
.seq NamedBody213_2 NamedBody213_13

def NamedBody213_15 : StackLang.HolProg 64 :=
.seq NamedBody213_1 NamedBody213_14

def NamedBody213_16 : StackLang.HolProg 64 :=
.seq NamedBody213_0 NamedBody213_15

def Named213 : Nat × StackLang.HolProg 64 := (213, NamedBody213_16)
theorem Named213_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed213 = Named213 := by
  kernel_rfl
#print axioms Named213_eq
end InitECandidate.Proofs.BackendStages
