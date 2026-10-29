import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function310
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody310_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody310_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody310_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody310_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody310_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody310_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody310_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody310_7 : StackLang.HolProg 64 :=
.seq rawBody310_5 rawBody310_6

def rawBody310_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 3 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody310_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody310_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 3 3

def rawBody310_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 18446744073709551464#64))

def rawBody310_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody310_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody310_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 851#64)

def rawBody310_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody310_16 : StackLang.HolProg 64 :=
.seq rawBody310_14 rawBody310_15

def rawBody310_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody310_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody310_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody310_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 310 3

def rawBody310_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody310_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody310_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody310_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody310_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody310_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody310_27 : StackLang.HolProg 64 :=
.seq rawBody310_25 rawBody310_26

def rawBody310_28 : StackLang.HolProg 64 :=
.seq rawBody310_24 rawBody310_27

def rawBody310_29 : StackLang.HolProg 64 :=
.seq rawBody310_23 rawBody310_28

def rawBody310_30 : StackLang.HolProg 64 :=
.seq rawBody310_22 rawBody310_29

def rawBody310_31 : StackLang.HolProg 64 :=
.seq rawBody310_21 rawBody310_30

def rawBody310_32 : StackLang.HolProg 64 :=
.seq rawBody310_20 rawBody310_31

def rawBody310_33 : StackLang.HolProg 64 :=
.seq rawBody310_19 rawBody310_32

def rawBody310_34 : StackLang.HolProg 64 :=
.seq rawBody310_18 rawBody310_33

def rawBody310_35 : StackLang.HolProg 64 :=
.seq rawBody310_17 rawBody310_34

def rawBody310_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody310_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody310_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody310_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody310_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody310_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody310_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody310_43 : StackLang.HolProg 64 :=
.seq rawBody310_41 rawBody310_42

def rawBody310_44 : StackLang.HolProg 64 :=
.seq rawBody310_40 rawBody310_43

def rawBody310_45 : StackLang.HolProg 64 :=
.seq rawBody310_39 rawBody310_44

def rawBody310_46 : StackLang.HolProg 64 :=
.seq rawBody310_38 rawBody310_45

def rawBody310_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody310_48 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody310_49 : StackLang.HolProg 64 :=
.seq rawBody310_47 rawBody310_48

def rawBody310_50 : StackLang.HolProg 64 :=
.call (some (rawBody310_46, 0, 310, 2)) (Sum.inl 158) (some (rawBody310_49, 310, 3))

def rawBody310_51 : StackLang.HolProg 64 :=
.seq rawBody310_37 rawBody310_50

def rawBody310_52 : StackLang.HolProg 64 :=
.seq rawBody310_36 rawBody310_51

def rawBody310_53 : StackLang.HolProg 64 :=
.seq rawBody310_35 rawBody310_52

def rawBody310_54 : StackLang.HolProg 64 :=
.seq rawBody310_16 rawBody310_53

def rawBody310_55 : StackLang.HolProg 64 :=
.seq rawBody310_13 rawBody310_54

def rawBody310_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody310_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def rawBody310_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody310_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody310_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 852#64)

def rawBody310_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody310_62 : StackLang.HolProg 64 :=
.seq rawBody310_60 rawBody310_61

def rawBody310_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody310_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody310_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody310_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 310 5

def rawBody310_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody310_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody310_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody310_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody310_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody310_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody310_73 : StackLang.HolProg 64 :=
.seq rawBody310_71 rawBody310_72

def rawBody310_74 : StackLang.HolProg 64 :=
.seq rawBody310_70 rawBody310_73

def rawBody310_75 : StackLang.HolProg 64 :=
.seq rawBody310_69 rawBody310_74

def rawBody310_76 : StackLang.HolProg 64 :=
.seq rawBody310_68 rawBody310_75

def rawBody310_77 : StackLang.HolProg 64 :=
.seq rawBody310_67 rawBody310_76

def rawBody310_78 : StackLang.HolProg 64 :=
.seq rawBody310_66 rawBody310_77

def rawBody310_79 : StackLang.HolProg 64 :=
.seq rawBody310_65 rawBody310_78

