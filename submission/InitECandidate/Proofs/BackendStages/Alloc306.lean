import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw306
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody306_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def AllocBody306_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody306_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody306_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody306_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody306_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody306_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def AllocBody306_9 : StackLang.HolProg 64 :=
.seq AllocBody306_7 AllocBody306_8

def AllocBody306_10 : StackLang.HolProg 64 :=
.seq AllocBody306_6 AllocBody306_9

def AllocBody306_11 : StackLang.HolProg 64 :=
.seq AllocBody306_5 AllocBody306_10

def AllocBody306_12 : StackLang.HolProg 64 :=
.seq AllocBody306_4 AllocBody306_11

def AllocBody306_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody306_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def AllocBody306_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody306_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody306_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody306_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody306_24 : StackLang.HolProg 64 :=
.seq AllocBody306_22 AllocBody306_23

def AllocBody306_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 11 5

def AllocBody306_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody306_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody306_28 : StackLang.HolProg 64 :=
.seq AllocBody306_26 AllocBody306_27

def AllocBody306_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody306_30 : StackLang.HolProg 64 :=
.seq AllocBody306_28 AllocBody306_29

def AllocBody306_31 : StackLang.HolProg 64 :=
.seq AllocBody306_25 AllocBody306_30

def AllocBody306_32 : StackLang.HolProg 64 :=
.seq AllocBody306_24 AllocBody306_31

def AllocBody306_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 845#64)

def AllocBody306_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody306_36 : StackLang.HolProg 64 :=
.seq AllocBody306_34 AllocBody306_35

def AllocBody306_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody306_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody306_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody306_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 306 3

def AllocBody306_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody306_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody306_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody306_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody306_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody306_47 : StackLang.HolProg 64 :=
.seq AllocBody306_45 AllocBody306_46

def AllocBody306_48 : StackLang.HolProg 64 :=
.seq AllocBody306_44 AllocBody306_47

def AllocBody306_49 : StackLang.HolProg 64 :=
.seq AllocBody306_43 AllocBody306_48

def AllocBody306_50 : StackLang.HolProg 64 :=
.seq AllocBody306_42 AllocBody306_49

def AllocBody306_51 : StackLang.HolProg 64 :=
.seq AllocBody306_41 AllocBody306_50

def AllocBody306_52 : StackLang.HolProg 64 :=
.seq AllocBody306_40 AllocBody306_51

def AllocBody306_53 : StackLang.HolProg 64 :=
.seq AllocBody306_39 AllocBody306_52

def AllocBody306_54 : StackLang.HolProg 64 :=
.seq AllocBody306_38 AllocBody306_53

def AllocBody306_55 : StackLang.HolProg 64 :=
.seq AllocBody306_37 AllocBody306_54

def AllocBody306_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody306_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody306_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody306_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody306_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 4

def AllocBody306_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 5

def AllocBody306_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody306_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody306_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 1

def AllocBody306_67 : StackLang.HolProg 64 :=
.seq AllocBody306_65 AllocBody306_66

def AllocBody306_68 : StackLang.HolProg 64 :=
.seq AllocBody306_64 AllocBody306_67

def AllocBody306_69 : StackLang.HolProg 64 :=
.seq AllocBody306_63 AllocBody306_68

def AllocBody306_70 : StackLang.HolProg 64 :=
.seq AllocBody306_62 AllocBody306_69

def AllocBody306_71 : StackLang.HolProg 64 :=
.seq AllocBody306_61 AllocBody306_70

def AllocBody306_72 : StackLang.HolProg 64 :=
.seq AllocBody306_60 AllocBody306_71

def AllocBody306_73 : StackLang.HolProg 64 :=
.seq AllocBody306_59 AllocBody306_72

def AllocBody306_74 : StackLang.HolProg 64 :=
.seq AllocBody306_58 AllocBody306_73

def AllocBody306_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 4

def AllocBody306_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 5

def AllocBody306_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody306_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody306_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 1

def AllocBody306_80 : StackLang.HolProg 64 :=
.seq AllocBody306_78 AllocBody306_79

def AllocBody306_81 : StackLang.HolProg 64 :=
.seq AllocBody306_77 AllocBody306_80

def AllocBody306_82 : StackLang.HolProg 64 :=
.seq AllocBody306_76 AllocBody306_81

