import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function727
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody727_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 9

def rawBody727_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody727_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 16#64)

def rawBody727_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 8

def rawBody727_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def rawBody727_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 7

def rawBody727_6 : StackLang.HolProg 64 :=
.seq rawBody727_4 rawBody727_5

def rawBody727_7 : StackLang.HolProg 64 :=
.seq rawBody727_3 rawBody727_6

def rawBody727_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody727_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3254#64)

def rawBody727_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody727_11 : StackLang.HolProg 64 :=
.seq rawBody727_9 rawBody727_10

def rawBody727_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody727_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody727_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody727_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 727 3

def rawBody727_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody727_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody727_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody727_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody727_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody727_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody727_22 : StackLang.HolProg 64 :=
.seq rawBody727_20 rawBody727_21

def rawBody727_23 : StackLang.HolProg 64 :=
.seq rawBody727_19 rawBody727_22

def rawBody727_24 : StackLang.HolProg 64 :=
.seq rawBody727_18 rawBody727_23

def rawBody727_25 : StackLang.HolProg 64 :=
.seq rawBody727_17 rawBody727_24

def rawBody727_26 : StackLang.HolProg 64 :=
.seq rawBody727_16 rawBody727_25

def rawBody727_27 : StackLang.HolProg 64 :=
.seq rawBody727_15 rawBody727_26

def rawBody727_28 : StackLang.HolProg 64 :=
.seq rawBody727_14 rawBody727_27

def rawBody727_29 : StackLang.HolProg 64 :=
.seq rawBody727_13 rawBody727_28

def rawBody727_30 : StackLang.HolProg 64 :=
.seq rawBody727_12 rawBody727_29

def rawBody727_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody727_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody727_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody727_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody727_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody727_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody727_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody727_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 8

def rawBody727_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody727_40 : StackLang.HolProg 64 :=
.seq rawBody727_38 rawBody727_39

def rawBody727_41 : StackLang.HolProg 64 :=
.seq rawBody727_37 rawBody727_40

def rawBody727_42 : StackLang.HolProg 64 :=
.seq rawBody727_36 rawBody727_41

def rawBody727_43 : StackLang.HolProg 64 :=
.seq rawBody727_35 rawBody727_42

def rawBody727_44 : StackLang.HolProg 64 :=
.seq rawBody727_34 rawBody727_43

def rawBody727_45 : StackLang.HolProg 64 :=
.seq rawBody727_33 rawBody727_44

def rawBody727_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 8

def rawBody727_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody727_48 : StackLang.HolProg 64 :=
.seq rawBody727_46 rawBody727_47

def rawBody727_49 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody727_50 : StackLang.HolProg 64 :=
.seq rawBody727_48 rawBody727_49

def rawBody727_51 : StackLang.HolProg 64 :=
.call (some (rawBody727_45, 0, 727, 2)) (Sum.inl 80) (some (rawBody727_50, 727, 3))

def rawBody727_52 : StackLang.HolProg 64 :=
.seq rawBody727_32 rawBody727_51

def rawBody727_53 : StackLang.HolProg 64 :=
.seq rawBody727_31 rawBody727_52

def rawBody727_54 : StackLang.HolProg 64 :=
.seq rawBody727_30 rawBody727_53

def rawBody727_55 : StackLang.HolProg 64 :=
.seq rawBody727_11 rawBody727_54

def rawBody727_56 : StackLang.HolProg 64 :=
.seq rawBody727_8 rawBody727_55

def rawBody727_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody727_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody727_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody727_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody727_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody727_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody727_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 9

def rawBody727_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody727_65 : StackLang.HolProg 64 :=
.seq rawBody727_63 rawBody727_64

def rawBody727_66 : StackLang.HolProg 64 :=
.seq rawBody727_62 rawBody727_65

def rawBody727_67 : StackLang.HolProg 64 :=
.seq rawBody727_61 rawBody727_66

def rawBody727_68 : StackLang.HolProg 64 :=
.seq rawBody727_60 rawBody727_67

def rawBody727_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody727_70 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody727_68 rawBody727_69

def rawBody727_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody727_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody727_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody727_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def rawBody727_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 8

def rawBody727_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody727_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3255#64)

def rawBody727_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody727_79 : StackLang.HolProg 64 :=
.seq rawBody727_77 rawBody727_78

def rawBody727_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody727_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody727_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody727_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 727 5

def rawBody727_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody727_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody727_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody727_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody727_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody727_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody727_90 : StackLang.HolProg 64 :=
.seq rawBody727_88 rawBody727_89

