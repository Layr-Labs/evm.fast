import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw164
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody164_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 9

def AllocBody164_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody164_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def AllocBody164_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody164_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody164_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def AllocBody164_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody164_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 8

def AllocBody164_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 7

def AllocBody164_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 6

def AllocBody164_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 5

def AllocBody164_11 : StackLang.HolProg 64 :=
.seq AllocBody164_9 AllocBody164_10

def AllocBody164_12 : StackLang.HolProg 64 :=
.seq AllocBody164_8 AllocBody164_11

def AllocBody164_13 : StackLang.HolProg 64 :=
.seq AllocBody164_7 AllocBody164_12

def AllocBody164_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody164_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody164_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody164_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody164_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody164_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody164_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody164_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody164_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody164_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody164_24 : StackLang.HolProg 64 :=
.seq AllocBody164_22 AllocBody164_23

def AllocBody164_25 : StackLang.HolProg 64 :=
.seq AllocBody164_21 AllocBody164_24

def AllocBody164_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody164_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody164_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody164_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody164_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def AllocBody164_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody164_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def AllocBody164_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody164_34 : StackLang.HolProg 64 :=
.seq AllocBody164_32 AllocBody164_33

def AllocBody164_35 : StackLang.HolProg 64 :=
.seq AllocBody164_31 AllocBody164_34

def AllocBody164_36 : StackLang.HolProg 64 :=
.seq AllocBody164_30 AllocBody164_35

def AllocBody164_37 : StackLang.HolProg 64 :=
.seq AllocBody164_29 AllocBody164_36

def AllocBody164_38 : StackLang.HolProg 64 :=
.seq AllocBody164_28 AllocBody164_37

def AllocBody164_39 : StackLang.HolProg 64 :=
.seq AllocBody164_27 AllocBody164_38

def AllocBody164_40 : StackLang.HolProg 64 :=
.seq AllocBody164_26 AllocBody164_39

def AllocBody164_41 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody164_25 AllocBody164_40

def AllocBody164_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody164_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 8

def AllocBody164_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 6

def AllocBody164_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 5

def AllocBody164_46 : StackLang.HolProg 64 :=
.seq AllocBody164_44 AllocBody164_45

def AllocBody164_47 : StackLang.HolProg 64 :=
.seq AllocBody164_43 AllocBody164_46

def AllocBody164_48 : StackLang.HolProg 64 :=
.seq AllocBody164_42 AllocBody164_47

def AllocBody164_49 : StackLang.HolProg 64 :=
.seq AllocBody164_41 AllocBody164_48

def AllocBody164_50 : StackLang.HolProg 64 :=
.seq AllocBody164_20 AllocBody164_49

def AllocBody164_51 : StackLang.HolProg 64 :=
.seq AllocBody164_19 AllocBody164_50

def AllocBody164_52 : StackLang.HolProg 64 :=
.seq AllocBody164_18 AllocBody164_51

def AllocBody164_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody164_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody164_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody164_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody164_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody164_58 : StackLang.HolProg 64 :=
.seq AllocBody164_56 AllocBody164_57

def AllocBody164_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody164_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody164_61 : StackLang.HolProg 64 :=
.seq AllocBody164_59 AllocBody164_60

def AllocBody164_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody164_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody164_64 : StackLang.HolProg 64 :=
.seq AllocBody164_62 AllocBody164_63

def AllocBody164_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 7

def AllocBody164_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def AllocBody164_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 1

def AllocBody164_68 : StackLang.HolProg 64 :=
.seq AllocBody164_66 AllocBody164_67

def AllocBody164_69 : StackLang.HolProg 64 :=
.seq AllocBody164_65 AllocBody164_68

def AllocBody164_70 : StackLang.HolProg 64 :=
.seq AllocBody164_64 AllocBody164_69

def AllocBody164_71 : StackLang.HolProg 64 :=
.seq AllocBody164_61 AllocBody164_70

def AllocBody164_72 : StackLang.HolProg 64 :=
.seq AllocBody164_58 AllocBody164_71

def AllocBody164_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody164_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 176#64)

def AllocBody164_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody164_76 : StackLang.HolProg 64 :=
.seq AllocBody164_74 AllocBody164_75

def AllocBody164_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody164_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody164_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody164_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 164 3

def AllocBody164_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody164_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody164_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody164_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody164_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody164_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody164_87 : StackLang.HolProg 64 :=
.seq AllocBody164_85 AllocBody164_86

