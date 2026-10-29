import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw420
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody420_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 9

def AllocBody420_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 8

def AllocBody420_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def AllocBody420_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def AllocBody420_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 4

def AllocBody420_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 7

def AllocBody420_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def AllocBody420_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody420_8 : StackLang.HolProg 64 :=
.seq AllocBody420_6 AllocBody420_7

def AllocBody420_9 : StackLang.HolProg 64 :=
.seq AllocBody420_5 AllocBody420_8

def AllocBody420_10 : StackLang.HolProg 64 :=
.seq AllocBody420_4 AllocBody420_9

def AllocBody420_11 : StackLang.HolProg 64 :=
.seq AllocBody420_3 AllocBody420_10

def AllocBody420_12 : StackLang.HolProg 64 :=
.seq AllocBody420_2 AllocBody420_11

def AllocBody420_13 : StackLang.HolProg 64 :=
.seq AllocBody420_1 AllocBody420_12

def AllocBody420_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1248#64)

def AllocBody420_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody420_17 : StackLang.HolProg 64 :=
.seq AllocBody420_15 AllocBody420_16

def AllocBody420_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody420_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody420_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody420_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 420 3

def AllocBody420_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody420_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody420_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody420_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody420_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody420_28 : StackLang.HolProg 64 :=
.seq AllocBody420_26 AllocBody420_27

def AllocBody420_29 : StackLang.HolProg 64 :=
.seq AllocBody420_25 AllocBody420_28

def AllocBody420_30 : StackLang.HolProg 64 :=
.seq AllocBody420_24 AllocBody420_29

def AllocBody420_31 : StackLang.HolProg 64 :=
.seq AllocBody420_23 AllocBody420_30

def AllocBody420_32 : StackLang.HolProg 64 :=
.seq AllocBody420_22 AllocBody420_31

def AllocBody420_33 : StackLang.HolProg 64 :=
.seq AllocBody420_21 AllocBody420_32

def AllocBody420_34 : StackLang.HolProg 64 :=
.seq AllocBody420_20 AllocBody420_33

def AllocBody420_35 : StackLang.HolProg 64 :=
.seq AllocBody420_19 AllocBody420_34

def AllocBody420_36 : StackLang.HolProg 64 :=
.seq AllocBody420_18 AllocBody420_35

def AllocBody420_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody420_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody420_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody420_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody420_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody420_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def AllocBody420_45 : StackLang.HolProg 64 :=
.seq AllocBody420_43 AllocBody420_44

def AllocBody420_46 : StackLang.HolProg 64 :=
.seq AllocBody420_42 AllocBody420_45

def AllocBody420_47 : StackLang.HolProg 64 :=
.seq AllocBody420_41 AllocBody420_46

def AllocBody420_48 : StackLang.HolProg 64 :=
.seq AllocBody420_40 AllocBody420_47

def AllocBody420_49 : StackLang.HolProg 64 :=
.seq AllocBody420_39 AllocBody420_48

def AllocBody420_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def AllocBody420_51 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody420_52 : StackLang.HolProg 64 :=
.seq AllocBody420_50 AllocBody420_51

def AllocBody420_53 : StackLang.HolProg 64 :=
.call (some (AllocBody420_49, 0, 420, 2)) (Sum.inl 406) (some (AllocBody420_52, 420, 3))

def AllocBody420_54 : StackLang.HolProg 64 :=
.seq AllocBody420_38 AllocBody420_53

def AllocBody420_55 : StackLang.HolProg 64 :=
.seq AllocBody420_37 AllocBody420_54

def AllocBody420_56 : StackLang.HolProg 64 :=
.seq AllocBody420_36 AllocBody420_55

def AllocBody420_57 : StackLang.HolProg 64 :=
.seq AllocBody420_17 AllocBody420_56

def AllocBody420_58 : StackLang.HolProg 64 :=
.seq AllocBody420_14 AllocBody420_57

def AllocBody420_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody420_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody420_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody420_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 3#64)

def AllocBody420_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody420_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 7#64)

def AllocBody420_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_68 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody420_69 : StackLang.HolProg 64 :=
.seq AllocBody420_67 AllocBody420_68

