import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed219
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody219_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody219_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody219_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def NamedBody219_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551614#64)

def NamedBody219_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 13451932020343611451#64)

def NamedBody219_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 13822214165235122497#64)

def NamedBody219_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody219_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody219_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 210) none

def NamedBody219_9 : StackLang.HolProg 64 :=
.seq NamedBody219_7 NamedBody219_8

def NamedBody219_10 : StackLang.HolProg 64 :=
.seq NamedBody219_6 NamedBody219_9

def NamedBody219_11 : StackLang.HolProg 64 :=
.seq NamedBody219_5 NamedBody219_10

def NamedBody219_12 : StackLang.HolProg 64 :=
.seq NamedBody219_4 NamedBody219_11

def NamedBody219_13 : StackLang.HolProg 64 :=
.seq NamedBody219_3 NamedBody219_12

def NamedBody219_14 : StackLang.HolProg 64 :=
.seq NamedBody219_2 NamedBody219_13

def NamedBody219_15 : StackLang.HolProg 64 :=
.seq NamedBody219_1 NamedBody219_14

def NamedBody219_16 : StackLang.HolProg 64 :=
.seq NamedBody219_0 NamedBody219_15

def Named219 : Nat × StackLang.HolProg 64 := (219, NamedBody219_16)
theorem Named219_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed219 = Named219 := by
  kernel_rfl
#print axioms Named219_eq
end InitECandidate.Proofs.BackendStages
