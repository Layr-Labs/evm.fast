import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw485
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody485_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody485_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody485_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def AllocBody485_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def AllocBody485_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody485_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody485_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody485_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody485_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody485_9 : StackLang.HolProg 64 :=
.seq AllocBody485_7 AllocBody485_8

def AllocBody485_10 : StackLang.HolProg 64 :=
.seq AllocBody485_6 AllocBody485_9

def AllocBody485_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1523#64)

def AllocBody485_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody485_14 : StackLang.HolProg 64 :=
.seq AllocBody485_12 AllocBody485_13

def AllocBody485_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody485_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody485_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody485_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 485 3

def AllocBody485_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody485_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody485_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody485_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody485_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody485_25 : StackLang.HolProg 64 :=
.seq AllocBody485_23 AllocBody485_24

def AllocBody485_26 : StackLang.HolProg 64 :=
.seq AllocBody485_22 AllocBody485_25

def AllocBody485_27 : StackLang.HolProg 64 :=
.seq AllocBody485_21 AllocBody485_26

def AllocBody485_28 : StackLang.HolProg 64 :=
.seq AllocBody485_20 AllocBody485_27

def AllocBody485_29 : StackLang.HolProg 64 :=
.seq AllocBody485_19 AllocBody485_28

def AllocBody485_30 : StackLang.HolProg 64 :=
.seq AllocBody485_18 AllocBody485_29

def AllocBody485_31 : StackLang.HolProg 64 :=
.seq AllocBody485_17 AllocBody485_30

def AllocBody485_32 : StackLang.HolProg 64 :=
.seq AllocBody485_16 AllocBody485_31

def AllocBody485_33 : StackLang.HolProg 64 :=
.seq AllocBody485_15 AllocBody485_32

def AllocBody485_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody485_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody485_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody485_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody485_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody485_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody485_42 : StackLang.HolProg 64 :=
.seq AllocBody485_40 AllocBody485_41

def AllocBody485_43 : StackLang.HolProg 64 :=
.seq AllocBody485_39 AllocBody485_42

def AllocBody485_44 : StackLang.HolProg 64 :=
.seq AllocBody485_38 AllocBody485_43

def AllocBody485_45 : StackLang.HolProg 64 :=
.seq AllocBody485_37 AllocBody485_44

def AllocBody485_46 : StackLang.HolProg 64 :=
.seq AllocBody485_36 AllocBody485_45

def AllocBody485_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody485_48 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody485_49 : StackLang.HolProg 64 :=
.seq AllocBody485_47 AllocBody485_48

def AllocBody485_50 : StackLang.HolProg 64 :=
.call (some (AllocBody485_46, 0, 485, 2)) (Sum.inl 74) (some (AllocBody485_49, 485, 3))

def AllocBody485_51 : StackLang.HolProg 64 :=
.seq AllocBody485_35 AllocBody485_50

def AllocBody485_52 : StackLang.HolProg 64 :=
.seq AllocBody485_34 AllocBody485_51

def AllocBody485_53 : StackLang.HolProg 64 :=
.seq AllocBody485_33 AllocBody485_52

def AllocBody485_54 : StackLang.HolProg 64 :=
.seq AllocBody485_14 AllocBody485_53

def AllocBody485_55 : StackLang.HolProg 64 :=
.seq AllocBody485_11 AllocBody485_54

def AllocBody485_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody485_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def AllocBody485_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def AllocBody485_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody485_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody485_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody485_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody485_64 : StackLang.HolProg 64 :=
.seq AllocBody485_62 AllocBody485_63

def AllocBody485_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1524#64)

def AllocBody485_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody485_68 : StackLang.HolProg 64 :=
.seq AllocBody485_66 AllocBody485_67

def AllocBody485_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody485_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody485_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody485_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 485 5

def AllocBody485_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody485_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody485_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody485_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody485_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody485_79 : StackLang.HolProg 64 :=
.seq AllocBody485_77 AllocBody485_78

def AllocBody485_80 : StackLang.HolProg 64 :=
.seq AllocBody485_76 AllocBody485_79

def AllocBody485_81 : StackLang.HolProg 64 :=
.seq AllocBody485_75 AllocBody485_80

def AllocBody485_82 : StackLang.HolProg 64 :=
.seq AllocBody485_74 AllocBody485_81

