import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function847
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody847_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 8

def rawBody847_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody847_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def rawBody847_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 5

def rawBody847_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def rawBody847_5 : StackLang.HolProg 64 :=
.seq rawBody847_3 rawBody847_4

def rawBody847_6 : StackLang.HolProg 64 :=
.seq rawBody847_2 rawBody847_5

def rawBody847_7 : StackLang.HolProg 64 :=
.seq rawBody847_1 rawBody847_6

def rawBody847_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody847_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4236#64)

def rawBody847_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody847_11 : StackLang.HolProg 64 :=
.seq rawBody847_9 rawBody847_10

def rawBody847_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody847_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody847_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody847_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 847 3

def rawBody847_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody847_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody847_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody847_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody847_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody847_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody847_22 : StackLang.HolProg 64 :=
.seq rawBody847_20 rawBody847_21

def rawBody847_23 : StackLang.HolProg 64 :=
.seq rawBody847_19 rawBody847_22

def rawBody847_24 : StackLang.HolProg 64 :=
.seq rawBody847_18 rawBody847_23

def rawBody847_25 : StackLang.HolProg 64 :=
.seq rawBody847_17 rawBody847_24

def rawBody847_26 : StackLang.HolProg 64 :=
.seq rawBody847_16 rawBody847_25

def rawBody847_27 : StackLang.HolProg 64 :=
.seq rawBody847_15 rawBody847_26

def rawBody847_28 : StackLang.HolProg 64 :=
.seq rawBody847_14 rawBody847_27

def rawBody847_29 : StackLang.HolProg 64 :=
.seq rawBody847_13 rawBody847_28

def rawBody847_30 : StackLang.HolProg 64 :=
.seq rawBody847_12 rawBody847_29

def rawBody847_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody847_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody847_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody847_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody847_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody847_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody847_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody847_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody847_39 : StackLang.HolProg 64 :=
.seq rawBody847_37 rawBody847_38

def rawBody847_40 : StackLang.HolProg 64 :=
.seq rawBody847_36 rawBody847_39

def rawBody847_41 : StackLang.HolProg 64 :=
.seq rawBody847_35 rawBody847_40

def rawBody847_42 : StackLang.HolProg 64 :=
.seq rawBody847_34 rawBody847_41

def rawBody847_43 : StackLang.HolProg 64 :=
.seq rawBody847_33 rawBody847_42

def rawBody847_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody847_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody847_46 : StackLang.HolProg 64 :=
.seq rawBody847_44 rawBody847_45

def rawBody847_47 : StackLang.HolProg 64 :=
.call (some (rawBody847_43, 0, 847, 2)) (Sum.inl 69) (some (rawBody847_46, 847, 3))

def rawBody847_48 : StackLang.HolProg 64 :=
.seq rawBody847_32 rawBody847_47

def rawBody847_49 : StackLang.HolProg 64 :=
.seq rawBody847_31 rawBody847_48

def rawBody847_50 : StackLang.HolProg 64 :=
.seq rawBody847_30 rawBody847_49

def rawBody847_51 : StackLang.HolProg 64 :=
.seq rawBody847_11 rawBody847_50

def rawBody847_52 : StackLang.HolProg 64 :=
.seq rawBody847_8 rawBody847_51

def rawBody847_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody847_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody847_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody847_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody847_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def rawBody847_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def rawBody847_59 : StackLang.HolProg 64 :=
.seq rawBody847_57 rawBody847_58

def rawBody847_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody847_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4237#64)

def rawBody847_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody847_63 : StackLang.HolProg 64 :=
.seq rawBody847_61 rawBody847_62

def rawBody847_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody847_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody847_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody847_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 847 5

def rawBody847_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody847_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody847_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody847_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody847_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody847_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody847_74 : StackLang.HolProg 64 :=
.seq rawBody847_72 rawBody847_73

def rawBody847_75 : StackLang.HolProg 64 :=
.seq rawBody847_71 rawBody847_74

def rawBody847_76 : StackLang.HolProg 64 :=
.seq rawBody847_70 rawBody847_75

def rawBody847_77 : StackLang.HolProg 64 :=
.seq rawBody847_69 rawBody847_76

