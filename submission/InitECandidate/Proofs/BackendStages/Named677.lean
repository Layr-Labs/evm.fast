import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed677
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody677_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody677_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody677_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody677_3 : StackLang.HolProg 64 :=
.seq NamedBody677_1 NamedBody677_2

def NamedBody677_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody677_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody677_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody677_7 : StackLang.HolProg 64 :=
.call none (Sum.inl 79) none

def NamedBody677_8 : StackLang.HolProg 64 :=
.seq NamedBody677_6 NamedBody677_7

def NamedBody677_9 : StackLang.HolProg 64 :=
.seq NamedBody677_5 NamedBody677_8

def NamedBody677_10 : StackLang.HolProg 64 :=
.seq NamedBody677_4 NamedBody677_9

def NamedBody677_11 : StackLang.HolProg 64 :=
.seq NamedBody677_3 NamedBody677_10

def NamedBody677_12 : StackLang.HolProg 64 :=
.seq NamedBody677_0 NamedBody677_11

def Named677 : Nat × StackLang.HolProg 64 := (677, NamedBody677_12)
theorem Named677_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed677 = Named677 := by
  kernel_rfl
#print axioms Named677_eq
end InitECandidate.Proofs.BackendStages
