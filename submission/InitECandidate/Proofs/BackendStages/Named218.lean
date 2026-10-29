import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed218
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody218_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody218_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody218_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def NamedBody218_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551614#64)

def NamedBody218_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 13451932020343611451#64)

def NamedBody218_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 13822214165235122495#64)

def NamedBody218_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody218_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody218_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 217) none

def NamedBody218_9 : StackLang.HolProg 64 :=
.seq NamedBody218_7 NamedBody218_8

def NamedBody218_10 : StackLang.HolProg 64 :=
.seq NamedBody218_6 NamedBody218_9

def NamedBody218_11 : StackLang.HolProg 64 :=
.seq NamedBody218_5 NamedBody218_10

def NamedBody218_12 : StackLang.HolProg 64 :=
.seq NamedBody218_4 NamedBody218_11

def NamedBody218_13 : StackLang.HolProg 64 :=
.seq NamedBody218_3 NamedBody218_12

def NamedBody218_14 : StackLang.HolProg 64 :=
.seq NamedBody218_2 NamedBody218_13

def NamedBody218_15 : StackLang.HolProg 64 :=
.seq NamedBody218_1 NamedBody218_14

def NamedBody218_16 : StackLang.HolProg 64 :=
.seq NamedBody218_0 NamedBody218_15

def Named218 : Nat × StackLang.HolProg 64 := (218, NamedBody218_16)
theorem Named218_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed218 = Named218 := by
  kernel_rfl
#print axioms Named218_eq
end InitECandidate.Proofs.BackendStages