def rawBody847_78 : StackLang.HolProg 64 :=
.seq rawBody847_68 rawBody847_77

def rawBody847_79 : StackLang.HolProg 64 :=
.seq rawBody847_67 rawBody847_78

def rawBody847_80 : StackLang.HolProg 64 :=
.seq rawBody847_66 rawBody847_79

def rawBody847_81 : StackLang.HolProg 64 :=
.seq rawBody847_65 rawBody847_80

def rawBody847_82 : StackLang.HolProg 64 :=
.seq rawBody847_64 rawBody847_81

def rawBody847_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody847_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody847_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody847_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody847_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody847_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody847_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody847_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody847_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def rawBody847_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def rawBody847_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody847_94 : StackLang.HolProg 64 :=
.seq rawBody847_92 rawBody847_93

def rawBody847_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody847_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody847_97 : StackLang.HolProg 64 :=
.seq rawBody847_95 rawBody847_96

def rawBody847_98 : StackLang.HolProg 64 :=
.seq rawBody847_94 rawBody847_97

def rawBody847_99 : StackLang.HolProg 64 :=
.seq rawBody847_91 rawBody847_98

def rawBody847_100 : StackLang.HolProg 64 :=
.seq rawBody847_90 rawBody847_99

def rawBody847_101 : StackLang.HolProg 64 :=
.seq rawBody847_89 rawBody847_100

def rawBody847_102 : StackLang.HolProg 64 :=
.seq rawBody847_88 rawBody847_101

def rawBody847_103 : StackLang.HolProg 64 :=
.seq rawBody847_87 rawBody847_102

def rawBody847_104 : StackLang.HolProg 64 :=
.seq rawBody847_86 rawBody847_103

def rawBody847_105 : StackLang.HolProg 64 :=
.seq rawBody847_85 rawBody847_104

def rawBody847_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody847_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def rawBody847_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def rawBody847_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody847_110 : StackLang.HolProg 64 :=
.seq rawBody847_108 rawBody847_109

def rawBody847_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody847_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody847_113 : StackLang.HolProg 64 :=
.seq rawBody847_111 rawBody847_112

def rawBody847_114 : StackLang.HolProg 64 :=
.seq rawBody847_110 rawBody847_113

def rawBody847_115 : StackLang.HolProg 64 :=
.seq rawBody847_107 rawBody847_114

def rawBody847_116 : StackLang.HolProg 64 :=
.seq rawBody847_106 rawBody847_115

def rawBody847_117 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody847_118 : StackLang.HolProg 64 :=
.seq rawBody847_116 rawBody847_117

def rawBody847_119 : StackLang.HolProg 64 :=
.call (some (rawBody847_105, 0, 847, 4)) (Sum.inl 68) (some (rawBody847_118, 847, 5))

def rawBody847_120 : StackLang.HolProg 64 :=
.seq rawBody847_84 rawBody847_119

def rawBody847_121 : StackLang.HolProg 64 :=
.seq rawBody847_83 rawBody847_120

def rawBody847_122 : StackLang.HolProg 64 :=
.seq rawBody847_82 rawBody847_121

def rawBody847_123 : StackLang.HolProg 64 :=
.seq rawBody847_63 rawBody847_122

def rawBody847_124 : StackLang.HolProg 64 :=
.seq rawBody847_60 rawBody847_123

def rawBody847_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody847_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody847_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody847_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody847_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody847_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody847_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody847_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody847_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody847_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody847_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody847_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def rawBody847_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 8#64))

def rawBody847_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody847_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody847_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody847_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody847_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody847_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody847_144 : StackLang.HolProg 64 :=
.seq rawBody847_142 rawBody847_143

def rawBody847_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def rawBody847_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody847_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody847_148 : StackLang.HolProg 64 :=
.seq rawBody847_146 rawBody847_147

def rawBody847_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def rawBody847_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody847_151 : StackLang.HolProg 64 :=
.seq rawBody847_149 rawBody847_150

def rawBody847_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 4

def rawBody847_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def rawBody847_154 : StackLang.HolProg 64 :=
.seq rawBody847_152 rawBody847_153

def rawBody847_155 : StackLang.HolProg 64 :=
.seq rawBody847_151 rawBody847_154