def AllocBody164_88 : StackLang.HolProg 64 :=
.seq AllocBody164_84 AllocBody164_87

def AllocBody164_89 : StackLang.HolProg 64 :=
.seq AllocBody164_83 AllocBody164_88

def AllocBody164_90 : StackLang.HolProg 64 :=
.seq AllocBody164_82 AllocBody164_89

def AllocBody164_91 : StackLang.HolProg 64 :=
.seq AllocBody164_81 AllocBody164_90

def AllocBody164_92 : StackLang.HolProg 64 :=
.seq AllocBody164_80 AllocBody164_91

def AllocBody164_93 : StackLang.HolProg 64 :=
.seq AllocBody164_79 AllocBody164_92

def AllocBody164_94 : StackLang.HolProg 64 :=
.seq AllocBody164_78 AllocBody164_93

def AllocBody164_95 : StackLang.HolProg 64 :=
.seq AllocBody164_77 AllocBody164_94

def AllocBody164_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody164_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody164_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody164_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody164_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody164_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody164_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody164_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def AllocBody164_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody164_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody164_106 : StackLang.HolProg 64 :=
.seq AllocBody164_104 AllocBody164_105

def AllocBody164_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody164_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody164_109 : StackLang.HolProg 64 :=
.seq AllocBody164_107 AllocBody164_108

def AllocBody164_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody164_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody164_112 : StackLang.HolProg 64 :=
.seq AllocBody164_110 AllocBody164_111

def AllocBody164_113 : StackLang.HolProg 64 :=
.seq AllocBody164_109 AllocBody164_112

def AllocBody164_114 : StackLang.HolProg 64 :=
.seq AllocBody164_106 AllocBody164_113

def AllocBody164_115 : StackLang.HolProg 64 :=
.seq AllocBody164_103 AllocBody164_114

def AllocBody164_116 : StackLang.HolProg 64 :=
.seq AllocBody164_102 AllocBody164_115

def AllocBody164_117 : StackLang.HolProg 64 :=
.seq AllocBody164_101 AllocBody164_116

def AllocBody164_118 : StackLang.HolProg 64 :=
.seq AllocBody164_100 AllocBody164_117

def AllocBody164_119 : StackLang.HolProg 64 :=
.seq AllocBody164_99 AllocBody164_118

def AllocBody164_120 : StackLang.HolProg 64 :=
.seq AllocBody164_98 AllocBody164_119

def AllocBody164_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def AllocBody164_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody164_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody164_124 : StackLang.HolProg 64 :=
.seq AllocBody164_122 AllocBody164_123

def AllocBody164_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody164_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody164_127 : StackLang.HolProg 64 :=
.seq AllocBody164_125 AllocBody164_126

def AllocBody164_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody164_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody164_130 : StackLang.HolProg 64 :=
.seq AllocBody164_128 AllocBody164_129

def AllocBody164_131 : StackLang.HolProg 64 :=
.seq AllocBody164_127 AllocBody164_130

def AllocBody164_132 : StackLang.HolProg 64 :=
.seq AllocBody164_124 AllocBody164_131

def AllocBody164_133 : StackLang.HolProg 64 :=
.seq AllocBody164_121 AllocBody164_132

def AllocBody164_134 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody164_135 : StackLang.HolProg 64 :=
.seq AllocBody164_133 AllocBody164_134

def AllocBody164_136 : StackLang.HolProg 64 :=
.call (some (AllocBody164_120, 0, 164, 2)) (Sum.inl 163) (some (AllocBody164_135, 164, 3))

def AllocBody164_137 : StackLang.HolProg 64 :=
.seq AllocBody164_97 AllocBody164_136

def AllocBody164_138 : StackLang.HolProg 64 :=
.seq AllocBody164_96 AllocBody164_137

def AllocBody164_139 : StackLang.HolProg 64 :=
.seq AllocBody164_95 AllocBody164_138

def AllocBody164_140 : StackLang.HolProg 64 :=
.seq AllocBody164_76 AllocBody164_139

def AllocBody164_141 : StackLang.HolProg 64 :=
.seq AllocBody164_73 AllocBody164_140

def AllocBody164_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody164_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody164_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody164_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody164_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody164_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody164_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody164_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody164_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 24#64)

def AllocBody164_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody164_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody164_153 : StackLang.HolProg 64 :=
.seq AllocBody164_151 AllocBody164_152

def AllocBody164_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody164_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 177#64)

def AllocBody164_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody164_157 : StackLang.HolProg 64 :=
.seq AllocBody164_155 AllocBody164_156

