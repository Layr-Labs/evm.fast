import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed126
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody126_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody126_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody126_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody126_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody126_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody126_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody126_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody126_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody126_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody126_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody126_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody126_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody126_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody126_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody126_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody126_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody126_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody126_17 : StackLang.HolProg 64 :=
.seq NamedBody126_15 NamedBody126_16

def NamedBody126_18 : StackLang.HolProg 64 :=
.seq NamedBody126_14 NamedBody126_17

def NamedBody126_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody126_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) NamedBody126_18 NamedBody126_19

def NamedBody126_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody126_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody126_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody126_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody126_25 : StackLang.HolProg 64 :=
.seq NamedBody126_23 NamedBody126_24

def NamedBody126_26 : StackLang.HolProg 64 :=
.seq NamedBody126_22 NamedBody126_25

def NamedBody126_27 : StackLang.HolProg 64 :=
.seq NamedBody126_21 NamedBody126_26

def NamedBody126_28 : StackLang.HolProg 64 :=
.seq NamedBody126_20 NamedBody126_27

def NamedBody126_29 : StackLang.HolProg 64 :=
.seq NamedBody126_13 NamedBody126_28

def NamedBody126_30 : StackLang.HolProg 64 :=
.seq NamedBody126_12 NamedBody126_29

def NamedBody126_31 : StackLang.HolProg 64 :=
.seq NamedBody126_11 NamedBody126_30

def NamedBody126_32 : StackLang.HolProg 64 :=
.seq NamedBody126_10 NamedBody126_31

def NamedBody126_33 : StackLang.HolProg 64 :=
.seq NamedBody126_9 NamedBody126_32

def NamedBody126_34 : StackLang.HolProg 64 :=
.seq NamedBody126_8 NamedBody126_33

def NamedBody126_35 : StackLang.HolProg 64 :=
.seq NamedBody126_7 NamedBody126_34

def NamedBody126_36 : StackLang.HolProg 64 :=
.seq NamedBody126_6 NamedBody126_35

def NamedBody126_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody126_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody126_39 : StackLang.HolProg 64 :=
.seq NamedBody126_37 NamedBody126_38

def NamedBody126_40 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody126_36 NamedBody126_39

def NamedBody126_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody126_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody126_43 : StackLang.HolProg 64 :=
.seq NamedBody126_41 NamedBody126_42

def NamedBody126_44 : StackLang.HolProg 64 :=
.seq NamedBody126_40 NamedBody126_43

def NamedBody126_45 : StackLang.HolProg 64 :=
.seq NamedBody126_5 NamedBody126_44

def NamedBody126_46 : StackLang.HolProg 64 :=
.seq NamedBody126_4 NamedBody126_45

def NamedBody126_47 : StackLang.HolProg 64 :=
.loop NamedBody126_46

def NamedBody126_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody126_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody126_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody126_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody126_52 : StackLang.HolProg 64 :=
.seq NamedBody126_50 NamedBody126_51

def NamedBody126_53 : StackLang.HolProg 64 :=
.seq NamedBody126_49 NamedBody126_52

def NamedBody126_54 : StackLang.HolProg 64 :=
.seq NamedBody126_48 NamedBody126_53

def NamedBody126_55 : StackLang.HolProg 64 :=
.seq NamedBody126_47 NamedBody126_54

def NamedBody126_56 : StackLang.HolProg 64 :=
.seq NamedBody126_3 NamedBody126_55

def NamedBody126_57 : StackLang.HolProg 64 :=
.seq NamedBody126_2 NamedBody126_56

def NamedBody126_58 : StackLang.HolProg 64 :=
.seq NamedBody126_1 NamedBody126_57

def NamedBody126_59 : StackLang.HolProg 64 :=
.seq NamedBody126_0 NamedBody126_58

def Named126 : Nat × StackLang.HolProg 64 := (126, NamedBody126_59)
theorem Named126_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed126 = Named126 := by
  kernel_rfl
#print axioms Named126_eq
end InitECandidate.Proofs.BackendStages
