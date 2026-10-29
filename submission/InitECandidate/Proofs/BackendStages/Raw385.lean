import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function385
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody385_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def rawBody385_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody385_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def rawBody385_3 : StackLang.HolProg 64 :=
.seq rawBody385_1 rawBody385_2

def rawBody385_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1133#64)

def rawBody385_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody385_7 : StackLang.HolProg 64 :=
.seq rawBody385_5 rawBody385_6

def rawBody385_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody385_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody385_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody385_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 385 3

def rawBody385_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody385_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody385_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody385_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody385_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody385_18 : StackLang.HolProg 64 :=
.seq rawBody385_16 rawBody385_17

def rawBody385_19 : StackLang.HolProg 64 :=
.seq rawBody385_15 rawBody385_18

def rawBody385_20 : StackLang.HolProg 64 :=
.seq rawBody385_14 rawBody385_19

def rawBody385_21 : StackLang.HolProg 64 :=
.seq rawBody385_13 rawBody385_20

def rawBody385_22 : StackLang.HolProg 64 :=
.seq rawBody385_12 rawBody385_21

def rawBody385_23 : StackLang.HolProg 64 :=
.seq rawBody385_11 rawBody385_22

def rawBody385_24 : StackLang.HolProg 64 :=
.seq rawBody385_10 rawBody385_23

def rawBody385_25 : StackLang.HolProg 64 :=
.seq rawBody385_9 rawBody385_24

def rawBody385_26 : StackLang.HolProg 64 :=
.seq rawBody385_8 rawBody385_25

def rawBody385_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody385_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody385_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody385_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody385_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody385_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody385_35 : StackLang.HolProg 64 :=
.seq rawBody385_33 rawBody385_34

def rawBody385_36 : StackLang.HolProg 64 :=
.seq rawBody385_32 rawBody385_35

def rawBody385_37 : StackLang.HolProg 64 :=
.seq rawBody385_31 rawBody385_36

def rawBody385_38 : StackLang.HolProg 64 :=
.seq rawBody385_30 rawBody385_37

def rawBody385_39 : StackLang.HolProg 64 :=
.seq rawBody385_29 rawBody385_38

def rawBody385_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody385_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody385_42 : StackLang.HolProg 64 :=
.seq rawBody385_40 rawBody385_41

def rawBody385_43 : StackLang.HolProg 64 :=
.call (some (rawBody385_39, 0, 385, 2)) (Sum.inl 384) (some (rawBody385_42, 385, 3))

def rawBody385_44 : StackLang.HolProg 64 :=
.seq rawBody385_28 rawBody385_43

def rawBody385_45 : StackLang.HolProg 64 :=
.seq rawBody385_27 rawBody385_44

def rawBody385_46 : StackLang.HolProg 64 :=
.seq rawBody385_26 rawBody385_45

def rawBody385_47 : StackLang.HolProg 64 :=
.seq rawBody385_7 rawBody385_46

def rawBody385_48 : StackLang.HolProg 64 :=
.seq rawBody385_4 rawBody385_47

def rawBody385_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody385_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 144#64))

def rawBody385_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4294967295#64)

def rawBody385_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody385_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 66#64)

def rawBody385_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def rawBody385_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def rawBody385_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_60 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody385_61 : StackLang.HolProg 64 :=
.seq rawBody385_59 rawBody385_60

def rawBody385_62 : StackLang.HolProg 64 :=
.seq rawBody385_58 rawBody385_61

def rawBody385_63 : StackLang.HolProg 64 :=
.seq rawBody385_57 rawBody385_62

def rawBody385_64 : StackLang.HolProg 64 :=
.seq rawBody385_56 rawBody385_63

def rawBody385_65 : StackLang.HolProg 64 :=
.seq rawBody385_55 rawBody385_64

def rawBody385_66 : StackLang.HolProg 64 :=
.seq rawBody385_54 rawBody385_65

def rawBody385_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_68 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) rawBody385_66 rawBody385_67

def rawBody385_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody385_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody385_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody385_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody385_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody385_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 60#64)

def rawBody385_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def rawBody385_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def rawBody385_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody385_80 : StackLang.HolProg 64 :=
.seq rawBody385_78 rawBody385_79

def rawBody385_81 : StackLang.HolProg 64 :=
.seq rawBody385_77 rawBody385_80

def rawBody385_82 : StackLang.HolProg 64 :=
.seq rawBody385_76 rawBody385_81