def AllocBody485_83 : StackLang.HolProg 64 :=
.seq AllocBody485_73 AllocBody485_82

def AllocBody485_84 : StackLang.HolProg 64 :=
.seq AllocBody485_72 AllocBody485_83

def AllocBody485_85 : StackLang.HolProg 64 :=
.seq AllocBody485_71 AllocBody485_84

def AllocBody485_86 : StackLang.HolProg 64 :=
.seq AllocBody485_70 AllocBody485_85

def AllocBody485_87 : StackLang.HolProg 64 :=
.seq AllocBody485_69 AllocBody485_86

def AllocBody485_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody485_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody485_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody485_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody485_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 4

def AllocBody485_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody485_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 2

def AllocBody485_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody485_98 : StackLang.HolProg 64 :=
.seq AllocBody485_96 AllocBody485_97

def AllocBody485_99 : StackLang.HolProg 64 :=
.seq AllocBody485_95 AllocBody485_98

def AllocBody485_100 : StackLang.HolProg 64 :=
.seq AllocBody485_94 AllocBody485_99

def AllocBody485_101 : StackLang.HolProg 64 :=
.seq AllocBody485_93 AllocBody485_100

def AllocBody485_102 : StackLang.HolProg 64 :=
.seq AllocBody485_92 AllocBody485_101

def AllocBody485_103 : StackLang.HolProg 64 :=
.seq AllocBody485_91 AllocBody485_102

def AllocBody485_104 : StackLang.HolProg 64 :=
.seq AllocBody485_90 AllocBody485_103

def AllocBody485_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 4

def AllocBody485_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody485_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 2

def AllocBody485_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody485_109 : StackLang.HolProg 64 :=
.seq AllocBody485_107 AllocBody485_108

def AllocBody485_110 : StackLang.HolProg 64 :=
.seq AllocBody485_106 AllocBody485_109

def AllocBody485_111 : StackLang.HolProg 64 :=
.seq AllocBody485_105 AllocBody485_110

def AllocBody485_112 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody485_113 : StackLang.HolProg 64 :=
.seq AllocBody485_111 AllocBody485_112

def AllocBody485_114 : StackLang.HolProg 64 :=
.call (some (AllocBody485_104, 0, 485, 4)) (Sum.inl 78) (some (AllocBody485_113, 485, 5))

def AllocBody485_115 : StackLang.HolProg 64 :=
.seq AllocBody485_89 AllocBody485_114

def AllocBody485_116 : StackLang.HolProg 64 :=
.seq AllocBody485_88 AllocBody485_115

def AllocBody485_117 : StackLang.HolProg 64 :=
.seq AllocBody485_87 AllocBody485_116

def AllocBody485_118 : StackLang.HolProg 64 :=
.seq AllocBody485_68 AllocBody485_117

def AllocBody485_119 : StackLang.HolProg 64 :=
.seq AllocBody485_65 AllocBody485_118

def AllocBody485_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def AllocBody485_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody485_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody485_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def AllocBody485_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 91#64)

def AllocBody485_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def AllocBody485_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody485_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody485_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody485_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def AllocBody485_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody485_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody485_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody485_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody485_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_150 : StackLang.HolProg 64 :=
.seq AllocBody485_148 AllocBody485_149

def AllocBody485_151 : StackLang.HolProg 64 :=
.seq AllocBody485_147 AllocBody485_150

def AllocBody485_152 : StackLang.HolProg 64 :=
.seq AllocBody485_146 AllocBody485_151

def AllocBody485_153 : StackLang.HolProg 64 :=
.seq AllocBody485_145 AllocBody485_152

def AllocBody485_154 : StackLang.HolProg 64 :=
.seq AllocBody485_144 AllocBody485_153

def AllocBody485_155 : StackLang.HolProg 64 :=
.seq AllocBody485_143 AllocBody485_154

def AllocBody485_156 : StackLang.HolProg 64 :=
.seq AllocBody485_142 AllocBody485_155

def AllocBody485_157 : StackLang.HolProg 64 :=
.seq AllocBody485_141 AllocBody485_156

def AllocBody485_158 : StackLang.HolProg 64 :=
.seq AllocBody485_140 AllocBody485_157

def AllocBody485_159 : StackLang.HolProg 64 :=
.seq AllocBody485_139 AllocBody485_158