def AllocBody306_83 : StackLang.HolProg 64 :=
.seq AllocBody306_75 AllocBody306_82

def AllocBody306_84 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody306_85 : StackLang.HolProg 64 :=
.seq AllocBody306_83 AllocBody306_84

def AllocBody306_86 : StackLang.HolProg 64 :=
.call (some (AllocBody306_74, 0, 306, 2)) (Sum.inl 286) (some (AllocBody306_85, 306, 3))

def AllocBody306_87 : StackLang.HolProg 64 :=
.seq AllocBody306_57 AllocBody306_86

def AllocBody306_88 : StackLang.HolProg 64 :=
.seq AllocBody306_56 AllocBody306_87

def AllocBody306_89 : StackLang.HolProg 64 :=
.seq AllocBody306_55 AllocBody306_88

def AllocBody306_90 : StackLang.HolProg 64 :=
.seq AllocBody306_36 AllocBody306_89

def AllocBody306_91 : StackLang.HolProg 64 :=
.seq AllocBody306_33 AllocBody306_90

def AllocBody306_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_94 : StackLang.HolProg 64 :=
.seq AllocBody306_92 AllocBody306_93

def AllocBody306_95 : StackLang.HolProg 64 :=
.seq AllocBody306_91 AllocBody306_94

def AllocBody306_96 : StackLang.HolProg 64 :=
.seq AllocBody306_32 AllocBody306_95

def AllocBody306_97 : StackLang.HolProg 64 :=
.seq AllocBody306_21 AllocBody306_96

def AllocBody306_98 : StackLang.HolProg 64 :=
.seq AllocBody306_20 AllocBody306_97

def AllocBody306_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 4

def AllocBody306_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody306_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 5

def AllocBody306_103 : StackLang.HolProg 64 :=
.seq AllocBody306_101 AllocBody306_102

def AllocBody306_104 : StackLang.HolProg 64 :=
.seq AllocBody306_100 AllocBody306_103

def AllocBody306_105 : StackLang.HolProg 64 :=
.seq AllocBody306_99 AllocBody306_104

def AllocBody306_106 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody306_98 AllocBody306_105

def AllocBody306_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody306_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 40#64))

def AllocBody306_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody306_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 32#64))

def AllocBody306_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def AllocBody306_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 11 5

def AllocBody306_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 846#64)

def AllocBody306_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody306_124 : StackLang.HolProg 64 :=
.seq AllocBody306_122 AllocBody306_123

def AllocBody306_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody306_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody306_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody306_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 306 5

def AllocBody306_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody306_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody306_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody306_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody306_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody306_135 : StackLang.HolProg 64 :=
.seq AllocBody306_133 AllocBody306_134

def AllocBody306_136 : StackLang.HolProg 64 :=
.seq AllocBody306_132 AllocBody306_135

def AllocBody306_137 : StackLang.HolProg 64 :=
.seq AllocBody306_131 AllocBody306_136

def AllocBody306_138 : StackLang.HolProg 64 :=
.seq AllocBody306_130 AllocBody306_137

def AllocBody306_139 : StackLang.HolProg 64 :=
.seq AllocBody306_129 AllocBody306_138

def AllocBody306_140 : StackLang.HolProg 64 :=
.seq AllocBody306_128 AllocBody306_139

def AllocBody306_141 : StackLang.HolProg 64 :=
.seq AllocBody306_127 AllocBody306_140

def AllocBody306_142 : StackLang.HolProg 64 :=
.seq AllocBody306_126 AllocBody306_141

def AllocBody306_143 : StackLang.HolProg 64 :=
.seq AllocBody306_125 AllocBody306_142

def AllocBody306_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody306_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody306_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody306_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody306_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody306_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 6

def AllocBody306_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody306_153 : StackLang.HolProg 64 :=
.seq AllocBody306_151 AllocBody306_152

def AllocBody306_154 : StackLang.HolProg 64 :=
.seq AllocBody306_150 AllocBody306_153

def AllocBody306_155 : StackLang.HolProg 64 :=
.seq AllocBody306_149 AllocBody306_154

def AllocBody306_156 : StackLang.HolProg 64 :=
.seq AllocBody306_148 AllocBody306_155

def AllocBody306_157 : StackLang.HolProg 64 :=
.seq AllocBody306_147 AllocBody306_156

def AllocBody306_158 : StackLang.HolProg 64 :=
.seq AllocBody306_146 AllocBody306_157