def AllocBody420_70 : StackLang.HolProg 64 :=
.seq AllocBody420_66 AllocBody420_69

def AllocBody420_71 : StackLang.HolProg 64 :=
.seq AllocBody420_65 AllocBody420_70

def AllocBody420_72 : StackLang.HolProg 64 :=
.seq AllocBody420_64 AllocBody420_71

def AllocBody420_73 : StackLang.HolProg 64 :=
.seq AllocBody420_63 AllocBody420_72

def AllocBody420_74 : StackLang.HolProg 64 :=
.seq AllocBody420_62 AllocBody420_73

def AllocBody420_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody420_74 AllocBody420_75

def AllocBody420_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody420_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody420_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody420_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody420_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody420_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551432#64))

def AllocBody420_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def AllocBody420_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 7

def AllocBody420_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody420_86 : StackLang.HolProg 64 :=
.seq AllocBody420_84 AllocBody420_85

def AllocBody420_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1249#64)

def AllocBody420_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody420_90 : StackLang.HolProg 64 :=
.seq AllocBody420_88 AllocBody420_89

def AllocBody420_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody420_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody420_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody420_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 420 5

def AllocBody420_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody420_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody420_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody420_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody420_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody420_101 : StackLang.HolProg 64 :=
.seq AllocBody420_99 AllocBody420_100

def AllocBody420_102 : StackLang.HolProg 64 :=
.seq AllocBody420_98 AllocBody420_101

def AllocBody420_103 : StackLang.HolProg 64 :=
.seq AllocBody420_97 AllocBody420_102

def AllocBody420_104 : StackLang.HolProg 64 :=
.seq AllocBody420_96 AllocBody420_103

def AllocBody420_105 : StackLang.HolProg 64 :=
.seq AllocBody420_95 AllocBody420_104

def AllocBody420_106 : StackLang.HolProg 64 :=
.seq AllocBody420_94 AllocBody420_105

def AllocBody420_107 : StackLang.HolProg 64 :=
.seq AllocBody420_93 AllocBody420_106

def AllocBody420_108 : StackLang.HolProg 64 :=
.seq AllocBody420_92 AllocBody420_107

def AllocBody420_109 : StackLang.HolProg 64 :=
.seq AllocBody420_91 AllocBody420_108

def AllocBody420_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody420_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody420_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody420_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody420_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody420_117 : StackLang.HolProg 64 :=
.seq AllocBody420_115 AllocBody420_116

def AllocBody420_118 : StackLang.HolProg 64 :=
.seq AllocBody420_114 AllocBody420_117

def AllocBody420_119 : StackLang.HolProg 64 :=
.seq AllocBody420_113 AllocBody420_118

def AllocBody420_120 : StackLang.HolProg 64 :=
.seq AllocBody420_112 AllocBody420_119

def AllocBody420_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_122 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody420_123 : StackLang.HolProg 64 :=
.seq AllocBody420_121 AllocBody420_122

def AllocBody420_124 : StackLang.HolProg 64 :=
.call (some (AllocBody420_120, 0, 420, 4)) (Sum.inl 186) (some (AllocBody420_123, 420, 5))

def AllocBody420_125 : StackLang.HolProg 64 :=
.seq AllocBody420_111 AllocBody420_124

def AllocBody420_126 : StackLang.HolProg 64 :=
.seq AllocBody420_110 AllocBody420_125

def AllocBody420_127 : StackLang.HolProg 64 :=
.seq AllocBody420_109 AllocBody420_126

def AllocBody420_128 : StackLang.HolProg 64 :=
.seq AllocBody420_90 AllocBody420_127

def AllocBody420_129 : StackLang.HolProg 64 :=
.seq AllocBody420_87 AllocBody420_128

def AllocBody420_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody420_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody420_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody420_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 8#64)

def AllocBody420_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def AllocBody420_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1250#64)

def AllocBody420_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody420_140 : StackLang.HolProg 64 :=
.seq AllocBody420_138 AllocBody420_139

def AllocBody420_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody420_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody420_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody420_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 420 7

def AllocBody420_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody420_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody420_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody420_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody420_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody420_151 : StackLang.HolProg 64 :=
.seq AllocBody420_149 AllocBody420_150

