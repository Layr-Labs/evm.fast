import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed114
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody114_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody114_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody114_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody114_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody114_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody114_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody114_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 12 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody114_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody114_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 13 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody114_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody114_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody114_11 : StackLang.HolProg 64 :=
.seq NamedBody114_9 NamedBody114_10

def NamedBody114_12 : StackLang.HolProg 64 :=
.seq NamedBody114_8 NamedBody114_11

def NamedBody114_13 : StackLang.HolProg 64 :=
.seq NamedBody114_7 NamedBody114_12

def NamedBody114_14 : StackLang.HolProg 64 :=
.seq NamedBody114_6 NamedBody114_13

def NamedBody114_15 : StackLang.HolProg 64 :=
.seq NamedBody114_5 NamedBody114_14

def NamedBody114_16 : StackLang.HolProg 64 :=
.seq NamedBody114_4 NamedBody114_15

def NamedBody114_17 : StackLang.HolProg 64 :=
.seq NamedBody114_3 NamedBody114_16

def NamedBody114_18 : StackLang.HolProg 64 :=
.seq NamedBody114_2 NamedBody114_17

def NamedBody114_19 : StackLang.HolProg 64 :=
.seq NamedBody114_1 NamedBody114_18

def NamedBody114_20 : StackLang.HolProg 64 :=
.seq NamedBody114_0 NamedBody114_19

def Named114 : Nat × StackLang.HolProg 64 := (114, NamedBody114_20)
theorem Named114_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed114 = Named114 := by
  kernel_rfl
#print axioms Named114_eq
end InitECandidate.Proofs.BackendStages