def rawBody847_156 : StackLang.HolProg 64 :=
.seq rawBody847_148 rawBody847_155

def rawBody847_157 : StackLang.HolProg 64 :=
.seq rawBody847_145 rawBody847_156

def rawBody847_158 : StackLang.HolProg 64 :=
.seq rawBody847_144 rawBody847_157

def rawBody847_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody847_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4238#64)

def rawBody847_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody847_162 : StackLang.HolProg 64 :=
.seq rawBody847_160 rawBody847_161

def rawBody847_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody847_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody847_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody847_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 847 7

def rawBody847_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody847_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody847_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody847_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody847_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody847_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody847_173 : StackLang.HolProg 64 :=
.seq rawBody847_171 rawBody847_172

def rawBody847_174 : StackLang.HolProg 64 :=
.seq rawBody847_170 rawBody847_173

def rawBody847_175 : StackLang.HolProg 64 :=
.seq rawBody847_169 rawBody847_174

def rawBody847_176 : StackLang.HolProg 64 :=
.seq rawBody847_168 rawBody847_175

def rawBody847_177 : StackLang.HolProg 64 :=
.seq rawBody847_167 rawBody847_176

def rawBody847_178 : StackLang.HolProg 64 :=
.seq rawBody847_166 rawBody847_177

def rawBody847_179 : StackLang.HolProg 64 :=
.seq rawBody847_165 rawBody847_178

def rawBody847_180 : StackLang.HolProg 64 :=
.seq rawBody847_164 rawBody847_179

def rawBody847_181 : StackLang.HolProg 64 :=
.seq rawBody847_163 rawBody847_180

def rawBody847_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody847_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody847_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody847_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody847_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody847_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody847_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody847_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def rawBody847_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody847_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody847_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody847_193 : StackLang.HolProg 64 :=
.seq rawBody847_191 rawBody847_192

def rawBody847_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def rawBody847_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody847_196 : StackLang.HolProg 64 :=
.seq rawBody847_194 rawBody847_195

def rawBody847_197 : StackLang.HolProg 64 :=
.seq rawBody847_193 rawBody847_196

def rawBody847_198 : StackLang.HolProg 64 :=
.seq rawBody847_190 rawBody847_197

def rawBody847_199 : StackLang.HolProg 64 :=
.seq rawBody847_189 rawBody847_198

def rawBody847_200 : StackLang.HolProg 64 :=
.seq rawBody847_188 rawBody847_199

def rawBody847_201 : StackLang.HolProg 64 :=
.seq rawBody847_187 rawBody847_200

def rawBody847_202 : StackLang.HolProg 64 :=
.seq rawBody847_186 rawBody847_201

def rawBody847_203 : StackLang.HolProg 64 :=
.seq rawBody847_185 rawBody847_202

def rawBody847_204 : StackLang.HolProg 64 :=
.seq rawBody847_184 rawBody847_203

def rawBody847_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody847_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def rawBody847_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody847_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody847_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody847_210 : StackLang.HolProg 64 :=
.seq rawBody847_208 rawBody847_209

def rawBody847_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def rawBody847_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody847_213 : StackLang.HolProg 64 :=
.seq rawBody847_211 rawBody847_212

def rawBody847_214 : StackLang.HolProg 64 :=
.seq rawBody847_210 rawBody847_213

def rawBody847_215 : StackLang.HolProg 64 :=
.seq rawBody847_207 rawBody847_214

def rawBody847_216 : StackLang.HolProg 64 :=
.seq rawBody847_206 rawBody847_215

def rawBody847_217 : StackLang.HolProg 64 :=
.seq rawBody847_205 rawBody847_216

def rawBody847_218 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody847_219 : StackLang.HolProg 64 :=
.seq rawBody847_217 rawBody847_218

def rawBody847_220 : StackLang.HolProg 64 :=
.call (some (rawBody847_204, 0, 847, 6)) (Sum.inl 153) (some (rawBody847_219, 847, 7))

def rawBody847_221 : StackLang.HolProg 64 :=
.seq rawBody847_183 rawBody847_220

def rawBody847_222 : StackLang.HolProg 64 :=
.seq rawBody847_182 rawBody847_221

