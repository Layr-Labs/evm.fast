import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw728
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody728_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 9

def AllocBody728_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody728_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody728_3 : StackLang.HolProg 64 :=
.seq AllocBody728_1 AllocBody728_2

def AllocBody728_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody728_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody728_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 8#64))

def AllocBody728_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody728_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 16#64))

def AllocBody728_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody728_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 24#64))

def AllocBody728_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody728_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 32#64))

def AllocBody728_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody728_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 40#64))

def AllocBody728_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 8

def AllocBody728_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 7

def AllocBody728_17 : StackLang.HolProg 64 :=
.seq AllocBody728_15 AllocBody728_16

def AllocBody728_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody728_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3258#64)

def AllocBody728_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody728_21 : StackLang.HolProg 64 :=
.seq AllocBody728_19 AllocBody728_20

def AllocBody728_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody728_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody728_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody728_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 728 3

def AllocBody728_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody728_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody728_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody728_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody728_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody728_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody728_32 : StackLang.HolProg 64 :=
.seq AllocBody728_30 AllocBody728_31

def AllocBody728_33 : StackLang.HolProg 64 :=
.seq AllocBody728_29 AllocBody728_32

def AllocBody728_34 : StackLang.HolProg 64 :=
.seq AllocBody728_28 AllocBody728_33

def AllocBody728_35 : StackLang.HolProg 64 :=
.seq AllocBody728_27 AllocBody728_34

def AllocBody728_36 : StackLang.HolProg 64 :=
.seq AllocBody728_26 AllocBody728_35

def AllocBody728_37 : StackLang.HolProg 64 :=
.seq AllocBody728_25 AllocBody728_36

def AllocBody728_38 : StackLang.HolProg 64 :=
.seq AllocBody728_24 AllocBody728_37

def AllocBody728_39 : StackLang.HolProg 64 :=
.seq AllocBody728_23 AllocBody728_38

def AllocBody728_40 : StackLang.HolProg 64 :=
.seq AllocBody728_22 AllocBody728_39

def AllocBody728_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody728_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody728_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody728_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody728_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody728_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody728_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody728_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody728_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def AllocBody728_50 : StackLang.HolProg 64 :=
.seq AllocBody728_48 AllocBody728_49

def AllocBody728_51 : StackLang.HolProg 64 :=
.seq AllocBody728_47 AllocBody728_50

def AllocBody728_52 : StackLang.HolProg 64 :=
.seq AllocBody728_46 AllocBody728_51

def AllocBody728_53 : StackLang.HolProg 64 :=
.seq AllocBody728_45 AllocBody728_52

def AllocBody728_54 : StackLang.HolProg 64 :=
.seq AllocBody728_44 AllocBody728_53

def AllocBody728_55 : StackLang.HolProg 64 :=
.seq AllocBody728_43 AllocBody728_54

def AllocBody728_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def AllocBody728_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody728_58 : StackLang.HolProg 64 :=
.seq AllocBody728_56 AllocBody728_57

def AllocBody728_59 : StackLang.HolProg 64 :=
.call (some (AllocBody728_55, 0, 728, 2)) (Sum.inl 717) (some (AllocBody728_58, 728, 3))

def AllocBody728_60 : StackLang.HolProg 64 :=
.seq AllocBody728_42 AllocBody728_59

def AllocBody728_61 : StackLang.HolProg 64 :=
.seq AllocBody728_41 AllocBody728_60

def AllocBody728_62 : StackLang.HolProg 64 :=
.seq AllocBody728_40 AllocBody728_61

def AllocBody728_63 : StackLang.HolProg 64 :=
.seq AllocBody728_21 AllocBody728_62

def AllocBody728_64 : StackLang.HolProg 64 :=
.seq AllocBody728_18 AllocBody728_63

def AllocBody728_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody728_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody728_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 16#64)

def AllocBody728_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 7

def AllocBody728_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 6

def AllocBody728_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 5

def AllocBody728_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 4

