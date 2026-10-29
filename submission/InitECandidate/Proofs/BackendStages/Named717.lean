import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed717
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody717_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody717_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody717_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 29 0#64)

def NamedBody717_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 28 0#64)

def NamedBody717_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 27 0#64)

def NamedBody717_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 0#64)

def NamedBody717_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def NamedBody717_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 1#64)

def NamedBody717_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody717_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody717_10 : StackLang.HolProg 64 :=
.call none (Sum.inl 714) none

def NamedBody717_11 : StackLang.HolProg 64 :=
.seq NamedBody717_9 NamedBody717_10

def NamedBody717_12 : StackLang.HolProg 64 :=
.seq NamedBody717_8 NamedBody717_11

def NamedBody717_13 : StackLang.HolProg 64 :=
.seq NamedBody717_7 NamedBody717_12

def NamedBody717_14 : StackLang.HolProg 64 :=
.seq NamedBody717_6 NamedBody717_13

def NamedBody717_15 : StackLang.HolProg 64 :=
.seq NamedBody717_5 NamedBody717_14

def NamedBody717_16 : StackLang.HolProg 64 :=
.seq NamedBody717_4 NamedBody717_15

def NamedBody717_17 : StackLang.HolProg 64 :=
.seq NamedBody717_3 NamedBody717_16

def NamedBody717_18 : StackLang.HolProg 64 :=
.seq NamedBody717_2 NamedBody717_17

def NamedBody717_19 : StackLang.HolProg 64 :=
.seq NamedBody717_1 NamedBody717_18

def NamedBody717_20 : StackLang.HolProg 64 :=
.seq NamedBody717_0 NamedBody717_19

def Named717 : Nat × StackLang.HolProg 64 := (717, NamedBody717_20)
theorem Named717_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed717 = Named717 := by
  kernel_rfl
#print axioms Named717_eq
end InitECandidate.Proofs.BackendStages
