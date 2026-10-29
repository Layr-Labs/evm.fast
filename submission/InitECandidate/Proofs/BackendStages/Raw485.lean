import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function485
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody485_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody485_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody485_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def rawBody485_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def rawBody485_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody485_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody485_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody485_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody485_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody485_9 : StackLang.HolProg 64 :=
.seq rawBody485_7 rawBody485_8

def rawBody485_10 : StackLang.HolProg 64 :=
.seq rawBody485_6 rawBody485_9

def rawBody485_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1523#64)

def rawBody485_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody485_14 : StackLang.HolProg 64 :=
.seq rawBody485_12 rawBody485_13

def rawBody485_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody485_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody485_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody485_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 485 3

def rawBody485_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody485_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody485_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody485_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody485_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody485_25 : StackLang.HolProg 64 :=
.seq rawBody485_23 rawBody485_24

def rawBody485_26 : StackLang.HolProg 64 :=
.seq rawBody485_22 rawBody485_25

def rawBody485_27 : StackLang.HolProg 64 :=
.seq rawBody485_21 rawBody485_26

def rawBody485_28 : StackLang.HolProg 64 :=
.seq rawBody485_20 rawBody485_27

def rawBody485_29 : StackLang.HolProg 64 :=
.seq rawBody485_19 rawBody485_28

def rawBody485_30 : StackLang.HolProg 64 :=
.seq rawBody485_18 rawBody485_29

def rawBody485_31 : StackLang.HolProg 64 :=
.seq rawBody485_17 rawBody485_30

def rawBody485_32 : StackLang.HolProg 64 :=
.seq rawBody485_16 rawBody485_31

def rawBody485_33 : StackLang.HolProg 64 :=
.seq rawBody485_15 rawBody485_32

def rawBody485_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody485_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody485_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody485_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody485_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody485_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody485_42 : StackLang.HolProg 64 :=
.seq rawBody485_40 rawBody485_41

def rawBody485_43 : StackLang.HolProg 64 :=
.seq rawBody485_39 rawBody485_42

def rawBody485_44 : StackLang.HolProg 64 :=
.seq rawBody485_38 rawBody485_43

def rawBody485_45 : StackLang.HolProg 64 :=
.seq rawBody485_37 rawBody485_44

def rawBody485_46 : StackLang.HolProg 64 :=
.seq rawBody485_36 rawBody485_45

def rawBody485_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody485_48 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody485_49 : StackLang.HolProg 64 :=
.seq rawBody485_47 rawBody485_48

def rawBody485_50 : StackLang.HolProg 64 :=
.call (some (rawBody485_46, 0, 485, 2)) (Sum.inl 74) (some (rawBody485_49, 485, 3))

def rawBody485_51 : StackLang.HolProg 64 :=
.seq rawBody485_35 rawBody485_50

def rawBody485_52 : StackLang.HolProg 64 :=
.seq rawBody485_34 rawBody485_51

def rawBody485_53 : StackLang.HolProg 64 :=
.seq rawBody485_33 rawBody485_52

def rawBody485_54 : StackLang.HolProg 64 :=
.seq rawBody485_14 rawBody485_53

def rawBody485_55 : StackLang.HolProg 64 :=
.seq rawBody485_11 rawBody485_54

def rawBody485_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody485_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def rawBody485_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def rawBody485_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody485_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody485_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody485_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def rawBody485_64 : StackLang.HolProg 64 :=
.seq rawBody485_62 rawBody485_63

def rawBody485_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1524#64)

def rawBody485_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody485_68 : StackLang.HolProg 64 :=
.seq rawBody485_66 rawBody485_67

def rawBody485_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody485_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody485_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody485_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 485 5

def rawBody485_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody485_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody485_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody485_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody485_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody485_79 : StackLang.HolProg 64 :=
.seq rawBody485_77 rawBody485_78

def rawBody485_80 : StackLang.HolProg 64 :=
.seq rawBody485_76 rawBody485_79

