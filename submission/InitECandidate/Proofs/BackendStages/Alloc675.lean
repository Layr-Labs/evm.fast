import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw675
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody675_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def AllocBody675_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody675_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def AllocBody675_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody675_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody675_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody675_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def AllocBody675_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody675_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody675_9 : StackLang.HolProg 64 :=
.seq AllocBody675_7 AllocBody675_8

def AllocBody675_10 : StackLang.HolProg 64 :=
.seq AllocBody675_6 AllocBody675_9

def AllocBody675_11 : StackLang.HolProg 64 :=
.seq AllocBody675_5 AllocBody675_10

def AllocBody675_12 : StackLang.HolProg 64 :=
.seq AllocBody675_4 AllocBody675_11

def AllocBody675_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody675_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody675_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody675_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody675_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody675_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody675_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody675_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 3

def AllocBody675_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody675_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def AllocBody675_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 1

def AllocBody675_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 16#64))

def AllocBody675_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody675_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def AllocBody675_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody675_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody675_29 : StackLang.HolProg 64 :=
.seq AllocBody675_27 AllocBody675_28

def AllocBody675_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 5

def AllocBody675_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody675_32 : StackLang.HolProg 64 :=
.seq AllocBody675_30 AllocBody675_31

def AllocBody675_33 : StackLang.HolProg 64 :=
.seq AllocBody675_29 AllocBody675_32

def AllocBody675_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody675_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2791#64)

def AllocBody675_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody675_37 : StackLang.HolProg 64 :=
.seq AllocBody675_35 AllocBody675_36

def AllocBody675_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody675_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody675_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody675_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 675 3

def AllocBody675_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody675_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody675_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody675_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody675_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody675_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody675_48 : StackLang.HolProg 64 :=
.seq AllocBody675_46 AllocBody675_47

def AllocBody675_49 : StackLang.HolProg 64 :=
.seq AllocBody675_45 AllocBody675_48

def AllocBody675_50 : StackLang.HolProg 64 :=
.seq AllocBody675_44 AllocBody675_49

def AllocBody675_51 : StackLang.HolProg 64 :=
.seq AllocBody675_43 AllocBody675_50

def AllocBody675_52 : StackLang.HolProg 64 :=
.seq AllocBody675_42 AllocBody675_51

def AllocBody675_53 : StackLang.HolProg 64 :=
.seq AllocBody675_41 AllocBody675_52

def AllocBody675_54 : StackLang.HolProg 64 :=
.seq AllocBody675_40 AllocBody675_53

def AllocBody675_55 : StackLang.HolProg 64 :=
.seq AllocBody675_39 AllocBody675_54

def AllocBody675_56 : StackLang.HolProg 64 :=
.seq AllocBody675_38 AllocBody675_55

def AllocBody675_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody675_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody675_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody675_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody675_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody675_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody675_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody675_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 6

def AllocBody675_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def AllocBody675_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def AllocBody675_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def AllocBody675_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody675_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 1

def AllocBody675_70 : StackLang.HolProg 64 :=
.seq AllocBody675_68 AllocBody675_69

def AllocBody675_71 : StackLang.HolProg 64 :=
.seq AllocBody675_67 AllocBody675_70

def AllocBody675_72 : StackLang.HolProg 64 :=
.seq AllocBody675_66 AllocBody675_71

def AllocBody675_73 : StackLang.HolProg 64 :=
.seq AllocBody675_65 AllocBody675_72

def AllocBody675_74 : StackLang.HolProg 64 :=
.seq AllocBody675_64 AllocBody675_73

def AllocBody675_75 : StackLang.HolProg 64 :=
.seq AllocBody675_63 AllocBody675_74

def AllocBody675_76 : StackLang.HolProg 64 :=
.seq AllocBody675_62 AllocBody675_75

def AllocBody675_77 : StackLang.HolProg 64 :=
.seq AllocBody675_61 AllocBody675_76

def AllocBody675_78 : StackLang.HolProg 64 :=
.seq AllocBody675_60 AllocBody675_77