def rawBody310_80 : StackLang.HolProg 64 :=
.seq rawBody310_64 rawBody310_79

def rawBody310_81 : StackLang.HolProg 64 :=
.seq rawBody310_63 rawBody310_80

def rawBody310_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody310_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody310_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody310_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody310_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody310_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody310_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody310_89 : StackLang.HolProg 64 :=
.seq rawBody310_87 rawBody310_88

def rawBody310_90 : StackLang.HolProg 64 :=
.seq rawBody310_86 rawBody310_89

def rawBody310_91 : StackLang.HolProg 64 :=
.seq rawBody310_85 rawBody310_90

def rawBody310_92 : StackLang.HolProg 64 :=
.seq rawBody310_84 rawBody310_91

def rawBody310_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody310_94 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody310_95 : StackLang.HolProg 64 :=
.seq rawBody310_93 rawBody310_94

def rawBody310_96 : StackLang.HolProg 64 :=
.call (some (rawBody310_92, 0, 310, 4)) (Sum.inl 68) (some (rawBody310_95, 310, 5))

def rawBody310_97 : StackLang.HolProg 64 :=
.seq rawBody310_83 rawBody310_96

def rawBody310_98 : StackLang.HolProg 64 :=
.seq rawBody310_82 rawBody310_97

def rawBody310_99 : StackLang.HolProg 64 :=
.seq rawBody310_81 rawBody310_98

def rawBody310_100 : StackLang.HolProg 64 :=
.seq rawBody310_62 rawBody310_99

def rawBody310_101 : StackLang.HolProg 64 :=
.seq rawBody310_59 rawBody310_100

def rawBody310_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody310_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody310_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody310_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody310_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551464#64))

def rawBody310_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody310_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def rawBody310_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody310_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody310_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 853#64)

def rawBody310_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody310_113 : StackLang.HolProg 64 :=
.seq rawBody310_111 rawBody310_112

def rawBody310_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody310_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody310_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody310_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 310 7

def rawBody310_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody310_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody310_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody310_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody310_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody310_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody310_124 : StackLang.HolProg 64 :=
.seq rawBody310_122 rawBody310_123

def rawBody310_125 : StackLang.HolProg 64 :=
.seq rawBody310_121 rawBody310_124

def rawBody310_126 : StackLang.HolProg 64 :=
.seq rawBody310_120 rawBody310_125

def rawBody310_127 : StackLang.HolProg 64 :=
.seq rawBody310_119 rawBody310_126

def rawBody310_128 : StackLang.HolProg 64 :=
.seq rawBody310_118 rawBody310_127

def rawBody310_129 : StackLang.HolProg 64 :=
.seq rawBody310_117 rawBody310_128

def rawBody310_130 : StackLang.HolProg 64 :=
.seq rawBody310_116 rawBody310_129

def rawBody310_131 : StackLang.HolProg 64 :=
.seq rawBody310_115 rawBody310_130

def rawBody310_132 : StackLang.HolProg 64 :=
.seq rawBody310_114 rawBody310_131

def rawBody310_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody310_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody310_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody310_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody310_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody310_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody310_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody310_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody310_141 : StackLang.HolProg 64 :=
.seq rawBody310_139 rawBody310_140

def rawBody310_142 : StackLang.HolProg 64 :=
.seq rawBody310_138 rawBody310_141

def rawBody310_143 : StackLang.HolProg 64 :=
.seq rawBody310_137 rawBody310_142

def rawBody310_144 : StackLang.HolProg 64 :=
.seq rawBody310_136 rawBody310_143

def rawBody310_145 : StackLang.HolProg 64 :=
.seq rawBody310_135 rawBody310_144

def rawBody310_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody310_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody310_148 : StackLang.HolProg 64 :=
.seq rawBody310_146 rawBody310_147

def rawBody310_149 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody310_150 : StackLang.HolProg 64 :=
.seq rawBody310_148 rawBody310_149

def rawBody310_151 : StackLang.HolProg 64 :=
.call (some (rawBody310_145, 0, 310, 6)) (Sum.inl 288) (some (rawBody310_150, 310, 7))

def rawBody310_152 : StackLang.HolProg 64 :=
.seq rawBody310_134 rawBody310_151