def rawBody485_81 : StackLang.HolProg 64 :=
.seq rawBody485_75 rawBody485_80

def rawBody485_82 : StackLang.HolProg 64 :=
.seq rawBody485_74 rawBody485_81

def rawBody485_83 : StackLang.HolProg 64 :=
.seq rawBody485_73 rawBody485_82

def rawBody485_84 : StackLang.HolProg 64 :=
.seq rawBody485_72 rawBody485_83

def rawBody485_85 : StackLang.HolProg 64 :=
.seq rawBody485_71 rawBody485_84

def rawBody485_86 : StackLang.HolProg 64 :=
.seq rawBody485_70 rawBody485_85

def rawBody485_87 : StackLang.HolProg 64 :=
.seq rawBody485_69 rawBody485_86

def rawBody485_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody485_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody485_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody485_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody485_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 4

def rawBody485_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody485_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 2

def rawBody485_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody485_98 : StackLang.HolProg 64 :=
.seq rawBody485_96 rawBody485_97

def rawBody485_99 : StackLang.HolProg 64 :=
.seq rawBody485_95 rawBody485_98

def rawBody485_100 : StackLang.HolProg 64 :=
.seq rawBody485_94 rawBody485_99

def rawBody485_101 : StackLang.HolProg 64 :=
.seq rawBody485_93 rawBody485_100

def rawBody485_102 : StackLang.HolProg 64 :=
.seq rawBody485_92 rawBody485_101

def rawBody485_103 : StackLang.HolProg 64 :=
.seq rawBody485_91 rawBody485_102

def rawBody485_104 : StackLang.HolProg 64 :=
.seq rawBody485_90 rawBody485_103

def rawBody485_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 4

def rawBody485_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody485_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 2

def rawBody485_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody485_109 : StackLang.HolProg 64 :=
.seq rawBody485_107 rawBody485_108

def rawBody485_110 : StackLang.HolProg 64 :=
.seq rawBody485_106 rawBody485_109

def rawBody485_111 : StackLang.HolProg 64 :=
.seq rawBody485_105 rawBody485_110

def rawBody485_112 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody485_113 : StackLang.HolProg 64 :=
.seq rawBody485_111 rawBody485_112

def rawBody485_114 : StackLang.HolProg 64 :=
.call (some (rawBody485_104, 0, 485, 4)) (Sum.inl 78) (some (rawBody485_113, 485, 5))

def rawBody485_115 : StackLang.HolProg 64 :=
.seq rawBody485_89 rawBody485_114

def rawBody485_116 : StackLang.HolProg 64 :=
.seq rawBody485_88 rawBody485_115

def rawBody485_117 : StackLang.HolProg 64 :=
.seq rawBody485_87 rawBody485_116

def rawBody485_118 : StackLang.HolProg 64 :=
.seq rawBody485_68 rawBody485_117

def rawBody485_119 : StackLang.HolProg 64 :=
.seq rawBody485_65 rawBody485_118

def rawBody485_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def rawBody485_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody485_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody485_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def rawBody485_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 91#64)

def rawBody485_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def rawBody485_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody485_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody485_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody485_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def rawBody485_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody485_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody485_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody485_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody485_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_150 : StackLang.HolProg 64 :=
.seq rawBody485_148 rawBody485_149

def rawBody485_151 : StackLang.HolProg 64 :=
.seq rawBody485_147 rawBody485_150

def rawBody485_152 : StackLang.HolProg 64 :=
.seq rawBody485_146 rawBody485_151

def rawBody485_153 : StackLang.HolProg 64 :=
.seq rawBody485_145 rawBody485_152

def rawBody485_154 : StackLang.HolProg 64 :=
.seq rawBody485_144 rawBody485_153

def rawBody485_155 : StackLang.HolProg 64 :=
.seq rawBody485_143 rawBody485_154

def rawBody485_156 : StackLang.HolProg 64 :=
.seq rawBody485_142 rawBody485_155

def rawBody485_157 : StackLang.HolProg 64 :=
.seq rawBody485_141 rawBody485_156

def rawBody485_158 : StackLang.HolProg 64 :=
.seq rawBody485_140 rawBody485_157

