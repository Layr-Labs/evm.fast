import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed115
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody115_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody115_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody115_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody115_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody115_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 10 10 5 1))

def NamedBody115_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody115_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 11 11 6 1))

def NamedBody115_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody115_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 12 12 7 1))

def NamedBody115_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody115_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 13 13 8 1))

def NamedBody115_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody115_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def NamedBody115_13 : StackLang.HolProg 64 :=
.seq NamedBody115_11 NamedBody115_12

def NamedBody115_14 : StackLang.HolProg 64 :=
.seq NamedBody115_10 NamedBody115_13

def NamedBody115_15 : StackLang.HolProg 64 :=
.seq NamedBody115_9 NamedBody115_14

def NamedBody115_16 : StackLang.HolProg 64 :=
.seq NamedBody115_8 NamedBody115_15

def NamedBody115_17 : StackLang.HolProg 64 :=
.seq NamedBody115_7 NamedBody115_16

def NamedBody115_18 : StackLang.HolProg 64 :=
.seq NamedBody115_6 NamedBody115_17

def NamedBody115_19 : StackLang.HolProg 64 :=
.seq NamedBody115_5 NamedBody115_18

def NamedBody115_20 : StackLang.HolProg 64 :=
.seq NamedBody115_4 NamedBody115_19

def NamedBody115_21 : StackLang.HolProg 64 :=
.seq NamedBody115_3 NamedBody115_20

def NamedBody115_22 : StackLang.HolProg 64 :=
.seq NamedBody115_2 NamedBody115_21

def NamedBody115_23 : StackLang.HolProg 64 :=
.seq NamedBody115_1 NamedBody115_22

def NamedBody115_24 : StackLang.HolProg 64 :=
.seq NamedBody115_0 NamedBody115_23

def Named115 : Nat × StackLang.HolProg 64 := (115, NamedBody115_24)
theorem Named115_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed115 = Named115 := by
  kernel_rfl
#print axioms Named115_eq
end InitECandidate.Proofs.BackendStages