def AllocBody728_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def AllocBody728_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody728_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def AllocBody728_75 : StackLang.HolProg 64 :=
.seq AllocBody728_73 AllocBody728_74

def AllocBody728_76 : StackLang.HolProg 64 :=
.seq AllocBody728_72 AllocBody728_75

def AllocBody728_77 : StackLang.HolProg 64 :=
.seq AllocBody728_71 AllocBody728_76

def AllocBody728_78 : StackLang.HolProg 64 :=
.seq AllocBody728_70 AllocBody728_77

def AllocBody728_79 : StackLang.HolProg 64 :=
.seq AllocBody728_69 AllocBody728_78

def AllocBody728_80 : StackLang.HolProg 64 :=
.seq AllocBody728_68 AllocBody728_79

def AllocBody728_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody728_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3259#64)

def AllocBody728_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody728_84 : StackLang.HolProg 64 :=
.seq AllocBody728_82 AllocBody728_83

def AllocBody728_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody728_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody728_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody728_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 728 5

def AllocBody728_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody728_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody728_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody728_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody728_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody728_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody728_95 : StackLang.HolProg 64 :=
.seq AllocBody728_93 AllocBody728_94

def AllocBody728_96 : StackLang.HolProg 64 :=
.seq AllocBody728_92 AllocBody728_95

def AllocBody728_97 : StackLang.HolProg 64 :=
.seq AllocBody728_91 AllocBody728_96

def AllocBody728_98 : StackLang.HolProg 64 :=
.seq AllocBody728_90 AllocBody728_97

def AllocBody728_99 : StackLang.HolProg 64 :=
.seq AllocBody728_89 AllocBody728_98

def AllocBody728_100 : StackLang.HolProg 64 :=
.seq AllocBody728_88 AllocBody728_99

def AllocBody728_101 : StackLang.HolProg 64 :=
.seq AllocBody728_87 AllocBody728_100

def AllocBody728_102 : StackLang.HolProg 64 :=
.seq AllocBody728_86 AllocBody728_101

def AllocBody728_103 : StackLang.HolProg 64 :=
.seq AllocBody728_85 AllocBody728_102

def AllocBody728_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody728_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody728_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody728_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody728_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody728_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody728_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 7

def AllocBody728_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def AllocBody728_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody728_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def AllocBody728_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody728_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody728_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody728_117 : StackLang.HolProg 64 :=
.seq AllocBody728_115 AllocBody728_116

def AllocBody728_118 : StackLang.HolProg 64 :=
.seq AllocBody728_114 AllocBody728_117

def AllocBody728_119 : StackLang.HolProg 64 :=
.seq AllocBody728_113 AllocBody728_118

def AllocBody728_120 : StackLang.HolProg 64 :=
.seq AllocBody728_112 AllocBody728_119

def AllocBody728_121 : StackLang.HolProg 64 :=
.seq AllocBody728_111 AllocBody728_120

def AllocBody728_122 : StackLang.HolProg 64 :=
.seq AllocBody728_110 AllocBody728_121

def AllocBody728_123 : StackLang.HolProg 64 :=
.seq AllocBody728_109 AllocBody728_122

def AllocBody728_124 : StackLang.HolProg 64 :=
.seq AllocBody728_108 AllocBody728_123

def AllocBody728_125 : StackLang.HolProg 64 :=
.seq AllocBody728_107 AllocBody728_124

def AllocBody728_126 : StackLang.HolProg 64 :=
.seq AllocBody728_106 AllocBody728_125

def AllocBody728_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 7

def AllocBody728_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def AllocBody728_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody728_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def AllocBody728_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody728_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody728_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody728_134 : StackLang.HolProg 64 :=
.seq AllocBody728_132 AllocBody728_133

def AllocBody728_135 : StackLang.HolProg 64 :=
.seq AllocBody728_131 AllocBody728_134

def AllocBody728_136 : StackLang.HolProg 64 :=
.seq AllocBody728_130 AllocBody728_135

