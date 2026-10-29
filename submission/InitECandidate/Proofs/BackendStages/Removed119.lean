import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc119
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody119_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody119_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody119_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 4294967295#64)

def RemovedBody119_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody119_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody119_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody119_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody119_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 4294967295#64)

def RemovedBody119_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody119_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody119_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 7 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody119_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody119_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody119_13 : StackLang.HolProg 64 :=
.seq RemovedBody119_11 RemovedBody119_12

def RemovedBody119_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody119_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody119_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody119_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody119_18 : StackLang.HolProg 64 :=
.seq RemovedBody119_16 RemovedBody119_17

def RemovedBody119_19 : StackLang.HolProg 64 :=
.seq RemovedBody119_15 RemovedBody119_18

def RemovedBody119_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody119_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 23 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody119_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody119_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 23)))

def RemovedBody119_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody119_25 : StackLang.HolProg 64 :=
.seq RemovedBody119_23 RemovedBody119_24

def RemovedBody119_26 : StackLang.HolProg 64 :=
.seq RemovedBody119_22 RemovedBody119_25

def RemovedBody119_27 : StackLang.HolProg 64 :=
.seq RemovedBody119_21 RemovedBody119_26

def RemovedBody119_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody119_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 23 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody119_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody119_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 23)))

def RemovedBody119_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody119_33 : StackLang.HolProg 64 :=
.seq RemovedBody119_31 RemovedBody119_32

def RemovedBody119_34 : StackLang.HolProg 64 :=
.seq RemovedBody119_30 RemovedBody119_33

def RemovedBody119_35 : StackLang.HolProg 64 :=
.seq RemovedBody119_29 RemovedBody119_34

def RemovedBody119_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody119_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody119_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody119_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody119_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 2 5 3 0))

def RemovedBody119_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody119_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody119_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody119_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody119_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 1 1 5 0))

def RemovedBody119_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody119_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody119_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody119_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody119_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody119_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody119_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody119_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody119_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody119_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 8

def RemovedBody119_56 : StackLang.HolProg 64 :=
.seq RemovedBody119_54 RemovedBody119_55

def RemovedBody119_57 : StackLang.HolProg 64 :=
.seq RemovedBody119_53 RemovedBody119_56

def RemovedBody119_58 : StackLang.HolProg 64 :=
.seq RemovedBody119_52 RemovedBody119_57

def RemovedBody119_59 : StackLang.HolProg 64 :=
.seq RemovedBody119_51 RemovedBody119_58

def RemovedBody119_60 : StackLang.HolProg 64 :=
.seq RemovedBody119_50 RemovedBody119_59

def RemovedBody119_61 : StackLang.HolProg 64 :=
.seq RemovedBody119_49 RemovedBody119_60

def RemovedBody119_62 : StackLang.HolProg 64 :=
.seq RemovedBody119_48 RemovedBody119_61

def RemovedBody119_63 : StackLang.HolProg 64 :=
.seq RemovedBody119_47 RemovedBody119_62

def RemovedBody119_64 : StackLang.HolProg 64 :=
.seq RemovedBody119_46 RemovedBody119_63

def RemovedBody119_65 : StackLang.HolProg 64 :=
.seq RemovedBody119_45 RemovedBody119_64

def RemovedBody119_66 : StackLang.HolProg 64 :=
.seq RemovedBody119_44 RemovedBody119_65

def RemovedBody119_67 : StackLang.HolProg 64 :=
.seq RemovedBody119_43 RemovedBody119_66

def RemovedBody119_68 : StackLang.HolProg 64 :=
.seq RemovedBody119_42 RemovedBody119_67

def RemovedBody119_69 : StackLang.HolProg 64 :=
.seq RemovedBody119_41 RemovedBody119_68

def RemovedBody119_70 : StackLang.HolProg 64 :=
.seq RemovedBody119_40 RemovedBody119_69

def RemovedBody119_71 : StackLang.HolProg 64 :=
.seq RemovedBody119_39 RemovedBody119_70

def RemovedBody119_72 : StackLang.HolProg 64 :=
.seq RemovedBody119_38 RemovedBody119_71

def RemovedBody119_73 : StackLang.HolProg 64 :=
.seq RemovedBody119_37 RemovedBody119_72

def RemovedBody119_74 : StackLang.HolProg 64 :=
.seq RemovedBody119_36 RemovedBody119_73

def RemovedBody119_75 : StackLang.HolProg 64 :=
.seq RemovedBody119_35 RemovedBody119_74

def RemovedBody119_76 : StackLang.HolProg 64 :=
.seq RemovedBody119_28 RemovedBody119_75

def RemovedBody119_77 : StackLang.HolProg 64 :=
.seq RemovedBody119_27 RemovedBody119_76

def RemovedBody119_78 : StackLang.HolProg 64 :=
.seq RemovedBody119_20 RemovedBody119_77

def RemovedBody119_79 : StackLang.HolProg 64 :=
.seq RemovedBody119_19 RemovedBody119_78

def RemovedBody119_80 : StackLang.HolProg 64 :=
.seq RemovedBody119_14 RemovedBody119_79

def RemovedBody119_81 : StackLang.HolProg 64 :=
.seq RemovedBody119_13 RemovedBody119_80

def RemovedBody119_82 : StackLang.HolProg 64 :=
.seq RemovedBody119_10 RemovedBody119_81

def RemovedBody119_83 : StackLang.HolProg 64 :=
.seq RemovedBody119_9 RemovedBody119_82

def RemovedBody119_84 : StackLang.HolProg 64 :=
.seq RemovedBody119_8 RemovedBody119_83

def RemovedBody119_85 : StackLang.HolProg 64 :=
.seq RemovedBody119_7 RemovedBody119_84

def RemovedBody119_86 : StackLang.HolProg 64 :=
.seq RemovedBody119_6 RemovedBody119_85

def RemovedBody119_87 : StackLang.HolProg 64 :=
.seq RemovedBody119_5 RemovedBody119_86

def RemovedBody119_88 : StackLang.HolProg 64 :=
.seq RemovedBody119_4 RemovedBody119_87

def RemovedBody119_89 : StackLang.HolProg 64 :=
.seq RemovedBody119_3 RemovedBody119_88

def RemovedBody119_90 : StackLang.HolProg 64 :=
.seq RemovedBody119_2 RemovedBody119_89

def RemovedBody119_91 : StackLang.HolProg 64 :=
.seq RemovedBody119_1 RemovedBody119_90

def RemovedBody119_92 : StackLang.HolProg 64 :=
.seq RemovedBody119_0 RemovedBody119_91

def Removed119 : Nat × StackLang.HolProg 64 := (119, RemovedBody119_92)
theorem Removed119_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc119 = Removed119 := by
  kernel_rfl
#print axioms Removed119_eq
end InitECandidate.Proofs.BackendStages