def rawBody727_91 : StackLang.HolProg 64 :=
.seq rawBody727_87 rawBody727_90

def rawBody727_92 : StackLang.HolProg 64 :=
.seq rawBody727_86 rawBody727_91

def rawBody727_93 : StackLang.HolProg 64 :=
.seq rawBody727_85 rawBody727_92

def rawBody727_94 : StackLang.HolProg 64 :=
.seq rawBody727_84 rawBody727_93

def rawBody727_95 : StackLang.HolProg 64 :=
.seq rawBody727_83 rawBody727_94

def rawBody727_96 : StackLang.HolProg 64 :=
.seq rawBody727_82 rawBody727_95

def rawBody727_97 : StackLang.HolProg 64 :=
.seq rawBody727_81 rawBody727_96

def rawBody727_98 : StackLang.HolProg 64 :=
.seq rawBody727_80 rawBody727_97

def rawBody727_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody727_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody727_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody727_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody727_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody727_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody727_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody727_106 : StackLang.HolProg 64 :=
.seq rawBody727_104 rawBody727_105

def rawBody727_107 : StackLang.HolProg 64 :=
.seq rawBody727_103 rawBody727_106

def rawBody727_108 : StackLang.HolProg 64 :=
.seq rawBody727_102 rawBody727_107

def rawBody727_109 : StackLang.HolProg 64 :=
.seq rawBody727_101 rawBody727_108

def rawBody727_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody727_111 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody727_112 : StackLang.HolProg 64 :=
.seq rawBody727_110 rawBody727_111

def rawBody727_113 : StackLang.HolProg 64 :=
.call (some (rawBody727_109, 0, 727, 4)) (Sum.inl 725) (some (rawBody727_112, 727, 5))

def rawBody727_114 : StackLang.HolProg 64 :=
.seq rawBody727_100 rawBody727_113

def rawBody727_115 : StackLang.HolProg 64 :=
.seq rawBody727_99 rawBody727_114

def rawBody727_116 : StackLang.HolProg 64 :=
.seq rawBody727_98 rawBody727_115

def rawBody727_117 : StackLang.HolProg 64 :=
.seq rawBody727_79 rawBody727_116

def rawBody727_118 : StackLang.HolProg 64 :=
.seq rawBody727_76 rawBody727_117

def rawBody727_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody727_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody727_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1873798617647539866#64)

def rawBody727_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 5412103778470702295#64)

def rawBody727_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 7239337960414712511#64)

def rawBody727_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 7435674573564081700#64)

def rawBody727_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 2210141511517208575#64)

def rawBody727_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 13402431016077863595#64)

def rawBody727_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def rawBody727_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 6

def rawBody727_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def rawBody727_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody727_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody727_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 1

def rawBody727_133 : StackLang.HolProg 64 :=
.seq rawBody727_131 rawBody727_132

def rawBody727_134 : StackLang.HolProg 64 :=
.seq rawBody727_130 rawBody727_133

def rawBody727_135 : StackLang.HolProg 64 :=
.seq rawBody727_129 rawBody727_134

def rawBody727_136 : StackLang.HolProg 64 :=
.seq rawBody727_128 rawBody727_135

def rawBody727_137 : StackLang.HolProg 64 :=
.seq rawBody727_127 rawBody727_136

def rawBody727_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody727_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3256#64)

def rawBody727_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody727_141 : StackLang.HolProg 64 :=
.seq rawBody727_139 rawBody727_140

def rawBody727_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody727_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody727_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody727_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 727 7

def rawBody727_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody727_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody727_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody727_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody727_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody727_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody727_152 : StackLang.HolProg 64 :=
.seq rawBody727_150 rawBody727_151

def rawBody727_153 : StackLang.HolProg 64 :=
.seq rawBody727_149 rawBody727_152

def rawBody727_154 : StackLang.HolProg 64 :=
.seq rawBody727_148 rawBody727_153

def rawBody727_155 : StackLang.HolProg 64 :=
.seq rawBody727_147 rawBody727_154

def rawBody727_156 : StackLang.HolProg 64 :=
.seq rawBody727_146 rawBody727_155

def rawBody727_157 : StackLang.HolProg 64 :=
.seq rawBody727_145 rawBody727_156

def rawBody727_158 : StackLang.HolProg 64 :=
.seq rawBody727_144 rawBody727_157

def rawBody727_159 : StackLang.HolProg 64 :=
.seq rawBody727_143 rawBody727_158

