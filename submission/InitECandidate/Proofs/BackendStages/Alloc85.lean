import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw85
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody85_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody85_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody85_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def AllocBody85_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody85_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody85_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody85_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody85_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody85_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody85_9 : StackLang.HolProg 64 :=
.call none (Sum.inl 84) none

def AllocBody85_10 : StackLang.HolProg 64 :=
.seq AllocBody85_8 AllocBody85_9

def AllocBody85_11 : StackLang.HolProg 64 :=
.seq AllocBody85_7 AllocBody85_10

def AllocBody85_12 : StackLang.HolProg 64 :=
.seq AllocBody85_6 AllocBody85_11

def AllocBody85_13 : StackLang.HolProg 64 :=
.seq AllocBody85_5 AllocBody85_12

def AllocBody85_14 : StackLang.HolProg 64 :=
.seq AllocBody85_4 AllocBody85_13

def AllocBody85_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody85_16 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody85_14 AllocBody85_15

def AllocBody85_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody85_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody85_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody85_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody85_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody85_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody85_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody85_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody85_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody85_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody85_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody85_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody85_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody85_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody85_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody85_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody85_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody85_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody85_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody85_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody85_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def AllocBody85_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody85_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody85_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def AllocBody85_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody85_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody85_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 8 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody85_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody85_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody85_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody85_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody85_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody85_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody85_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody85_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody85_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody85_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody85_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody85_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody85_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody85_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody85_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody85_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody85_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody85_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody85_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody85_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody85_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody85_65 : StackLang.HolProg 64 :=
.seq AllocBody85_63 AllocBody85_64

def AllocBody85_66 : StackLang.HolProg 64 :=
.seq AllocBody85_62 AllocBody85_65

def AllocBody85_67 : StackLang.HolProg 64 :=
.seq AllocBody85_61 AllocBody85_66

def AllocBody85_68 : StackLang.HolProg 64 :=
.seq AllocBody85_60 AllocBody85_67

def AllocBody85_69 : StackLang.HolProg 64 :=
.seq AllocBody85_59 AllocBody85_68

def AllocBody85_70 : StackLang.HolProg 64 :=
.seq AllocBody85_58 AllocBody85_69

def AllocBody85_71 : StackLang.HolProg 64 :=
.seq AllocBody85_57 AllocBody85_70

def AllocBody85_72 : StackLang.HolProg 64 :=
.seq AllocBody85_56 AllocBody85_71

def AllocBody85_73 : StackLang.HolProg 64 :=
.seq AllocBody85_55 AllocBody85_72

def AllocBody85_74 : StackLang.HolProg 64 :=
.seq AllocBody85_54 AllocBody85_73

def AllocBody85_75 : StackLang.HolProg 64 :=
.seq AllocBody85_53 AllocBody85_74

def AllocBody85_76 : StackLang.HolProg 64 :=
.seq AllocBody85_52 AllocBody85_75

def AllocBody85_77 : StackLang.HolProg 64 :=
.seq AllocBody85_51 AllocBody85_76

def AllocBody85_78 : StackLang.HolProg 64 :=
.seq AllocBody85_50 AllocBody85_77

def AllocBody85_79 : StackLang.HolProg 64 :=
.seq AllocBody85_49 AllocBody85_78

def AllocBody85_80 : StackLang.HolProg 64 :=
.seq AllocBody85_48 AllocBody85_79

def AllocBody85_81 : StackLang.HolProg 64 :=
.seq AllocBody85_47 AllocBody85_80

def AllocBody85_82 : StackLang.HolProg 64 :=
.seq AllocBody85_46 AllocBody85_81

def AllocBody85_83 : StackLang.HolProg 64 :=
.seq AllocBody85_45 AllocBody85_82

def AllocBody85_84 : StackLang.HolProg 64 :=
.seq AllocBody85_44 AllocBody85_83