def AllocBody164_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody164_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody164_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody164_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 164 5

def AllocBody164_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody164_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody164_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody164_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody164_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody164_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody164_168 : StackLang.HolProg 64 :=
.seq AllocBody164_166 AllocBody164_167

def AllocBody164_169 : StackLang.HolProg 64 :=
.seq AllocBody164_165 AllocBody164_168

def AllocBody164_170 : StackLang.HolProg 64 :=
.seq AllocBody164_164 AllocBody164_169

def AllocBody164_171 : StackLang.HolProg 64 :=
.seq AllocBody164_163 AllocBody164_170

def AllocBody164_172 : StackLang.HolProg 64 :=
.seq AllocBody164_162 AllocBody164_171

def AllocBody164_173 : StackLang.HolProg 64 :=
.seq AllocBody164_161 AllocBody164_172

def AllocBody164_174 : StackLang.HolProg 64 :=
.seq AllocBody164_160 AllocBody164_173

def AllocBody164_175 : StackLang.HolProg 64 :=
.seq AllocBody164_159 AllocBody164_174

def AllocBody164_176 : StackLang.HolProg 64 :=
.seq AllocBody164_158 AllocBody164_175

def AllocBody164_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody164_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody164_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody164_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody164_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody164_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody164_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody164_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 8

def AllocBody164_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def AllocBody164_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 6

def AllocBody164_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody164_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody164_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 3

def AllocBody164_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody164_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody164_192 : StackLang.HolProg 64 :=
.seq AllocBody164_190 AllocBody164_191

def AllocBody164_193 : StackLang.HolProg 64 :=
.seq AllocBody164_189 AllocBody164_192

def AllocBody164_194 : StackLang.HolProg 64 :=
.seq AllocBody164_188 AllocBody164_193

def AllocBody164_195 : StackLang.HolProg 64 :=
.seq AllocBody164_187 AllocBody164_194

def AllocBody164_196 : StackLang.HolProg 64 :=
.seq AllocBody164_186 AllocBody164_195

def AllocBody164_197 : StackLang.HolProg 64 :=
.seq AllocBody164_185 AllocBody164_196

def AllocBody164_198 : StackLang.HolProg 64 :=
.seq AllocBody164_184 AllocBody164_197

def AllocBody164_199 : StackLang.HolProg 64 :=
.seq AllocBody164_183 AllocBody164_198

def AllocBody164_200 : StackLang.HolProg 64 :=
.seq AllocBody164_182 AllocBody164_199

def AllocBody164_201 : StackLang.HolProg 64 :=
.seq AllocBody164_181 AllocBody164_200

def AllocBody164_202 : StackLang.HolProg 64 :=
.seq AllocBody164_180 AllocBody164_201

def AllocBody164_203 : StackLang.HolProg 64 :=
.seq AllocBody164_179 AllocBody164_202

def AllocBody164_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 8

def AllocBody164_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def AllocBody164_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 6

def AllocBody164_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody164_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody164_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 3

def AllocBody164_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody164_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody164_212 : StackLang.HolProg 64 :=
.seq AllocBody164_210 AllocBody164_211

def AllocBody164_213 : StackLang.HolProg 64 :=
.seq AllocBody164_209 AllocBody164_212

def AllocBody164_214 : StackLang.HolProg 64 :=
.seq AllocBody164_208 AllocBody164_213

def AllocBody164_215 : StackLang.HolProg 64 :=
.seq AllocBody164_207 AllocBody164_214

def AllocBody164_216 : StackLang.HolProg 64 :=
.seq AllocBody164_206 AllocBody164_215

def AllocBody164_217 : StackLang.HolProg 64 :=
.seq AllocBody164_205 AllocBody164_216

def AllocBody164_218 : StackLang.HolProg 64 :=
.seq AllocBody164_204 AllocBody164_217

def AllocBody164_219 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody164_220 : StackLang.HolProg 64 :=
.seq AllocBody164_218 AllocBody164_219

def AllocBody164_221 : StackLang.HolProg 64 :=
.call (some (AllocBody164_203, 0, 164, 4)) (Sum.inl 74) (some (AllocBody164_220, 164, 5))

def AllocBody164_222 : StackLang.HolProg 64 :=
.seq AllocBody164_178 AllocBody164_221

def AllocBody164_223 : StackLang.HolProg 64 :=
.seq AllocBody164_177 AllocBody164_222

def AllocBody164_224 : StackLang.HolProg 64 :=
.seq AllocBody164_176 AllocBody164_223