def rawBody310_153 : StackLang.HolProg 64 :=
.seq rawBody310_133 rawBody310_152

def rawBody310_154 : StackLang.HolProg 64 :=
.seq rawBody310_132 rawBody310_153

def rawBody310_155 : StackLang.HolProg 64 :=
.seq rawBody310_113 rawBody310_154

def rawBody310_156 : StackLang.HolProg 64 :=
.seq rawBody310_110 rawBody310_155

def rawBody310_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody310_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody310_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 64#64)

def rawBody310_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody310_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody310_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody310_163 : StackLang.HolProg 64 :=
.seq rawBody310_161 rawBody310_162

def rawBody310_164 : StackLang.HolProg 64 :=
.seq rawBody310_160 rawBody310_163

def rawBody310_165 : StackLang.HolProg 64 :=
.seq rawBody310_159 rawBody310_164

def rawBody310_166 : StackLang.HolProg 64 :=
.seq rawBody310_158 rawBody310_165

def rawBody310_167 : StackLang.HolProg 64 :=
.seq rawBody310_157 rawBody310_166

def rawBody310_168 : StackLang.HolProg 64 :=
.seq rawBody310_156 rawBody310_167

def rawBody310_169 : StackLang.HolProg 64 :=
.seq rawBody310_109 rawBody310_168

def rawBody310_170 : StackLang.HolProg 64 :=
.seq rawBody310_108 rawBody310_169

def rawBody310_171 : StackLang.HolProg 64 :=
.seq rawBody310_107 rawBody310_170

def rawBody310_172 : StackLang.HolProg 64 :=
.seq rawBody310_106 rawBody310_171

def rawBody310_173 : StackLang.HolProg 64 :=
.seq rawBody310_105 rawBody310_172

def rawBody310_174 : StackLang.HolProg 64 :=
.seq rawBody310_104 rawBody310_173

def rawBody310_175 : StackLang.HolProg 64 :=
.seq rawBody310_103 rawBody310_174

def rawBody310_176 : StackLang.HolProg 64 :=
.seq rawBody310_102 rawBody310_175

def rawBody310_177 : StackLang.HolProg 64 :=
.seq rawBody310_101 rawBody310_176

def rawBody310_178 : StackLang.HolProg 64 :=
.seq rawBody310_58 rawBody310_177

def rawBody310_179 : StackLang.HolProg 64 :=
.seq rawBody310_57 rawBody310_178

def rawBody310_180 : StackLang.HolProg 64 :=
.seq rawBody310_56 rawBody310_179

def rawBody310_181 : StackLang.HolProg 64 :=
.seq rawBody310_55 rawBody310_180

def rawBody310_182 : StackLang.HolProg 64 :=
.seq rawBody310_12 rawBody310_181

def rawBody310_183 : StackLang.HolProg 64 :=
.seq rawBody310_11 rawBody310_182

def rawBody310_184 : StackLang.HolProg 64 :=
.seq rawBody310_10 rawBody310_183

def rawBody310_185 : StackLang.HolProg 64 :=
.seq rawBody310_9 rawBody310_184

def rawBody310_186 : StackLang.HolProg 64 :=
.seq rawBody310_8 rawBody310_185

def rawBody310_187 : StackLang.HolProg 64 :=
.seq rawBody310_7 rawBody310_186

def rawBody310_188 : StackLang.HolProg 64 :=
.seq rawBody310_4 rawBody310_187

def rawBody310_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody310_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody310_191 : StackLang.HolProg 64 :=
.seq rawBody310_189 rawBody310_190

def rawBody310_192 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody310_188 rawBody310_191

def rawBody310_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody310_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody310_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody310_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody310_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody310_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody310_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 854#64)

def rawBody310_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody310_201 : StackLang.HolProg 64 :=
.seq rawBody310_199 rawBody310_200

def rawBody310_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody310_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody310_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody310_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 310 9

def rawBody310_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody310_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody310_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody310_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody310_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody310_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody310_212 : StackLang.HolProg 64 :=
.seq rawBody310_210 rawBody310_211

def rawBody310_213 : StackLang.HolProg 64 :=
.seq rawBody310_209 rawBody310_212

