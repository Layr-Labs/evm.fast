import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed101
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody101_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody101_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody101_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody101_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody101_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody101_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody101_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody101_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody101_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody101_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody101_10 : StackLang.HolProg 64 :=
.seq NamedBody101_8 NamedBody101_9

def NamedBody101_11 : StackLang.HolProg 64 :=
.seq NamedBody101_7 NamedBody101_10

def NamedBody101_12 : StackLang.HolProg 64 :=
.seq NamedBody101_6 NamedBody101_11

def NamedBody101_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody101_14 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody101_12 NamedBody101_13

def NamedBody101_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody101_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody101_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody101_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody101_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody101_20 : StackLang.HolProg 64 :=
.seq NamedBody101_18 NamedBody101_19

def NamedBody101_21 : StackLang.HolProg 64 :=
.seq NamedBody101_17 NamedBody101_20

def NamedBody101_22 : StackLang.HolProg 64 :=
.seq NamedBody101_16 NamedBody101_21

def NamedBody101_23 : StackLang.HolProg 64 :=
.seq NamedBody101_15 NamedBody101_22

def NamedBody101_24 : StackLang.HolProg 64 :=
.seq NamedBody101_14 NamedBody101_23

def NamedBody101_25 : StackLang.HolProg 64 :=
.seq NamedBody101_5 NamedBody101_24

def NamedBody101_26 : StackLang.HolProg 64 :=
.seq NamedBody101_4 NamedBody101_25

def NamedBody101_27 : StackLang.HolProg 64 :=
.seq NamedBody101_3 NamedBody101_26

def NamedBody101_28 : StackLang.HolProg 64 :=
.seq NamedBody101_2 NamedBody101_27

def NamedBody101_29 : StackLang.HolProg 64 :=
.seq NamedBody101_1 NamedBody101_28

def NamedBody101_30 : StackLang.HolProg 64 :=
.seq NamedBody101_0 NamedBody101_29

def Named101 : Nat × StackLang.HolProg 64 := (101, NamedBody101_30)
theorem Named101_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed101 = Named101 := by
  kernel_rfl
#print axioms Named101_eq
end InitECandidate.Proofs.BackendStages