def AllocBody420_152 : StackLang.HolProg 64 :=
.seq AllocBody420_148 AllocBody420_151

def AllocBody420_153 : StackLang.HolProg 64 :=
.seq AllocBody420_147 AllocBody420_152

def AllocBody420_154 : StackLang.HolProg 64 :=
.seq AllocBody420_146 AllocBody420_153

def AllocBody420_155 : StackLang.HolProg 64 :=
.seq AllocBody420_145 AllocBody420_154

def AllocBody420_156 : StackLang.HolProg 64 :=
.seq AllocBody420_144 AllocBody420_155

def AllocBody420_157 : StackLang.HolProg 64 :=
.seq AllocBody420_143 AllocBody420_156

def AllocBody420_158 : StackLang.HolProg 64 :=
.seq AllocBody420_142 AllocBody420_157

def AllocBody420_159 : StackLang.HolProg 64 :=
.seq AllocBody420_141 AllocBody420_158

def AllocBody420_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody420_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody420_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody420_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody420_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody420_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody420_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody420_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody420_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody420_171 : StackLang.HolProg 64 :=
.seq AllocBody420_169 AllocBody420_170

def AllocBody420_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody420_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody420_174 : StackLang.HolProg 64 :=
.seq AllocBody420_172 AllocBody420_173

def AllocBody420_175 : StackLang.HolProg 64 :=
.seq AllocBody420_171 AllocBody420_174

def AllocBody420_176 : StackLang.HolProg 64 :=
.seq AllocBody420_168 AllocBody420_175

def AllocBody420_177 : StackLang.HolProg 64 :=
.seq AllocBody420_167 AllocBody420_176

def AllocBody420_178 : StackLang.HolProg 64 :=
.seq AllocBody420_166 AllocBody420_177

def AllocBody420_179 : StackLang.HolProg 64 :=
.seq AllocBody420_165 AllocBody420_178

def AllocBody420_180 : StackLang.HolProg 64 :=
.seq AllocBody420_164 AllocBody420_179

def AllocBody420_181 : StackLang.HolProg 64 :=
.seq AllocBody420_163 AllocBody420_180

def AllocBody420_182 : StackLang.HolProg 64 :=
.seq AllocBody420_162 AllocBody420_181

def AllocBody420_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody420_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody420_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody420_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody420_187 : StackLang.HolProg 64 :=
.seq AllocBody420_185 AllocBody420_186

def AllocBody420_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody420_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody420_190 : StackLang.HolProg 64 :=
.seq AllocBody420_188 AllocBody420_189

def AllocBody420_191 : StackLang.HolProg 64 :=
.seq AllocBody420_187 AllocBody420_190

def AllocBody420_192 : StackLang.HolProg 64 :=
.seq AllocBody420_184 AllocBody420_191

def AllocBody420_193 : StackLang.HolProg 64 :=
.seq AllocBody420_183 AllocBody420_192

def AllocBody420_194 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody420_195 : StackLang.HolProg 64 :=
.seq AllocBody420_193 AllocBody420_194

def AllocBody420_196 : StackLang.HolProg 64 :=
.call (some (AllocBody420_182, 0, 420, 6)) (Sum.inl 182) (some (AllocBody420_195, 420, 7))

def AllocBody420_197 : StackLang.HolProg 64 :=
.seq AllocBody420_161 AllocBody420_196

def AllocBody420_198 : StackLang.HolProg 64 :=
.seq AllocBody420_160 AllocBody420_197

def AllocBody420_199 : StackLang.HolProg 64 :=
.seq AllocBody420_159 AllocBody420_198

def AllocBody420_200 : StackLang.HolProg 64 :=
.seq AllocBody420_140 AllocBody420_199

def AllocBody420_201 : StackLang.HolProg 64 :=
.seq AllocBody420_137 AllocBody420_200

def AllocBody420_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody420_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody420_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 7

def AllocBody420_205 : StackLang.HolProg 64 :=
.seq AllocBody420_203 AllocBody420_204

def AllocBody420_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1251#64)

def AllocBody420_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody420_209 : StackLang.HolProg 64 :=
.seq AllocBody420_207 AllocBody420_208

