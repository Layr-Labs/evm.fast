import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw82
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody82_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody82_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody82_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody82_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody82_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody82_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody82_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody82_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody82_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody82_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody82_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody82_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody82_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody82_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody82_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody82_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody82_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody82_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody82_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody82_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def AllocBody82_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def AllocBody82_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody82_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def AllocBody82_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody82_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody82_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody82_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody82_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody82_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody82_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody82_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody82_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody82_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody82_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody82_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody82_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody82_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody82_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody82_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody82_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody82_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody82_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody82_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody82_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody82_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody82_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody82_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody82_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody82_48 : StackLang.HolProg 64 :=
.seq AllocBody82_46 AllocBody82_47

def AllocBody82_49 : StackLang.HolProg 64 :=
.seq AllocBody82_45 AllocBody82_48

def AllocBody82_50 : StackLang.HolProg 64 :=
.seq AllocBody82_44 AllocBody82_49

def AllocBody82_51 : StackLang.HolProg 64 :=
.seq AllocBody82_43 AllocBody82_50

def AllocBody82_52 : StackLang.HolProg 64 :=
.seq AllocBody82_42 AllocBody82_51

def AllocBody82_53 : StackLang.HolProg 64 :=
.seq AllocBody82_41 AllocBody82_52

def AllocBody82_54 : StackLang.HolProg 64 :=
.seq AllocBody82_40 AllocBody82_53

def AllocBody82_55 : StackLang.HolProg 64 :=
.seq AllocBody82_39 AllocBody82_54

def AllocBody82_56 : StackLang.HolProg 64 :=
.seq AllocBody82_38 AllocBody82_55

def AllocBody82_57 : StackLang.HolProg 64 :=
.seq AllocBody82_37 AllocBody82_56

def AllocBody82_58 : StackLang.HolProg 64 :=
.seq AllocBody82_36 AllocBody82_57

def AllocBody82_59 : StackLang.HolProg 64 :=
.seq AllocBody82_35 AllocBody82_58

def AllocBody82_60 : StackLang.HolProg 64 :=
.seq AllocBody82_34 AllocBody82_59

def AllocBody82_61 : StackLang.HolProg 64 :=
.seq AllocBody82_33 AllocBody82_60

def AllocBody82_62 : StackLang.HolProg 64 :=
.seq AllocBody82_32 AllocBody82_61

def AllocBody82_63 : StackLang.HolProg 64 :=
.seq AllocBody82_31 AllocBody82_62

def AllocBody82_64 : StackLang.HolProg 64 :=
.seq AllocBody82_30 AllocBody82_63

def AllocBody82_65 : StackLang.HolProg 64 :=
.seq AllocBody82_29 AllocBody82_64

def AllocBody82_66 : StackLang.HolProg 64 :=
.seq AllocBody82_28 AllocBody82_65

def AllocBody82_67 : StackLang.HolProg 64 :=
.seq AllocBody82_27 AllocBody82_66

def AllocBody82_68 : StackLang.HolProg 64 :=
.seq AllocBody82_26 AllocBody82_67

def AllocBody82_69 : StackLang.HolProg 64 :=
.seq AllocBody82_25 AllocBody82_68

def AllocBody82_70 : StackLang.HolProg 64 :=
.seq AllocBody82_24 AllocBody82_69

def AllocBody82_71 : StackLang.HolProg 64 :=
.seq AllocBody82_23 AllocBody82_70

def AllocBody82_72 : StackLang.HolProg 64 :=
.seq AllocBody82_22 AllocBody82_71

def AllocBody82_73 : StackLang.HolProg 64 :=
.seq AllocBody82_21 AllocBody82_72

def AllocBody82_74 : StackLang.HolProg 64 :=
.seq AllocBody82_20 AllocBody82_73

def AllocBody82_75 : StackLang.HolProg 64 :=
.seq AllocBody82_19 AllocBody82_74

def AllocBody82_76 : StackLang.HolProg 64 :=
.seq AllocBody82_18 AllocBody82_75

def AllocBody82_77 : StackLang.HolProg 64 :=
.seq AllocBody82_17 AllocBody82_76

def AllocBody82_78 : StackLang.HolProg 64 :=
.seq AllocBody82_16 AllocBody82_77

def AllocBody82_79 : StackLang.HolProg 64 :=
.seq AllocBody82_15 AllocBody82_78

def AllocBody82_80 : StackLang.HolProg 64 :=
.seq AllocBody82_14 AllocBody82_79

def AllocBody82_81 : StackLang.HolProg 64 :=
.seq AllocBody82_13 AllocBody82_80

def AllocBody82_82 : StackLang.HolProg 64 :=
.seq AllocBody82_12 AllocBody82_81

def AllocBody82_83 : StackLang.HolProg 64 :=
.seq AllocBody82_11 AllocBody82_82

def AllocBody82_84 : StackLang.HolProg 64 :=
.seq AllocBody82_10 AllocBody82_83

def AllocBody82_85 : StackLang.HolProg 64 :=
.seq AllocBody82_9 AllocBody82_84

def AllocBody82_86 : StackLang.HolProg 64 :=
.seq AllocBody82_8 AllocBody82_85

def AllocBody82_87 : StackLang.HolProg 64 :=
.seq AllocBody82_7 AllocBody82_86

def AllocBody82_88 : StackLang.HolProg 64 :=
.seq AllocBody82_6 AllocBody82_87

def AllocBody82_89 : StackLang.HolProg 64 :=
.seq AllocBody82_5 AllocBody82_88

def AllocBody82_90 : StackLang.HolProg 64 :=
.seq AllocBody82_4 AllocBody82_89

def AllocBody82_91 : StackLang.HolProg 64 :=
.seq AllocBody82_3 AllocBody82_90

def AllocBody82_92 : StackLang.HolProg 64 :=
.seq AllocBody82_2 AllocBody82_91

def AllocBody82_93 : StackLang.HolProg 64 :=
.seq AllocBody82_1 AllocBody82_92

def AllocBody82_94 : StackLang.HolProg 64 :=
.seq AllocBody82_0 AllocBody82_93

def Alloc82 : Nat × StackLang.HolProg 64 := (82, AllocBody82_94)
theorem Alloc82_eq : StackAlloc.progComp (82, raw82) = Alloc82 := by
  kernel_rfl
#print axioms Alloc82_eq
end InitECandidate.Proofs.BackendStages