def AllocBody728_137 : StackLang.HolProg 64 :=
.seq AllocBody728_129 AllocBody728_136

def AllocBody728_138 : StackLang.HolProg 64 :=
.seq AllocBody728_128 AllocBody728_137

def AllocBody728_139 : StackLang.HolProg 64 :=
.seq AllocBody728_127 AllocBody728_138

def AllocBody728_140 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody728_141 : StackLang.HolProg 64 :=
.seq AllocBody728_139 AllocBody728_140

def AllocBody728_142 : StackLang.HolProg 64 :=
.call (some (AllocBody728_126, 0, 728, 4)) (Sum.inl 78) (some (AllocBody728_141, 728, 5))

def AllocBody728_143 : StackLang.HolProg 64 :=
.seq AllocBody728_105 AllocBody728_142

def AllocBody728_144 : StackLang.HolProg 64 :=
.seq AllocBody728_104 AllocBody728_143

def AllocBody728_145 : StackLang.HolProg 64 :=
.seq AllocBody728_103 AllocBody728_144

def AllocBody728_146 : StackLang.HolProg 64 :=
.seq AllocBody728_84 AllocBody728_145

def AllocBody728_147 : StackLang.HolProg 64 :=
.seq AllocBody728_81 AllocBody728_146

def AllocBody728_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody728_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody728_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody728_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody728_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody728_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3260#64)

def AllocBody728_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody728_155 : StackLang.HolProg 64 :=
.seq AllocBody728_153 AllocBody728_154

def AllocBody728_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody728_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody728_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody728_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 728 7

def AllocBody728_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody728_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody728_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody728_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody728_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody728_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody728_166 : StackLang.HolProg 64 :=
.seq AllocBody728_164 AllocBody728_165

def AllocBody728_167 : StackLang.HolProg 64 :=
.seq AllocBody728_163 AllocBody728_166

def AllocBody728_168 : StackLang.HolProg 64 :=
.seq AllocBody728_162 AllocBody728_167

def AllocBody728_169 : StackLang.HolProg 64 :=
.seq AllocBody728_161 AllocBody728_168

def AllocBody728_170 : StackLang.HolProg 64 :=
.seq AllocBody728_160 AllocBody728_169

def AllocBody728_171 : StackLang.HolProg 64 :=
.seq AllocBody728_159 AllocBody728_170

def AllocBody728_172 : StackLang.HolProg 64 :=
.seq AllocBody728_158 AllocBody728_171

def AllocBody728_173 : StackLang.HolProg 64 :=
.seq AllocBody728_157 AllocBody728_172

def AllocBody728_174 : StackLang.HolProg 64 :=
.seq AllocBody728_156 AllocBody728_173

def AllocBody728_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody728_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody728_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody728_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody728_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody728_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody728_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody728_182 : StackLang.HolProg 64 :=
.seq AllocBody728_180 AllocBody728_181

def AllocBody728_183 : StackLang.HolProg 64 :=
.seq AllocBody728_179 AllocBody728_182

def AllocBody728_184 : StackLang.HolProg 64 :=
.seq AllocBody728_178 AllocBody728_183

def AllocBody728_185 : StackLang.HolProg 64 :=
.seq AllocBody728_177 AllocBody728_184

def AllocBody728_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody728_187 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody728_188 : StackLang.HolProg 64 :=
.seq AllocBody728_186 AllocBody728_187

def AllocBody728_189 : StackLang.HolProg 64 :=
.call (some (AllocBody728_185, 0, 728, 6)) (Sum.inl 726) (some (AllocBody728_188, 728, 7))

def AllocBody728_190 : StackLang.HolProg 64 :=
.seq AllocBody728_176 AllocBody728_189

def AllocBody728_191 : StackLang.HolProg 64 :=
.seq AllocBody728_175 AllocBody728_190

def AllocBody728_192 : StackLang.HolProg 64 :=
.seq AllocBody728_174 AllocBody728_191