def AllocBody420_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody420_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody420_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody420_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 420 9

def AllocBody420_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody420_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody420_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody420_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody420_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody420_220 : StackLang.HolProg 64 :=
.seq AllocBody420_218 AllocBody420_219

def AllocBody420_221 : StackLang.HolProg 64 :=
.seq AllocBody420_217 AllocBody420_220

def AllocBody420_222 : StackLang.HolProg 64 :=
.seq AllocBody420_216 AllocBody420_221

def AllocBody420_223 : StackLang.HolProg 64 :=
.seq AllocBody420_215 AllocBody420_222

def AllocBody420_224 : StackLang.HolProg 64 :=
.seq AllocBody420_214 AllocBody420_223

def AllocBody420_225 : StackLang.HolProg 64 :=
.seq AllocBody420_213 AllocBody420_224

def AllocBody420_226 : StackLang.HolProg 64 :=
.seq AllocBody420_212 AllocBody420_225

def AllocBody420_227 : StackLang.HolProg 64 :=
.seq AllocBody420_211 AllocBody420_226

def AllocBody420_228 : StackLang.HolProg 64 :=
.seq AllocBody420_210 AllocBody420_227

def AllocBody420_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody420_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody420_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody420_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody420_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_236 : StackLang.HolProg 64 :=
.seq AllocBody420_234 AllocBody420_235

def AllocBody420_237 : StackLang.HolProg 64 :=
.seq AllocBody420_233 AllocBody420_236

def AllocBody420_238 : StackLang.HolProg 64 :=
.seq AllocBody420_232 AllocBody420_237

def AllocBody420_239 : StackLang.HolProg 64 :=
.seq AllocBody420_231 AllocBody420_238

def AllocBody420_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_241 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody420_242 : StackLang.HolProg 64 :=
.seq AllocBody420_240 AllocBody420_241

def AllocBody420_243 : StackLang.HolProg 64 :=
.call (some (AllocBody420_239, 0, 420, 8)) (Sum.inl 388) (some (AllocBody420_242, 420, 9))

def AllocBody420_244 : StackLang.HolProg 64 :=
.seq AllocBody420_230 AllocBody420_243

def AllocBody420_245 : StackLang.HolProg 64 :=
.seq AllocBody420_229 AllocBody420_244

def AllocBody420_246 : StackLang.HolProg 64 :=
.seq AllocBody420_228 AllocBody420_245

def AllocBody420_247 : StackLang.HolProg 64 :=
.seq AllocBody420_209 AllocBody420_246

def AllocBody420_248 : StackLang.HolProg 64 :=
.seq AllocBody420_206 AllocBody420_247

def AllocBody420_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody420_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_251 : StackLang.HolProg 64 :=
.seq AllocBody420_249 AllocBody420_250

def AllocBody420_252 : StackLang.HolProg 64 :=
.seq AllocBody420_248 AllocBody420_251

def AllocBody420_253 : StackLang.HolProg 64 :=
.seq AllocBody420_205 AllocBody420_252

def AllocBody420_254 : StackLang.HolProg 64 :=
.seq AllocBody420_202 AllocBody420_253

def AllocBody420_255 : StackLang.HolProg 64 :=
.seq AllocBody420_201 AllocBody420_254

def AllocBody420_256 : StackLang.HolProg 64 :=
.seq AllocBody420_136 AllocBody420_255

def AllocBody420_257 : StackLang.HolProg 64 :=
.seq AllocBody420_135 AllocBody420_256

def AllocBody420_258 : StackLang.HolProg 64 :=
.seq AllocBody420_134 AllocBody420_257

def AllocBody420_259 : StackLang.HolProg 64 :=
.seq AllocBody420_133 AllocBody420_258

def AllocBody420_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody420_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def AllocBody420_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody420_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody420_264 : StackLang.HolProg 64 :=
.seq AllocBody420_262 AllocBody420_263

def AllocBody420_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody420_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody420_267 : StackLang.HolProg 64 :=
.seq AllocBody420_265 AllocBody420_266

def AllocBody420_268 : StackLang.HolProg 64 :=
.seq AllocBody420_264 AllocBody420_267

