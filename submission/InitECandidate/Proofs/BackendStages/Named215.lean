import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed215
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody215_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody215_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody215_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 29 18446744073709551615#64)

def NamedBody215_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 28 18446744073709551614#64)

def NamedBody215_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 27 13451932020343611451#64)

def NamedBody215_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 13822214165235122497#64)

def NamedBody215_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody215_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody215_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 136) none

def NamedBody215_9 : StackLang.HolProg 64 :=
.seq NamedBody215_7 NamedBody215_8

def NamedBody215_10 : StackLang.HolProg 64 :=
.seq NamedBody215_6 NamedBody215_9

def NamedBody215_11 : StackLang.HolProg 64 :=
.seq NamedBody215_5 NamedBody215_10

def NamedBody215_12 : StackLang.HolProg 64 :=
.seq NamedBody215_4 NamedBody215_11

def NamedBody215_13 : StackLang.HolProg 64 :=
.seq NamedBody215_3 NamedBody215_12

def NamedBody215_14 : StackLang.HolProg 64 :=
.seq NamedBody215_2 NamedBody215_13

def NamedBody215_15 : StackLang.HolProg 64 :=
.seq NamedBody215_1 NamedBody215_14

def NamedBody215_16 : StackLang.HolProg 64 :=
.seq NamedBody215_0 NamedBody215_15

def Named215 : Nat × StackLang.HolProg 64 := (215, NamedBody215_16)
theorem Named215_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed215 = Named215 := by
  kernel_rfl
#print axioms Named215_eq
end InitECandidate.Proofs.BackendStages
