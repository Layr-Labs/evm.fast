import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed97
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody97_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody97_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody97_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody97_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody97_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody97_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1#64)

def NamedBody97_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody97_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody97_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody97_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody97_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody97_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody97_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody97_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody97_14 : StackLang.HolProg 64 :=
.seq NamedBody97_12 NamedBody97_13

def NamedBody97_15 : StackLang.HolProg 64 :=
.seq NamedBody97_11 NamedBody97_14

def NamedBody97_16 : StackLang.HolProg 64 :=
.seq NamedBody97_10 NamedBody97_15

def NamedBody97_17 : StackLang.HolProg 64 :=
.seq NamedBody97_9 NamedBody97_16

def NamedBody97_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody97_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody97_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody97_21 : StackLang.HolProg 64 :=
.seq NamedBody97_19 NamedBody97_20

def NamedBody97_22 : StackLang.HolProg 64 :=
.seq NamedBody97_18 NamedBody97_21

def NamedBody97_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody97_17 NamedBody97_22

def NamedBody97_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody97_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody97_26 : StackLang.HolProg 64 :=
.seq NamedBody97_24 NamedBody97_25

def NamedBody97_27 : StackLang.HolProg 64 :=
.seq NamedBody97_23 NamedBody97_26

def NamedBody97_28 : StackLang.HolProg 64 :=
.seq NamedBody97_8 NamedBody97_27

def NamedBody97_29 : StackLang.HolProg 64 :=
.seq NamedBody97_7 NamedBody97_28

def NamedBody97_30 : StackLang.HolProg 64 :=
.seq NamedBody97_6 NamedBody97_29

def NamedBody97_31 : StackLang.HolProg 64 :=
.seq NamedBody97_5 NamedBody97_30

def NamedBody97_32 : StackLang.HolProg 64 :=
.loop NamedBody97_31

def NamedBody97_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody97_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody97_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody97_36 : StackLang.HolProg 64 :=
.seq NamedBody97_34 NamedBody97_35

def NamedBody97_37 : StackLang.HolProg 64 :=
.seq NamedBody97_33 NamedBody97_36

def NamedBody97_38 : StackLang.HolProg 64 :=
.seq NamedBody97_32 NamedBody97_37

def NamedBody97_39 : StackLang.HolProg 64 :=
.seq NamedBody97_4 NamedBody97_38

def NamedBody97_40 : StackLang.HolProg 64 :=
.seq NamedBody97_3 NamedBody97_39

def NamedBody97_41 : StackLang.HolProg 64 :=
.seq NamedBody97_2 NamedBody97_40

def NamedBody97_42 : StackLang.HolProg 64 :=
.seq NamedBody97_1 NamedBody97_41

def NamedBody97_43 : StackLang.HolProg 64 :=
.seq NamedBody97_0 NamedBody97_42

def Named97 : Nat × StackLang.HolProg 64 := (97, NamedBody97_43)
theorem Named97_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed97 = Named97 := by
  kernel_rfl
#print axioms Named97_eq
end InitECandidate.Proofs.BackendStages