def rawBody727_160 : StackLang.HolProg 64 :=
.seq rawBody727_142 rawBody727_159

def rawBody727_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody727_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody727_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody727_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody727_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody727_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody727_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody727_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 8

def rawBody727_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def rawBody727_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def rawBody727_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody727_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody727_173 : StackLang.HolProg 64 :=
.seq rawBody727_171 rawBody727_172

def rawBody727_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def rawBody727_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody727_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody727_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def rawBody727_178 : StackLang.HolProg 64 :=
.seq rawBody727_176 rawBody727_177

def rawBody727_179 : StackLang.HolProg 64 :=
.seq rawBody727_175 rawBody727_178

def rawBody727_180 : StackLang.HolProg 64 :=
.seq rawBody727_174 rawBody727_179

def rawBody727_181 : StackLang.HolProg 64 :=
.seq rawBody727_173 rawBody727_180

def rawBody727_182 : StackLang.HolProg 64 :=
.seq rawBody727_170 rawBody727_181

def rawBody727_183 : StackLang.HolProg 64 :=
.seq rawBody727_169 rawBody727_182

def rawBody727_184 : StackLang.HolProg 64 :=
.seq rawBody727_168 rawBody727_183

def rawBody727_185 : StackLang.HolProg 64 :=
.seq rawBody727_167 rawBody727_184

def rawBody727_186 : StackLang.HolProg 64 :=
.seq rawBody727_166 rawBody727_185

def rawBody727_187 : StackLang.HolProg 64 :=
.seq rawBody727_165 rawBody727_186

def rawBody727_188 : StackLang.HolProg 64 :=
.seq rawBody727_164 rawBody727_187

def rawBody727_189 : StackLang.HolProg 64 :=
.seq rawBody727_163 rawBody727_188

def rawBody727_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 8

def rawBody727_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def rawBody727_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def rawBody727_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody727_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody727_195 : StackLang.HolProg 64 :=
.seq rawBody727_193 rawBody727_194

def rawBody727_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def rawBody727_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody727_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody727_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def rawBody727_200 : StackLang.HolProg 64 :=
.seq rawBody727_198 rawBody727_199

def rawBody727_201 : StackLang.HolProg 64 :=
.seq rawBody727_197 rawBody727_200

def rawBody727_202 : StackLang.HolProg 64 :=
.seq rawBody727_196 rawBody727_201

def rawBody727_203 : StackLang.HolProg 64 :=
.seq rawBody727_195 rawBody727_202

def rawBody727_204 : StackLang.HolProg 64 :=
.seq rawBody727_192 rawBody727_203

def rawBody727_205 : StackLang.HolProg 64 :=
.seq rawBody727_191 rawBody727_204

def rawBody727_206 : StackLang.HolProg 64 :=
.seq rawBody727_190 rawBody727_205

def rawBody727_207 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody727_208 : StackLang.HolProg 64 :=
.seq rawBody727_206 rawBody727_207

def rawBody727_209 : StackLang.HolProg 64 :=
.call (some (rawBody727_189, 0, 727, 6)) (Sum.inl 707) (some (rawBody727_208, 727, 7))

def rawBody727_210 : StackLang.HolProg 64 :=
.seq rawBody727_162 rawBody727_209

def rawBody727_211 : StackLang.HolProg 64 :=
.seq rawBody727_161 rawBody727_210

def rawBody727_212 : StackLang.HolProg 64 :=
.seq rawBody727_160 rawBody727_211

def rawBody727_213 : StackLang.HolProg 64 :=
.seq rawBody727_141 rawBody727_212

def rawBody727_214 : StackLang.HolProg 64 :=
.seq rawBody727_138 rawBody727_213

def rawBody727_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody727_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody727_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody727_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody727_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody727_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody727_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 9

def rawBody727_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 8

def rawBody727_223 : StackLang.HolProg 64 :=
.seq rawBody727_221 rawBody727_222

def rawBody727_224 : StackLang.HolProg 64 :=
.seq rawBody727_220 rawBody727_223

def rawBody727_225 : StackLang.HolProg 64 :=
.seq rawBody727_219 rawBody727_224

def rawBody727_226 : StackLang.HolProg 64 :=
.seq rawBody727_218 rawBody727_225

def rawBody727_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody727_228 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody727_226 rawBody727_227

def rawBody727_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody727_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody727_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody727_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 8

def rawBody727_233 : StackLang.HolProg 64 :=
.seq rawBody727_231 rawBody727_232