def AllocBody306_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 6

def AllocBody306_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody306_161 : StackLang.HolProg 64 :=
.seq AllocBody306_159 AllocBody306_160

def AllocBody306_162 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody306_163 : StackLang.HolProg 64 :=
.seq AllocBody306_161 AllocBody306_162

def AllocBody306_164 : StackLang.HolProg 64 :=
.call (some (AllocBody306_158, 0, 306, 4)) (Sum.inl 79) (some (AllocBody306_163, 306, 5))

def AllocBody306_165 : StackLang.HolProg 64 :=
.seq AllocBody306_145 AllocBody306_164

def AllocBody306_166 : StackLang.HolProg 64 :=
.seq AllocBody306_144 AllocBody306_165

def AllocBody306_167 : StackLang.HolProg 64 :=
.seq AllocBody306_143 AllocBody306_166

def AllocBody306_168 : StackLang.HolProg 64 :=
.seq AllocBody306_124 AllocBody306_167

def AllocBody306_169 : StackLang.HolProg 64 :=
.seq AllocBody306_121 AllocBody306_168

def AllocBody306_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody306_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody306_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 48#64))

def AllocBody306_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 56#64))

def AllocBody306_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody306_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 10

def AllocBody306_182 : StackLang.HolProg 64 :=
.seq AllocBody306_180 AllocBody306_181

def AllocBody306_183 : StackLang.HolProg 64 :=
.seq AllocBody306_179 AllocBody306_182

def AllocBody306_184 : StackLang.HolProg 64 :=
.seq AllocBody306_178 AllocBody306_183

def AllocBody306_185 : StackLang.HolProg 64 :=
.seq AllocBody306_177 AllocBody306_184

def AllocBody306_186 : StackLang.HolProg 64 :=
.seq AllocBody306_176 AllocBody306_185

def AllocBody306_187 : StackLang.HolProg 64 :=
.seq AllocBody306_175 AllocBody306_186

def AllocBody306_188 : StackLang.HolProg 64 :=
.seq AllocBody306_174 AllocBody306_187

def AllocBody306_189 : StackLang.HolProg 64 :=
.seq AllocBody306_173 AllocBody306_188

def AllocBody306_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_191 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody306_189 AllocBody306_190

def AllocBody306_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_195 : StackLang.HolProg 64 :=
.seq AllocBody306_193 AllocBody306_194

def AllocBody306_196 : StackLang.HolProg 64 :=
.seq AllocBody306_192 AllocBody306_195

def AllocBody306_197 : StackLang.HolProg 64 :=
.seq AllocBody306_191 AllocBody306_196

def AllocBody306_198 : StackLang.HolProg 64 :=
.seq AllocBody306_172 AllocBody306_197

def AllocBody306_199 : StackLang.HolProg 64 :=
.seq AllocBody306_171 AllocBody306_198

def AllocBody306_200 : StackLang.HolProg 64 :=
.seq AllocBody306_170 AllocBody306_199

def AllocBody306_201 : StackLang.HolProg 64 :=
.seq AllocBody306_169 AllocBody306_200

def AllocBody306_202 : StackLang.HolProg 64 :=
.seq AllocBody306_120 AllocBody306_201

def AllocBody306_203 : StackLang.HolProg 64 :=
.seq AllocBody306_119 AllocBody306_202

def AllocBody306_204 : StackLang.HolProg 64 :=
.seq AllocBody306_118 AllocBody306_203

def AllocBody306_205 : StackLang.HolProg 64 :=
.seq AllocBody306_117 AllocBody306_204

def AllocBody306_206 : StackLang.HolProg 64 :=
.seq AllocBody306_116 AllocBody306_205

def AllocBody306_207 : StackLang.HolProg 64 :=
.seq AllocBody306_115 AllocBody306_206

def AllocBody306_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 6

def AllocBody306_210 : StackLang.HolProg 64 :=
.seq AllocBody306_208 AllocBody306_209

def AllocBody306_211 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody306_207 AllocBody306_210

def AllocBody306_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody306_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody306_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody306_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody306_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 10

def AllocBody306_219 : StackLang.HolProg 64 :=
.seq AllocBody306_217 AllocBody306_218

def AllocBody306_220 : StackLang.HolProg 64 :=
.seq AllocBody306_216 AllocBody306_219

def AllocBody306_221 : StackLang.HolProg 64 :=
.seq AllocBody306_215 AllocBody306_220

