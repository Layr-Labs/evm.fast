import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed663
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody663_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody663_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody663_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def NamedBody663_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def NamedBody663_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def NamedBody663_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def NamedBody663_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody663_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody663_8 : StackLang.HolProg 64 :=
.call none (Sum.inl 661) none

def NamedBody663_9 : StackLang.HolProg 64 :=
.seq NamedBody663_7 NamedBody663_8

def NamedBody663_10 : StackLang.HolProg 64 :=
.seq NamedBody663_6 NamedBody663_9

def NamedBody663_11 : StackLang.HolProg 64 :=
.seq NamedBody663_5 NamedBody663_10

def NamedBody663_12 : StackLang.HolProg 64 :=
.seq NamedBody663_4 NamedBody663_11

def NamedBody663_13 : StackLang.HolProg 64 :=
.seq NamedBody663_3 NamedBody663_12

def NamedBody663_14 : StackLang.HolProg 64 :=
.seq NamedBody663_2 NamedBody663_13

def NamedBody663_15 : StackLang.HolProg 64 :=
.seq NamedBody663_1 NamedBody663_14

def NamedBody663_16 : StackLang.HolProg 64 :=
.seq NamedBody663_0 NamedBody663_15

def Named663 : Nat × StackLang.HolProg 64 := (663, NamedBody663_16)
theorem Named663_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed663 = Named663 := by
  kernel_rfl
#print axioms Named663_eq
end InitECandidate.Proofs.BackendStages