def rawBody310_214 : StackLang.HolProg 64 :=
.seq rawBody310_208 rawBody310_213

def rawBody310_215 : StackLang.HolProg 64 :=
.seq rawBody310_207 rawBody310_214

def rawBody310_216 : StackLang.HolProg 64 :=
.seq rawBody310_206 rawBody310_215

def rawBody310_217 : StackLang.HolProg 64 :=
.seq rawBody310_205 rawBody310_216

def rawBody310_218 : StackLang.HolProg 64 :=
.seq rawBody310_204 rawBody310_217

def rawBody310_219 : StackLang.HolProg 64 :=
.seq rawBody310_203 rawBody310_218

def rawBody310_220 : StackLang.HolProg 64 :=
.seq rawBody310_202 rawBody310_219

def rawBody310_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody310_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody310_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody310_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody310_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody310_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody310_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody310_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody310_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody310_230 : StackLang.HolProg 64 :=
.seq rawBody310_228 rawBody310_229

def rawBody310_231 : StackLang.HolProg 64 :=
.seq rawBody310_227 rawBody310_230

def rawBody310_232 : StackLang.HolProg 64 :=
.seq rawBody310_226 rawBody310_231

def rawBody310_233 : StackLang.HolProg 64 :=
.seq rawBody310_225 rawBody310_232

def rawBody310_234 : StackLang.HolProg 64 :=
.seq rawBody310_224 rawBody310_233

def rawBody310_235 : StackLang.HolProg 64 :=
.seq rawBody310_223 rawBody310_234

def rawBody310_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody310_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody310_238 : StackLang.HolProg 64 :=
.seq rawBody310_236 rawBody310_237

def rawBody310_239 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody310_240 : StackLang.HolProg 64 :=
.seq rawBody310_238 rawBody310_239

def rawBody310_241 : StackLang.HolProg 64 :=
.call (some (rawBody310_235, 0, 310, 8)) (Sum.inl 68) (some (rawBody310_240, 310, 9))

def rawBody310_242 : StackLang.HolProg 64 :=
.seq rawBody310_222 rawBody310_241

def rawBody310_243 : StackLang.HolProg 64 :=
.seq rawBody310_221 rawBody310_242

def rawBody310_244 : StackLang.HolProg 64 :=
.seq rawBody310_220 rawBody310_243

def rawBody310_245 : StackLang.HolProg 64 :=
.seq rawBody310_201 rawBody310_244

def rawBody310_246 : StackLang.HolProg 64 :=
.seq rawBody310_198 rawBody310_245

def rawBody310_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody310_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody310_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def rawBody310_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody310_251 : StackLang.HolProg 64 :=
.seq rawBody310_249 rawBody310_250

def rawBody310_252 : StackLang.HolProg 64 :=
.seq rawBody310_248 rawBody310_251

def rawBody310_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody310_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 855#64)

def rawBody310_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody310_256 : StackLang.HolProg 64 :=
.seq rawBody310_254 rawBody310_255

def rawBody310_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody310_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody310_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody310_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 310 11

def rawBody310_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody310_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody310_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody310_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody310_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody310_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody310_267 : StackLang.HolProg 64 :=
.seq rawBody310_265 rawBody310_266

def rawBody310_268 : StackLang.HolProg 64 :=
.seq rawBody310_264 rawBody310_267

def rawBody310_269 : StackLang.HolProg 64 :=
.seq rawBody310_263 rawBody310_268

def rawBody310_270 : StackLang.HolProg 64 :=
.seq rawBody310_262 rawBody310_269

def rawBody310_271 : StackLang.HolProg 64 :=
.seq rawBody310_261 rawBody310_270

def rawBody310_272 : StackLang.HolProg 64 :=
.seq rawBody310_260 rawBody310_271

def rawBody310_273 : StackLang.HolProg 64 :=
.seq rawBody310_259 rawBody310_272

def rawBody310_274 : StackLang.HolProg 64 :=
.seq rawBody310_258 rawBody310_273

def rawBody310_275 : StackLang.HolProg 64 :=
.seq rawBody310_257 rawBody310_274

def rawBody310_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody310_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody310_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody310_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody310_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody310_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody310_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody310_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody310_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody310_285 : StackLang.HolProg 64 :=
.seq rawBody310_283 rawBody310_284