def AllocBody420_269 : StackLang.HolProg 64 :=
.seq AllocBody420_261 AllocBody420_268

def AllocBody420_270 : StackLang.HolProg 64 :=
.seq AllocBody420_260 AllocBody420_269

def AllocBody420_271 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody420_259 AllocBody420_270

def AllocBody420_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody420_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def AllocBody420_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1252#64)

def AllocBody420_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody420_278 : StackLang.HolProg 64 :=
.seq AllocBody420_276 AllocBody420_277

def AllocBody420_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody420_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody420_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody420_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 420 11

def AllocBody420_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody420_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody420_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody420_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody420_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody420_289 : StackLang.HolProg 64 :=
.seq AllocBody420_287 AllocBody420_288

def AllocBody420_290 : StackLang.HolProg 64 :=
.seq AllocBody420_286 AllocBody420_289

def AllocBody420_291 : StackLang.HolProg 64 :=
.seq AllocBody420_285 AllocBody420_290

def AllocBody420_292 : StackLang.HolProg 64 :=
.seq AllocBody420_284 AllocBody420_291

def AllocBody420_293 : StackLang.HolProg 64 :=
.seq AllocBody420_283 AllocBody420_292

def AllocBody420_294 : StackLang.HolProg 64 :=
.seq AllocBody420_282 AllocBody420_293

def AllocBody420_295 : StackLang.HolProg 64 :=
.seq AllocBody420_281 AllocBody420_294

def AllocBody420_296 : StackLang.HolProg 64 :=
.seq AllocBody420_280 AllocBody420_295

def AllocBody420_297 : StackLang.HolProg 64 :=
.seq AllocBody420_279 AllocBody420_296

def AllocBody420_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody420_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody420_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody420_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody420_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody420_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 7

def AllocBody420_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def AllocBody420_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody420_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody420_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody420_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody420_311 : StackLang.HolProg 64 :=
.seq AllocBody420_309 AllocBody420_310

def AllocBody420_312 : StackLang.HolProg 64 :=
.seq AllocBody420_308 AllocBody420_311

def AllocBody420_313 : StackLang.HolProg 64 :=
.seq AllocBody420_307 AllocBody420_312

def AllocBody420_314 : StackLang.HolProg 64 :=
.seq AllocBody420_306 AllocBody420_313

def AllocBody420_315 : StackLang.HolProg 64 :=
.seq AllocBody420_305 AllocBody420_314

def AllocBody420_316 : StackLang.HolProg 64 :=
.seq AllocBody420_304 AllocBody420_315

def AllocBody420_317 : StackLang.HolProg 64 :=
.seq AllocBody420_303 AllocBody420_316

def AllocBody420_318 : StackLang.HolProg 64 :=
.seq AllocBody420_302 AllocBody420_317

def AllocBody420_319 : StackLang.HolProg 64 :=
.seq AllocBody420_301 AllocBody420_318

def AllocBody420_320 : StackLang.HolProg 64 :=
.seq AllocBody420_300 AllocBody420_319

def AllocBody420_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 7

def AllocBody420_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def AllocBody420_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody420_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody420_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody420_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody420_327 : StackLang.HolProg 64 :=
.seq AllocBody420_325 AllocBody420_326

def AllocBody420_328 : StackLang.HolProg 64 :=
.seq AllocBody420_324 AllocBody420_327

def AllocBody420_329 : StackLang.HolProg 64 :=
.seq AllocBody420_323 AllocBody420_328

def AllocBody420_330 : StackLang.HolProg 64 :=
.seq AllocBody420_322 AllocBody420_329

def AllocBody420_331 : StackLang.HolProg 64 :=
.seq AllocBody420_321 AllocBody420_330

def AllocBody420_332 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody420_333 : StackLang.HolProg 64 :=
.seq AllocBody420_331 AllocBody420_332

def AllocBody420_334 : StackLang.HolProg 64 :=
.call (some (AllocBody420_320, 0, 420, 10)) (Sum.inl 68) (some (AllocBody420_333, 420, 11))

def AllocBody420_335 : StackLang.HolProg 64 :=
.seq AllocBody420_299 AllocBody420_334

