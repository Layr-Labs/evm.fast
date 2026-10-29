import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed676
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody676_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody676_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody676_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody676_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody676_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody676_5 : StackLang.HolProg 64 :=
.call none (Sum.inl 80) none

def NamedBody676_6 : StackLang.HolProg 64 :=
.seq NamedBody676_4 NamedBody676_5

def NamedBody676_7 : StackLang.HolProg 64 :=
.seq NamedBody676_3 NamedBody676_6

def NamedBody676_8 : StackLang.HolProg 64 :=
.seq NamedBody676_2 NamedBody676_7

def NamedBody676_9 : StackLang.HolProg 64 :=
.seq NamedBody676_1 NamedBody676_8

def NamedBody676_10 : StackLang.HolProg 64 :=
.seq NamedBody676_0 NamedBody676_9

def Named676 : Nat × StackLang.HolProg 64 := (676, NamedBody676_10)
theorem Named676_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed676 = Named676 := by
  kernel_rfl
#print axioms Named676_eq
end InitECandidate.Proofs.BackendStages
