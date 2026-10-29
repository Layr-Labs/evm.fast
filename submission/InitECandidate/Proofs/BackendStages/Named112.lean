import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed112
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody112_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody112_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody112_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody112_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody112_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody112_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody112_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 12 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody112_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody112_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 13 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody112_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody112_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody112_11 : StackLang.HolProg 64 :=
.seq NamedBody112_9 NamedBody112_10

def NamedBody112_12 : StackLang.HolProg 64 :=
.seq NamedBody112_8 NamedBody112_11

def NamedBody112_13 : StackLang.HolProg 64 :=
.seq NamedBody112_7 NamedBody112_12

def NamedBody112_14 : StackLang.HolProg 64 :=
.seq NamedBody112_6 NamedBody112_13

def NamedBody112_15 : StackLang.HolProg 64 :=
.seq NamedBody112_5 NamedBody112_14

def NamedBody112_16 : StackLang.HolProg 64 :=
.seq NamedBody112_4 NamedBody112_15

def NamedBody112_17 : StackLang.HolProg 64 :=
.seq NamedBody112_3 NamedBody112_16

def NamedBody112_18 : StackLang.HolProg 64 :=
.seq NamedBody112_2 NamedBody112_17

def NamedBody112_19 : StackLang.HolProg 64 :=
.seq NamedBody112_1 NamedBody112_18

def NamedBody112_20 : StackLang.HolProg 64 :=
.seq NamedBody112_0 NamedBody112_19

def Named112 : Nat × StackLang.HolProg 64 := (112, NamedBody112_20)
theorem Named112_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed112 = Named112 := by
  kernel_rfl
#print axioms Named112_eq
end InitECandidate.Proofs.BackendStages