def rawBody847_223 : StackLang.HolProg 64 :=
.seq rawBody847_181 rawBody847_222

def rawBody847_224 : StackLang.HolProg 64 :=
.seq rawBody847_162 rawBody847_223

def rawBody847_225 : StackLang.HolProg 64 :=
.seq rawBody847_159 rawBody847_224

def rawBody847_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody847_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody847_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody847_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 7

def rawBody847_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody847_231 : StackLang.HolProg 64 :=
.seq rawBody847_229 rawBody847_230

def rawBody847_232 : StackLang.HolProg 64 :=
.seq rawBody847_228 rawBody847_231

def rawBody847_233 : StackLang.HolProg 64 :=
.seq rawBody847_227 rawBody847_232

def rawBody847_234 : StackLang.HolProg 64 :=
.seq rawBody847_226 rawBody847_233

def rawBody847_235 : StackLang.HolProg 64 :=
.seq rawBody847_225 rawBody847_234

def rawBody847_236 : StackLang.HolProg 64 :=
.seq rawBody847_158 rawBody847_235

def rawBody847_237 : StackLang.HolProg 64 :=
.seq rawBody847_141 rawBody847_236

def rawBody847_238 : StackLang.HolProg 64 :=
.seq rawBody847_140 rawBody847_237

def rawBody847_239 : StackLang.HolProg 64 :=
.seq rawBody847_139 rawBody847_238

def rawBody847_240 : StackLang.HolProg 64 :=
.seq rawBody847_138 rawBody847_239

def rawBody847_241 : StackLang.HolProg 64 :=
.seq rawBody847_137 rawBody847_240

def rawBody847_242 : StackLang.HolProg 64 :=
.seq rawBody847_136 rawBody847_241

def rawBody847_243 : StackLang.HolProg 64 :=
.seq rawBody847_135 rawBody847_242

def rawBody847_244 : StackLang.HolProg 64 :=
.seq rawBody847_134 rawBody847_243

def rawBody847_245 : StackLang.HolProg 64 :=
.seq rawBody847_133 rawBody847_244

def rawBody847_246 : StackLang.HolProg 64 :=
.seq rawBody847_132 rawBody847_245

def rawBody847_247 : StackLang.HolProg 64 :=
.seq rawBody847_131 rawBody847_246

def rawBody847_248 : StackLang.HolProg 64 :=
.seq rawBody847_130 rawBody847_247

def rawBody847_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody847_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody847_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody847_252 : StackLang.HolProg 64 :=
.seq rawBody847_250 rawBody847_251

def rawBody847_253 : StackLang.HolProg 64 :=
.seq rawBody847_249 rawBody847_252

def rawBody847_254 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody847_248 rawBody847_253

def rawBody847_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody847_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 6

def rawBody847_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def rawBody847_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 7

def rawBody847_259 : StackLang.HolProg 64 :=
.seq rawBody847_257 rawBody847_258

def rawBody847_260 : StackLang.HolProg 64 :=
.seq rawBody847_256 rawBody847_259

def rawBody847_261 : StackLang.HolProg 64 :=
.seq rawBody847_255 rawBody847_260

def rawBody847_262 : StackLang.HolProg 64 :=
.seq rawBody847_254 rawBody847_261

def rawBody847_263 : StackLang.HolProg 64 :=
.seq rawBody847_129 rawBody847_262

def rawBody847_264 : StackLang.HolProg 64 :=
.loop rawBody847_263

def rawBody847_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody847_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody847_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody847_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 7

def rawBody847_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody847_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody847_271 : StackLang.HolProg 64 :=
.seq rawBody847_269 rawBody847_270

def rawBody847_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody847_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody847_274 : StackLang.HolProg 64 :=
.seq rawBody847_272 rawBody847_273

def rawBody847_275 : StackLang.HolProg 64 :=
.seq rawBody847_271 rawBody847_274

def rawBody847_276 : StackLang.HolProg 64 :=
.seq rawBody847_268 rawBody847_275

def rawBody847_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody847_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4239#64)

def rawBody847_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody847_280 : StackLang.HolProg 64 :=
.seq rawBody847_278 rawBody847_279

def rawBody847_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody847_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody847_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody847_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 847 9

