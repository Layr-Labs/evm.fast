import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed705
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody705_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody705_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody705_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody705_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody705_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody705_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody705_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody705_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody705_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody705_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody705_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody705_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody705_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody705_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody705_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody705_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody705_16 : StackLang.HolProg 64 :=
.seq NamedBody705_14 NamedBody705_15

def NamedBody705_17 : StackLang.HolProg 64 :=
.seq NamedBody705_13 NamedBody705_16

def NamedBody705_18 : StackLang.HolProg 64 :=
.seq NamedBody705_12 NamedBody705_17

def NamedBody705_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody705_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody705_18 NamedBody705_19

def NamedBody705_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody705_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody705_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody705_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody705_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody705_26 : StackLang.HolProg 64 :=
.seq NamedBody705_24 NamedBody705_25

def NamedBody705_27 : StackLang.HolProg 64 :=
.seq NamedBody705_23 NamedBody705_26

def NamedBody705_28 : StackLang.HolProg 64 :=
.seq NamedBody705_22 NamedBody705_27

def NamedBody705_29 : StackLang.HolProg 64 :=
.seq NamedBody705_21 NamedBody705_28

def NamedBody705_30 : StackLang.HolProg 64 :=
.seq NamedBody705_20 NamedBody705_29

def NamedBody705_31 : StackLang.HolProg 64 :=
.seq NamedBody705_11 NamedBody705_30

def NamedBody705_32 : StackLang.HolProg 64 :=
.seq NamedBody705_10 NamedBody705_31

def NamedBody705_33 : StackLang.HolProg 64 :=
.seq NamedBody705_9 NamedBody705_32

def NamedBody705_34 : StackLang.HolProg 64 :=
.seq NamedBody705_8 NamedBody705_33

def NamedBody705_35 : StackLang.HolProg 64 :=
.seq NamedBody705_7 NamedBody705_34

def NamedBody705_36 : StackLang.HolProg 64 :=
.seq NamedBody705_6 NamedBody705_35

def NamedBody705_37 : StackLang.HolProg 64 :=
.seq NamedBody705_5 NamedBody705_36

def NamedBody705_38 : StackLang.HolProg 64 :=
.seq NamedBody705_4 NamedBody705_37

def NamedBody705_39 : StackLang.HolProg 64 :=
.seq NamedBody705_3 NamedBody705_38

def NamedBody705_40 : StackLang.HolProg 64 :=
.seq NamedBody705_2 NamedBody705_39

def NamedBody705_41 : StackLang.HolProg 64 :=
.seq NamedBody705_1 NamedBody705_40

def NamedBody705_42 : StackLang.HolProg 64 :=
.seq NamedBody705_0 NamedBody705_41

def Named705 : Nat × StackLang.HolProg 64 := (705, NamedBody705_42)
theorem Named705_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed705 = Named705 := by
  kernel_rfl
#print axioms Named705_eq
end InitECandidate.Proofs.BackendStages