def rawBody727_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody727_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3257#64)

def rawBody727_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody727_237 : StackLang.HolProg 64 :=
.seq rawBody727_235 rawBody727_236

def rawBody727_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody727_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody727_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody727_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 727 9

def rawBody727_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody727_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody727_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody727_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody727_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody727_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody727_248 : StackLang.HolProg 64 :=
.seq rawBody727_246 rawBody727_247

def rawBody727_249 : StackLang.HolProg 64 :=
.seq rawBody727_245 rawBody727_248

def rawBody727_250 : StackLang.HolProg 64 :=
.seq rawBody727_244 rawBody727_249

def rawBody727_251 : StackLang.HolProg 64 :=
.seq rawBody727_243 rawBody727_250

def rawBody727_252 : StackLang.HolProg 64 :=
.seq rawBody727_242 rawBody727_251

def rawBody727_253 : StackLang.HolProg 64 :=
.seq rawBody727_241 rawBody727_252

def rawBody727_254 : StackLang.HolProg 64 :=
.seq rawBody727_240 rawBody727_253

def rawBody727_255 : StackLang.HolProg 64 :=
.seq rawBody727_239 rawBody727_254

def rawBody727_256 : StackLang.HolProg 64 :=
.seq rawBody727_238 rawBody727_255

def rawBody727_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody727_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody727_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody727_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody727_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody727_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody727_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody727_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 8

def rawBody727_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody727_266 : StackLang.HolProg 64 :=
.seq rawBody727_264 rawBody727_265

def rawBody727_267 : StackLang.HolProg 64 :=
.seq rawBody727_263 rawBody727_266

def rawBody727_268 : StackLang.HolProg 64 :=
.seq rawBody727_262 rawBody727_267

def rawBody727_269 : StackLang.HolProg 64 :=
.seq rawBody727_261 rawBody727_268

def rawBody727_270 : StackLang.HolProg 64 :=
.seq rawBody727_260 rawBody727_269

def rawBody727_271 : StackLang.HolProg 64 :=
.seq rawBody727_259 rawBody727_270

def rawBody727_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 8

def rawBody727_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody727_274 : StackLang.HolProg 64 :=
.seq rawBody727_272 rawBody727_273

def rawBody727_275 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody727_276 : StackLang.HolProg 64 :=
.seq rawBody727_274 rawBody727_275

def rawBody727_277 : StackLang.HolProg 64 :=
.call (some (rawBody727_271, 0, 727, 8)) (Sum.inl 716) (some (rawBody727_276, 727, 9))

def rawBody727_278 : StackLang.HolProg 64 :=
.seq rawBody727_258 rawBody727_277

def rawBody727_279 : StackLang.HolProg 64 :=
.seq rawBody727_257 rawBody727_278

def rawBody727_280 : StackLang.HolProg 64 :=
.seq rawBody727_256 rawBody727_279

def rawBody727_281 : StackLang.HolProg 64 :=
.seq rawBody727_237 rawBody727_280

def rawBody727_282 : StackLang.HolProg 64 :=
.seq rawBody727_234 rawBody727_281

def rawBody727_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody727_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody727_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody727_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody727_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def rawBody727_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody727_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def rawBody727_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody727_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def rawBody727_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody727_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def rawBody727_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody727_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 40#64))

def rawBody727_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody727_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody727_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 9

def rawBody727_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 8

def rawBody727_300 : StackLang.HolProg 64 :=
.seq rawBody727_298 rawBody727_299

def rawBody727_301 : StackLang.HolProg 64 :=
.seq rawBody727_297 rawBody727_300

def rawBody727_302 : StackLang.HolProg 64 :=
.seq rawBody727_296 rawBody727_301

def rawBody727_303 : StackLang.HolProg 64 :=
.seq rawBody727_295 rawBody727_302

def rawBody727_304 : StackLang.HolProg 64 :=
.seq rawBody727_294 rawBody727_303

def rawBody727_305 : StackLang.HolProg 64 :=
.seq rawBody727_293 rawBody727_304

def rawBody727_306 : StackLang.HolProg 64 :=
.seq rawBody727_292 rawBody727_305

def rawBody727_307 : StackLang.HolProg 64 :=
.seq rawBody727_291 rawBody727_306

def rawBody727_308 : StackLang.HolProg 64 :=
.seq rawBody727_290 rawBody727_307

def rawBody727_309 : StackLang.HolProg 64 :=
.seq rawBody727_289 rawBody727_308

