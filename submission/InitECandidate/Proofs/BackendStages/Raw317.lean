import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function317
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody317_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def rawBody317_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody317_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody317_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody317_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody317_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody317_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody317_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody317_8 : StackLang.HolProg 64 :=
.seq rawBody317_6 rawBody317_7

def rawBody317_9 : StackLang.HolProg 64 :=
.seq rawBody317_5 rawBody317_8

def rawBody317_10 : StackLang.HolProg 64 :=
.seq rawBody317_4 rawBody317_9

def rawBody317_11 : StackLang.HolProg 64 :=
.seq rawBody317_3 rawBody317_10

def rawBody317_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody317_13 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody317_11 rawBody317_12

def rawBody317_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody317_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody317_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody317_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody317_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody317_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def rawBody317_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody317_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody317_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def rawBody317_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody317_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody317_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody317_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody317_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody317_28 : StackLang.HolProg 64 :=
.seq rawBody317_26 rawBody317_27

def rawBody317_29 : StackLang.HolProg 64 :=
.seq rawBody317_25 rawBody317_28

def rawBody317_30 : StackLang.HolProg 64 :=
.seq rawBody317_24 rawBody317_29

def rawBody317_31 : StackLang.HolProg 64 :=
.seq rawBody317_23 rawBody317_30

def rawBody317_32 : StackLang.HolProg 64 :=
.seq rawBody317_22 rawBody317_31

def rawBody317_33 : StackLang.HolProg 64 :=
.seq rawBody317_21 rawBody317_32

def rawBody317_34 : StackLang.HolProg 64 :=
.seq rawBody317_20 rawBody317_33

def rawBody317_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def rawBody317_36 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody317_34 rawBody317_35

def rawBody317_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody317_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody317_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody317_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody317_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody317_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def rawBody317_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody317_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody317_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def rawBody317_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody317_47 : StackLang.HolProg 64 :=
.seq rawBody317_45 rawBody317_46

def rawBody317_48 : StackLang.HolProg 64 :=
.seq rawBody317_44 rawBody317_47

def rawBody317_49 : StackLang.HolProg 64 :=
.seq rawBody317_43 rawBody317_48

def rawBody317_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody317_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 881#64)

def rawBody317_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody317_53 : StackLang.HolProg 64 :=
.seq rawBody317_51 rawBody317_52

def rawBody317_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody317_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody317_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody317_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 317 3

def rawBody317_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody317_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody317_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody317_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody317_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody317_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody317_64 : StackLang.HolProg 64 :=
.seq rawBody317_62 rawBody317_63

def rawBody317_65 : StackLang.HolProg 64 :=
.seq rawBody317_61 rawBody317_64

def rawBody317_66 : StackLang.HolProg 64 :=
.seq rawBody317_60 rawBody317_65

def rawBody317_67 : StackLang.HolProg 64 :=
.seq rawBody317_59 rawBody317_66

def rawBody317_68 : StackLang.HolProg 64 :=
.seq rawBody317_58 rawBody317_67

def rawBody317_69 : StackLang.HolProg 64 :=
.seq rawBody317_57 rawBody317_68

def rawBody317_70 : StackLang.HolProg 64 :=
.seq rawBody317_56 rawBody317_69

def rawBody317_71 : StackLang.HolProg 64 :=
.seq rawBody317_55 rawBody317_70

def rawBody317_72 : StackLang.HolProg 64 :=
.seq rawBody317_54 rawBody317_71

def rawBody317_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody317_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody317_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody317_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody317_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody317_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody317_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody317_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody317_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody317_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody317_83 : StackLang.HolProg 64 :=
.seq rawBody317_81 rawBody317_82

def rawBody317_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody317_85 : StackLang.HolProg 64 :=
.seq rawBody317_83 rawBody317_84

def rawBody317_86 : StackLang.HolProg 64 :=
.seq rawBody317_80 rawBody317_85

def rawBody317_87 : StackLang.HolProg 64 :=
.seq rawBody317_79 rawBody317_86