def AllocBody420_336 : StackLang.HolProg 64 :=
.seq AllocBody420_298 AllocBody420_335

def AllocBody420_337 : StackLang.HolProg 64 :=
.seq AllocBody420_297 AllocBody420_336

def AllocBody420_338 : StackLang.HolProg 64 :=
.seq AllocBody420_278 AllocBody420_337

def AllocBody420_339 : StackLang.HolProg 64 :=
.seq AllocBody420_275 AllocBody420_338

def AllocBody420_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody420_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody420_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 8#64))

def AllocBody420_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 16#64))

def AllocBody420_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 24#64))

def AllocBody420_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody420_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1253#64)

def AllocBody420_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody420_353 : StackLang.HolProg 64 :=
.seq AllocBody420_351 AllocBody420_352

def AllocBody420_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody420_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody420_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody420_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 420 13

def AllocBody420_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody420_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody420_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody420_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody420_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody420_364 : StackLang.HolProg 64 :=
.seq AllocBody420_362 AllocBody420_363

def AllocBody420_365 : StackLang.HolProg 64 :=
.seq AllocBody420_361 AllocBody420_364

def AllocBody420_366 : StackLang.HolProg 64 :=
.seq AllocBody420_360 AllocBody420_365

def AllocBody420_367 : StackLang.HolProg 64 :=
.seq AllocBody420_359 AllocBody420_366

def AllocBody420_368 : StackLang.HolProg 64 :=
.seq AllocBody420_358 AllocBody420_367

def AllocBody420_369 : StackLang.HolProg 64 :=
.seq AllocBody420_357 AllocBody420_368

def AllocBody420_370 : StackLang.HolProg 64 :=
.seq AllocBody420_356 AllocBody420_369

def AllocBody420_371 : StackLang.HolProg 64 :=
.seq AllocBody420_355 AllocBody420_370

def AllocBody420_372 : StackLang.HolProg 64 :=
.seq AllocBody420_354 AllocBody420_371

def AllocBody420_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody420_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody420_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody420_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody420_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody420_380 : StackLang.HolProg 64 :=
.seq AllocBody420_378 AllocBody420_379

def AllocBody420_381 : StackLang.HolProg 64 :=
.seq AllocBody420_377 AllocBody420_380

def AllocBody420_382 : StackLang.HolProg 64 :=
.seq AllocBody420_376 AllocBody420_381

def AllocBody420_383 : StackLang.HolProg 64 :=
.seq AllocBody420_375 AllocBody420_382

def AllocBody420_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody420_385 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody420_386 : StackLang.HolProg 64 :=
.seq AllocBody420_384 AllocBody420_385

def AllocBody420_387 : StackLang.HolProg 64 :=
.call (some (AllocBody420_383, 0, 420, 12)) (Sum.inl 388) (some (AllocBody420_386, 420, 13))

def AllocBody420_388 : StackLang.HolProg 64 :=
.seq AllocBody420_374 AllocBody420_387

def AllocBody420_389 : StackLang.HolProg 64 :=
.seq AllocBody420_373 AllocBody420_388

def AllocBody420_390 : StackLang.HolProg 64 :=
.seq AllocBody420_372 AllocBody420_389

def AllocBody420_391 : StackLang.HolProg 64 :=
.seq AllocBody420_353 AllocBody420_390

def AllocBody420_392 : StackLang.HolProg 64 :=
.seq AllocBody420_350 AllocBody420_391

def AllocBody420_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody420_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody420_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody420_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 9

def AllocBody420_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody420_398 : StackLang.HolProg 64 :=
.seq AllocBody420_396 AllocBody420_397

def AllocBody420_399 : StackLang.HolProg 64 :=
.seq AllocBody420_395 AllocBody420_398

def AllocBody420_400 : StackLang.HolProg 64 :=
.seq AllocBody420_394 AllocBody420_399

def AllocBody420_401 : StackLang.HolProg 64 :=
.seq AllocBody420_393 AllocBody420_400

def AllocBody420_402 : StackLang.HolProg 64 :=
.seq AllocBody420_392 AllocBody420_401

def AllocBody420_403 : StackLang.HolProg 64 :=
.seq AllocBody420_349 AllocBody420_402

