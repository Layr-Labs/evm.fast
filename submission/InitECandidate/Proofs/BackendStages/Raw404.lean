import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function404
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody404_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody404_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody404_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody404_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody404_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody404_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def rawBody404_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody404_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody404_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def rawBody404_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody404_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody404_11 : StackLang.HolProg 64 :=
.seq rawBody404_9 rawBody404_10

def rawBody404_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody404_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1202#64)

def rawBody404_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody404_15 : StackLang.HolProg 64 :=
.seq rawBody404_13 rawBody404_14

def rawBody404_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody404_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody404_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody404_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 404 3

def rawBody404_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody404_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody404_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody404_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody404_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody404_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody404_26 : StackLang.HolProg 64 :=
.seq rawBody404_24 rawBody404_25

def rawBody404_27 : StackLang.HolProg 64 :=
.seq rawBody404_23 rawBody404_26

def rawBody404_28 : StackLang.HolProg 64 :=
.seq rawBody404_22 rawBody404_27

def rawBody404_29 : StackLang.HolProg 64 :=
.seq rawBody404_21 rawBody404_28

def rawBody404_30 : StackLang.HolProg 64 :=
.seq rawBody404_20 rawBody404_29

def rawBody404_31 : StackLang.HolProg 64 :=
.seq rawBody404_19 rawBody404_30

def rawBody404_32 : StackLang.HolProg 64 :=
.seq rawBody404_18 rawBody404_31

def rawBody404_33 : StackLang.HolProg 64 :=
.seq rawBody404_17 rawBody404_32

def rawBody404_34 : StackLang.HolProg 64 :=
.seq rawBody404_16 rawBody404_33

def rawBody404_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody404_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody404_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody404_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody404_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody404_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody404_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody404_42 : StackLang.HolProg 64 :=
.seq rawBody404_40 rawBody404_41

def rawBody404_43 : StackLang.HolProg 64 :=
.seq rawBody404_39 rawBody404_42

def rawBody404_44 : StackLang.HolProg 64 :=
.seq rawBody404_38 rawBody404_43

def rawBody404_45 : StackLang.HolProg 64 :=
.seq rawBody404_37 rawBody404_44

def rawBody404_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody404_47 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody404_48 : StackLang.HolProg 64 :=
.seq rawBody404_46 rawBody404_47

def rawBody404_49 : StackLang.HolProg 64 :=
.call (some (rawBody404_45, 0, 404, 2)) (Sum.inl 192) (some (rawBody404_48, 404, 3))

def rawBody404_50 : StackLang.HolProg 64 :=
.seq rawBody404_36 rawBody404_49

def rawBody404_51 : StackLang.HolProg 64 :=
.seq rawBody404_35 rawBody404_50

def rawBody404_52 : StackLang.HolProg 64 :=
.seq rawBody404_34 rawBody404_51

def rawBody404_53 : StackLang.HolProg 64 :=
.seq rawBody404_15 rawBody404_52

def rawBody404_54 : StackLang.HolProg 64 :=
.seq rawBody404_12 rawBody404_53

def rawBody404_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody404_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody404_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody404_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody404_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551440#64))

def rawBody404_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def rawBody404_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody404_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody404_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1203#64)

def rawBody404_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody404_65 : StackLang.HolProg 64 :=
.seq rawBody404_63 rawBody404_64

def rawBody404_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody404_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody404_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody404_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 404 5

def rawBody404_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody404_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody404_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody404_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody404_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody404_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody404_76 : StackLang.HolProg 64 :=
.seq rawBody404_74 rawBody404_75

def rawBody404_77 : StackLang.HolProg 64 :=
.seq rawBody404_73 rawBody404_76

def rawBody404_78 : StackLang.HolProg 64 :=
.seq rawBody404_72 rawBody404_77

def rawBody404_79 : StackLang.HolProg 64 :=
.seq rawBody404_71 rawBody404_78

def rawBody404_80 : StackLang.HolProg 64 :=
.seq rawBody404_70 rawBody404_79

def rawBody404_81 : StackLang.HolProg 64 :=
.seq rawBody404_69 rawBody404_80