def rawBody317_88 : StackLang.HolProg 64 :=
.seq rawBody317_78 rawBody317_87

def rawBody317_89 : StackLang.HolProg 64 :=
.seq rawBody317_77 rawBody317_88

def rawBody317_90 : StackLang.HolProg 64 :=
.seq rawBody317_76 rawBody317_89

def rawBody317_91 : StackLang.HolProg 64 :=
.seq rawBody317_75 rawBody317_90

def rawBody317_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody317_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody317_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody317_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody317_96 : StackLang.HolProg 64 :=
.seq rawBody317_94 rawBody317_95

def rawBody317_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody317_98 : StackLang.HolProg 64 :=
.seq rawBody317_96 rawBody317_97

def rawBody317_99 : StackLang.HolProg 64 :=
.seq rawBody317_93 rawBody317_98

def rawBody317_100 : StackLang.HolProg 64 :=
.seq rawBody317_92 rawBody317_99

def rawBody317_101 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody317_102 : StackLang.HolProg 64 :=
.seq rawBody317_100 rawBody317_101

def rawBody317_103 : StackLang.HolProg 64 :=
.call (some (rawBody317_91, 0, 317, 2)) (Sum.inl 286) (some (rawBody317_102, 317, 3))

def rawBody317_104 : StackLang.HolProg 64 :=
.seq rawBody317_74 rawBody317_103

def rawBody317_105 : StackLang.HolProg 64 :=
.seq rawBody317_73 rawBody317_104

def rawBody317_106 : StackLang.HolProg 64 :=
.seq rawBody317_72 rawBody317_105

def rawBody317_107 : StackLang.HolProg 64 :=
.seq rawBody317_53 rawBody317_106

def rawBody317_108 : StackLang.HolProg 64 :=
.seq rawBody317_50 rawBody317_107

def rawBody317_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody317_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody317_111 : StackLang.HolProg 64 :=
.seq rawBody317_109 rawBody317_110

def rawBody317_112 : StackLang.HolProg 64 :=
.seq rawBody317_108 rawBody317_111

def rawBody317_113 : StackLang.HolProg 64 :=
.seq rawBody317_49 rawBody317_112

def rawBody317_114 : StackLang.HolProg 64 :=
.seq rawBody317_42 rawBody317_113

def rawBody317_115 : StackLang.HolProg 64 :=
.seq rawBody317_41 rawBody317_114

def rawBody317_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody317_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody317_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody317_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def rawBody317_120 : StackLang.HolProg 64 :=
.seq rawBody317_118 rawBody317_119

def rawBody317_121 : StackLang.HolProg 64 :=
.seq rawBody317_117 rawBody317_120

def rawBody317_122 : StackLang.HolProg 64 :=
.seq rawBody317_116 rawBody317_121

def rawBody317_123 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody317_115 rawBody317_122

def rawBody317_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody317_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody317_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody317_127 : StackLang.HolProg 64 :=
.seq rawBody317_125 rawBody317_126

def rawBody317_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def rawBody317_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody317_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 40#64))

def rawBody317_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody317_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody317_133 : StackLang.HolProg 64 :=
.seq rawBody317_131 rawBody317_132

def rawBody317_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody317_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 882#64)

def rawBody317_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody317_137 : StackLang.HolProg 64 :=
.seq rawBody317_135 rawBody317_136

def rawBody317_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody317_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody317_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody317_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 317 5

def rawBody317_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody317_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody317_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody317_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody317_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody317_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody317_148 : StackLang.HolProg 64 :=
.seq rawBody317_146 rawBody317_147

def rawBody317_149 : StackLang.HolProg 64 :=
.seq rawBody317_145 rawBody317_148

def rawBody317_150 : StackLang.HolProg 64 :=
.seq rawBody317_144 rawBody317_149

def rawBody317_151 : StackLang.HolProg 64 :=
.seq rawBody317_143 rawBody317_150

def rawBody317_152 : StackLang.HolProg 64 :=
.seq rawBody317_142 rawBody317_151

def rawBody317_153 : StackLang.HolProg 64 :=
.seq rawBody317_141 rawBody317_152