def rawBody310_286 : StackLang.HolProg 64 :=
.seq rawBody310_282 rawBody310_285

def rawBody310_287 : StackLang.HolProg 64 :=
.seq rawBody310_281 rawBody310_286

def rawBody310_288 : StackLang.HolProg 64 :=
.seq rawBody310_280 rawBody310_287

def rawBody310_289 : StackLang.HolProg 64 :=
.seq rawBody310_279 rawBody310_288

def rawBody310_290 : StackLang.HolProg 64 :=
.seq rawBody310_278 rawBody310_289

def rawBody310_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody310_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody310_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody310_294 : StackLang.HolProg 64 :=
.seq rawBody310_292 rawBody310_293

def rawBody310_295 : StackLang.HolProg 64 :=
.seq rawBody310_291 rawBody310_294

def rawBody310_296 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody310_297 : StackLang.HolProg 64 :=
.seq rawBody310_295 rawBody310_296

def rawBody310_298 : StackLang.HolProg 64 :=
.call (some (rawBody310_290, 0, 310, 10)) (Sum.inl 288) (some (rawBody310_297, 310, 11))

def rawBody310_299 : StackLang.HolProg 64 :=
.seq rawBody310_277 rawBody310_298

def rawBody310_300 : StackLang.HolProg 64 :=
.seq rawBody310_276 rawBody310_299

def rawBody310_301 : StackLang.HolProg 64 :=
.seq rawBody310_275 rawBody310_300

def rawBody310_302 : StackLang.HolProg 64 :=
.seq rawBody310_256 rawBody310_301

def rawBody310_303 : StackLang.HolProg 64 :=
.seq rawBody310_253 rawBody310_302

def rawBody310_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody310_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody310_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody310_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody310_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody310_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody310_310 : StackLang.HolProg 64 :=
.seq rawBody310_308 rawBody310_309

def rawBody310_311 : StackLang.HolProg 64 :=
.seq rawBody310_307 rawBody310_310

def rawBody310_312 : StackLang.HolProg 64 :=
.seq rawBody310_306 rawBody310_311

def rawBody310_313 : StackLang.HolProg 64 :=
.seq rawBody310_305 rawBody310_312

def rawBody310_314 : StackLang.HolProg 64 :=
.seq rawBody310_304 rawBody310_313

def rawBody310_315 : StackLang.HolProg 64 :=
.seq rawBody310_303 rawBody310_314

def rawBody310_316 : StackLang.HolProg 64 :=
.seq rawBody310_252 rawBody310_315

def rawBody310_317 : StackLang.HolProg 64 :=
.seq rawBody310_247 rawBody310_316

def rawBody310_318 : StackLang.HolProg 64 :=
.seq rawBody310_246 rawBody310_317

def rawBody310_319 : StackLang.HolProg 64 :=
.seq rawBody310_197 rawBody310_318

def rawBody310_320 : StackLang.HolProg 64 :=
.seq rawBody310_196 rawBody310_319

def rawBody310_321 : StackLang.HolProg 64 :=
.seq rawBody310_195 rawBody310_320

def rawBody310_322 : StackLang.HolProg 64 :=
.seq rawBody310_194 rawBody310_321

def rawBody310_323 : StackLang.HolProg 64 :=
.seq rawBody310_193 rawBody310_322

def rawBody310_324 : StackLang.HolProg 64 :=
.seq rawBody310_192 rawBody310_323

def rawBody310_325 : StackLang.HolProg 64 :=
.seq rawBody310_3 rawBody310_324

def rawBody310_326 : StackLang.HolProg 64 :=
.seq rawBody310_2 rawBody310_325

def rawBody310_327 : StackLang.HolProg 64 :=
.seq rawBody310_1 rawBody310_326

def rawBody310_328 : StackLang.HolProg 64 :=
.seq rawBody310_0 rawBody310_327

def raw310 : StackLang.HolProg 64 := rawBody310_328
theorem raw310_eq : StackRawCall.compTop RawInfo.rawInfo (function310 (.list [])).1 = raw310 := by
  kernel_rfl
#print axioms raw310_eq
end InitECandidate.Proofs.BackendStages