def rawBody385_83 : StackLang.HolProg 64 :=
.seq rawBody385_75 rawBody385_82

def rawBody385_84 : StackLang.HolProg 64 :=
.seq rawBody385_74 rawBody385_83

def rawBody385_85 : StackLang.HolProg 64 :=
.seq rawBody385_73 rawBody385_84

def rawBody385_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_87 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody385_85 rawBody385_86

def rawBody385_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody385_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody385_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody385_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody385_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 61#64)

def rawBody385_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def rawBody385_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def rawBody385_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_97 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody385_98 : StackLang.HolProg 64 :=
.seq rawBody385_96 rawBody385_97

def rawBody385_99 : StackLang.HolProg 64 :=
.seq rawBody385_95 rawBody385_98

def rawBody385_100 : StackLang.HolProg 64 :=
.seq rawBody385_94 rawBody385_99

def rawBody385_101 : StackLang.HolProg 64 :=
.seq rawBody385_93 rawBody385_100

def rawBody385_102 : StackLang.HolProg 64 :=
.seq rawBody385_92 rawBody385_101

def rawBody385_103 : StackLang.HolProg 64 :=
.seq rawBody385_91 rawBody385_102

def rawBody385_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_105 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) rawBody385_103 rawBody385_104

def rawBody385_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody385_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody385_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 152#64))

def rawBody385_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody385_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody385_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 131072#64)

def rawBody385_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 200#64))

def rawBody385_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody385_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 62#64)

def rawBody385_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def rawBody385_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def rawBody385_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_121 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody385_122 : StackLang.HolProg 64 :=
.seq rawBody385_120 rawBody385_121

def rawBody385_123 : StackLang.HolProg 64 :=
.seq rawBody385_119 rawBody385_122

def rawBody385_124 : StackLang.HolProg 64 :=
.seq rawBody385_118 rawBody385_123

def rawBody385_125 : StackLang.HolProg 64 :=
.seq rawBody385_117 rawBody385_124

def rawBody385_126 : StackLang.HolProg 64 :=
.seq rawBody385_116 rawBody385_125

def rawBody385_127 : StackLang.HolProg 64 :=
.seq rawBody385_115 rawBody385_126

def rawBody385_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_129 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody385_127 rawBody385_128

def rawBody385_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody385_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody385_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_133 : StackLang.HolProg 64 :=
.seq rawBody385_131 rawBody385_132

def rawBody385_134 : StackLang.HolProg 64 :=
.seq rawBody385_130 rawBody385_133

def rawBody385_135 : StackLang.HolProg 64 :=
.seq rawBody385_129 rawBody385_134

def rawBody385_136 : StackLang.HolProg 64 :=
.seq rawBody385_114 rawBody385_135

def rawBody385_137 : StackLang.HolProg 64 :=
.seq rawBody385_113 rawBody385_136

def rawBody385_138 : StackLang.HolProg 64 :=
.seq rawBody385_112 rawBody385_137

def rawBody385_139 : StackLang.HolProg 64 :=
.seq rawBody385_111 rawBody385_138

def rawBody385_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody385_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_142 : StackLang.HolProg 64 :=
.seq rawBody385_140 rawBody385_141

def rawBody385_143 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody385_139 rawBody385_142

def rawBody385_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody385_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 16777216#64)

def rawBody385_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody385_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 63#64)

def rawBody385_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def rawBody385_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def rawBody385_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_153 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody385_154 : StackLang.HolProg 64 :=
.seq rawBody385_152 rawBody385_153

def rawBody385_155 : StackLang.HolProg 64 :=
.seq rawBody385_151 rawBody385_154

def rawBody385_156 : StackLang.HolProg 64 :=
.seq rawBody385_150 rawBody385_155

def rawBody385_157 : StackLang.HolProg 64 :=
.seq rawBody385_149 rawBody385_156

def rawBody385_158 : StackLang.HolProg 64 :=
.seq rawBody385_148 rawBody385_157

def rawBody385_159 : StackLang.HolProg 64 :=
.seq rawBody385_147 rawBody385_158

def rawBody385_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_161 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody385_159 rawBody385_160

def rawBody385_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody385_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody385_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 16777216#64)

def rawBody385_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody385_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def rawBody385_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def rawBody385_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def rawBody385_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_172 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody385_173 : StackLang.HolProg 64 :=
.seq rawBody385_171 rawBody385_172

def rawBody385_174 : StackLang.HolProg 64 :=
.seq rawBody385_170 rawBody385_173