def AllocBody485_160 : StackLang.HolProg 64 :=
.seq AllocBody485_138 AllocBody485_159

def AllocBody485_161 : StackLang.HolProg 64 :=
.seq AllocBody485_137 AllocBody485_160

def AllocBody485_162 : StackLang.HolProg 64 :=
.seq AllocBody485_136 AllocBody485_161

def AllocBody485_163 : StackLang.HolProg 64 :=
.seq AllocBody485_135 AllocBody485_162

def AllocBody485_164 : StackLang.HolProg 64 :=
.seq AllocBody485_134 AllocBody485_163

def AllocBody485_165 : StackLang.HolProg 64 :=
.seq AllocBody485_133 AllocBody485_164

def AllocBody485_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 96#64)

def AllocBody485_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 1#64)

def AllocBody485_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_172 : StackLang.HolProg 64 :=
.seq AllocBody485_170 AllocBody485_171

def AllocBody485_173 : StackLang.HolProg 64 :=
.seq AllocBody485_169 AllocBody485_172

def AllocBody485_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 0#64)

def AllocBody485_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_177 : StackLang.HolProg 64 :=
.seq AllocBody485_175 AllocBody485_176

def AllocBody485_178 : StackLang.HolProg 64 :=
.seq AllocBody485_174 AllocBody485_177

def AllocBody485_179 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody485_173 AllocBody485_178

def AllocBody485_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 127#64)

def AllocBody485_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def AllocBody485_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_186 : StackLang.HolProg 64 :=
.seq AllocBody485_184 AllocBody485_185

def AllocBody485_187 : StackLang.HolProg 64 :=
.seq AllocBody485_183 AllocBody485_186

def AllocBody485_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody485_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_191 : StackLang.HolProg 64 :=
.seq AllocBody485_189 AllocBody485_190

def AllocBody485_192 : StackLang.HolProg 64 :=
.seq AllocBody485_188 AllocBody485_191

def AllocBody485_193 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody485_187 AllocBody485_192

def AllocBody485_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody485_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551522#64)))

def AllocBody485_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_200 : StackLang.HolProg 64 :=
.seq AllocBody485_198 AllocBody485_199

def AllocBody485_201 : StackLang.HolProg 64 :=
.seq AllocBody485_197 AllocBody485_200

def AllocBody485_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 230#64)

def AllocBody485_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 1#64)

def AllocBody485_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_206 : StackLang.HolProg 64 :=
.seq AllocBody485_204 AllocBody485_205

def AllocBody485_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 0#64)

def AllocBody485_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_209 : StackLang.HolProg 64 :=
.seq AllocBody485_207 AllocBody485_208

def AllocBody485_210 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody485_206 AllocBody485_209

def AllocBody485_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 231#64)

def AllocBody485_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def AllocBody485_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_216 : StackLang.HolProg 64 :=
.seq AllocBody485_214 AllocBody485_215

def AllocBody485_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody485_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_219 : StackLang.HolProg 64 :=
.seq AllocBody485_217 AllocBody485_218

def AllocBody485_220 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody485_216 AllocBody485_219

def AllocBody485_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def AllocBody485_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody485_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 2#64)

def AllocBody485_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody485_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody485_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody485_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody485_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 91#64)

def AllocBody485_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 1#64)

def AllocBody485_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_239 : StackLang.HolProg 64 :=
.seq AllocBody485_237 AllocBody485_238

def AllocBody485_240 : StackLang.HolProg 64 :=
.seq AllocBody485_236 AllocBody485_239

def AllocBody485_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 0#64)

def AllocBody485_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_244 : StackLang.HolProg 64 :=
.seq AllocBody485_242 AllocBody485_243

def AllocBody485_245 : StackLang.HolProg 64 :=
.seq AllocBody485_241 AllocBody485_244

def AllocBody485_246 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) AllocBody485_240 AllocBody485_245

def AllocBody485_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 127#64)

def AllocBody485_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def AllocBody485_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_253 : StackLang.HolProg 64 :=
.seq AllocBody485_251 AllocBody485_252

def AllocBody485_254 : StackLang.HolProg 64 :=
.seq AllocBody485_250 AllocBody485_253

def AllocBody485_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody485_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_258 : StackLang.HolProg 64 :=
.seq AllocBody485_256 AllocBody485_257