def rawBody404_82 : StackLang.HolProg 64 :=
.seq rawBody404_68 rawBody404_81

def rawBody404_83 : StackLang.HolProg 64 :=
.seq rawBody404_67 rawBody404_82

def rawBody404_84 : StackLang.HolProg 64 :=
.seq rawBody404_66 rawBody404_83

def rawBody404_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody404_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody404_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody404_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody404_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody404_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody404_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody404_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody404_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody404_94 : StackLang.HolProg 64 :=
.seq rawBody404_92 rawBody404_93

def rawBody404_95 : StackLang.HolProg 64 :=
.seq rawBody404_91 rawBody404_94

def rawBody404_96 : StackLang.HolProg 64 :=
.seq rawBody404_90 rawBody404_95

def rawBody404_97 : StackLang.HolProg 64 :=
.seq rawBody404_89 rawBody404_96

def rawBody404_98 : StackLang.HolProg 64 :=
.seq rawBody404_88 rawBody404_97

def rawBody404_99 : StackLang.HolProg 64 :=
.seq rawBody404_87 rawBody404_98

def rawBody404_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody404_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody404_102 : StackLang.HolProg 64 :=
.seq rawBody404_100 rawBody404_101

def rawBody404_103 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody404_104 : StackLang.HolProg 64 :=
.seq rawBody404_102 rawBody404_103

def rawBody404_105 : StackLang.HolProg 64 :=
.call (some (rawBody404_99, 0, 404, 4)) (Sum.inl 186) (some (rawBody404_104, 404, 5))

def rawBody404_106 : StackLang.HolProg 64 :=
.seq rawBody404_86 rawBody404_105

def rawBody404_107 : StackLang.HolProg 64 :=
.seq rawBody404_85 rawBody404_106

def rawBody404_108 : StackLang.HolProg 64 :=
.seq rawBody404_84 rawBody404_107

def rawBody404_109 : StackLang.HolProg 64 :=
.seq rawBody404_65 rawBody404_108

def rawBody404_110 : StackLang.HolProg 64 :=
.seq rawBody404_62 rawBody404_109

def rawBody404_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody404_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody404_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody404_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody404_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody404_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody404_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody404_118 : StackLang.HolProg 64 :=
.seq rawBody404_116 rawBody404_117

def rawBody404_119 : StackLang.HolProg 64 :=
.seq rawBody404_115 rawBody404_118

def rawBody404_120 : StackLang.HolProg 64 :=
.seq rawBody404_114 rawBody404_119

def rawBody404_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody404_122 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody404_120 rawBody404_121

def rawBody404_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody404_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody404_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody404_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def rawBody404_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody404_128 : StackLang.HolProg 64 :=
.seq rawBody404_126 rawBody404_127

def rawBody404_129 : StackLang.HolProg 64 :=
.seq rawBody404_125 rawBody404_128

def rawBody404_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody404_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1204#64)

def rawBody404_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody404_133 : StackLang.HolProg 64 :=
.seq rawBody404_131 rawBody404_132

def rawBody404_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody404_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody404_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody404_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 404 7

def rawBody404_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody404_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody404_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody404_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody404_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody404_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody404_144 : StackLang.HolProg 64 :=
.seq rawBody404_142 rawBody404_143

def rawBody404_145 : StackLang.HolProg 64 :=
.seq rawBody404_141 rawBody404_144

def rawBody404_146 : StackLang.HolProg 64 :=
.seq rawBody404_140 rawBody404_145

def rawBody404_147 : StackLang.HolProg 64 :=
.seq rawBody404_139 rawBody404_146

def rawBody404_148 : StackLang.HolProg 64 :=
.seq rawBody404_138 rawBody404_147

def rawBody404_149 : StackLang.HolProg 64 :=
.seq rawBody404_137 rawBody404_148

def rawBody404_150 : StackLang.HolProg 64 :=
.seq rawBody404_136 rawBody404_149

def rawBody404_151 : StackLang.HolProg 64 :=
.seq rawBody404_135 rawBody404_150

