import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed462
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody462_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody462_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody462_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody462_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody462_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody462_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody462_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody462_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 18446744073709551615#64)

def NamedBody462_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody462_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody462_10 : StackLang.HolProg 64 :=
.seq NamedBody462_8 NamedBody462_9

def NamedBody462_11 : StackLang.HolProg 64 :=
.seq NamedBody462_7 NamedBody462_10

def NamedBody462_12 : StackLang.HolProg 64 :=
.seq NamedBody462_6 NamedBody462_11

def NamedBody462_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody462_14 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody462_12 NamedBody462_13

def NamedBody462_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody462_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody462_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody462_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody462_19 : StackLang.HolProg 64 :=
.seq NamedBody462_17 NamedBody462_18

def NamedBody462_20 : StackLang.HolProg 64 :=
.seq NamedBody462_16 NamedBody462_19

def NamedBody462_21 : StackLang.HolProg 64 :=
.seq NamedBody462_15 NamedBody462_20

def NamedBody462_22 : StackLang.HolProg 64 :=
.seq NamedBody462_14 NamedBody462_21

def NamedBody462_23 : StackLang.HolProg 64 :=
.seq NamedBody462_5 NamedBody462_22

def NamedBody462_24 : StackLang.HolProg 64 :=
.seq NamedBody462_4 NamedBody462_23

def NamedBody462_25 : StackLang.HolProg 64 :=
.seq NamedBody462_3 NamedBody462_24

def NamedBody462_26 : StackLang.HolProg 64 :=
.seq NamedBody462_2 NamedBody462_25

def NamedBody462_27 : StackLang.HolProg 64 :=
.seq NamedBody462_1 NamedBody462_26

def NamedBody462_28 : StackLang.HolProg 64 :=
.seq NamedBody462_0 NamedBody462_27

def Named462 : Nat × StackLang.HolProg 64 := (462, NamedBody462_28)
theorem Named462_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed462 = Named462 := by
  kernel_rfl
#print axioms Named462_eq
end InitECandidate.Proofs.BackendStages
