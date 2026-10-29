import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed113
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody113_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody113_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody113_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody113_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody113_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody113_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody113_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody113_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody113_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody113_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody113_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody113_11 : StackLang.HolProg 64 :=
.seq NamedBody113_9 NamedBody113_10

def NamedBody113_12 : StackLang.HolProg 64 :=
.seq NamedBody113_8 NamedBody113_11

def NamedBody113_13 : StackLang.HolProg 64 :=
.seq NamedBody113_7 NamedBody113_12

def NamedBody113_14 : StackLang.HolProg 64 :=
.seq NamedBody113_6 NamedBody113_13

def NamedBody113_15 : StackLang.HolProg 64 :=
.seq NamedBody113_5 NamedBody113_14

def NamedBody113_16 : StackLang.HolProg 64 :=
.seq NamedBody113_4 NamedBody113_15

def NamedBody113_17 : StackLang.HolProg 64 :=
.seq NamedBody113_3 NamedBody113_16

def NamedBody113_18 : StackLang.HolProg 64 :=
.seq NamedBody113_2 NamedBody113_17

def NamedBody113_19 : StackLang.HolProg 64 :=
.seq NamedBody113_1 NamedBody113_18

def NamedBody113_20 : StackLang.HolProg 64 :=
.seq NamedBody113_0 NamedBody113_19

def Named113 : Nat × StackLang.HolProg 64 := (113, NamedBody113_20)
theorem Named113_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed113 = Named113 := by
  kernel_rfl
#print axioms Named113_eq
end InitECandidate.Proofs.BackendStages