def rawBody404_152 : StackLang.HolProg 64 :=
.seq rawBody404_134 rawBody404_151

def rawBody404_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody404_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody404_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody404_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody404_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody404_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody404_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody404_160 : StackLang.HolProg 64 :=
.seq rawBody404_158 rawBody404_159

def rawBody404_161 : StackLang.HolProg 64 :=
.seq rawBody404_157 rawBody404_160

def rawBody404_162 : StackLang.HolProg 64 :=
.seq rawBody404_156 rawBody404_161

def rawBody404_163 : StackLang.HolProg 64 :=
.seq rawBody404_155 rawBody404_162

def rawBody404_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody404_165 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody404_166 : StackLang.HolProg 64 :=
.seq rawBody404_164 rawBody404_165

def rawBody404_167 : StackLang.HolProg 64 :=
.call (some (rawBody404_163, 0, 404, 6)) (Sum.inl 396) (some (rawBody404_166, 404, 7))

def rawBody404_168 : StackLang.HolProg 64 :=
.seq rawBody404_154 rawBody404_167

def rawBody404_169 : StackLang.HolProg 64 :=
.seq rawBody404_153 rawBody404_168

def rawBody404_170 : StackLang.HolProg 64 :=
.seq rawBody404_152 rawBody404_169

def rawBody404_171 : StackLang.HolProg 64 :=
.seq rawBody404_133 rawBody404_170

def rawBody404_172 : StackLang.HolProg 64 :=
.seq rawBody404_130 rawBody404_171

def rawBody404_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody404_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody404_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody404_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1205#64)

def rawBody404_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody404_178 : StackLang.HolProg 64 :=
.seq rawBody404_176 rawBody404_177

def rawBody404_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody404_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody404_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody404_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 404 9

def rawBody404_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody404_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody404_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody404_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody404_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody404_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody404_189 : StackLang.HolProg 64 :=
.seq rawBody404_187 rawBody404_188

def rawBody404_190 : StackLang.HolProg 64 :=
.seq rawBody404_186 rawBody404_189

def rawBody404_191 : StackLang.HolProg 64 :=
.seq rawBody404_185 rawBody404_190

def rawBody404_192 : StackLang.HolProg 64 :=
.seq rawBody404_184 rawBody404_191

def rawBody404_193 : StackLang.HolProg 64 :=
.seq rawBody404_183 rawBody404_192

def rawBody404_194 : StackLang.HolProg 64 :=
.seq rawBody404_182 rawBody404_193

def rawBody404_195 : StackLang.HolProg 64 :=
.seq rawBody404_181 rawBody404_194

def rawBody404_196 : StackLang.HolProg 64 :=
.seq rawBody404_180 rawBody404_195

def rawBody404_197 : StackLang.HolProg 64 :=
.seq rawBody404_179 rawBody404_196

def rawBody404_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody404_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody404_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody404_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody404_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody404_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody404_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody404_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody404_206 : StackLang.HolProg 64 :=
.seq rawBody404_204 rawBody404_205

def rawBody404_207 : StackLang.HolProg 64 :=
.seq rawBody404_203 rawBody404_206

def rawBody404_208 : StackLang.HolProg 64 :=
.seq rawBody404_202 rawBody404_207

def rawBody404_209 : StackLang.HolProg 64 :=
.seq rawBody404_201 rawBody404_208

def rawBody404_210 : StackLang.HolProg 64 :=
.seq rawBody404_200 rawBody404_209

def rawBody404_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody404_212 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody404_213 : StackLang.HolProg 64 :=
.seq rawBody404_211 rawBody404_212

def rawBody404_214 : StackLang.HolProg 64 :=
.call (some (rawBody404_210, 0, 404, 8)) (Sum.inl 398) (some (rawBody404_213, 404, 9))

def rawBody404_215 : StackLang.HolProg 64 :=
.seq rawBody404_199 rawBody404_214

def rawBody404_216 : StackLang.HolProg 64 :=
.seq rawBody404_198 rawBody404_215

def rawBody404_217 : StackLang.HolProg 64 :=
.seq rawBody404_197 rawBody404_216

