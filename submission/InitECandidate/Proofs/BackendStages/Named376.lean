import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed376
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody376_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody376_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody376_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody376_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1#64)

def NamedBody376_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody376_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody376_6 : StackLang.HolProg 64 :=
.call none (Sum.inl 370) none

def NamedBody376_7 : StackLang.HolProg 64 :=
.seq NamedBody376_5 NamedBody376_6

def NamedBody376_8 : StackLang.HolProg 64 :=
.seq NamedBody376_4 NamedBody376_7

def NamedBody376_9 : StackLang.HolProg 64 :=
.seq NamedBody376_3 NamedBody376_8

def NamedBody376_10 : StackLang.HolProg 64 :=
.seq NamedBody376_2 NamedBody376_9

def NamedBody376_11 : StackLang.HolProg 64 :=
.seq NamedBody376_1 NamedBody376_10

def NamedBody376_12 : StackLang.HolProg 64 :=
.seq NamedBody376_0 NamedBody376_11

def Named376 : Nat × StackLang.HolProg 64 := (376, NamedBody376_12)
theorem Named376_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed376 = Named376 := by
  kernel_rfl
#print axioms Named376_eq
end InitECandidate.Proofs.BackendStages