def AllocBody675_79 : StackLang.HolProg 64 :=
.seq AllocBody675_59 AllocBody675_78

def AllocBody675_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 6

def AllocBody675_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def AllocBody675_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def AllocBody675_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def AllocBody675_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody675_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 1

def AllocBody675_86 : StackLang.HolProg 64 :=
.seq AllocBody675_84 AllocBody675_85

def AllocBody675_87 : StackLang.HolProg 64 :=
.seq AllocBody675_83 AllocBody675_86

def AllocBody675_88 : StackLang.HolProg 64 :=
.seq AllocBody675_82 AllocBody675_87

def AllocBody675_89 : StackLang.HolProg 64 :=
.seq AllocBody675_81 AllocBody675_88

def AllocBody675_90 : StackLang.HolProg 64 :=
.seq AllocBody675_80 AllocBody675_89

def AllocBody675_91 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody675_92 : StackLang.HolProg 64 :=
.seq AllocBody675_90 AllocBody675_91

def AllocBody675_93 : StackLang.HolProg 64 :=
.call (some (AllocBody675_79, 0, 675, 2)) (Sum.inl 665) (some (AllocBody675_92, 675, 3))

def AllocBody675_94 : StackLang.HolProg 64 :=
.seq AllocBody675_58 AllocBody675_93

def AllocBody675_95 : StackLang.HolProg 64 :=
.seq AllocBody675_57 AllocBody675_94

def AllocBody675_96 : StackLang.HolProg 64 :=
.seq AllocBody675_56 AllocBody675_95

def AllocBody675_97 : StackLang.HolProg 64 :=
.seq AllocBody675_37 AllocBody675_96

def AllocBody675_98 : StackLang.HolProg 64 :=
.seq AllocBody675_34 AllocBody675_97

def AllocBody675_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody675_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody675_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody675_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody675_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody675_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody675_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody675_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody675_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody675_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody675_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody675_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody675_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody675_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody675_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody675_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 6

def AllocBody675_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 5

def AllocBody675_116 : StackLang.HolProg 64 :=
.seq AllocBody675_114 AllocBody675_115

def AllocBody675_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody675_118 : StackLang.HolProg 64 :=
.seq AllocBody675_116 AllocBody675_117

def AllocBody675_119 : StackLang.HolProg 64 :=
.seq AllocBody675_113 AllocBody675_118

def AllocBody675_120 : StackLang.HolProg 64 :=
.seq AllocBody675_112 AllocBody675_119

def AllocBody675_121 : StackLang.HolProg 64 :=
.seq AllocBody675_111 AllocBody675_120

def AllocBody675_122 : StackLang.HolProg 64 :=
.seq AllocBody675_110 AllocBody675_121

def AllocBody675_123 : StackLang.HolProg 64 :=
.seq AllocBody675_109 AllocBody675_122

def AllocBody675_124 : StackLang.HolProg 64 :=
.seq AllocBody675_108 AllocBody675_123

def AllocBody675_125 : StackLang.HolProg 64 :=
.seq AllocBody675_107 AllocBody675_124

def AllocBody675_126 : StackLang.HolProg 64 :=
.seq AllocBody675_106 AllocBody675_125

def AllocBody675_127 : StackLang.HolProg 64 :=
.seq AllocBody675_105 AllocBody675_126

def AllocBody675_128 : StackLang.HolProg 64 :=
.seq AllocBody675_104 AllocBody675_127

def AllocBody675_129 : StackLang.HolProg 64 :=
.seq AllocBody675_103 AllocBody675_128

def AllocBody675_130 : StackLang.HolProg 64 :=
.seq AllocBody675_102 AllocBody675_129

def AllocBody675_131 : StackLang.HolProg 64 :=
.seq AllocBody675_101 AllocBody675_130

def AllocBody675_132 : StackLang.HolProg 64 :=
.seq AllocBody675_100 AllocBody675_131

def AllocBody675_133 : StackLang.HolProg 64 :=
.seq AllocBody675_99 AllocBody675_132

def AllocBody675_134 : StackLang.HolProg 64 :=
.seq AllocBody675_98 AllocBody675_133