def rawBody317_154 : StackLang.HolProg 64 :=
.seq rawBody317_140 rawBody317_153

def rawBody317_155 : StackLang.HolProg 64 :=
.seq rawBody317_139 rawBody317_154

def rawBody317_156 : StackLang.HolProg 64 :=
.seq rawBody317_138 rawBody317_155

def rawBody317_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody317_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody317_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody317_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody317_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody317_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody317_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody317_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody317_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody317_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody317_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody317_168 : StackLang.HolProg 64 :=
.seq rawBody317_166 rawBody317_167

def rawBody317_169 : StackLang.HolProg 64 :=
.seq rawBody317_165 rawBody317_168

def rawBody317_170 : StackLang.HolProg 64 :=
.seq rawBody317_164 rawBody317_169

def rawBody317_171 : StackLang.HolProg 64 :=
.seq rawBody317_163 rawBody317_170

def rawBody317_172 : StackLang.HolProg 64 :=
.seq rawBody317_162 rawBody317_171

def rawBody317_173 : StackLang.HolProg 64 :=
.seq rawBody317_161 rawBody317_172

def rawBody317_174 : StackLang.HolProg 64 :=
.seq rawBody317_160 rawBody317_173

def rawBody317_175 : StackLang.HolProg 64 :=
.seq rawBody317_159 rawBody317_174

def rawBody317_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody317_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody317_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody317_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody317_180 : StackLang.HolProg 64 :=
.seq rawBody317_178 rawBody317_179

def rawBody317_181 : StackLang.HolProg 64 :=
.seq rawBody317_177 rawBody317_180

def rawBody317_182 : StackLang.HolProg 64 :=
.seq rawBody317_176 rawBody317_181

def rawBody317_183 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody317_184 : StackLang.HolProg 64 :=
.seq rawBody317_182 rawBody317_183

def rawBody317_185 : StackLang.HolProg 64 :=
.call (some (rawBody317_175, 0, 317, 4)) (Sum.inl 292) (some (rawBody317_184, 317, 5))

def rawBody317_186 : StackLang.HolProg 64 :=
.seq rawBody317_158 rawBody317_185

def rawBody317_187 : StackLang.HolProg 64 :=
.seq rawBody317_157 rawBody317_186

def rawBody317_188 : StackLang.HolProg 64 :=
.seq rawBody317_156 rawBody317_187

def rawBody317_189 : StackLang.HolProg 64 :=
.seq rawBody317_137 rawBody317_188

def rawBody317_190 : StackLang.HolProg 64 :=
.seq rawBody317_134 rawBody317_189

def rawBody317_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody317_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody317_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 40#64))

def rawBody317_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody317_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody317_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody317_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def rawBody317_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody317_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody317_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 48#64))

def rawBody317_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody317_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody317_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 1

def rawBody317_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 297

def rawBody317_205 : StackLang.HolProg 64 :=
.seq rawBody317_203 rawBody317_204

def rawBody317_206 : StackLang.HolProg 64 :=
.seq rawBody317_202 rawBody317_205

def rawBody317_207 : StackLang.HolProg 64 :=
.seq rawBody317_201 rawBody317_206

def rawBody317_208 : StackLang.HolProg 64 :=
.seq rawBody317_200 rawBody317_207

def rawBody317_209 : StackLang.HolProg 64 :=
.seq rawBody317_199 rawBody317_208

def rawBody317_210 : StackLang.HolProg 64 :=
.seq rawBody317_198 rawBody317_209

def rawBody317_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody317_212 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody317_210 rawBody317_211

def rawBody317_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody317_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody317_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody317_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 48#64))

def rawBody317_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody317_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 56#64))

def rawBody317_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody317_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody317_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 296

def rawBody317_222 : StackLang.HolProg 64 :=
.seq rawBody317_220 rawBody317_221

def rawBody317_223 : StackLang.HolProg 64 :=
.seq rawBody317_219 rawBody317_222

def rawBody317_224 : StackLang.HolProg 64 :=
.seq rawBody317_218 rawBody317_223

def rawBody317_225 : StackLang.HolProg 64 :=
.seq rawBody317_217 rawBody317_224