def rawBody485_159 : StackLang.HolProg 64 :=
.seq rawBody485_139 rawBody485_158

def rawBody485_160 : StackLang.HolProg 64 :=
.seq rawBody485_138 rawBody485_159

def rawBody485_161 : StackLang.HolProg 64 :=
.seq rawBody485_137 rawBody485_160

def rawBody485_162 : StackLang.HolProg 64 :=
.seq rawBody485_136 rawBody485_161

def rawBody485_163 : StackLang.HolProg 64 :=
.seq rawBody485_135 rawBody485_162

def rawBody485_164 : StackLang.HolProg 64 :=
.seq rawBody485_134 rawBody485_163

def rawBody485_165 : StackLang.HolProg 64 :=
.seq rawBody485_133 rawBody485_164

def rawBody485_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 96#64)

def rawBody485_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 1#64)

def rawBody485_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_172 : StackLang.HolProg 64 :=
.seq rawBody485_170 rawBody485_171

def rawBody485_173 : StackLang.HolProg 64 :=
.seq rawBody485_169 rawBody485_172

def rawBody485_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 0#64)

def rawBody485_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_177 : StackLang.HolProg 64 :=
.seq rawBody485_175 rawBody485_176

def rawBody485_178 : StackLang.HolProg 64 :=
.seq rawBody485_174 rawBody485_177

def rawBody485_179 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody485_173 rawBody485_178

def rawBody485_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 127#64)

def rawBody485_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def rawBody485_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_186 : StackLang.HolProg 64 :=
.seq rawBody485_184 rawBody485_185

def rawBody485_187 : StackLang.HolProg 64 :=
.seq rawBody485_183 rawBody485_186

def rawBody485_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody485_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_191 : StackLang.HolProg 64 :=
.seq rawBody485_189 rawBody485_190

def rawBody485_192 : StackLang.HolProg 64 :=
.seq rawBody485_188 rawBody485_191

def rawBody485_193 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody485_187 rawBody485_192

def rawBody485_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody485_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551522#64)))

def rawBody485_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_200 : StackLang.HolProg 64 :=
.seq rawBody485_198 rawBody485_199

def rawBody485_201 : StackLang.HolProg 64 :=
.seq rawBody485_197 rawBody485_200

def rawBody485_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 230#64)

def rawBody485_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 1#64)

def rawBody485_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_206 : StackLang.HolProg 64 :=
.seq rawBody485_204 rawBody485_205

def rawBody485_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 0#64)

def rawBody485_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_209 : StackLang.HolProg 64 :=
.seq rawBody485_207 rawBody485_208

def rawBody485_210 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody485_206 rawBody485_209

def rawBody485_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 231#64)

def rawBody485_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def rawBody485_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_216 : StackLang.HolProg 64 :=
.seq rawBody485_214 rawBody485_215

def rawBody485_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody485_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_219 : StackLang.HolProg 64 :=
.seq rawBody485_217 rawBody485_218

def rawBody485_220 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody485_216 rawBody485_219

def rawBody485_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def rawBody485_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody485_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 2#64)

def rawBody485_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody485_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody485_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody485_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody485_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 91#64)

def rawBody485_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 1#64)

def rawBody485_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_239 : StackLang.HolProg 64 :=
.seq rawBody485_237 rawBody485_238

def rawBody485_240 : StackLang.HolProg 64 :=
.seq rawBody485_236 rawBody485_239

def rawBody485_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 0#64)

def rawBody485_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_244 : StackLang.HolProg 64 :=
.seq rawBody485_242 rawBody485_243

def rawBody485_245 : StackLang.HolProg 64 :=
.seq rawBody485_241 rawBody485_244

def rawBody485_246 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) rawBody485_240 rawBody485_245

def rawBody485_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 127#64)

def rawBody485_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def rawBody485_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_253 : StackLang.HolProg 64 :=
.seq rawBody485_251 rawBody485_252

def rawBody485_254 : StackLang.HolProg 64 :=
.seq rawBody485_250 rawBody485_253