def rawBody385_175 : StackLang.HolProg 64 :=
.seq rawBody385_169 rawBody385_174

def rawBody385_176 : StackLang.HolProg 64 :=
.seq rawBody385_168 rawBody385_175

def rawBody385_177 : StackLang.HolProg 64 :=
.seq rawBody385_167 rawBody385_176

def rawBody385_178 : StackLang.HolProg 64 :=
.seq rawBody385_166 rawBody385_177

def rawBody385_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_180 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) rawBody385_178 rawBody385_179

def rawBody385_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody385_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody385_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 16#64))

def rawBody385_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def rawBody385_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 32#64))

def rawBody385_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 40#64))

def rawBody385_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 4

def rawBody385_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody385_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def rawBody385_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody385_195 : StackLang.HolProg 64 :=
.seq rawBody385_193 rawBody385_194

def rawBody385_196 : StackLang.HolProg 64 :=
.seq rawBody385_192 rawBody385_195

def rawBody385_197 : StackLang.HolProg 64 :=
.seq rawBody385_191 rawBody385_196

def rawBody385_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1134#64)

def rawBody385_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody385_201 : StackLang.HolProg 64 :=
.seq rawBody385_199 rawBody385_200

def rawBody385_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody385_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody385_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody385_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 385 5

def rawBody385_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody385_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody385_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody385_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody385_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody385_212 : StackLang.HolProg 64 :=
.seq rawBody385_210 rawBody385_211

def rawBody385_213 : StackLang.HolProg 64 :=
.seq rawBody385_209 rawBody385_212

def rawBody385_214 : StackLang.HolProg 64 :=
.seq rawBody385_208 rawBody385_213

def rawBody385_215 : StackLang.HolProg 64 :=
.seq rawBody385_207 rawBody385_214

def rawBody385_216 : StackLang.HolProg 64 :=
.seq rawBody385_206 rawBody385_215

def rawBody385_217 : StackLang.HolProg 64 :=
.seq rawBody385_205 rawBody385_216

def rawBody385_218 : StackLang.HolProg 64 :=
.seq rawBody385_204 rawBody385_217

def rawBody385_219 : StackLang.HolProg 64 :=
.seq rawBody385_203 rawBody385_218

def rawBody385_220 : StackLang.HolProg 64 :=
.seq rawBody385_202 rawBody385_219

def rawBody385_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody385_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody385_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody385_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody385_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody385_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def rawBody385_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody385_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def rawBody385_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody385_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody385_233 : StackLang.HolProg 64 :=
.seq rawBody385_231 rawBody385_232

def rawBody385_234 : StackLang.HolProg 64 :=
.seq rawBody385_230 rawBody385_233

def rawBody385_235 : StackLang.HolProg 64 :=
.seq rawBody385_229 rawBody385_234

def rawBody385_236 : StackLang.HolProg 64 :=
.seq rawBody385_228 rawBody385_235

def rawBody385_237 : StackLang.HolProg 64 :=
.seq rawBody385_227 rawBody385_236

def rawBody385_238 : StackLang.HolProg 64 :=
.seq rawBody385_226 rawBody385_237

def rawBody385_239 : StackLang.HolProg 64 :=
.seq rawBody385_225 rawBody385_238

def rawBody385_240 : StackLang.HolProg 64 :=
.seq rawBody385_224 rawBody385_239

def rawBody385_241 : StackLang.HolProg 64 :=
.seq rawBody385_223 rawBody385_240

def rawBody385_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def rawBody385_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody385_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def rawBody385_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody385_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody385_247 : StackLang.HolProg 64 :=
.seq rawBody385_245 rawBody385_246

def rawBody385_248 : StackLang.HolProg 64 :=
.seq rawBody385_244 rawBody385_247

def rawBody385_249 : StackLang.HolProg 64 :=
.seq rawBody385_243 rawBody385_248

def rawBody385_250 : StackLang.HolProg 64 :=
.seq rawBody385_242 rawBody385_249

def rawBody385_251 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody385_252 : StackLang.HolProg 64 :=
.seq rawBody385_250 rawBody385_251

def rawBody385_253 : StackLang.HolProg 64 :=
.call (some (rawBody385_241, 0, 385, 4)) (Sum.inl 101) (some (rawBody385_252, 385, 5))

def rawBody385_254 : StackLang.HolProg 64 :=
.seq rawBody385_222 rawBody385_253