def AllocBody485_259 : StackLang.HolProg 64 :=
.seq AllocBody485_255 AllocBody485_258

def AllocBody485_260 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody485_254 AllocBody485_259

def AllocBody485_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody485_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def AllocBody485_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_266 : StackLang.HolProg 64 :=
.seq AllocBody485_264 AllocBody485_265

def AllocBody485_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_268 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) AllocBody485_266 AllocBody485_267

def AllocBody485_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_271 : StackLang.HolProg 64 :=
.seq AllocBody485_269 AllocBody485_270

def AllocBody485_272 : StackLang.HolProg 64 :=
.seq AllocBody485_268 AllocBody485_271

def AllocBody485_273 : StackLang.HolProg 64 :=
.seq AllocBody485_263 AllocBody485_272

def AllocBody485_274 : StackLang.HolProg 64 :=
.seq AllocBody485_262 AllocBody485_273

def AllocBody485_275 : StackLang.HolProg 64 :=
.seq AllocBody485_261 AllocBody485_274

def AllocBody485_276 : StackLang.HolProg 64 :=
.seq AllocBody485_260 AllocBody485_275

def AllocBody485_277 : StackLang.HolProg 64 :=
.seq AllocBody485_249 AllocBody485_276

def AllocBody485_278 : StackLang.HolProg 64 :=
.seq AllocBody485_248 AllocBody485_277

def AllocBody485_279 : StackLang.HolProg 64 :=
.seq AllocBody485_247 AllocBody485_278

def AllocBody485_280 : StackLang.HolProg 64 :=
.seq AllocBody485_246 AllocBody485_279

def AllocBody485_281 : StackLang.HolProg 64 :=
.seq AllocBody485_235 AllocBody485_280

def AllocBody485_282 : StackLang.HolProg 64 :=
.seq AllocBody485_234 AllocBody485_281

def AllocBody485_283 : StackLang.HolProg 64 :=
.seq AllocBody485_233 AllocBody485_282

def AllocBody485_284 : StackLang.HolProg 64 :=
.seq AllocBody485_232 AllocBody485_283

def AllocBody485_285 : StackLang.HolProg 64 :=
.seq AllocBody485_231 AllocBody485_284

def AllocBody485_286 : StackLang.HolProg 64 :=
.seq AllocBody485_230 AllocBody485_285

def AllocBody485_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_289 : StackLang.HolProg 64 :=
.seq AllocBody485_287 AllocBody485_288

def AllocBody485_290 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody485_286 AllocBody485_289

def AllocBody485_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_293 : StackLang.HolProg 64 :=
.seq AllocBody485_291 AllocBody485_292

def AllocBody485_294 : StackLang.HolProg 64 :=
.seq AllocBody485_290 AllocBody485_293

def AllocBody485_295 : StackLang.HolProg 64 :=
.seq AllocBody485_229 AllocBody485_294

def AllocBody485_296 : StackLang.HolProg 64 :=
.seq AllocBody485_228 AllocBody485_295

def AllocBody485_297 : StackLang.HolProg 64 :=
.seq AllocBody485_227 AllocBody485_296

def AllocBody485_298 : StackLang.HolProg 64 :=
.seq AllocBody485_226 AllocBody485_297

def AllocBody485_299 : StackLang.HolProg 64 :=
.seq AllocBody485_225 AllocBody485_298

def AllocBody485_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_302 : StackLang.HolProg 64 :=
.seq AllocBody485_300 AllocBody485_301

def AllocBody485_303 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody485_299 AllocBody485_302

def AllocBody485_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 232#64)

def AllocBody485_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 2#64)

def AllocBody485_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody485_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody485_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody485_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 82#64)

def AllocBody485_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def AllocBody485_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_321 : StackLang.HolProg 64 :=
.seq AllocBody485_319 AllocBody485_320

def AllocBody485_322 : StackLang.HolProg 64 :=
.seq AllocBody485_318 AllocBody485_321

def AllocBody485_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody485_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_326 : StackLang.HolProg 64 :=
.seq AllocBody485_324 AllocBody485_325

def AllocBody485_327 : StackLang.HolProg 64 :=
.seq AllocBody485_323 AllocBody485_326

def AllocBody485_328 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody485_322 AllocBody485_327

def AllocBody485_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 127#64)