def AllocBody675_135 : StackLang.HolProg 64 :=
.seq AllocBody675_33 AllocBody675_134

def AllocBody675_136 : StackLang.HolProg 64 :=
.seq AllocBody675_26 AllocBody675_135

def AllocBody675_137 : StackLang.HolProg 64 :=
.seq AllocBody675_25 AllocBody675_136

def AllocBody675_138 : StackLang.HolProg 64 :=
.seq AllocBody675_24 AllocBody675_137

def AllocBody675_139 : StackLang.HolProg 64 :=
.seq AllocBody675_23 AllocBody675_138

def AllocBody675_140 : StackLang.HolProg 64 :=
.seq AllocBody675_22 AllocBody675_139

def AllocBody675_141 : StackLang.HolProg 64 :=
.seq AllocBody675_21 AllocBody675_140

def AllocBody675_142 : StackLang.HolProg 64 :=
.seq AllocBody675_20 AllocBody675_141

def AllocBody675_143 : StackLang.HolProg 64 :=
.seq AllocBody675_19 AllocBody675_142

def AllocBody675_144 : StackLang.HolProg 64 :=
.seq AllocBody675_18 AllocBody675_143

def AllocBody675_145 : StackLang.HolProg 64 :=
.seq AllocBody675_17 AllocBody675_144

def AllocBody675_146 : StackLang.HolProg 64 :=
.seq AllocBody675_16 AllocBody675_145

def AllocBody675_147 : StackLang.HolProg 64 :=
.seq AllocBody675_15 AllocBody675_146

def AllocBody675_148 : StackLang.HolProg 64 :=
.seq AllocBody675_14 AllocBody675_147

def AllocBody675_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody675_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody675_151 : StackLang.HolProg 64 :=
.seq AllocBody675_149 AllocBody675_150

def AllocBody675_152 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody675_148 AllocBody675_151

def AllocBody675_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody675_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 6

def AllocBody675_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def AllocBody675_156 : StackLang.HolProg 64 :=
.seq AllocBody675_154 AllocBody675_155

def AllocBody675_157 : StackLang.HolProg 64 :=
.seq AllocBody675_153 AllocBody675_156

def AllocBody675_158 : StackLang.HolProg 64 :=
.seq AllocBody675_152 AllocBody675_157

def AllocBody675_159 : StackLang.HolProg 64 :=
.seq AllocBody675_13 AllocBody675_158

def AllocBody675_160 : StackLang.HolProg 64 :=
.loop AllocBody675_159

def AllocBody675_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody675_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody675_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody675_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody675_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody675_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def AllocBody675_167 : StackLang.HolProg 64 :=
.seq AllocBody675_165 AllocBody675_166

def AllocBody675_168 : StackLang.HolProg 64 :=
.seq AllocBody675_164 AllocBody675_167

def AllocBody675_169 : StackLang.HolProg 64 :=
.seq AllocBody675_163 AllocBody675_168

def AllocBody675_170 : StackLang.HolProg 64 :=
.seq AllocBody675_162 AllocBody675_169

def AllocBody675_171 : StackLang.HolProg 64 :=
.seq AllocBody675_161 AllocBody675_170

def AllocBody675_172 : StackLang.HolProg 64 :=
.seq AllocBody675_160 AllocBody675_171

def AllocBody675_173 : StackLang.HolProg 64 :=
.seq AllocBody675_12 AllocBody675_172

def AllocBody675_174 : StackLang.HolProg 64 :=
.seq AllocBody675_3 AllocBody675_173

def AllocBody675_175 : StackLang.HolProg 64 :=
.seq AllocBody675_2 AllocBody675_174

def AllocBody675_176 : StackLang.HolProg 64 :=
.seq AllocBody675_1 AllocBody675_175

def AllocBody675_177 : StackLang.HolProg 64 :=
.seq AllocBody675_0 AllocBody675_176

def Alloc675 : Nat × StackLang.HolProg 64 := (675, AllocBody675_177)
theorem Alloc675_eq : StackAlloc.progComp (675, raw675) = Alloc675 := by
  kernel_rfl
#print axioms Alloc675_eq
end InitECandidate.Proofs.BackendStages
