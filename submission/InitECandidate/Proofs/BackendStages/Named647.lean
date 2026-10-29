import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed647
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody647_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody647_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody647_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744069414584321#64)

def NamedBody647_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def NamedBody647_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 4294967295#64)

def NamedBody647_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744073709551615#64)

def NamedBody647_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody647_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody647_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 210) none

def NamedBody647_9 : StackLang.HolProg 64 :=
.seq NamedBody647_7 NamedBody647_8

def NamedBody647_10 : StackLang.HolProg 64 :=
.seq NamedBody647_6 NamedBody647_9

def NamedBody647_11 : StackLang.HolProg 64 :=
.seq NamedBody647_5 NamedBody647_10

def NamedBody647_12 : StackLang.HolProg 64 :=
.seq NamedBody647_4 NamedBody647_11

def NamedBody647_13 : StackLang.HolProg 64 :=
.seq NamedBody647_3 NamedBody647_12

def NamedBody647_14 : StackLang.HolProg 64 :=
.seq NamedBody647_2 NamedBody647_13

def NamedBody647_15 : StackLang.HolProg 64 :=
.seq NamedBody647_1 NamedBody647_14

def NamedBody647_16 : StackLang.HolProg 64 :=
.seq NamedBody647_0 NamedBody647_15

def Named647 : Nat × StackLang.HolProg 64 := (647, NamedBody647_16)
theorem Named647_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed647 = Named647 := by
  kernel_rfl
#print axioms Named647_eq
end InitECandidate.Proofs.BackendStages