def rawBody385_255 : StackLang.HolProg 64 :=
.seq rawBody385_221 rawBody385_254

def rawBody385_256 : StackLang.HolProg 64 :=
.seq rawBody385_220 rawBody385_255

def rawBody385_257 : StackLang.HolProg 64 :=
.seq rawBody385_201 rawBody385_256

def rawBody385_258 : StackLang.HolProg 64 :=
.seq rawBody385_198 rawBody385_257

def rawBody385_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody385_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody385_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody385_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 65#64)

def rawBody385_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def rawBody385_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def rawBody385_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_268 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody385_269 : StackLang.HolProg 64 :=
.seq rawBody385_267 rawBody385_268

def rawBody385_270 : StackLang.HolProg 64 :=
.seq rawBody385_266 rawBody385_269

def rawBody385_271 : StackLang.HolProg 64 :=
.seq rawBody385_265 rawBody385_270

def rawBody385_272 : StackLang.HolProg 64 :=
.seq rawBody385_264 rawBody385_271

def rawBody385_273 : StackLang.HolProg 64 :=
.seq rawBody385_263 rawBody385_272

def rawBody385_274 : StackLang.HolProg 64 :=
.seq rawBody385_262 rawBody385_273

def rawBody385_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_276 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody385_274 rawBody385_275

def rawBody385_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody385_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody385_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def rawBody385_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody385_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 65#64)

def rawBody385_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def rawBody385_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def rawBody385_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_287 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody385_288 : StackLang.HolProg 64 :=
.seq rawBody385_286 rawBody385_287

def rawBody385_289 : StackLang.HolProg 64 :=
.seq rawBody385_285 rawBody385_288

def rawBody385_290 : StackLang.HolProg 64 :=
.seq rawBody385_284 rawBody385_289

def rawBody385_291 : StackLang.HolProg 64 :=
.seq rawBody385_283 rawBody385_290

def rawBody385_292 : StackLang.HolProg 64 :=
.seq rawBody385_282 rawBody385_291

def rawBody385_293 : StackLang.HolProg 64 :=
.seq rawBody385_281 rawBody385_292

def rawBody385_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody385_295 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody385_293 rawBody385_294

def rawBody385_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody385_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody385_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody385_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody385_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def rawBody385_301 : StackLang.HolProg 64 :=
.seq rawBody385_299 rawBody385_300

def rawBody385_302 : StackLang.HolProg 64 :=
.seq rawBody385_298 rawBody385_301

def rawBody385_303 : StackLang.HolProg 64 :=
.seq rawBody385_297 rawBody385_302

def rawBody385_304 : StackLang.HolProg 64 :=
.seq rawBody385_296 rawBody385_303

def rawBody385_305 : StackLang.HolProg 64 :=
.seq rawBody385_295 rawBody385_304

def rawBody385_306 : StackLang.HolProg 64 :=
.seq rawBody385_280 rawBody385_305

def rawBody385_307 : StackLang.HolProg 64 :=
.seq rawBody385_279 rawBody385_306

def rawBody385_308 : StackLang.HolProg 64 :=
.seq rawBody385_278 rawBody385_307

def rawBody385_309 : StackLang.HolProg 64 :=
.seq rawBody385_277 rawBody385_308

def rawBody385_310 : StackLang.HolProg 64 :=
.seq rawBody385_276 rawBody385_309

def rawBody385_311 : StackLang.HolProg 64 :=
.seq rawBody385_261 rawBody385_310

def rawBody385_312 : StackLang.HolProg 64 :=
.seq rawBody385_260 rawBody385_311

def rawBody385_313 : StackLang.HolProg 64 :=
.seq rawBody385_259 rawBody385_312

def rawBody385_314 : StackLang.HolProg 64 :=
.seq rawBody385_258 rawBody385_313

def rawBody385_315 : StackLang.HolProg 64 :=
.seq rawBody385_197 rawBody385_314

def rawBody385_316 : StackLang.HolProg 64 :=
.seq rawBody385_190 rawBody385_315

def rawBody385_317 : StackLang.HolProg 64 :=
.seq rawBody385_189 rawBody385_316

def rawBody385_318 : StackLang.HolProg 64 :=
.seq rawBody385_188 rawBody385_317

def rawBody385_319 : StackLang.HolProg 64 :=
.seq rawBody385_187 rawBody385_318

def rawBody385_320 : StackLang.HolProg 64 :=
.seq rawBody385_186 rawBody385_319