def AllocBody306_222 : StackLang.HolProg 64 :=
.seq AllocBody306_214 AllocBody306_221

def AllocBody306_223 : StackLang.HolProg 64 :=
.seq AllocBody306_213 AllocBody306_222

def AllocBody306_224 : StackLang.HolProg 64 :=
.seq AllocBody306_212 AllocBody306_223

def AllocBody306_225 : StackLang.HolProg 64 :=
.seq AllocBody306_211 AllocBody306_224

def AllocBody306_226 : StackLang.HolProg 64 :=
.seq AllocBody306_114 AllocBody306_225

def AllocBody306_227 : StackLang.HolProg 64 :=
.seq AllocBody306_113 AllocBody306_226

def AllocBody306_228 : StackLang.HolProg 64 :=
.seq AllocBody306_112 AllocBody306_227

def AllocBody306_229 : StackLang.HolProg 64 :=
.seq AllocBody306_111 AllocBody306_228

def AllocBody306_230 : StackLang.HolProg 64 :=
.seq AllocBody306_110 AllocBody306_229

def AllocBody306_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def AllocBody306_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def AllocBody306_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def AllocBody306_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody306_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody306_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def AllocBody306_237 : StackLang.HolProg 64 :=
.seq AllocBody306_235 AllocBody306_236

def AllocBody306_238 : StackLang.HolProg 64 :=
.seq AllocBody306_234 AllocBody306_237

def AllocBody306_239 : StackLang.HolProg 64 :=
.seq AllocBody306_233 AllocBody306_238

def AllocBody306_240 : StackLang.HolProg 64 :=
.seq AllocBody306_232 AllocBody306_239

def AllocBody306_241 : StackLang.HolProg 64 :=
.seq AllocBody306_231 AllocBody306_240

def AllocBody306_242 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody306_230 AllocBody306_241

def AllocBody306_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody306_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 40#64))

def AllocBody306_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody306_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody306_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody306_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody306_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody306_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def AllocBody306_260 : StackLang.HolProg 64 :=
.seq AllocBody306_258 AllocBody306_259

def AllocBody306_261 : StackLang.HolProg 64 :=
.seq AllocBody306_257 AllocBody306_260

def AllocBody306_262 : StackLang.HolProg 64 :=
.seq AllocBody306_256 AllocBody306_261

def AllocBody306_263 : StackLang.HolProg 64 :=
.seq AllocBody306_255 AllocBody306_262

def AllocBody306_264 : StackLang.HolProg 64 :=
.seq AllocBody306_254 AllocBody306_263

def AllocBody306_265 : StackLang.HolProg 64 :=
.seq AllocBody306_253 AllocBody306_264

def AllocBody306_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_267 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) AllocBody306_265 AllocBody306_266

def AllocBody306_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 32#64))

def AllocBody306_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody306_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody306_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 6

def AllocBody306_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 5

def AllocBody306_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 4

def AllocBody306_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 3

def AllocBody306_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody306_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 1

def AllocBody306_281 : StackLang.HolProg 64 :=
.seq AllocBody306_279 AllocBody306_280

def AllocBody306_282 : StackLang.HolProg 64 :=
.seq AllocBody306_278 AllocBody306_281

def AllocBody306_283 : StackLang.HolProg 64 :=
.seq AllocBody306_277 AllocBody306_282

def AllocBody306_284 : StackLang.HolProg 64 :=
.seq AllocBody306_276 AllocBody306_283

def AllocBody306_285 : StackLang.HolProg 64 :=
.seq AllocBody306_275 AllocBody306_284

def AllocBody306_286 : StackLang.HolProg 64 :=
.seq AllocBody306_274 AllocBody306_285

def AllocBody306_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 847#64)

def AllocBody306_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody306_290 : StackLang.HolProg 64 :=
.seq AllocBody306_288 AllocBody306_289

def AllocBody306_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody306_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody306_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody306_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 306 7

def AllocBody306_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody306_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody306_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody306_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody306_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody306_301 : StackLang.HolProg 64 :=
.seq AllocBody306_299 AllocBody306_300

def AllocBody306_302 : StackLang.HolProg 64 :=
.seq AllocBody306_298 AllocBody306_301

def AllocBody306_303 : StackLang.HolProg 64 :=
.seq AllocBody306_297 AllocBody306_302

