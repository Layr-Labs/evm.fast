import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed82
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody82_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody82_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody82_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody82_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody82_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody82_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody82_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody82_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def NamedBody82_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody82_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody82_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody82_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody82_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody82_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody82_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody82_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody82_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody82_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody82_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody82_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def NamedBody82_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def NamedBody82_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody82_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def NamedBody82_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody82_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody82_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody82_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody82_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody82_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody82_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody82_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody82_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody82_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody82_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody82_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody82_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody82_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody82_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody82_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody82_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody82_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody82_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody82_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody82_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody82_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody82_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody82_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody82_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody82_48 : StackLang.HolProg 64 :=
.seq NamedBody82_46 NamedBody82_47

def NamedBody82_49 : StackLang.HolProg 64 :=
.seq NamedBody82_45 NamedBody82_48

def NamedBody82_50 : StackLang.HolProg 64 :=
.seq NamedBody82_44 NamedBody82_49

def NamedBody82_51 : StackLang.HolProg 64 :=
.seq NamedBody82_43 NamedBody82_50

def NamedBody82_52 : StackLang.HolProg 64 :=
.seq NamedBody82_42 NamedBody82_51

def NamedBody82_53 : StackLang.HolProg 64 :=
.seq NamedBody82_41 NamedBody82_52

def NamedBody82_54 : StackLang.HolProg 64 :=
.seq NamedBody82_40 NamedBody82_53

def NamedBody82_55 : StackLang.HolProg 64 :=
.seq NamedBody82_39 NamedBody82_54

def NamedBody82_56 : StackLang.HolProg 64 :=
.seq NamedBody82_38 NamedBody82_55

def NamedBody82_57 : StackLang.HolProg 64 :=
.seq NamedBody82_37 NamedBody82_56

def NamedBody82_58 : StackLang.HolProg 64 :=
.seq NamedBody82_36 NamedBody82_57

def NamedBody82_59 : StackLang.HolProg 64 :=
.seq NamedBody82_35 NamedBody82_58

def NamedBody82_60 : StackLang.HolProg 64 :=
.seq NamedBody82_34 NamedBody82_59

def NamedBody82_61 : StackLang.HolProg 64 :=
.seq NamedBody82_33 NamedBody82_60

def NamedBody82_62 : StackLang.HolProg 64 :=
.seq NamedBody82_32 NamedBody82_61

def NamedBody82_63 : StackLang.HolProg 64 :=
.seq NamedBody82_31 NamedBody82_62

def NamedBody82_64 : StackLang.HolProg 64 :=
.seq NamedBody82_30 NamedBody82_63

def NamedBody82_65 : StackLang.HolProg 64 :=
.seq NamedBody82_29 NamedBody82_64

def NamedBody82_66 : StackLang.HolProg 64 :=
.seq NamedBody82_28 NamedBody82_65

def NamedBody82_67 : StackLang.HolProg 64 :=
.seq NamedBody82_27 NamedBody82_66

def NamedBody82_68 : StackLang.HolProg 64 :=
.seq NamedBody82_26 NamedBody82_67

def NamedBody82_69 : StackLang.HolProg 64 :=
.seq NamedBody82_25 NamedBody82_68

def NamedBody82_70 : StackLang.HolProg 64 :=
.seq NamedBody82_24 NamedBody82_69

def NamedBody82_71 : StackLang.HolProg 64 :=
.seq NamedBody82_23 NamedBody82_70

def NamedBody82_72 : StackLang.HolProg 64 :=
.seq NamedBody82_22 NamedBody82_71

def NamedBody82_73 : StackLang.HolProg 64 :=
.seq NamedBody82_21 NamedBody82_72

def NamedBody82_74 : StackLang.HolProg 64 :=
.seq NamedBody82_20 NamedBody82_73

def NamedBody82_75 : StackLang.HolProg 64 :=
.seq NamedBody82_19 NamedBody82_74

def NamedBody82_76 : StackLang.HolProg 64 :=
.seq NamedBody82_18 NamedBody82_75

def NamedBody82_77 : StackLang.HolProg 64 :=
.seq NamedBody82_17 NamedBody82_76

def NamedBody82_78 : StackLang.HolProg 64 :=
.seq NamedBody82_16 NamedBody82_77

def NamedBody82_79 : StackLang.HolProg 64 :=
.seq NamedBody82_15 NamedBody82_78

def NamedBody82_80 : StackLang.HolProg 64 :=
.seq NamedBody82_14 NamedBody82_79

def NamedBody82_81 : StackLang.HolProg 64 :=
.seq NamedBody82_13 NamedBody82_80

def NamedBody82_82 : StackLang.HolProg 64 :=
.seq NamedBody82_12 NamedBody82_81

def NamedBody82_83 : StackLang.HolProg 64 :=
.seq NamedBody82_11 NamedBody82_82

def NamedBody82_84 : StackLang.HolProg 64 :=
.seq NamedBody82_10 NamedBody82_83

def NamedBody82_85 : StackLang.HolProg 64 :=
.seq NamedBody82_9 NamedBody82_84

def NamedBody82_86 : StackLang.HolProg 64 :=
.seq NamedBody82_8 NamedBody82_85

def NamedBody82_87 : StackLang.HolProg 64 :=
.seq NamedBody82_7 NamedBody82_86

def NamedBody82_88 : StackLang.HolProg 64 :=
.seq NamedBody82_6 NamedBody82_87

def NamedBody82_89 : StackLang.HolProg 64 :=
.seq NamedBody82_5 NamedBody82_88

def NamedBody82_90 : StackLang.HolProg 64 :=
.seq NamedBody82_4 NamedBody82_89

def NamedBody82_91 : StackLang.HolProg 64 :=
.seq NamedBody82_3 NamedBody82_90

def NamedBody82_92 : StackLang.HolProg 64 :=
.seq NamedBody82_2 NamedBody82_91

def NamedBody82_93 : StackLang.HolProg 64 :=
.seq NamedBody82_1 NamedBody82_92

def NamedBody82_94 : StackLang.HolProg 64 :=
.seq NamedBody82_0 NamedBody82_93

def Named82 : Nat × StackLang.HolProg 64 := (82, NamedBody82_94)
theorem Named82_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed82 = Named82 := by
  kernel_rfl
#print axioms Named82_eq
end InitECandidate.Proofs.BackendStages