def rawBody485_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody485_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_258 : StackLang.HolProg 64 :=
.seq rawBody485_256 rawBody485_257

def rawBody485_259 : StackLang.HolProg 64 :=
.seq rawBody485_255 rawBody485_258

def rawBody485_260 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody485_254 rawBody485_259

def rawBody485_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody485_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def rawBody485_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_266 : StackLang.HolProg 64 :=
.seq rawBody485_264 rawBody485_265

def rawBody485_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_268 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) rawBody485_266 rawBody485_267

def rawBody485_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_271 : StackLang.HolProg 64 :=
.seq rawBody485_269 rawBody485_270

def rawBody485_272 : StackLang.HolProg 64 :=
.seq rawBody485_268 rawBody485_271

def rawBody485_273 : StackLang.HolProg 64 :=
.seq rawBody485_263 rawBody485_272

def rawBody485_274 : StackLang.HolProg 64 :=
.seq rawBody485_262 rawBody485_273

def rawBody485_275 : StackLang.HolProg 64 :=
.seq rawBody485_261 rawBody485_274

def rawBody485_276 : StackLang.HolProg 64 :=
.seq rawBody485_260 rawBody485_275

def rawBody485_277 : StackLang.HolProg 64 :=
.seq rawBody485_249 rawBody485_276

def rawBody485_278 : StackLang.HolProg 64 :=
.seq rawBody485_248 rawBody485_277

def rawBody485_279 : StackLang.HolProg 64 :=
.seq rawBody485_247 rawBody485_278

def rawBody485_280 : StackLang.HolProg 64 :=
.seq rawBody485_246 rawBody485_279

def rawBody485_281 : StackLang.HolProg 64 :=
.seq rawBody485_235 rawBody485_280

def rawBody485_282 : StackLang.HolProg 64 :=
.seq rawBody485_234 rawBody485_281

def rawBody485_283 : StackLang.HolProg 64 :=
.seq rawBody485_233 rawBody485_282

def rawBody485_284 : StackLang.HolProg 64 :=
.seq rawBody485_232 rawBody485_283

def rawBody485_285 : StackLang.HolProg 64 :=
.seq rawBody485_231 rawBody485_284

def rawBody485_286 : StackLang.HolProg 64 :=
.seq rawBody485_230 rawBody485_285

def rawBody485_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_289 : StackLang.HolProg 64 :=
.seq rawBody485_287 rawBody485_288

def rawBody485_290 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody485_286 rawBody485_289

def rawBody485_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_293 : StackLang.HolProg 64 :=
.seq rawBody485_291 rawBody485_292

def rawBody485_294 : StackLang.HolProg 64 :=
.seq rawBody485_290 rawBody485_293

def rawBody485_295 : StackLang.HolProg 64 :=
.seq rawBody485_229 rawBody485_294

def rawBody485_296 : StackLang.HolProg 64 :=
.seq rawBody485_228 rawBody485_295

def rawBody485_297 : StackLang.HolProg 64 :=
.seq rawBody485_227 rawBody485_296

def rawBody485_298 : StackLang.HolProg 64 :=
.seq rawBody485_226 rawBody485_297

def rawBody485_299 : StackLang.HolProg 64 :=
.seq rawBody485_225 rawBody485_298

def rawBody485_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_302 : StackLang.HolProg 64 :=
.seq rawBody485_300 rawBody485_301

def rawBody485_303 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody485_299 rawBody485_302

def rawBody485_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 232#64)

def rawBody485_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 2#64)

def rawBody485_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody485_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody485_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody485_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 82#64)

def rawBody485_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def rawBody485_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_321 : StackLang.HolProg 64 :=
.seq rawBody485_319 rawBody485_320

def rawBody485_322 : StackLang.HolProg 64 :=
.seq rawBody485_318 rawBody485_321

def rawBody485_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody485_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_326 : StackLang.HolProg 64 :=
.seq rawBody485_324 rawBody485_325

def rawBody485_327 : StackLang.HolProg 64 :=
.seq rawBody485_323 rawBody485_326

def rawBody485_328 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody485_322 rawBody485_327