def AllocBody306_304 : StackLang.HolProg 64 :=
.seq AllocBody306_296 AllocBody306_303

def AllocBody306_305 : StackLang.HolProg 64 :=
.seq AllocBody306_295 AllocBody306_304

def AllocBody306_306 : StackLang.HolProg 64 :=
.seq AllocBody306_294 AllocBody306_305

def AllocBody306_307 : StackLang.HolProg 64 :=
.seq AllocBody306_293 AllocBody306_306

def AllocBody306_308 : StackLang.HolProg 64 :=
.seq AllocBody306_292 AllocBody306_307

def AllocBody306_309 : StackLang.HolProg 64 :=
.seq AllocBody306_291 AllocBody306_308

def AllocBody306_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody306_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody306_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody306_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody306_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody306_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def AllocBody306_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 5

def AllocBody306_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def AllocBody306_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def AllocBody306_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody306_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody306_323 : StackLang.HolProg 64 :=
.seq AllocBody306_321 AllocBody306_322

def AllocBody306_324 : StackLang.HolProg 64 :=
.seq AllocBody306_320 AllocBody306_323

def AllocBody306_325 : StackLang.HolProg 64 :=
.seq AllocBody306_319 AllocBody306_324

def AllocBody306_326 : StackLang.HolProg 64 :=
.seq AllocBody306_318 AllocBody306_325

def AllocBody306_327 : StackLang.HolProg 64 :=
.seq AllocBody306_317 AllocBody306_326

def AllocBody306_328 : StackLang.HolProg 64 :=
.seq AllocBody306_316 AllocBody306_327

def AllocBody306_329 : StackLang.HolProg 64 :=
.seq AllocBody306_315 AllocBody306_328

def AllocBody306_330 : StackLang.HolProg 64 :=
.seq AllocBody306_314 AllocBody306_329

def AllocBody306_331 : StackLang.HolProg 64 :=
.seq AllocBody306_313 AllocBody306_330

def AllocBody306_332 : StackLang.HolProg 64 :=
.seq AllocBody306_312 AllocBody306_331

def AllocBody306_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def AllocBody306_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 5

def AllocBody306_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def AllocBody306_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def AllocBody306_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody306_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody306_339 : StackLang.HolProg 64 :=
.seq AllocBody306_337 AllocBody306_338

def AllocBody306_340 : StackLang.HolProg 64 :=
.seq AllocBody306_336 AllocBody306_339

def AllocBody306_341 : StackLang.HolProg 64 :=
.seq AllocBody306_335 AllocBody306_340

def AllocBody306_342 : StackLang.HolProg 64 :=
.seq AllocBody306_334 AllocBody306_341

def AllocBody306_343 : StackLang.HolProg 64 :=
.seq AllocBody306_333 AllocBody306_342

def AllocBody306_344 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody306_345 : StackLang.HolProg 64 :=
.seq AllocBody306_343 AllocBody306_344

def AllocBody306_346 : StackLang.HolProg 64 :=
.call (some (AllocBody306_332, 0, 306, 6)) (Sum.inl 79) (some (AllocBody306_345, 306, 7))

def AllocBody306_347 : StackLang.HolProg 64 :=
.seq AllocBody306_311 AllocBody306_346

def AllocBody306_348 : StackLang.HolProg 64 :=
.seq AllocBody306_310 AllocBody306_347

def AllocBody306_349 : StackLang.HolProg 64 :=
.seq AllocBody306_309 AllocBody306_348

def AllocBody306_350 : StackLang.HolProg 64 :=
.seq AllocBody306_290 AllocBody306_349

def AllocBody306_351 : StackLang.HolProg 64 :=
.seq AllocBody306_287 AllocBody306_350

def AllocBody306_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody306_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody306_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody306_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody306_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody306_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def AllocBody306_362 : StackLang.HolProg 64 :=
.seq AllocBody306_360 AllocBody306_361

def AllocBody306_363 : StackLang.HolProg 64 :=
.seq AllocBody306_359 AllocBody306_362

def AllocBody306_364 : StackLang.HolProg 64 :=
.seq AllocBody306_358 AllocBody306_363

def AllocBody306_365 : StackLang.HolProg 64 :=
.seq AllocBody306_357 AllocBody306_364

def AllocBody306_366 : StackLang.HolProg 64 :=
.seq AllocBody306_356 AllocBody306_365

def AllocBody306_367 : StackLang.HolProg 64 :=
.seq AllocBody306_355 AllocBody306_366