def rawBody727_310 : StackLang.HolProg 64 :=
.seq rawBody727_288 rawBody727_309

def rawBody727_311 : StackLang.HolProg 64 :=
.seq rawBody727_287 rawBody727_310

def rawBody727_312 : StackLang.HolProg 64 :=
.seq rawBody727_286 rawBody727_311

def rawBody727_313 : StackLang.HolProg 64 :=
.seq rawBody727_285 rawBody727_312

def rawBody727_314 : StackLang.HolProg 64 :=
.seq rawBody727_284 rawBody727_313

def rawBody727_315 : StackLang.HolProg 64 :=
.seq rawBody727_283 rawBody727_314

def rawBody727_316 : StackLang.HolProg 64 :=
.seq rawBody727_282 rawBody727_315

def rawBody727_317 : StackLang.HolProg 64 :=
.seq rawBody727_233 rawBody727_316

def rawBody727_318 : StackLang.HolProg 64 :=
.seq rawBody727_230 rawBody727_317

def rawBody727_319 : StackLang.HolProg 64 :=
.seq rawBody727_229 rawBody727_318

def rawBody727_320 : StackLang.HolProg 64 :=
.seq rawBody727_228 rawBody727_319

def rawBody727_321 : StackLang.HolProg 64 :=
.seq rawBody727_217 rawBody727_320

def rawBody727_322 : StackLang.HolProg 64 :=
.seq rawBody727_216 rawBody727_321

def rawBody727_323 : StackLang.HolProg 64 :=
.seq rawBody727_215 rawBody727_322

def rawBody727_324 : StackLang.HolProg 64 :=
.seq rawBody727_214 rawBody727_323

def rawBody727_325 : StackLang.HolProg 64 :=
.seq rawBody727_137 rawBody727_324

def rawBody727_326 : StackLang.HolProg 64 :=
.seq rawBody727_126 rawBody727_325

def rawBody727_327 : StackLang.HolProg 64 :=
.seq rawBody727_125 rawBody727_326

def rawBody727_328 : StackLang.HolProg 64 :=
.seq rawBody727_124 rawBody727_327

def rawBody727_329 : StackLang.HolProg 64 :=
.seq rawBody727_123 rawBody727_328

def rawBody727_330 : StackLang.HolProg 64 :=
.seq rawBody727_122 rawBody727_329

def rawBody727_331 : StackLang.HolProg 64 :=
.seq rawBody727_121 rawBody727_330

def rawBody727_332 : StackLang.HolProg 64 :=
.seq rawBody727_120 rawBody727_331

def rawBody727_333 : StackLang.HolProg 64 :=
.seq rawBody727_119 rawBody727_332

def rawBody727_334 : StackLang.HolProg 64 :=
.seq rawBody727_118 rawBody727_333

def rawBody727_335 : StackLang.HolProg 64 :=
.seq rawBody727_75 rawBody727_334

def rawBody727_336 : StackLang.HolProg 64 :=
.seq rawBody727_74 rawBody727_335

def rawBody727_337 : StackLang.HolProg 64 :=
.seq rawBody727_73 rawBody727_336

def rawBody727_338 : StackLang.HolProg 64 :=
.seq rawBody727_72 rawBody727_337

def rawBody727_339 : StackLang.HolProg 64 :=
.seq rawBody727_71 rawBody727_338

def rawBody727_340 : StackLang.HolProg 64 :=
.seq rawBody727_70 rawBody727_339

def rawBody727_341 : StackLang.HolProg 64 :=
.seq rawBody727_59 rawBody727_340

def rawBody727_342 : StackLang.HolProg 64 :=
.seq rawBody727_58 rawBody727_341

def rawBody727_343 : StackLang.HolProg 64 :=
.seq rawBody727_57 rawBody727_342

def rawBody727_344 : StackLang.HolProg 64 :=
.seq rawBody727_56 rawBody727_343

def rawBody727_345 : StackLang.HolProg 64 :=
.seq rawBody727_7 rawBody727_344

def rawBody727_346 : StackLang.HolProg 64 :=
.seq rawBody727_2 rawBody727_345

def rawBody727_347 : StackLang.HolProg 64 :=
.seq rawBody727_1 rawBody727_346

def rawBody727_348 : StackLang.HolProg 64 :=
.seq rawBody727_0 rawBody727_347

def raw727 : StackLang.HolProg 64 := rawBody727_348
theorem raw727_eq : StackRawCall.compTop RawInfo.rawInfo (function727 (.list [])).1 = raw727 := by
  kernel_rfl
#print axioms raw727_eq
end InitECandidate.Proofs.BackendStages