def rawBody385_321 : StackLang.HolProg 64 :=
.seq rawBody385_185 rawBody385_320

def rawBody385_322 : StackLang.HolProg 64 :=
.seq rawBody385_184 rawBody385_321

def rawBody385_323 : StackLang.HolProg 64 :=
.seq rawBody385_183 rawBody385_322

def rawBody385_324 : StackLang.HolProg 64 :=
.seq rawBody385_182 rawBody385_323

def rawBody385_325 : StackLang.HolProg 64 :=
.seq rawBody385_181 rawBody385_324

def rawBody385_326 : StackLang.HolProg 64 :=
.seq rawBody385_180 rawBody385_325

def rawBody385_327 : StackLang.HolProg 64 :=
.seq rawBody385_165 rawBody385_326

def rawBody385_328 : StackLang.HolProg 64 :=
.seq rawBody385_164 rawBody385_327

def rawBody385_329 : StackLang.HolProg 64 :=
.seq rawBody385_163 rawBody385_328

def rawBody385_330 : StackLang.HolProg 64 :=
.seq rawBody385_162 rawBody385_329

def rawBody385_331 : StackLang.HolProg 64 :=
.seq rawBody385_161 rawBody385_330

def rawBody385_332 : StackLang.HolProg 64 :=
.seq rawBody385_146 rawBody385_331

def rawBody385_333 : StackLang.HolProg 64 :=
.seq rawBody385_145 rawBody385_332

def rawBody385_334 : StackLang.HolProg 64 :=
.seq rawBody385_144 rawBody385_333

def rawBody385_335 : StackLang.HolProg 64 :=
.seq rawBody385_143 rawBody385_334

def rawBody385_336 : StackLang.HolProg 64 :=
.seq rawBody385_110 rawBody385_335

def rawBody385_337 : StackLang.HolProg 64 :=
.seq rawBody385_109 rawBody385_336

def rawBody385_338 : StackLang.HolProg 64 :=
.seq rawBody385_108 rawBody385_337

def rawBody385_339 : StackLang.HolProg 64 :=
.seq rawBody385_107 rawBody385_338

def rawBody385_340 : StackLang.HolProg 64 :=
.seq rawBody385_106 rawBody385_339

def rawBody385_341 : StackLang.HolProg 64 :=
.seq rawBody385_105 rawBody385_340

def rawBody385_342 : StackLang.HolProg 64 :=
.seq rawBody385_90 rawBody385_341

def rawBody385_343 : StackLang.HolProg 64 :=
.seq rawBody385_89 rawBody385_342

def rawBody385_344 : StackLang.HolProg 64 :=
.seq rawBody385_88 rawBody385_343

def rawBody385_345 : StackLang.HolProg 64 :=
.seq rawBody385_87 rawBody385_344

def rawBody385_346 : StackLang.HolProg 64 :=
.seq rawBody385_72 rawBody385_345

def rawBody385_347 : StackLang.HolProg 64 :=
.seq rawBody385_71 rawBody385_346

def rawBody385_348 : StackLang.HolProg 64 :=
.seq rawBody385_70 rawBody385_347

def rawBody385_349 : StackLang.HolProg 64 :=
.seq rawBody385_69 rawBody385_348

def rawBody385_350 : StackLang.HolProg 64 :=
.seq rawBody385_68 rawBody385_349

def rawBody385_351 : StackLang.HolProg 64 :=
.seq rawBody385_53 rawBody385_350

def rawBody385_352 : StackLang.HolProg 64 :=
.seq rawBody385_52 rawBody385_351

def rawBody385_353 : StackLang.HolProg 64 :=
.seq rawBody385_51 rawBody385_352

def rawBody385_354 : StackLang.HolProg 64 :=
.seq rawBody385_50 rawBody385_353

def rawBody385_355 : StackLang.HolProg 64 :=
.seq rawBody385_49 rawBody385_354

def rawBody385_356 : StackLang.HolProg 64 :=
.seq rawBody385_48 rawBody385_355

def rawBody385_357 : StackLang.HolProg 64 :=
.seq rawBody385_3 rawBody385_356

def rawBody385_358 : StackLang.HolProg 64 :=
.seq rawBody385_0 rawBody385_357

def raw385 : StackLang.HolProg 64 := rawBody385_358
theorem raw385_eq : StackRawCall.compTop RawInfo.rawInfo (function385 (.list [])).1 = raw385 := by
  kernel_rfl
#print axioms raw385_eq
end InitECandidate.Proofs.BackendStages