def AllocBody85_85 : StackLang.HolProg 64 :=
.seq AllocBody85_43 AllocBody85_84

def AllocBody85_86 : StackLang.HolProg 64 :=
.seq AllocBody85_42 AllocBody85_85

def AllocBody85_87 : StackLang.HolProg 64 :=
.seq AllocBody85_41 AllocBody85_86

def AllocBody85_88 : StackLang.HolProg 64 :=
.seq AllocBody85_40 AllocBody85_87

def AllocBody85_89 : StackLang.HolProg 64 :=
.seq AllocBody85_39 AllocBody85_88

def AllocBody85_90 : StackLang.HolProg 64 :=
.seq AllocBody85_38 AllocBody85_89

def AllocBody85_91 : StackLang.HolProg 64 :=
.seq AllocBody85_37 AllocBody85_90

def AllocBody85_92 : StackLang.HolProg 64 :=
.seq AllocBody85_36 AllocBody85_91

def AllocBody85_93 : StackLang.HolProg 64 :=
.seq AllocBody85_35 AllocBody85_92

def AllocBody85_94 : StackLang.HolProg 64 :=
.seq AllocBody85_34 AllocBody85_93

def AllocBody85_95 : StackLang.HolProg 64 :=
.seq AllocBody85_33 AllocBody85_94

def AllocBody85_96 : StackLang.HolProg 64 :=
.seq AllocBody85_32 AllocBody85_95

def AllocBody85_97 : StackLang.HolProg 64 :=
.seq AllocBody85_31 AllocBody85_96

def AllocBody85_98 : StackLang.HolProg 64 :=
.seq AllocBody85_30 AllocBody85_97

def AllocBody85_99 : StackLang.HolProg 64 :=
.seq AllocBody85_29 AllocBody85_98

def AllocBody85_100 : StackLang.HolProg 64 :=
.seq AllocBody85_28 AllocBody85_99

def AllocBody85_101 : StackLang.HolProg 64 :=
.seq AllocBody85_27 AllocBody85_100

def AllocBody85_102 : StackLang.HolProg 64 :=
.seq AllocBody85_26 AllocBody85_101

def AllocBody85_103 : StackLang.HolProg 64 :=
.seq AllocBody85_25 AllocBody85_102

def AllocBody85_104 : StackLang.HolProg 64 :=
.seq AllocBody85_24 AllocBody85_103

def AllocBody85_105 : StackLang.HolProg 64 :=
.seq AllocBody85_23 AllocBody85_104

def AllocBody85_106 : StackLang.HolProg 64 :=
.seq AllocBody85_22 AllocBody85_105

def AllocBody85_107 : StackLang.HolProg 64 :=
.seq AllocBody85_21 AllocBody85_106

def AllocBody85_108 : StackLang.HolProg 64 :=
.seq AllocBody85_20 AllocBody85_107

def AllocBody85_109 : StackLang.HolProg 64 :=
.seq AllocBody85_19 AllocBody85_108

def AllocBody85_110 : StackLang.HolProg 64 :=
.seq AllocBody85_18 AllocBody85_109

def AllocBody85_111 : StackLang.HolProg 64 :=
.seq AllocBody85_17 AllocBody85_110

def AllocBody85_112 : StackLang.HolProg 64 :=
.seq AllocBody85_16 AllocBody85_111

def AllocBody85_113 : StackLang.HolProg 64 :=
.seq AllocBody85_3 AllocBody85_112

def AllocBody85_114 : StackLang.HolProg 64 :=
.seq AllocBody85_2 AllocBody85_113

def AllocBody85_115 : StackLang.HolProg 64 :=
.seq AllocBody85_1 AllocBody85_114

def AllocBody85_116 : StackLang.HolProg 64 :=
.seq AllocBody85_0 AllocBody85_115

def Alloc85 : Nat × StackLang.HolProg 64 := (85, AllocBody85_116)
theorem Alloc85_eq : StackAlloc.progComp (85, raw85) = Alloc85 := by
  kernel_rfl
#print axioms Alloc85_eq
end InitECandidate.Proofs.BackendStages
