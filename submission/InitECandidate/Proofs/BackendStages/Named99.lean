import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed99
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody99_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody99_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody99_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody99_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody99_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody99_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody99_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody99_7 : StackLang.HolProg 64 :=
.seq NamedBody99_5 NamedBody99_6

def NamedBody99_8 : StackLang.HolProg 64 :=
.seq NamedBody99_4 NamedBody99_7

def NamedBody99_9 : StackLang.HolProg 64 :=
.seq NamedBody99_3 NamedBody99_8

def NamedBody99_10 : StackLang.HolProg 64 :=
.seq NamedBody99_2 NamedBody99_9

def NamedBody99_11 : StackLang.HolProg 64 :=
.seq NamedBody99_1 NamedBody99_10

def NamedBody99_12 : StackLang.HolProg 64 :=
.seq NamedBody99_0 NamedBody99_11

def Named99 : Nat × StackLang.HolProg 64 := (99, NamedBody99_12)
theorem Named99_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed99 = Named99 := by
  kernel_rfl
#print axioms Named99_eq
end InitECandidate.Proofs.BackendStages