def rawBody404_218 : StackLang.HolProg 64 :=
.seq rawBody404_178 rawBody404_217

def rawBody404_219 : StackLang.HolProg 64 :=
.seq rawBody404_175 rawBody404_218

def rawBody404_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody404_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody404_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody404_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody404_224 : StackLang.HolProg 64 :=
.seq rawBody404_222 rawBody404_223

def rawBody404_225 : StackLang.HolProg 64 :=
.seq rawBody404_221 rawBody404_224

def rawBody404_226 : StackLang.HolProg 64 :=
.seq rawBody404_220 rawBody404_225

def rawBody404_227 : StackLang.HolProg 64 :=
.seq rawBody404_219 rawBody404_226

def rawBody404_228 : StackLang.HolProg 64 :=
.seq rawBody404_174 rawBody404_227

def rawBody404_229 : StackLang.HolProg 64 :=
.seq rawBody404_173 rawBody404_228

def rawBody404_230 : StackLang.HolProg 64 :=
.seq rawBody404_172 rawBody404_229

def rawBody404_231 : StackLang.HolProg 64 :=
.seq rawBody404_129 rawBody404_230

def rawBody404_232 : StackLang.HolProg 64 :=
.seq rawBody404_124 rawBody404_231

def rawBody404_233 : StackLang.HolProg 64 :=
.seq rawBody404_123 rawBody404_232

def rawBody404_234 : StackLang.HolProg 64 :=
.seq rawBody404_122 rawBody404_233

def rawBody404_235 : StackLang.HolProg 64 :=
.seq rawBody404_113 rawBody404_234

def rawBody404_236 : StackLang.HolProg 64 :=
.seq rawBody404_112 rawBody404_235

def rawBody404_237 : StackLang.HolProg 64 :=
.seq rawBody404_111 rawBody404_236

def rawBody404_238 : StackLang.HolProg 64 :=
.seq rawBody404_110 rawBody404_237

def rawBody404_239 : StackLang.HolProg 64 :=
.seq rawBody404_61 rawBody404_238

def rawBody404_240 : StackLang.HolProg 64 :=
.seq rawBody404_60 rawBody404_239

def rawBody404_241 : StackLang.HolProg 64 :=
.seq rawBody404_59 rawBody404_240

def rawBody404_242 : StackLang.HolProg 64 :=
.seq rawBody404_58 rawBody404_241

def rawBody404_243 : StackLang.HolProg 64 :=
.seq rawBody404_57 rawBody404_242

def rawBody404_244 : StackLang.HolProg 64 :=
.seq rawBody404_56 rawBody404_243

def rawBody404_245 : StackLang.HolProg 64 :=
.seq rawBody404_55 rawBody404_244

def rawBody404_246 : StackLang.HolProg 64 :=
.seq rawBody404_54 rawBody404_245

def rawBody404_247 : StackLang.HolProg 64 :=
.seq rawBody404_11 rawBody404_246

def rawBody404_248 : StackLang.HolProg 64 :=
.seq rawBody404_8 rawBody404_247

def rawBody404_249 : StackLang.HolProg 64 :=
.seq rawBody404_7 rawBody404_248

def rawBody404_250 : StackLang.HolProg 64 :=
.seq rawBody404_6 rawBody404_249

def rawBody404_251 : StackLang.HolProg 64 :=
.seq rawBody404_5 rawBody404_250

def rawBody404_252 : StackLang.HolProg 64 :=
.seq rawBody404_4 rawBody404_251

def rawBody404_253 : StackLang.HolProg 64 :=
.seq rawBody404_3 rawBody404_252

def rawBody404_254 : StackLang.HolProg 64 :=
.seq rawBody404_2 rawBody404_253

def rawBody404_255 : StackLang.HolProg 64 :=
.seq rawBody404_1 rawBody404_254

def rawBody404_256 : StackLang.HolProg 64 :=
.seq rawBody404_0 rawBody404_255

def raw404 : StackLang.HolProg 64 := rawBody404_256
theorem raw404_eq : StackRawCall.compTop RawInfo.rawInfo (function404 (.list [])).1 = raw404 := by
  kernel_rfl
#print axioms raw404_eq
end InitECandidate.Proofs.BackendStages
