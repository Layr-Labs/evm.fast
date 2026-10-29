import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed197
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody197_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody197_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody197_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody197_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody197_4 : StackLang.HolProg 64 :=
.seq NamedBody197_2 NamedBody197_3

def NamedBody197_5 : StackLang.HolProg 64 :=
.seq NamedBody197_1 NamedBody197_4

def NamedBody197_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 24#64))

def NamedBody197_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody197_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody197_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody197_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody197_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody197_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def NamedBody197_13 : StackLang.HolProg 64 :=
.seq NamedBody197_11 NamedBody197_12

def NamedBody197_14 : StackLang.HolProg 64 :=
.seq NamedBody197_10 NamedBody197_13

def NamedBody197_15 : StackLang.HolProg 64 :=
.seq NamedBody197_9 NamedBody197_14

def NamedBody197_16 : StackLang.HolProg 64 :=
.seq NamedBody197_8 NamedBody197_15

def NamedBody197_17 : StackLang.HolProg 64 :=
.seq NamedBody197_7 NamedBody197_16

def NamedBody197_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody197_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody197_17 NamedBody197_18

def NamedBody197_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody197_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody197_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody197_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody197_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody197_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 48#64))

def NamedBody197_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody197_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody197_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody197_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 8#64))

def NamedBody197_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody197_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody197_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody197_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 32#64))

def NamedBody197_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody197_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody197_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody197_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody197_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 40#64))

def NamedBody197_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody197_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def NamedBody197_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody197_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody197_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def NamedBody197_44 : StackLang.HolProg 64 :=
.seq NamedBody197_42 NamedBody197_43

def NamedBody197_45 : StackLang.HolProg 64 :=
.seq NamedBody197_41 NamedBody197_44

def NamedBody197_46 : StackLang.HolProg 64 :=
.seq NamedBody197_40 NamedBody197_45

def NamedBody197_47 : StackLang.HolProg 64 :=
.seq NamedBody197_39 NamedBody197_46

def NamedBody197_48 : StackLang.HolProg 64 :=
.seq NamedBody197_38 NamedBody197_47

def NamedBody197_49 : StackLang.HolProg 64 :=
.seq NamedBody197_37 NamedBody197_48

def NamedBody197_50 : StackLang.HolProg 64 :=
.seq NamedBody197_36 NamedBody197_49

def NamedBody197_51 : StackLang.HolProg 64 :=
.seq NamedBody197_35 NamedBody197_50

def NamedBody197_52 : StackLang.HolProg 64 :=
.seq NamedBody197_34 NamedBody197_51

def NamedBody197_53 : StackLang.HolProg 64 :=
.seq NamedBody197_33 NamedBody197_52

def NamedBody197_54 : StackLang.HolProg 64 :=
.seq NamedBody197_32 NamedBody197_53

def NamedBody197_55 : StackLang.HolProg 64 :=
.seq NamedBody197_31 NamedBody197_54

def NamedBody197_56 : StackLang.HolProg 64 :=
.seq NamedBody197_30 NamedBody197_55

def NamedBody197_57 : StackLang.HolProg 64 :=
.seq NamedBody197_29 NamedBody197_56

def NamedBody197_58 : StackLang.HolProg 64 :=
.seq NamedBody197_28 NamedBody197_57

def NamedBody197_59 : StackLang.HolProg 64 :=
.seq NamedBody197_27 NamedBody197_58

def NamedBody197_60 : StackLang.HolProg 64 :=
.seq NamedBody197_26 NamedBody197_59

def NamedBody197_61 : StackLang.HolProg 64 :=
.seq NamedBody197_25 NamedBody197_60

def NamedBody197_62 : StackLang.HolProg 64 :=
.seq NamedBody197_24 NamedBody197_61

def NamedBody197_63 : StackLang.HolProg 64 :=
.seq NamedBody197_23 NamedBody197_62

def NamedBody197_64 : StackLang.HolProg 64 :=
.seq NamedBody197_22 NamedBody197_63

def NamedBody197_65 : StackLang.HolProg 64 :=
.seq NamedBody197_21 NamedBody197_64

def NamedBody197_66 : StackLang.HolProg 64 :=
.seq NamedBody197_20 NamedBody197_65

def NamedBody197_67 : StackLang.HolProg 64 :=
.seq NamedBody197_19 NamedBody197_66

def NamedBody197_68 : StackLang.HolProg 64 :=
.seq NamedBody197_6 NamedBody197_67

def NamedBody197_69 : StackLang.HolProg 64 :=
.seq NamedBody197_5 NamedBody197_68

def NamedBody197_70 : StackLang.HolProg 64 :=
.seq NamedBody197_0 NamedBody197_69

def Named197 : Nat × StackLang.HolProg 64 := (197, NamedBody197_70)
theorem Named197_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed197 = Named197 := by
  kernel_rfl
#print axioms Named197_eq
end InitECandidate.Proofs.BackendStages
