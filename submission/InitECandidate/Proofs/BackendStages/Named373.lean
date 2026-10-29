import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed373
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody373_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody373_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody373_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody373_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1#64)

def NamedBody373_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody373_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody373_6 : StackLang.HolProg 64 :=
.call none (Sum.inl 370) none

def NamedBody373_7 : StackLang.HolProg 64 :=
.seq NamedBody373_5 NamedBody373_6

def NamedBody373_8 : StackLang.HolProg 64 :=
.seq NamedBody373_4 NamedBody373_7

def NamedBody373_9 : StackLang.HolProg 64 :=
.seq NamedBody373_3 NamedBody373_8

def NamedBody373_10 : StackLang.HolProg 64 :=
.seq NamedBody373_2 NamedBody373_9

def NamedBody373_11 : StackLang.HolProg 64 :=
.seq NamedBody373_1 NamedBody373_10

def NamedBody373_12 : StackLang.HolProg 64 :=
.seq NamedBody373_0 NamedBody373_11

def Named373 : Nat × StackLang.HolProg 64 := (373, NamedBody373_12)
theorem Named373_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed373 = Named373 := by
  kernel_rfl
#print axioms Named373_eq
end InitECandidate.Proofs.BackendStages