def AllocBody485_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody485_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_335 : StackLang.HolProg 64 :=
.seq AllocBody485_333 AllocBody485_334

def AllocBody485_336 : StackLang.HolProg 64 :=
.seq AllocBody485_332 AllocBody485_335

def AllocBody485_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody485_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_340 : StackLang.HolProg 64 :=
.seq AllocBody485_338 AllocBody485_339

def AllocBody485_341 : StackLang.HolProg 64 :=
.seq AllocBody485_337 AllocBody485_340

def AllocBody485_342 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody485_336 AllocBody485_341

def AllocBody485_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody485_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def AllocBody485_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_348 : StackLang.HolProg 64 :=
.seq AllocBody485_346 AllocBody485_347

def AllocBody485_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_350 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) AllocBody485_348 AllocBody485_349

def AllocBody485_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_353 : StackLang.HolProg 64 :=
.seq AllocBody485_351 AllocBody485_352

def AllocBody485_354 : StackLang.HolProg 64 :=
.seq AllocBody485_350 AllocBody485_353

def AllocBody485_355 : StackLang.HolProg 64 :=
.seq AllocBody485_345 AllocBody485_354

def AllocBody485_356 : StackLang.HolProg 64 :=
.seq AllocBody485_344 AllocBody485_355

def AllocBody485_357 : StackLang.HolProg 64 :=
.seq AllocBody485_343 AllocBody485_356

def AllocBody485_358 : StackLang.HolProg 64 :=
.seq AllocBody485_342 AllocBody485_357

def AllocBody485_359 : StackLang.HolProg 64 :=
.seq AllocBody485_331 AllocBody485_358

def AllocBody485_360 : StackLang.HolProg 64 :=
.seq AllocBody485_330 AllocBody485_359

def AllocBody485_361 : StackLang.HolProg 64 :=
.seq AllocBody485_329 AllocBody485_360

def AllocBody485_362 : StackLang.HolProg 64 :=
.seq AllocBody485_328 AllocBody485_361

def AllocBody485_363 : StackLang.HolProg 64 :=
.seq AllocBody485_317 AllocBody485_362

def AllocBody485_364 : StackLang.HolProg 64 :=
.seq AllocBody485_316 AllocBody485_363

def AllocBody485_365 : StackLang.HolProg 64 :=
.seq AllocBody485_315 AllocBody485_364

def AllocBody485_366 : StackLang.HolProg 64 :=
.seq AllocBody485_314 AllocBody485_365

def AllocBody485_367 : StackLang.HolProg 64 :=
.seq AllocBody485_313 AllocBody485_366

def AllocBody485_368 : StackLang.HolProg 64 :=
.seq AllocBody485_312 AllocBody485_367

def AllocBody485_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_371 : StackLang.HolProg 64 :=
.seq AllocBody485_369 AllocBody485_370

def AllocBody485_372 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody485_368 AllocBody485_371

def AllocBody485_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_375 : StackLang.HolProg 64 :=
.seq AllocBody485_373 AllocBody485_374

def AllocBody485_376 : StackLang.HolProg 64 :=
.seq AllocBody485_372 AllocBody485_375

def AllocBody485_377 : StackLang.HolProg 64 :=
.seq AllocBody485_311 AllocBody485_376

def AllocBody485_378 : StackLang.HolProg 64 :=
.seq AllocBody485_310 AllocBody485_377

def AllocBody485_379 : StackLang.HolProg 64 :=
.seq AllocBody485_309 AllocBody485_378

def AllocBody485_380 : StackLang.HolProg 64 :=
.seq AllocBody485_308 AllocBody485_379

def AllocBody485_381 : StackLang.HolProg 64 :=
.seq AllocBody485_307 AllocBody485_380

def AllocBody485_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_384 : StackLang.HolProg 64 :=
.seq AllocBody485_382 AllocBody485_383

def AllocBody485_385 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody485_381 AllocBody485_384

def AllocBody485_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_388 : StackLang.HolProg 64 :=
.seq AllocBody485_386 AllocBody485_387

def AllocBody485_389 : StackLang.HolProg 64 :=
.seq AllocBody485_385 AllocBody485_388

def AllocBody485_390 : StackLang.HolProg 64 :=
.seq AllocBody485_306 AllocBody485_389

def AllocBody485_391 : StackLang.HolProg 64 :=
.seq AllocBody485_305 AllocBody485_390

