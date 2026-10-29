import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed216
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody216_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody216_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody216_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 29 18446744073709551615#64)

def NamedBody216_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 28 18446744073709551614#64)

def NamedBody216_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 27 13451932020343611451#64)

def NamedBody216_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 13822214165235122497#64)

def NamedBody216_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody216_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody216_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 135) none

def NamedBody216_9 : StackLang.HolProg 64 :=
.seq NamedBody216_7 NamedBody216_8

def NamedBody216_10 : StackLang.HolProg 64 :=
.seq NamedBody216_6 NamedBody216_9

def NamedBody216_11 : StackLang.HolProg 64 :=
.seq NamedBody216_5 NamedBody216_10

def NamedBody216_12 : StackLang.HolProg 64 :=
.seq NamedBody216_4 NamedBody216_11

def NamedBody216_13 : StackLang.HolProg 64 :=
.seq NamedBody216_3 NamedBody216_12

def NamedBody216_14 : StackLang.HolProg 64 :=
.seq NamedBody216_2 NamedBody216_13

def NamedBody216_15 : StackLang.HolProg 64 :=
.seq NamedBody216_1 NamedBody216_14

def NamedBody216_16 : StackLang.HolProg 64 :=
.seq NamedBody216_0 NamedBody216_15

def Named216 : Nat × StackLang.HolProg 64 := (216, NamedBody216_16)
theorem Named216_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed216 = Named216 := by
  kernel_rfl
#print axioms Named216_eq
end InitECandidate.Proofs.BackendStages
