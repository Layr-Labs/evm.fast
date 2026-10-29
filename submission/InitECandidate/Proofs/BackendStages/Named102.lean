import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed102
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody102_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody102_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody102_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody102_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody102_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody102_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody102_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody102_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody102_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody102_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody102_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody102_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody102_12 : StackLang.HolProg 64 :=
.seq NamedBody102_10 NamedBody102_11

def NamedBody102_13 : StackLang.HolProg 64 :=
.seq NamedBody102_9 NamedBody102_12

def NamedBody102_14 : StackLang.HolProg 64 :=
.seq NamedBody102_8 NamedBody102_13

def NamedBody102_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody102_16 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody102_14 NamedBody102_15

def NamedBody102_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody102_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody102_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody102_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody102_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody102_22 : StackLang.HolProg 64 :=
.seq NamedBody102_20 NamedBody102_21

def NamedBody102_23 : StackLang.HolProg 64 :=
.seq NamedBody102_19 NamedBody102_22

def NamedBody102_24 : StackLang.HolProg 64 :=
.seq NamedBody102_18 NamedBody102_23

def NamedBody102_25 : StackLang.HolProg 64 :=
.seq NamedBody102_17 NamedBody102_24

def NamedBody102_26 : StackLang.HolProg 64 :=
.seq NamedBody102_16 NamedBody102_25

def NamedBody102_27 : StackLang.HolProg 64 :=
.seq NamedBody102_7 NamedBody102_26

def NamedBody102_28 : StackLang.HolProg 64 :=
.seq NamedBody102_6 NamedBody102_27

def NamedBody102_29 : StackLang.HolProg 64 :=
.seq NamedBody102_5 NamedBody102_28

def NamedBody102_30 : StackLang.HolProg 64 :=
.seq NamedBody102_4 NamedBody102_29

def NamedBody102_31 : StackLang.HolProg 64 :=
.seq NamedBody102_3 NamedBody102_30

def NamedBody102_32 : StackLang.HolProg 64 :=
.seq NamedBody102_2 NamedBody102_31

def NamedBody102_33 : StackLang.HolProg 64 :=
.seq NamedBody102_1 NamedBody102_32

def NamedBody102_34 : StackLang.HolProg 64 :=
.seq NamedBody102_0 NamedBody102_33

def Named102 : Nat × StackLang.HolProg 64 := (102, NamedBody102_34)
theorem Named102_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed102 = Named102 := by
  kernel_rfl
#print axioms Named102_eq
end InitECandidate.Proofs.BackendStages