def rawBody485_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 127#64)

def rawBody485_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody485_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_335 : StackLang.HolProg 64 :=
.seq rawBody485_333 rawBody485_334

def rawBody485_336 : StackLang.HolProg 64 :=
.seq rawBody485_332 rawBody485_335

def rawBody485_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody485_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_340 : StackLang.HolProg 64 :=
.seq rawBody485_338 rawBody485_339

def rawBody485_341 : StackLang.HolProg 64 :=
.seq rawBody485_337 rawBody485_340

def rawBody485_342 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody485_336 rawBody485_341

def rawBody485_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody485_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def rawBody485_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_348 : StackLang.HolProg 64 :=
.seq rawBody485_346 rawBody485_347

def rawBody485_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_350 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) rawBody485_348 rawBody485_349

def rawBody485_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_353 : StackLang.HolProg 64 :=
.seq rawBody485_351 rawBody485_352

def rawBody485_354 : StackLang.HolProg 64 :=
.seq rawBody485_350 rawBody485_353

def rawBody485_355 : StackLang.HolProg 64 :=
.seq rawBody485_345 rawBody485_354

def rawBody485_356 : StackLang.HolProg 64 :=
.seq rawBody485_344 rawBody485_355

def rawBody485_357 : StackLang.HolProg 64 :=
.seq rawBody485_343 rawBody485_356

def rawBody485_358 : StackLang.HolProg 64 :=
.seq rawBody485_342 rawBody485_357

def rawBody485_359 : StackLang.HolProg 64 :=
.seq rawBody485_331 rawBody485_358

def rawBody485_360 : StackLang.HolProg 64 :=
.seq rawBody485_330 rawBody485_359

def rawBody485_361 : StackLang.HolProg 64 :=
.seq rawBody485_329 rawBody485_360

def rawBody485_362 : StackLang.HolProg 64 :=
.seq rawBody485_328 rawBody485_361

def rawBody485_363 : StackLang.HolProg 64 :=
.seq rawBody485_317 rawBody485_362

def rawBody485_364 : StackLang.HolProg 64 :=
.seq rawBody485_316 rawBody485_363

def rawBody485_365 : StackLang.HolProg 64 :=
.seq rawBody485_315 rawBody485_364

def rawBody485_366 : StackLang.HolProg 64 :=
.seq rawBody485_314 rawBody485_365

def rawBody485_367 : StackLang.HolProg 64 :=
.seq rawBody485_313 rawBody485_366

def rawBody485_368 : StackLang.HolProg 64 :=
.seq rawBody485_312 rawBody485_367

def rawBody485_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_371 : StackLang.HolProg 64 :=
.seq rawBody485_369 rawBody485_370

def rawBody485_372 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody485_368 rawBody485_371

def rawBody485_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_375 : StackLang.HolProg 64 :=
.seq rawBody485_373 rawBody485_374

def rawBody485_376 : StackLang.HolProg 64 :=
.seq rawBody485_372 rawBody485_375

def rawBody485_377 : StackLang.HolProg 64 :=
.seq rawBody485_311 rawBody485_376

def rawBody485_378 : StackLang.HolProg 64 :=
.seq rawBody485_310 rawBody485_377

def rawBody485_379 : StackLang.HolProg 64 :=
.seq rawBody485_309 rawBody485_378

def rawBody485_380 : StackLang.HolProg 64 :=
.seq rawBody485_308 rawBody485_379

def rawBody485_381 : StackLang.HolProg 64 :=
.seq rawBody485_307 rawBody485_380

def rawBody485_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_384 : StackLang.HolProg 64 :=
.seq rawBody485_382 rawBody485_383

def rawBody485_385 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody485_381 rawBody485_384

def rawBody485_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_388 : StackLang.HolProg 64 :=
.seq rawBody485_386 rawBody485_387

def rawBody485_389 : StackLang.HolProg 64 :=
.seq rawBody485_385 rawBody485_388

def rawBody485_390 : StackLang.HolProg 64 :=
.seq rawBody485_306 rawBody485_389