def rawBody847_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody847_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody847_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody847_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody847_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody847_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody847_291 : StackLang.HolProg 64 :=
.seq rawBody847_289 rawBody847_290

def rawBody847_292 : StackLang.HolProg 64 :=
.seq rawBody847_288 rawBody847_291

def rawBody847_293 : StackLang.HolProg 64 :=
.seq rawBody847_287 rawBody847_292

def rawBody847_294 : StackLang.HolProg 64 :=
.seq rawBody847_286 rawBody847_293

def rawBody847_295 : StackLang.HolProg 64 :=
.seq rawBody847_285 rawBody847_294

def rawBody847_296 : StackLang.HolProg 64 :=
.seq rawBody847_284 rawBody847_295

def rawBody847_297 : StackLang.HolProg 64 :=
.seq rawBody847_283 rawBody847_296

def rawBody847_298 : StackLang.HolProg 64 :=
.seq rawBody847_282 rawBody847_297

def rawBody847_299 : StackLang.HolProg 64 :=
.seq rawBody847_281 rawBody847_298

def rawBody847_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody847_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody847_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody847_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody847_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody847_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody847_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody847_307 : StackLang.HolProg 64 :=
.seq rawBody847_305 rawBody847_306

def rawBody847_308 : StackLang.HolProg 64 :=
.seq rawBody847_304 rawBody847_307

def rawBody847_309 : StackLang.HolProg 64 :=
.seq rawBody847_303 rawBody847_308

def rawBody847_310 : StackLang.HolProg 64 :=
.seq rawBody847_302 rawBody847_309

def rawBody847_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody847_312 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody847_313 : StackLang.HolProg 64 :=
.seq rawBody847_311 rawBody847_312

def rawBody847_314 : StackLang.HolProg 64 :=
.call (some (rawBody847_310, 0, 847, 8)) (Sum.inl 153) (some (rawBody847_313, 847, 9))

def rawBody847_315 : StackLang.HolProg 64 :=
.seq rawBody847_301 rawBody847_314

def rawBody847_316 : StackLang.HolProg 64 :=
.seq rawBody847_300 rawBody847_315

def rawBody847_317 : StackLang.HolProg 64 :=
.seq rawBody847_299 rawBody847_316

def rawBody847_318 : StackLang.HolProg 64 :=
.seq rawBody847_280 rawBody847_317

def rawBody847_319 : StackLang.HolProg 64 :=
.seq rawBody847_277 rawBody847_318

def rawBody847_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody847_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody847_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody847_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4240#64)

def rawBody847_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody847_325 : StackLang.HolProg 64 :=
.seq rawBody847_323 rawBody847_324

def rawBody847_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody847_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody847_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody847_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 847 11

def rawBody847_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody847_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody847_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody847_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody847_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody847_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody847_336 : StackLang.HolProg 64 :=
.seq rawBody847_334 rawBody847_335

def rawBody847_337 : StackLang.HolProg 64 :=
.seq rawBody847_333 rawBody847_336

def rawBody847_338 : StackLang.HolProg 64 :=
.seq rawBody847_332 rawBody847_337

def rawBody847_339 : StackLang.HolProg 64 :=
.seq rawBody847_331 rawBody847_338

def rawBody847_340 : StackLang.HolProg 64 :=
.seq rawBody847_330 rawBody847_339

def rawBody847_341 : StackLang.HolProg 64 :=
.seq rawBody847_329 rawBody847_340

def rawBody847_342 : StackLang.HolProg 64 :=
.seq rawBody847_328 rawBody847_341

def rawBody847_343 : StackLang.HolProg 64 :=
.seq rawBody847_327 rawBody847_342

def rawBody847_344 : StackLang.HolProg 64 :=
.seq rawBody847_326 rawBody847_343

def rawBody847_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody847_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody847_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody847_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody847_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody847_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody847_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody847_352 : StackLang.HolProg 64 :=
.seq rawBody847_350 rawBody847_351

def rawBody847_353 : StackLang.HolProg 64 :=
.seq rawBody847_349 rawBody847_352

def rawBody847_354 : StackLang.HolProg 64 :=
.seq rawBody847_348 rawBody847_353