def rawBody317_226 : StackLang.HolProg 64 :=
.seq rawBody317_216 rawBody317_225

def rawBody317_227 : StackLang.HolProg 64 :=
.seq rawBody317_215 rawBody317_226

def rawBody317_228 : StackLang.HolProg 64 :=
.seq rawBody317_214 rawBody317_227

def rawBody317_229 : StackLang.HolProg 64 :=
.seq rawBody317_213 rawBody317_228

def rawBody317_230 : StackLang.HolProg 64 :=
.seq rawBody317_212 rawBody317_229

def rawBody317_231 : StackLang.HolProg 64 :=
.seq rawBody317_197 rawBody317_230

def rawBody317_232 : StackLang.HolProg 64 :=
.seq rawBody317_196 rawBody317_231

def rawBody317_233 : StackLang.HolProg 64 :=
.seq rawBody317_195 rawBody317_232

def rawBody317_234 : StackLang.HolProg 64 :=
.seq rawBody317_194 rawBody317_233

def rawBody317_235 : StackLang.HolProg 64 :=
.seq rawBody317_193 rawBody317_234

def rawBody317_236 : StackLang.HolProg 64 :=
.seq rawBody317_192 rawBody317_235

def rawBody317_237 : StackLang.HolProg 64 :=
.seq rawBody317_191 rawBody317_236

def rawBody317_238 : StackLang.HolProg 64 :=
.seq rawBody317_190 rawBody317_237

def rawBody317_239 : StackLang.HolProg 64 :=
.seq rawBody317_133 rawBody317_238

def rawBody317_240 : StackLang.HolProg 64 :=
.seq rawBody317_130 rawBody317_239

def rawBody317_241 : StackLang.HolProg 64 :=
.seq rawBody317_129 rawBody317_240

def rawBody317_242 : StackLang.HolProg 64 :=
.seq rawBody317_128 rawBody317_241

def rawBody317_243 : StackLang.HolProg 64 :=
.seq rawBody317_127 rawBody317_242

def rawBody317_244 : StackLang.HolProg 64 :=
.seq rawBody317_124 rawBody317_243

def rawBody317_245 : StackLang.HolProg 64 :=
.seq rawBody317_123 rawBody317_244

def rawBody317_246 : StackLang.HolProg 64 :=
.seq rawBody317_40 rawBody317_245

def rawBody317_247 : StackLang.HolProg 64 :=
.seq rawBody317_39 rawBody317_246

def rawBody317_248 : StackLang.HolProg 64 :=
.seq rawBody317_38 rawBody317_247

def rawBody317_249 : StackLang.HolProg 64 :=
.seq rawBody317_37 rawBody317_248

def rawBody317_250 : StackLang.HolProg 64 :=
.seq rawBody317_36 rawBody317_249

def rawBody317_251 : StackLang.HolProg 64 :=
.seq rawBody317_19 rawBody317_250

def rawBody317_252 : StackLang.HolProg 64 :=
.seq rawBody317_18 rawBody317_251

def rawBody317_253 : StackLang.HolProg 64 :=
.seq rawBody317_17 rawBody317_252

def rawBody317_254 : StackLang.HolProg 64 :=
.seq rawBody317_16 rawBody317_253

def rawBody317_255 : StackLang.HolProg 64 :=
.seq rawBody317_15 rawBody317_254

def rawBody317_256 : StackLang.HolProg 64 :=
.seq rawBody317_14 rawBody317_255

def rawBody317_257 : StackLang.HolProg 64 :=
.seq rawBody317_13 rawBody317_256

def rawBody317_258 : StackLang.HolProg 64 :=
.seq rawBody317_2 rawBody317_257

def rawBody317_259 : StackLang.HolProg 64 :=
.seq rawBody317_1 rawBody317_258

def rawBody317_260 : StackLang.HolProg 64 :=
.seq rawBody317_0 rawBody317_259

def raw317 : StackLang.HolProg 64 := rawBody317_260
theorem raw317_eq : StackRawCall.compTop RawInfo.rawInfo (function317 (.list [])).1 = raw317 := by
  kernel_rfl
#print axioms raw317_eq
end InitECandidate.Proofs.BackendStages
