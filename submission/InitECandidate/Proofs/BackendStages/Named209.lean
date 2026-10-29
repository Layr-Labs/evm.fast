import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed209
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody209_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody209_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody209_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def NamedBody209_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def NamedBody209_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def NamedBody209_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583341#64)

def NamedBody209_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody209_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody209_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 208) none

def NamedBody209_9 : StackLang.HolProg 64 :=
.seq NamedBody209_7 NamedBody209_8

def NamedBody209_10 : StackLang.HolProg 64 :=
.seq NamedBody209_6 NamedBody209_9

def NamedBody209_11 : StackLang.HolProg 64 :=
.seq NamedBody209_5 NamedBody209_10

def NamedBody209_12 : StackLang.HolProg 64 :=
.seq NamedBody209_4 NamedBody209_11

def NamedBody209_13 : StackLang.HolProg 64 :=
.seq NamedBody209_3 NamedBody209_12

def NamedBody209_14 : StackLang.HolProg 64 :=
.seq NamedBody209_2 NamedBody209_13

def NamedBody209_15 : StackLang.HolProg 64 :=
.seq NamedBody209_1 NamedBody209_14

def NamedBody209_16 : StackLang.HolProg 64 :=
.seq NamedBody209_0 NamedBody209_15

def Named209 : Nat × StackLang.HolProg 64 := (209, NamedBody209_16)
theorem Named209_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed209 = Named209 := by
  kernel_rfl
#print axioms Named209_eq
end InitECandidate.Proofs.BackendStages