def AllocBody306_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_369 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody306_367 AllocBody306_368

def AllocBody306_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody306_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 48#64))

def AllocBody306_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_377 : StackLang.HolProg 64 :=
.seq AllocBody306_375 AllocBody306_376

def AllocBody306_378 : StackLang.HolProg 64 :=
.seq AllocBody306_374 AllocBody306_377

def AllocBody306_379 : StackLang.HolProg 64 :=
.seq AllocBody306_373 AllocBody306_378

def AllocBody306_380 : StackLang.HolProg 64 :=
.seq AllocBody306_372 AllocBody306_379

def AllocBody306_381 : StackLang.HolProg 64 :=
.seq AllocBody306_371 AllocBody306_380

def AllocBody306_382 : StackLang.HolProg 64 :=
.seq AllocBody306_370 AllocBody306_381

def AllocBody306_383 : StackLang.HolProg 64 :=
.seq AllocBody306_369 AllocBody306_382

def AllocBody306_384 : StackLang.HolProg 64 :=
.seq AllocBody306_354 AllocBody306_383

def AllocBody306_385 : StackLang.HolProg 64 :=
.seq AllocBody306_353 AllocBody306_384

def AllocBody306_386 : StackLang.HolProg 64 :=
.seq AllocBody306_352 AllocBody306_385

def AllocBody306_387 : StackLang.HolProg 64 :=
.seq AllocBody306_351 AllocBody306_386

def AllocBody306_388 : StackLang.HolProg 64 :=
.seq AllocBody306_286 AllocBody306_387

def AllocBody306_389 : StackLang.HolProg 64 :=
.seq AllocBody306_273 AllocBody306_388

def AllocBody306_390 : StackLang.HolProg 64 :=
.seq AllocBody306_272 AllocBody306_389

def AllocBody306_391 : StackLang.HolProg 64 :=
.seq AllocBody306_271 AllocBody306_390

def AllocBody306_392 : StackLang.HolProg 64 :=
.seq AllocBody306_270 AllocBody306_391

def AllocBody306_393 : StackLang.HolProg 64 :=
.seq AllocBody306_269 AllocBody306_392

def AllocBody306_394 : StackLang.HolProg 64 :=
.seq AllocBody306_268 AllocBody306_393

def AllocBody306_395 : StackLang.HolProg 64 :=
.seq AllocBody306_267 AllocBody306_394

def AllocBody306_396 : StackLang.HolProg 64 :=
.seq AllocBody306_252 AllocBody306_395

def AllocBody306_397 : StackLang.HolProg 64 :=
.seq AllocBody306_251 AllocBody306_396

def AllocBody306_398 : StackLang.HolProg 64 :=
.seq AllocBody306_250 AllocBody306_397

def AllocBody306_399 : StackLang.HolProg 64 :=
.seq AllocBody306_249 AllocBody306_398

def AllocBody306_400 : StackLang.HolProg 64 :=
.seq AllocBody306_248 AllocBody306_399

def AllocBody306_401 : StackLang.HolProg 64 :=
.seq AllocBody306_247 AllocBody306_400

def AllocBody306_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 168#64))

def AllocBody306_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody306_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody306_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody306_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody306_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody306_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def AllocBody306_416 : StackLang.HolProg 64 :=
.seq AllocBody306_414 AllocBody306_415

def AllocBody306_417 : StackLang.HolProg 64 :=
.seq AllocBody306_413 AllocBody306_416

def AllocBody306_418 : StackLang.HolProg 64 :=
.seq AllocBody306_412 AllocBody306_417

def AllocBody306_419 : StackLang.HolProg 64 :=
.seq AllocBody306_411 AllocBody306_418

def AllocBody306_420 : StackLang.HolProg 64 :=
.seq AllocBody306_410 AllocBody306_419

def AllocBody306_421 : StackLang.HolProg 64 :=
.seq AllocBody306_409 AllocBody306_420

def AllocBody306_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_423 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody306_421 AllocBody306_422

def AllocBody306_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody306_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 160#64))

def AllocBody306_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody306_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody306_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def AllocBody306_432 : StackLang.HolProg 64 :=
.seq AllocBody306_430 AllocBody306_431

def AllocBody306_433 : StackLang.HolProg 64 :=
.seq AllocBody306_429 AllocBody306_432