def AllocBody485_392 : StackLang.HolProg 64 :=
.seq AllocBody485_304 AllocBody485_391

def AllocBody485_393 : StackLang.HolProg 64 :=
.seq AllocBody485_303 AllocBody485_392

def AllocBody485_394 : StackLang.HolProg 64 :=
.seq AllocBody485_224 AllocBody485_393

def AllocBody485_395 : StackLang.HolProg 64 :=
.seq AllocBody485_223 AllocBody485_394

def AllocBody485_396 : StackLang.HolProg 64 :=
.seq AllocBody485_222 AllocBody485_395

def AllocBody485_397 : StackLang.HolProg 64 :=
.seq AllocBody485_221 AllocBody485_396

def AllocBody485_398 : StackLang.HolProg 64 :=
.seq AllocBody485_220 AllocBody485_397

def AllocBody485_399 : StackLang.HolProg 64 :=
.seq AllocBody485_213 AllocBody485_398

def AllocBody485_400 : StackLang.HolProg 64 :=
.seq AllocBody485_212 AllocBody485_399

def AllocBody485_401 : StackLang.HolProg 64 :=
.seq AllocBody485_211 AllocBody485_400

def AllocBody485_402 : StackLang.HolProg 64 :=
.seq AllocBody485_210 AllocBody485_401

def AllocBody485_403 : StackLang.HolProg 64 :=
.seq AllocBody485_203 AllocBody485_402

def AllocBody485_404 : StackLang.HolProg 64 :=
.seq AllocBody485_202 AllocBody485_403

def AllocBody485_405 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) AllocBody485_201 AllocBody485_404

def AllocBody485_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_408 : StackLang.HolProg 64 :=
.seq AllocBody485_406 AllocBody485_407

def AllocBody485_409 : StackLang.HolProg 64 :=
.seq AllocBody485_405 AllocBody485_408

def AllocBody485_410 : StackLang.HolProg 64 :=
.seq AllocBody485_196 AllocBody485_409

def AllocBody485_411 : StackLang.HolProg 64 :=
.seq AllocBody485_195 AllocBody485_410

def AllocBody485_412 : StackLang.HolProg 64 :=
.seq AllocBody485_194 AllocBody485_411

def AllocBody485_413 : StackLang.HolProg 64 :=
.seq AllocBody485_193 AllocBody485_412

def AllocBody485_414 : StackLang.HolProg 64 :=
.seq AllocBody485_182 AllocBody485_413

def AllocBody485_415 : StackLang.HolProg 64 :=
.seq AllocBody485_181 AllocBody485_414

def AllocBody485_416 : StackLang.HolProg 64 :=
.seq AllocBody485_180 AllocBody485_415

def AllocBody485_417 : StackLang.HolProg 64 :=
.seq AllocBody485_179 AllocBody485_416

def AllocBody485_418 : StackLang.HolProg 64 :=
.seq AllocBody485_168 AllocBody485_417

def AllocBody485_419 : StackLang.HolProg 64 :=
.seq AllocBody485_167 AllocBody485_418

def AllocBody485_420 : StackLang.HolProg 64 :=
.seq AllocBody485_166 AllocBody485_419

def AllocBody485_421 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody485_165 AllocBody485_420

def AllocBody485_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody485_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody485_427 : StackLang.HolProg 64 :=
.seq AllocBody485_425 AllocBody485_426

def AllocBody485_428 : StackLang.HolProg 64 :=
.seq AllocBody485_424 AllocBody485_427

def AllocBody485_429 : StackLang.HolProg 64 :=
.seq AllocBody485_423 AllocBody485_428

def AllocBody485_430 : StackLang.HolProg 64 :=
.seq AllocBody485_422 AllocBody485_429

def AllocBody485_431 : StackLang.HolProg 64 :=
.seq AllocBody485_421 AllocBody485_430

def AllocBody485_432 : StackLang.HolProg 64 :=
.seq AllocBody485_132 AllocBody485_431

def AllocBody485_433 : StackLang.HolProg 64 :=
.seq AllocBody485_131 AllocBody485_432

def AllocBody485_434 : StackLang.HolProg 64 :=
.seq AllocBody485_130 AllocBody485_433

def AllocBody485_435 : StackLang.HolProg 64 :=
.seq AllocBody485_129 AllocBody485_434