def AllocBody164_225 : StackLang.HolProg 64 :=
.seq AllocBody164_157 AllocBody164_224

def AllocBody164_226 : StackLang.HolProg 64 :=
.seq AllocBody164_154 AllocBody164_225

def AllocBody164_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody164_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody164_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody164_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody164_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody164_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody164_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody164_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody164_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody164_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody164_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody164_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody164_239 : StackLang.HolProg 64 :=
.seq AllocBody164_237 AllocBody164_238

def AllocBody164_240 : StackLang.HolProg 64 :=
.seq AllocBody164_236 AllocBody164_239

def AllocBody164_241 : StackLang.HolProg 64 :=
.seq AllocBody164_235 AllocBody164_240

def AllocBody164_242 : StackLang.HolProg 64 :=
.seq AllocBody164_234 AllocBody164_241

def AllocBody164_243 : StackLang.HolProg 64 :=
.seq AllocBody164_233 AllocBody164_242

def AllocBody164_244 : StackLang.HolProg 64 :=
.seq AllocBody164_232 AllocBody164_243

def AllocBody164_245 : StackLang.HolProg 64 :=
.seq AllocBody164_231 AllocBody164_244

def AllocBody164_246 : StackLang.HolProg 64 :=
.seq AllocBody164_230 AllocBody164_245

def AllocBody164_247 : StackLang.HolProg 64 :=
.seq AllocBody164_229 AllocBody164_246

def AllocBody164_248 : StackLang.HolProg 64 :=
.seq AllocBody164_228 AllocBody164_247

def AllocBody164_249 : StackLang.HolProg 64 :=
.seq AllocBody164_227 AllocBody164_248

def AllocBody164_250 : StackLang.HolProg 64 :=
.seq AllocBody164_226 AllocBody164_249

def AllocBody164_251 : StackLang.HolProg 64 :=
.seq AllocBody164_153 AllocBody164_250

def AllocBody164_252 : StackLang.HolProg 64 :=
.seq AllocBody164_150 AllocBody164_251

def AllocBody164_253 : StackLang.HolProg 64 :=
.seq AllocBody164_149 AllocBody164_252

def AllocBody164_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody164_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 8

def AllocBody164_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody164_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 6

def AllocBody164_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody164_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 3

def AllocBody164_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody164_261 : StackLang.HolProg 64 :=
.seq AllocBody164_259 AllocBody164_260

def AllocBody164_262 : StackLang.HolProg 64 :=
.seq AllocBody164_258 AllocBody164_261

def AllocBody164_263 : StackLang.HolProg 64 :=
.seq AllocBody164_257 AllocBody164_262

def AllocBody164_264 : StackLang.HolProg 64 :=
.seq AllocBody164_256 AllocBody164_263

def AllocBody164_265 : StackLang.HolProg 64 :=
.seq AllocBody164_255 AllocBody164_264

def AllocBody164_266 : StackLang.HolProg 64 :=
.seq AllocBody164_254 AllocBody164_265

def AllocBody164_267 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody164_253 AllocBody164_266

def AllocBody164_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody164_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody164_270 : StackLang.HolProg 64 :=
.seq AllocBody164_268 AllocBody164_269

def AllocBody164_271 : StackLang.HolProg 64 :=
.seq AllocBody164_267 AllocBody164_270

def AllocBody164_272 : StackLang.HolProg 64 :=
.seq AllocBody164_148 AllocBody164_271

def AllocBody164_273 : StackLang.HolProg 64 :=
.seq AllocBody164_147 AllocBody164_272

def AllocBody164_274 : StackLang.HolProg 64 :=
.seq AllocBody164_146 AllocBody164_273

def AllocBody164_275 : StackLang.HolProg 64 :=
.seq AllocBody164_145 AllocBody164_274

def AllocBody164_276 : StackLang.HolProg 64 :=
.seq AllocBody164_144 AllocBody164_275

def AllocBody164_277 : StackLang.HolProg 64 :=
.seq AllocBody164_143 AllocBody164_276

def AllocBody164_278 : StackLang.HolProg 64 :=
.seq AllocBody164_142 AllocBody164_277

def AllocBody164_279 : StackLang.HolProg 64 :=
.seq AllocBody164_141 AllocBody164_278

def AllocBody164_280 : StackLang.HolProg 64 :=
.seq AllocBody164_72 AllocBody164_279

def AllocBody164_281 : StackLang.HolProg 64 :=
.seq AllocBody164_55 AllocBody164_280

def AllocBody164_282 : StackLang.HolProg 64 :=
.seq AllocBody164_54 AllocBody164_281