def rawBody847_355 : StackLang.HolProg 64 :=
.seq rawBody847_347 rawBody847_354

def rawBody847_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody847_357 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody847_358 : StackLang.HolProg 64 :=
.seq rawBody847_356 rawBody847_357

def rawBody847_359 : StackLang.HolProg 64 :=
.call (some (rawBody847_355, 0, 847, 10)) (Sum.inl 70) (some (rawBody847_358, 847, 11))

def rawBody847_360 : StackLang.HolProg 64 :=
.seq rawBody847_346 rawBody847_359

def rawBody847_361 : StackLang.HolProg 64 :=
.seq rawBody847_345 rawBody847_360

def rawBody847_362 : StackLang.HolProg 64 :=
.seq rawBody847_344 rawBody847_361

def rawBody847_363 : StackLang.HolProg 64 :=
.seq rawBody847_325 rawBody847_362

def rawBody847_364 : StackLang.HolProg 64 :=
.seq rawBody847_322 rawBody847_363

def rawBody847_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody847_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody847_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody847_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 8

def rawBody847_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody847_370 : StackLang.HolProg 64 :=
.seq rawBody847_368 rawBody847_369

def rawBody847_371 : StackLang.HolProg 64 :=
.seq rawBody847_367 rawBody847_370

def rawBody847_372 : StackLang.HolProg 64 :=
.seq rawBody847_366 rawBody847_371

def rawBody847_373 : StackLang.HolProg 64 :=
.seq rawBody847_365 rawBody847_372

def rawBody847_374 : StackLang.HolProg 64 :=
.seq rawBody847_364 rawBody847_373

def rawBody847_375 : StackLang.HolProg 64 :=
.seq rawBody847_321 rawBody847_374

def rawBody847_376 : StackLang.HolProg 64 :=
.seq rawBody847_320 rawBody847_375

def rawBody847_377 : StackLang.HolProg 64 :=
.seq rawBody847_319 rawBody847_376

def rawBody847_378 : StackLang.HolProg 64 :=
.seq rawBody847_276 rawBody847_377

def rawBody847_379 : StackLang.HolProg 64 :=
.seq rawBody847_267 rawBody847_378

def rawBody847_380 : StackLang.HolProg 64 :=
.seq rawBody847_266 rawBody847_379

def rawBody847_381 : StackLang.HolProg 64 :=
.seq rawBody847_265 rawBody847_380

def rawBody847_382 : StackLang.HolProg 64 :=
.seq rawBody847_264 rawBody847_381

def rawBody847_383 : StackLang.HolProg 64 :=
.seq rawBody847_128 rawBody847_382

def rawBody847_384 : StackLang.HolProg 64 :=
.seq rawBody847_127 rawBody847_383

def rawBody847_385 : StackLang.HolProg 64 :=
.seq rawBody847_126 rawBody847_384

def rawBody847_386 : StackLang.HolProg 64 :=
.seq rawBody847_125 rawBody847_385

def rawBody847_387 : StackLang.HolProg 64 :=
.seq rawBody847_124 rawBody847_386

def rawBody847_388 : StackLang.HolProg 64 :=
.seq rawBody847_59 rawBody847_387

def rawBody847_389 : StackLang.HolProg 64 :=
.seq rawBody847_56 rawBody847_388

def rawBody847_390 : StackLang.HolProg 64 :=
.seq rawBody847_55 rawBody847_389

def rawBody847_391 : StackLang.HolProg 64 :=
.seq rawBody847_54 rawBody847_390

def rawBody847_392 : StackLang.HolProg 64 :=
.seq rawBody847_53 rawBody847_391

def rawBody847_393 : StackLang.HolProg 64 :=
.seq rawBody847_52 rawBody847_392

def rawBody847_394 : StackLang.HolProg 64 :=
.seq rawBody847_7 rawBody847_393

def rawBody847_395 : StackLang.HolProg 64 :=
.seq rawBody847_0 rawBody847_394

def raw847 : StackLang.HolProg 64 := rawBody847_395
theorem raw847_eq : StackRawCall.compTop RawInfo.rawInfo (function847 (.list [])).1 = raw847 := by
  kernel_rfl
#print axioms raw847_eq
end InitECandidate.Proofs.BackendStages