def AllocBody306_434 : StackLang.HolProg 64 :=
.seq AllocBody306_428 AllocBody306_433

def AllocBody306_435 : StackLang.HolProg 64 :=
.seq AllocBody306_427 AllocBody306_434

def AllocBody306_436 : StackLang.HolProg 64 :=
.seq AllocBody306_426 AllocBody306_435

def AllocBody306_437 : StackLang.HolProg 64 :=
.seq AllocBody306_425 AllocBody306_436

def AllocBody306_438 : StackLang.HolProg 64 :=
.seq AllocBody306_424 AllocBody306_437

def AllocBody306_439 : StackLang.HolProg 64 :=
.seq AllocBody306_423 AllocBody306_438

def AllocBody306_440 : StackLang.HolProg 64 :=
.seq AllocBody306_408 AllocBody306_439

def AllocBody306_441 : StackLang.HolProg 64 :=
.seq AllocBody306_407 AllocBody306_440

def AllocBody306_442 : StackLang.HolProg 64 :=
.seq AllocBody306_406 AllocBody306_441

def AllocBody306_443 : StackLang.HolProg 64 :=
.seq AllocBody306_405 AllocBody306_442

def AllocBody306_444 : StackLang.HolProg 64 :=
.seq AllocBody306_404 AllocBody306_443

def AllocBody306_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody306_446 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody306_444 AllocBody306_445

def AllocBody306_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody306_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody306_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody306_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody306_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def AllocBody306_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody306_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_460 : StackLang.HolProg 64 :=
.seq AllocBody306_458 AllocBody306_459

def AllocBody306_461 : StackLang.HolProg 64 :=
.seq AllocBody306_457 AllocBody306_460

def AllocBody306_462 : StackLang.HolProg 64 :=
.seq AllocBody306_456 AllocBody306_461

def AllocBody306_463 : StackLang.HolProg 64 :=
.seq AllocBody306_455 AllocBody306_462

def AllocBody306_464 : StackLang.HolProg 64 :=
.seq AllocBody306_454 AllocBody306_463

def AllocBody306_465 : StackLang.HolProg 64 :=
.seq AllocBody306_453 AllocBody306_464

def AllocBody306_466 : StackLang.HolProg 64 :=
.seq AllocBody306_452 AllocBody306_465

def AllocBody306_467 : StackLang.HolProg 64 :=
.seq AllocBody306_451 AllocBody306_466

def AllocBody306_468 : StackLang.HolProg 64 :=
.seq AllocBody306_450 AllocBody306_467

def AllocBody306_469 : StackLang.HolProg 64 :=
.seq AllocBody306_449 AllocBody306_468

def AllocBody306_470 : StackLang.HolProg 64 :=
.seq AllocBody306_448 AllocBody306_469

def AllocBody306_471 : StackLang.HolProg 64 :=
.seq AllocBody306_447 AllocBody306_470

def AllocBody306_472 : StackLang.HolProg 64 :=
.seq AllocBody306_446 AllocBody306_471

def AllocBody306_473 : StackLang.HolProg 64 :=
.seq AllocBody306_403 AllocBody306_472

def AllocBody306_474 : StackLang.HolProg 64 :=
.seq AllocBody306_402 AllocBody306_473

def AllocBody306_475 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody306_401 AllocBody306_474

def AllocBody306_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 6

def AllocBody306_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody306_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def AllocBody306_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody306_481 : StackLang.HolProg 64 :=
.seq AllocBody306_479 AllocBody306_480

def AllocBody306_482 : StackLang.HolProg 64 :=
.seq AllocBody306_478 AllocBody306_481

def AllocBody306_483 : StackLang.HolProg 64 :=
.seq AllocBody306_477 AllocBody306_482

def AllocBody306_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody306_485 : StackLang.HolProg 64 :=
.seq AllocBody306_483 AllocBody306_484

def AllocBody306_486 : StackLang.HolProg 64 :=
.seq AllocBody306_476 AllocBody306_485

def AllocBody306_487 : StackLang.HolProg 64 :=
.seq AllocBody306_475 AllocBody306_486

def AllocBody306_488 : StackLang.HolProg 64 :=
.seq AllocBody306_246 AllocBody306_487

def AllocBody306_489 : StackLang.HolProg 64 :=
.seq AllocBody306_245 AllocBody306_488

def AllocBody306_490 : StackLang.HolProg 64 :=
.seq AllocBody306_244 AllocBody306_489