def AllocBody420_404 : StackLang.HolProg 64 :=
.seq AllocBody420_348 AllocBody420_403

def AllocBody420_405 : StackLang.HolProg 64 :=
.seq AllocBody420_347 AllocBody420_404

def AllocBody420_406 : StackLang.HolProg 64 :=
.seq AllocBody420_346 AllocBody420_405

def AllocBody420_407 : StackLang.HolProg 64 :=
.seq AllocBody420_345 AllocBody420_406

def AllocBody420_408 : StackLang.HolProg 64 :=
.seq AllocBody420_344 AllocBody420_407

def AllocBody420_409 : StackLang.HolProg 64 :=
.seq AllocBody420_343 AllocBody420_408

def AllocBody420_410 : StackLang.HolProg 64 :=
.seq AllocBody420_342 AllocBody420_409

def AllocBody420_411 : StackLang.HolProg 64 :=
.seq AllocBody420_341 AllocBody420_410

def AllocBody420_412 : StackLang.HolProg 64 :=
.seq AllocBody420_340 AllocBody420_411

def AllocBody420_413 : StackLang.HolProg 64 :=
.seq AllocBody420_339 AllocBody420_412

def AllocBody420_414 : StackLang.HolProg 64 :=
.seq AllocBody420_274 AllocBody420_413

def AllocBody420_415 : StackLang.HolProg 64 :=
.seq AllocBody420_273 AllocBody420_414

def AllocBody420_416 : StackLang.HolProg 64 :=
.seq AllocBody420_272 AllocBody420_415

def AllocBody420_417 : StackLang.HolProg 64 :=
.seq AllocBody420_271 AllocBody420_416

def AllocBody420_418 : StackLang.HolProg 64 :=
.seq AllocBody420_132 AllocBody420_417

def AllocBody420_419 : StackLang.HolProg 64 :=
.seq AllocBody420_131 AllocBody420_418

def AllocBody420_420 : StackLang.HolProg 64 :=
.seq AllocBody420_130 AllocBody420_419

def AllocBody420_421 : StackLang.HolProg 64 :=
.seq AllocBody420_129 AllocBody420_420

def AllocBody420_422 : StackLang.HolProg 64 :=
.seq AllocBody420_86 AllocBody420_421

def AllocBody420_423 : StackLang.HolProg 64 :=
.seq AllocBody420_83 AllocBody420_422

def AllocBody420_424 : StackLang.HolProg 64 :=
.seq AllocBody420_82 AllocBody420_423

def AllocBody420_425 : StackLang.HolProg 64 :=
.seq AllocBody420_81 AllocBody420_424

def AllocBody420_426 : StackLang.HolProg 64 :=
.seq AllocBody420_80 AllocBody420_425

def AllocBody420_427 : StackLang.HolProg 64 :=
.seq AllocBody420_79 AllocBody420_426

def AllocBody420_428 : StackLang.HolProg 64 :=
.seq AllocBody420_78 AllocBody420_427

def AllocBody420_429 : StackLang.HolProg 64 :=
.seq AllocBody420_77 AllocBody420_428

def AllocBody420_430 : StackLang.HolProg 64 :=
.seq AllocBody420_76 AllocBody420_429

def AllocBody420_431 : StackLang.HolProg 64 :=
.seq AllocBody420_61 AllocBody420_430

def AllocBody420_432 : StackLang.HolProg 64 :=
.seq AllocBody420_60 AllocBody420_431

def AllocBody420_433 : StackLang.HolProg 64 :=
.seq AllocBody420_59 AllocBody420_432

def AllocBody420_434 : StackLang.HolProg 64 :=
.seq AllocBody420_58 AllocBody420_433

def AllocBody420_435 : StackLang.HolProg 64 :=
.seq AllocBody420_13 AllocBody420_434

def AllocBody420_436 : StackLang.HolProg 64 :=
.seq AllocBody420_0 AllocBody420_435

def Alloc420 : Nat × StackLang.HolProg 64 := (420, AllocBody420_436)
theorem Alloc420_eq : StackAlloc.progComp (420, raw420) = Alloc420 := by
  kernel_rfl
#print axioms Alloc420_eq
end InitECandidate.Proofs.BackendStages