def rawBody485_391 : StackLang.HolProg 64 :=
.seq rawBody485_305 rawBody485_390

def rawBody485_392 : StackLang.HolProg 64 :=
.seq rawBody485_304 rawBody485_391

def rawBody485_393 : StackLang.HolProg 64 :=
.seq rawBody485_303 rawBody485_392

def rawBody485_394 : StackLang.HolProg 64 :=
.seq rawBody485_224 rawBody485_393

def rawBody485_395 : StackLang.HolProg 64 :=
.seq rawBody485_223 rawBody485_394

def rawBody485_396 : StackLang.HolProg 64 :=
.seq rawBody485_222 rawBody485_395

def rawBody485_397 : StackLang.HolProg 64 :=
.seq rawBody485_221 rawBody485_396

def rawBody485_398 : StackLang.HolProg 64 :=
.seq rawBody485_220 rawBody485_397

def rawBody485_399 : StackLang.HolProg 64 :=
.seq rawBody485_213 rawBody485_398

def rawBody485_400 : StackLang.HolProg 64 :=
.seq rawBody485_212 rawBody485_399

def rawBody485_401 : StackLang.HolProg 64 :=
.seq rawBody485_211 rawBody485_400

def rawBody485_402 : StackLang.HolProg 64 :=
.seq rawBody485_210 rawBody485_401

def rawBody485_403 : StackLang.HolProg 64 :=
.seq rawBody485_203 rawBody485_402

def rawBody485_404 : StackLang.HolProg 64 :=
.seq rawBody485_202 rawBody485_403

def rawBody485_405 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) rawBody485_201 rawBody485_404

def rawBody485_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_408 : StackLang.HolProg 64 :=
.seq rawBody485_406 rawBody485_407

def rawBody485_409 : StackLang.HolProg 64 :=
.seq rawBody485_405 rawBody485_408

def rawBody485_410 : StackLang.HolProg 64 :=
.seq rawBody485_196 rawBody485_409

def rawBody485_411 : StackLang.HolProg 64 :=
.seq rawBody485_195 rawBody485_410

def rawBody485_412 : StackLang.HolProg 64 :=
.seq rawBody485_194 rawBody485_411

def rawBody485_413 : StackLang.HolProg 64 :=
.seq rawBody485_193 rawBody485_412

def rawBody485_414 : StackLang.HolProg 64 :=
.seq rawBody485_182 rawBody485_413

def rawBody485_415 : StackLang.HolProg 64 :=
.seq rawBody485_181 rawBody485_414

def rawBody485_416 : StackLang.HolProg 64 :=
.seq rawBody485_180 rawBody485_415

def rawBody485_417 : StackLang.HolProg 64 :=
.seq rawBody485_179 rawBody485_416

def rawBody485_418 : StackLang.HolProg 64 :=
.seq rawBody485_168 rawBody485_417

def rawBody485_419 : StackLang.HolProg 64 :=
.seq rawBody485_167 rawBody485_418

def rawBody485_420 : StackLang.HolProg 64 :=
.seq rawBody485_166 rawBody485_419

def rawBody485_421 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody485_165 rawBody485_420

def rawBody485_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody485_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody485_427 : StackLang.HolProg 64 :=
.seq rawBody485_425 rawBody485_426

def rawBody485_428 : StackLang.HolProg 64 :=
.seq rawBody485_424 rawBody485_427

def rawBody485_429 : StackLang.HolProg 64 :=
.seq rawBody485_423 rawBody485_428

def rawBody485_430 : StackLang.HolProg 64 :=
.seq rawBody485_422 rawBody485_429

def rawBody485_431 : StackLang.HolProg 64 :=
.seq rawBody485_421 rawBody485_430

def rawBody485_432 : StackLang.HolProg 64 :=
.seq rawBody485_132 rawBody485_431

def rawBody485_433 : StackLang.HolProg 64 :=
.seq rawBody485_131 rawBody485_432

def rawBody485_434 : StackLang.HolProg 64 :=
.seq rawBody485_130 rawBody485_433

def rawBody485_435 : StackLang.HolProg 64 :=
.seq rawBody485_129 rawBody485_434