def AllocBody306_491 : StackLang.HolProg 64 :=
.seq AllocBody306_243 AllocBody306_490

def AllocBody306_492 : StackLang.HolProg 64 :=
.seq AllocBody306_242 AllocBody306_491

def AllocBody306_493 : StackLang.HolProg 64 :=
.seq AllocBody306_109 AllocBody306_492

def AllocBody306_494 : StackLang.HolProg 64 :=
.seq AllocBody306_108 AllocBody306_493

def AllocBody306_495 : StackLang.HolProg 64 :=
.seq AllocBody306_107 AllocBody306_494

def AllocBody306_496 : StackLang.HolProg 64 :=
.seq AllocBody306_106 AllocBody306_495

def AllocBody306_497 : StackLang.HolProg 64 :=
.seq AllocBody306_19 AllocBody306_496

def AllocBody306_498 : StackLang.HolProg 64 :=
.seq AllocBody306_18 AllocBody306_497

def AllocBody306_499 : StackLang.HolProg 64 :=
.seq AllocBody306_17 AllocBody306_498

def AllocBody306_500 : StackLang.HolProg 64 :=
.seq AllocBody306_16 AllocBody306_499

def AllocBody306_501 : StackLang.HolProg 64 :=
.seq AllocBody306_15 AllocBody306_500

def AllocBody306_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody306_504 : StackLang.HolProg 64 :=
.seq AllocBody306_502 AllocBody306_503

def AllocBody306_505 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody306_501 AllocBody306_504

def AllocBody306_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody306_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def AllocBody306_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody306_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def AllocBody306_511 : StackLang.HolProg 64 :=
.seq AllocBody306_509 AllocBody306_510

def AllocBody306_512 : StackLang.HolProg 64 :=
.seq AllocBody306_508 AllocBody306_511

def AllocBody306_513 : StackLang.HolProg 64 :=
.seq AllocBody306_507 AllocBody306_512

def AllocBody306_514 : StackLang.HolProg 64 :=
.seq AllocBody306_506 AllocBody306_513

def AllocBody306_515 : StackLang.HolProg 64 :=
.seq AllocBody306_505 AllocBody306_514

def AllocBody306_516 : StackLang.HolProg 64 :=
.seq AllocBody306_14 AllocBody306_515

def AllocBody306_517 : StackLang.HolProg 64 :=
.seq AllocBody306_13 AllocBody306_516

def AllocBody306_518 : StackLang.HolProg 64 :=
.loop AllocBody306_517

def AllocBody306_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody306_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody306_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody306_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody306_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody306_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody306_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody306_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def AllocBody306_527 : StackLang.HolProg 64 :=
.seq AllocBody306_525 AllocBody306_526

def AllocBody306_528 : StackLang.HolProg 64 :=
.seq AllocBody306_524 AllocBody306_527

def AllocBody306_529 : StackLang.HolProg 64 :=
.seq AllocBody306_523 AllocBody306_528

def AllocBody306_530 : StackLang.HolProg 64 :=
.seq AllocBody306_522 AllocBody306_529

def AllocBody306_531 : StackLang.HolProg 64 :=
.seq AllocBody306_521 AllocBody306_530

def AllocBody306_532 : StackLang.HolProg 64 :=
.seq AllocBody306_520 AllocBody306_531

def AllocBody306_533 : StackLang.HolProg 64 :=
.seq AllocBody306_519 AllocBody306_532

def AllocBody306_534 : StackLang.HolProg 64 :=
.seq AllocBody306_518 AllocBody306_533

def AllocBody306_535 : StackLang.HolProg 64 :=
.seq AllocBody306_12 AllocBody306_534

def AllocBody306_536 : StackLang.HolProg 64 :=
.seq AllocBody306_3 AllocBody306_535

def AllocBody306_537 : StackLang.HolProg 64 :=
.seq AllocBody306_2 AllocBody306_536

def AllocBody306_538 : StackLang.HolProg 64 :=
.seq AllocBody306_1 AllocBody306_537

def AllocBody306_539 : StackLang.HolProg 64 :=
.seq AllocBody306_0 AllocBody306_538

def Alloc306 : Nat × StackLang.HolProg 64 := (306, AllocBody306_539)
theorem Alloc306_eq : StackAlloc.progComp (306, raw306) = Alloc306 := by
  kernel_rfl
#print axioms Alloc306_eq
end InitECandidate.Proofs.BackendStages