def AllocBody728_193 : StackLang.HolProg 64 :=
.seq AllocBody728_155 AllocBody728_192

def AllocBody728_194 : StackLang.HolProg 64 :=
.seq AllocBody728_152 AllocBody728_193

def AllocBody728_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody728_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody728_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody728_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 9

def AllocBody728_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody728_200 : StackLang.HolProg 64 :=
.seq AllocBody728_198 AllocBody728_199

def AllocBody728_201 : StackLang.HolProg 64 :=
.seq AllocBody728_197 AllocBody728_200

def AllocBody728_202 : StackLang.HolProg 64 :=
.seq AllocBody728_196 AllocBody728_201

def AllocBody728_203 : StackLang.HolProg 64 :=
.seq AllocBody728_195 AllocBody728_202

def AllocBody728_204 : StackLang.HolProg 64 :=
.seq AllocBody728_194 AllocBody728_203

def AllocBody728_205 : StackLang.HolProg 64 :=
.seq AllocBody728_151 AllocBody728_204

def AllocBody728_206 : StackLang.HolProg 64 :=
.seq AllocBody728_150 AllocBody728_205

def AllocBody728_207 : StackLang.HolProg 64 :=
.seq AllocBody728_149 AllocBody728_206

def AllocBody728_208 : StackLang.HolProg 64 :=
.seq AllocBody728_148 AllocBody728_207

def AllocBody728_209 : StackLang.HolProg 64 :=
.seq AllocBody728_147 AllocBody728_208

def AllocBody728_210 : StackLang.HolProg 64 :=
.seq AllocBody728_80 AllocBody728_209

def AllocBody728_211 : StackLang.HolProg 64 :=
.seq AllocBody728_67 AllocBody728_210

def AllocBody728_212 : StackLang.HolProg 64 :=
.seq AllocBody728_66 AllocBody728_211

def AllocBody728_213 : StackLang.HolProg 64 :=
.seq AllocBody728_65 AllocBody728_212

def AllocBody728_214 : StackLang.HolProg 64 :=
.seq AllocBody728_64 AllocBody728_213

def AllocBody728_215 : StackLang.HolProg 64 :=
.seq AllocBody728_17 AllocBody728_214

def AllocBody728_216 : StackLang.HolProg 64 :=
.seq AllocBody728_14 AllocBody728_215

def AllocBody728_217 : StackLang.HolProg 64 :=
.seq AllocBody728_13 AllocBody728_216

def AllocBody728_218 : StackLang.HolProg 64 :=
.seq AllocBody728_12 AllocBody728_217

def AllocBody728_219 : StackLang.HolProg 64 :=
.seq AllocBody728_11 AllocBody728_218

def AllocBody728_220 : StackLang.HolProg 64 :=
.seq AllocBody728_10 AllocBody728_219

def AllocBody728_221 : StackLang.HolProg 64 :=
.seq AllocBody728_9 AllocBody728_220

def AllocBody728_222 : StackLang.HolProg 64 :=
.seq AllocBody728_8 AllocBody728_221

def AllocBody728_223 : StackLang.HolProg 64 :=
.seq AllocBody728_7 AllocBody728_222

def AllocBody728_224 : StackLang.HolProg 64 :=
.seq AllocBody728_6 AllocBody728_223

def AllocBody728_225 : StackLang.HolProg 64 :=
.seq AllocBody728_5 AllocBody728_224

def AllocBody728_226 : StackLang.HolProg 64 :=
.seq AllocBody728_4 AllocBody728_225

def AllocBody728_227 : StackLang.HolProg 64 :=
.seq AllocBody728_3 AllocBody728_226

def AllocBody728_228 : StackLang.HolProg 64 :=
.seq AllocBody728_0 AllocBody728_227

def Alloc728 : Nat × StackLang.HolProg 64 := (728, AllocBody728_228)
theorem Alloc728_eq : StackAlloc.progComp (728, raw728) = Alloc728 := by
  kernel_rfl
#print axioms Alloc728_eq
end InitECandidate.Proofs.BackendStages
