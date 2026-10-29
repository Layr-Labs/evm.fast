import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed105
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody105_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody105_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody105_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 13 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody105_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody105_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 12 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody105_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody105_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody105_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody105_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody105_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody105_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody105_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody105_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody105_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody105_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody105_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody105_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody105_17 : StackLang.HolProg 64 :=
.seq NamedBody105_15 NamedBody105_16

def NamedBody105_18 : StackLang.HolProg 64 :=
.seq NamedBody105_14 NamedBody105_17

def NamedBody105_19 : StackLang.HolProg 64 :=
.seq NamedBody105_13 NamedBody105_18

def NamedBody105_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody105_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody105_19 NamedBody105_20

def NamedBody105_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody105_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody105_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody105_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody105_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody105_27 : StackLang.HolProg 64 :=
.seq NamedBody105_25 NamedBody105_26

def NamedBody105_28 : StackLang.HolProg 64 :=
.seq NamedBody105_24 NamedBody105_27

def NamedBody105_29 : StackLang.HolProg 64 :=
.seq NamedBody105_23 NamedBody105_28

def NamedBody105_30 : StackLang.HolProg 64 :=
.seq NamedBody105_22 NamedBody105_29

def NamedBody105_31 : StackLang.HolProg 64 :=
.seq NamedBody105_21 NamedBody105_30

def NamedBody105_32 : StackLang.HolProg 64 :=
.seq NamedBody105_12 NamedBody105_31

def NamedBody105_33 : StackLang.HolProg 64 :=
.seq NamedBody105_11 NamedBody105_32

def NamedBody105_34 : StackLang.HolProg 64 :=
.seq NamedBody105_10 NamedBody105_33

def NamedBody105_35 : StackLang.HolProg 64 :=
.seq NamedBody105_9 NamedBody105_34

def NamedBody105_36 : StackLang.HolProg 64 :=
.seq NamedBody105_8 NamedBody105_35

def NamedBody105_37 : StackLang.HolProg 64 :=
.seq NamedBody105_7 NamedBody105_36

def NamedBody105_38 : StackLang.HolProg 64 :=
.seq NamedBody105_6 NamedBody105_37

def NamedBody105_39 : StackLang.HolProg 64 :=
.seq NamedBody105_5 NamedBody105_38

def NamedBody105_40 : StackLang.HolProg 64 :=
.seq NamedBody105_4 NamedBody105_39

def NamedBody105_41 : StackLang.HolProg 64 :=
.seq NamedBody105_3 NamedBody105_40

def NamedBody105_42 : StackLang.HolProg 64 :=
.seq NamedBody105_2 NamedBody105_41

def NamedBody105_43 : StackLang.HolProg 64 :=
.seq NamedBody105_1 NamedBody105_42

def NamedBody105_44 : StackLang.HolProg 64 :=
.seq NamedBody105_0 NamedBody105_43

def Named105 : Nat × StackLang.HolProg 64 := (105, NamedBody105_44)
theorem Named105_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed105 = Named105 := by
  kernel_rfl
#print axioms Named105_eq
end InitECandidate.Proofs.BackendStages
