import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed178
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody178_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody178_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody178_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 192#64)

def NamedBody178_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody178_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody178_5 : StackLang.HolProg 64 :=
.call none (Sum.inl 174) none

def NamedBody178_6 : StackLang.HolProg 64 :=
.seq NamedBody178_4 NamedBody178_5

def NamedBody178_7 : StackLang.HolProg 64 :=
.seq NamedBody178_3 NamedBody178_6

def NamedBody178_8 : StackLang.HolProg 64 :=
.seq NamedBody178_2 NamedBody178_7

def NamedBody178_9 : StackLang.HolProg 64 :=
.seq NamedBody178_1 NamedBody178_8

def NamedBody178_10 : StackLang.HolProg 64 :=
.seq NamedBody178_0 NamedBody178_9

def Named178 : Nat × StackLang.HolProg 64 := (178, NamedBody178_10)
theorem Named178_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed178 = Named178 := by
  kernel_rfl
#print axioms Named178_eq
end InitECandidate.Proofs.BackendStages