def rawBody485_436 : StackLang.HolProg 64 :=
.seq rawBody485_128 rawBody485_435

def rawBody485_437 : StackLang.HolProg 64 :=
.seq rawBody485_127 rawBody485_436

def rawBody485_438 : StackLang.HolProg 64 :=
.seq rawBody485_126 rawBody485_437

def rawBody485_439 : StackLang.HolProg 64 :=
.seq rawBody485_125 rawBody485_438

def rawBody485_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody485_442 : StackLang.HolProg 64 :=
.seq rawBody485_440 rawBody485_441

def rawBody485_443 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody485_439 rawBody485_442

def rawBody485_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody485_446 : StackLang.HolProg 64 :=
.seq rawBody485_444 rawBody485_445

def rawBody485_447 : StackLang.HolProg 64 :=
.seq rawBody485_443 rawBody485_446

def rawBody485_448 : StackLang.HolProg 64 :=
.seq rawBody485_124 rawBody485_447

def rawBody485_449 : StackLang.HolProg 64 :=
.loop rawBody485_448

def rawBody485_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody485_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody485_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody485_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 8

def rawBody485_454 : StackLang.HolProg 64 :=
.seq rawBody485_452 rawBody485_453

def rawBody485_455 : StackLang.HolProg 64 :=
.seq rawBody485_451 rawBody485_454

def rawBody485_456 : StackLang.HolProg 64 :=
.seq rawBody485_450 rawBody485_455

def rawBody485_457 : StackLang.HolProg 64 :=
.seq rawBody485_449 rawBody485_456

def rawBody485_458 : StackLang.HolProg 64 :=
.seq rawBody485_123 rawBody485_457

def rawBody485_459 : StackLang.HolProg 64 :=
.seq rawBody485_122 rawBody485_458

def rawBody485_460 : StackLang.HolProg 64 :=
.seq rawBody485_121 rawBody485_459

def rawBody485_461 : StackLang.HolProg 64 :=
.seq rawBody485_120 rawBody485_460

def rawBody485_462 : StackLang.HolProg 64 :=
.seq rawBody485_119 rawBody485_461

def rawBody485_463 : StackLang.HolProg 64 :=
.seq rawBody485_64 rawBody485_462

def rawBody485_464 : StackLang.HolProg 64 :=
.seq rawBody485_61 rawBody485_463

def rawBody485_465 : StackLang.HolProg 64 :=
.seq rawBody485_60 rawBody485_464

def rawBody485_466 : StackLang.HolProg 64 :=
.seq rawBody485_59 rawBody485_465

def rawBody485_467 : StackLang.HolProg 64 :=
.seq rawBody485_58 rawBody485_466

def rawBody485_468 : StackLang.HolProg 64 :=
.seq rawBody485_57 rawBody485_467

def rawBody485_469 : StackLang.HolProg 64 :=
.seq rawBody485_56 rawBody485_468

def rawBody485_470 : StackLang.HolProg 64 :=
.seq rawBody485_55 rawBody485_469

def rawBody485_471 : StackLang.HolProg 64 :=
.seq rawBody485_10 rawBody485_470

def rawBody485_472 : StackLang.HolProg 64 :=
.seq rawBody485_5 rawBody485_471

def rawBody485_473 : StackLang.HolProg 64 :=
.seq rawBody485_4 rawBody485_472

def rawBody485_474 : StackLang.HolProg 64 :=
.seq rawBody485_3 rawBody485_473

def rawBody485_475 : StackLang.HolProg 64 :=
.seq rawBody485_2 rawBody485_474

def rawBody485_476 : StackLang.HolProg 64 :=
.seq rawBody485_1 rawBody485_475

def rawBody485_477 : StackLang.HolProg 64 :=
.seq rawBody485_0 rawBody485_476

def raw485 : StackLang.HolProg 64 := rawBody485_477
theorem raw485_eq : StackRawCall.compTop RawInfo.rawInfo (function485 (.list [])).1 = raw485 := by
  kernel_rfl
#print axioms raw485_eq
end InitECandidate.Proofs.BackendStages