def AllocBody485_436 : StackLang.HolProg 64 :=
.seq AllocBody485_128 AllocBody485_435

def AllocBody485_437 : StackLang.HolProg 64 :=
.seq AllocBody485_127 AllocBody485_436

def AllocBody485_438 : StackLang.HolProg 64 :=
.seq AllocBody485_126 AllocBody485_437

def AllocBody485_439 : StackLang.HolProg 64 :=
.seq AllocBody485_125 AllocBody485_438

def AllocBody485_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody485_442 : StackLang.HolProg 64 :=
.seq AllocBody485_440 AllocBody485_441

def AllocBody485_443 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody485_439 AllocBody485_442

def AllocBody485_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody485_446 : StackLang.HolProg 64 :=
.seq AllocBody485_444 AllocBody485_445

def AllocBody485_447 : StackLang.HolProg 64 :=
.seq AllocBody485_443 AllocBody485_446

def AllocBody485_448 : StackLang.HolProg 64 :=
.seq AllocBody485_124 AllocBody485_447

def AllocBody485_449 : StackLang.HolProg 64 :=
.loop AllocBody485_448

def AllocBody485_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody485_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody485_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody485_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 8

def AllocBody485_454 : StackLang.HolProg 64 :=
.seq AllocBody485_452 AllocBody485_453

def AllocBody485_455 : StackLang.HolProg 64 :=
.seq AllocBody485_451 AllocBody485_454

def AllocBody485_456 : StackLang.HolProg 64 :=
.seq AllocBody485_450 AllocBody485_455

def AllocBody485_457 : StackLang.HolProg 64 :=
.seq AllocBody485_449 AllocBody485_456

def AllocBody485_458 : StackLang.HolProg 64 :=
.seq AllocBody485_123 AllocBody485_457

def AllocBody485_459 : StackLang.HolProg 64 :=
.seq AllocBody485_122 AllocBody485_458

def AllocBody485_460 : StackLang.HolProg 64 :=
.seq AllocBody485_121 AllocBody485_459

def AllocBody485_461 : StackLang.HolProg 64 :=
.seq AllocBody485_120 AllocBody485_460

def AllocBody485_462 : StackLang.HolProg 64 :=
.seq AllocBody485_119 AllocBody485_461

def AllocBody485_463 : StackLang.HolProg 64 :=
.seq AllocBody485_64 AllocBody485_462

def AllocBody485_464 : StackLang.HolProg 64 :=
.seq AllocBody485_61 AllocBody485_463

def AllocBody485_465 : StackLang.HolProg 64 :=
.seq AllocBody485_60 AllocBody485_464

def AllocBody485_466 : StackLang.HolProg 64 :=
.seq AllocBody485_59 AllocBody485_465

def AllocBody485_467 : StackLang.HolProg 64 :=
.seq AllocBody485_58 AllocBody485_466

def AllocBody485_468 : StackLang.HolProg 64 :=
.seq AllocBody485_57 AllocBody485_467

def AllocBody485_469 : StackLang.HolProg 64 :=
.seq AllocBody485_56 AllocBody485_468

def AllocBody485_470 : StackLang.HolProg 64 :=
.seq AllocBody485_55 AllocBody485_469

def AllocBody485_471 : StackLang.HolProg 64 :=
.seq AllocBody485_10 AllocBody485_470

def AllocBody485_472 : StackLang.HolProg 64 :=
.seq AllocBody485_5 AllocBody485_471

def AllocBody485_473 : StackLang.HolProg 64 :=
.seq AllocBody485_4 AllocBody485_472

def AllocBody485_474 : StackLang.HolProg 64 :=
.seq AllocBody485_3 AllocBody485_473

def AllocBody485_475 : StackLang.HolProg 64 :=
.seq AllocBody485_2 AllocBody485_474

def AllocBody485_476 : StackLang.HolProg 64 :=
.seq AllocBody485_1 AllocBody485_475

def AllocBody485_477 : StackLang.HolProg 64 :=
.seq AllocBody485_0 AllocBody485_476

def Alloc485 : Nat × StackLang.HolProg 64 := (485, AllocBody485_477)
theorem Alloc485_eq : StackAlloc.progComp (485, raw485) = Alloc485 := by
  kernel_rfl
#print axioms Alloc485_eq
end InitECandidate.Proofs.BackendStages