def AllocBody164_283 : StackLang.HolProg 64 :=
.seq AllocBody164_53 AllocBody164_282

def AllocBody164_284 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody164_52 AllocBody164_283

def AllocBody164_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody164_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 8

def AllocBody164_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def AllocBody164_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 6

def AllocBody164_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 5

def AllocBody164_290 : StackLang.HolProg 64 :=
.seq AllocBody164_288 AllocBody164_289

def AllocBody164_291 : StackLang.HolProg 64 :=
.seq AllocBody164_287 AllocBody164_290

def AllocBody164_292 : StackLang.HolProg 64 :=
.seq AllocBody164_286 AllocBody164_291

def AllocBody164_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody164_294 : StackLang.HolProg 64 :=
.seq AllocBody164_292 AllocBody164_293

def AllocBody164_295 : StackLang.HolProg 64 :=
.seq AllocBody164_285 AllocBody164_294

def AllocBody164_296 : StackLang.HolProg 64 :=
.seq AllocBody164_284 AllocBody164_295

def AllocBody164_297 : StackLang.HolProg 64 :=
.seq AllocBody164_17 AllocBody164_296

def AllocBody164_298 : StackLang.HolProg 64 :=
.seq AllocBody164_16 AllocBody164_297

def AllocBody164_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody164_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody164_301 : StackLang.HolProg 64 :=
.seq AllocBody164_299 AllocBody164_300

def AllocBody164_302 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody164_298 AllocBody164_301

def AllocBody164_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody164_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 8

def AllocBody164_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 7

def AllocBody164_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 6

def AllocBody164_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def AllocBody164_308 : StackLang.HolProg 64 :=
.seq AllocBody164_306 AllocBody164_307

def AllocBody164_309 : StackLang.HolProg 64 :=
.seq AllocBody164_305 AllocBody164_308

def AllocBody164_310 : StackLang.HolProg 64 :=
.seq AllocBody164_304 AllocBody164_309

def AllocBody164_311 : StackLang.HolProg 64 :=
.seq AllocBody164_303 AllocBody164_310

def AllocBody164_312 : StackLang.HolProg 64 :=
.seq AllocBody164_302 AllocBody164_311

def AllocBody164_313 : StackLang.HolProg 64 :=
.seq AllocBody164_15 AllocBody164_312

def AllocBody164_314 : StackLang.HolProg 64 :=
.seq AllocBody164_14 AllocBody164_313

def AllocBody164_315 : StackLang.HolProg 64 :=
.loop AllocBody164_314

def AllocBody164_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody164_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody164_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody164_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody164_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 9

def AllocBody164_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def AllocBody164_322 : StackLang.HolProg 64 :=
.seq AllocBody164_320 AllocBody164_321

def AllocBody164_323 : StackLang.HolProg 64 :=
.seq AllocBody164_319 AllocBody164_322

def AllocBody164_324 : StackLang.HolProg 64 :=
.seq AllocBody164_318 AllocBody164_323

def AllocBody164_325 : StackLang.HolProg 64 :=
.seq AllocBody164_317 AllocBody164_324

def AllocBody164_326 : StackLang.HolProg 64 :=
.seq AllocBody164_316 AllocBody164_325

def AllocBody164_327 : StackLang.HolProg 64 :=
.seq AllocBody164_315 AllocBody164_326

def AllocBody164_328 : StackLang.HolProg 64 :=
.seq AllocBody164_13 AllocBody164_327

def AllocBody164_329 : StackLang.HolProg 64 :=
.seq AllocBody164_6 AllocBody164_328

def AllocBody164_330 : StackLang.HolProg 64 :=
.seq AllocBody164_5 AllocBody164_329

def AllocBody164_331 : StackLang.HolProg 64 :=
.seq AllocBody164_4 AllocBody164_330

def AllocBody164_332 : StackLang.HolProg 64 :=
.seq AllocBody164_3 AllocBody164_331

def AllocBody164_333 : StackLang.HolProg 64 :=
.seq AllocBody164_2 AllocBody164_332

def AllocBody164_334 : StackLang.HolProg 64 :=
.seq AllocBody164_1 AllocBody164_333

def AllocBody164_335 : StackLang.HolProg 64 :=
.seq AllocBody164_0 AllocBody164_334

def Alloc164 : Nat × StackLang.HolProg 64 := (164, AllocBody164_335)
theorem Alloc164_eq : StackAlloc.progComp (164, raw164) = Alloc164 := by
  kernel_rfl
#print axioms Alloc164_eq
end InitECandidate.Proofs.BackendStages
