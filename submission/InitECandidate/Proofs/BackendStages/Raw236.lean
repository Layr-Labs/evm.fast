import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function236
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody236_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody236_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody236_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody236_3 : StackLang.HolProg 64 :=
.seq rawBody236_1 rawBody236_2

def rawBody236_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody236_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody236_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody236_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551512#64))

def rawBody236_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def rawBody236_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody236_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody236_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def rawBody236_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody236_13 : StackLang.HolProg 64 :=
.seq rawBody236_11 rawBody236_12

def rawBody236_14 : StackLang.HolProg 64 :=
.seq rawBody236_10 rawBody236_13

def rawBody236_15 : StackLang.HolProg 64 :=
.seq rawBody236_9 rawBody236_14

def rawBody236_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody236_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 444#64)

def rawBody236_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody236_19 : StackLang.HolProg 64 :=
.seq rawBody236_17 rawBody236_18

def rawBody236_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody236_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody236_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody236_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 236 3

def rawBody236_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody236_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody236_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody236_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody236_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody236_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody236_30 : StackLang.HolProg 64 :=
.seq rawBody236_28 rawBody236_29

def rawBody236_31 : StackLang.HolProg 64 :=
.seq rawBody236_27 rawBody236_30

def rawBody236_32 : StackLang.HolProg 64 :=
.seq rawBody236_26 rawBody236_31

def rawBody236_33 : StackLang.HolProg 64 :=
.seq rawBody236_25 rawBody236_32

def rawBody236_34 : StackLang.HolProg 64 :=
.seq rawBody236_24 rawBody236_33

def rawBody236_35 : StackLang.HolProg 64 :=
.seq rawBody236_23 rawBody236_34

def rawBody236_36 : StackLang.HolProg 64 :=
.seq rawBody236_22 rawBody236_35

def rawBody236_37 : StackLang.HolProg 64 :=
.seq rawBody236_21 rawBody236_36

def rawBody236_38 : StackLang.HolProg 64 :=
.seq rawBody236_20 rawBody236_37

def rawBody236_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody236_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody236_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody236_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody236_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody236_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody236_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody236_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody236_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody236_48 : StackLang.HolProg 64 :=
.seq rawBody236_46 rawBody236_47

def rawBody236_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody236_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody236_51 : StackLang.HolProg 64 :=
.seq rawBody236_49 rawBody236_50

def rawBody236_52 : StackLang.HolProg 64 :=
.seq rawBody236_48 rawBody236_51

def rawBody236_53 : StackLang.HolProg 64 :=
.seq rawBody236_45 rawBody236_52

def rawBody236_54 : StackLang.HolProg 64 :=
.seq rawBody236_44 rawBody236_53

def rawBody236_55 : StackLang.HolProg 64 :=
.seq rawBody236_43 rawBody236_54

def rawBody236_56 : StackLang.HolProg 64 :=
.seq rawBody236_42 rawBody236_55

def rawBody236_57 : StackLang.HolProg 64 :=
.seq rawBody236_41 rawBody236_56

def rawBody236_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody236_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody236_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody236_61 : StackLang.HolProg 64 :=
.seq rawBody236_59 rawBody236_60

def rawBody236_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody236_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody236_64 : StackLang.HolProg 64 :=
.seq rawBody236_62 rawBody236_63

def rawBody236_65 : StackLang.HolProg 64 :=
.seq rawBody236_61 rawBody236_64

def rawBody236_66 : StackLang.HolProg 64 :=
.seq rawBody236_58 rawBody236_65

def rawBody236_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody236_68 : StackLang.HolProg 64 :=
.seq rawBody236_66 rawBody236_67

def rawBody236_69 : StackLang.HolProg 64 :=
.call (some (rawBody236_57, 0, 236, 2)) (Sum.inl 78) (some (rawBody236_68, 236, 3))

def rawBody236_70 : StackLang.HolProg 64 :=
.seq rawBody236_40 rawBody236_69

def rawBody236_71 : StackLang.HolProg 64 :=
.seq rawBody236_39 rawBody236_70

def rawBody236_72 : StackLang.HolProg 64 :=
.seq rawBody236_38 rawBody236_71

def rawBody236_73 : StackLang.HolProg 64 :=
.seq rawBody236_19 rawBody236_72

def rawBody236_74 : StackLang.HolProg 64 :=
.seq rawBody236_16 rawBody236_73

def rawBody236_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody236_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody236_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody236_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody236_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551512#64))

def rawBody236_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody236_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody236_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 445#64)

def rawBody236_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody236_84 : StackLang.HolProg 64 :=
.seq rawBody236_82 rawBody236_83

def rawBody236_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody236_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody236_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody236_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 236 5

def rawBody236_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody236_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody236_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody236_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody236_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody236_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody236_95 : StackLang.HolProg 64 :=
.seq rawBody236_93 rawBody236_94

def rawBody236_96 : StackLang.HolProg 64 :=
.seq rawBody236_92 rawBody236_95

def rawBody236_97 : StackLang.HolProg 64 :=
.seq rawBody236_91 rawBody236_96

def rawBody236_98 : StackLang.HolProg 64 :=
.seq rawBody236_90 rawBody236_97

def rawBody236_99 : StackLang.HolProg 64 :=
.seq rawBody236_89 rawBody236_98

def rawBody236_100 : StackLang.HolProg 64 :=
.seq rawBody236_88 rawBody236_99

def rawBody236_101 : StackLang.HolProg 64 :=
.seq rawBody236_87 rawBody236_100

def rawBody236_102 : StackLang.HolProg 64 :=
.seq rawBody236_86 rawBody236_101

def rawBody236_103 : StackLang.HolProg 64 :=
.seq rawBody236_85 rawBody236_102

def rawBody236_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody236_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody236_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody236_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody236_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody236_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody236_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody236_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody236_112 : StackLang.HolProg 64 :=
.seq rawBody236_110 rawBody236_111

def rawBody236_113 : StackLang.HolProg 64 :=
.seq rawBody236_109 rawBody236_112

def rawBody236_114 : StackLang.HolProg 64 :=
.seq rawBody236_108 rawBody236_113

def rawBody236_115 : StackLang.HolProg 64 :=
.seq rawBody236_107 rawBody236_114

def rawBody236_116 : StackLang.HolProg 64 :=
.seq rawBody236_106 rawBody236_115

def rawBody236_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody236_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody236_119 : StackLang.HolProg 64 :=
.seq rawBody236_117 rawBody236_118

def rawBody236_120 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody236_121 : StackLang.HolProg 64 :=
.seq rawBody236_119 rawBody236_120

def rawBody236_122 : StackLang.HolProg 64 :=
.call (some (rawBody236_116, 0, 236, 4)) (Sum.inl 87) (some (rawBody236_121, 236, 5))

def rawBody236_123 : StackLang.HolProg 64 :=
.seq rawBody236_105 rawBody236_122

def rawBody236_124 : StackLang.HolProg 64 :=
.seq rawBody236_104 rawBody236_123

def rawBody236_125 : StackLang.HolProg 64 :=
.seq rawBody236_103 rawBody236_124

def rawBody236_126 : StackLang.HolProg 64 :=
.seq rawBody236_84 rawBody236_125

def rawBody236_127 : StackLang.HolProg 64 :=
.seq rawBody236_81 rawBody236_126

def rawBody236_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody236_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody236_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody236_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody236_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody236_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551512#64))

def rawBody236_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody236_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody236_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 446#64)

def rawBody236_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody236_138 : StackLang.HolProg 64 :=
.seq rawBody236_136 rawBody236_137

def rawBody236_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody236_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody236_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody236_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 236 7

def rawBody236_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody236_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody236_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody236_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody236_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody236_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody236_149 : StackLang.HolProg 64 :=
.seq rawBody236_147 rawBody236_148

def rawBody236_150 : StackLang.HolProg 64 :=
.seq rawBody236_146 rawBody236_149

def rawBody236_151 : StackLang.HolProg 64 :=
.seq rawBody236_145 rawBody236_150

def rawBody236_152 : StackLang.HolProg 64 :=
.seq rawBody236_144 rawBody236_151

def rawBody236_153 : StackLang.HolProg 64 :=
.seq rawBody236_143 rawBody236_152

def rawBody236_154 : StackLang.HolProg 64 :=
.seq rawBody236_142 rawBody236_153

def rawBody236_155 : StackLang.HolProg 64 :=
.seq rawBody236_141 rawBody236_154

def rawBody236_156 : StackLang.HolProg 64 :=
.seq rawBody236_140 rawBody236_155

def rawBody236_157 : StackLang.HolProg 64 :=
.seq rawBody236_139 rawBody236_156

def rawBody236_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody236_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody236_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody236_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody236_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody236_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody236_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody236_165 : StackLang.HolProg 64 :=
.seq rawBody236_163 rawBody236_164

def rawBody236_166 : StackLang.HolProg 64 :=
.seq rawBody236_162 rawBody236_165

def rawBody236_167 : StackLang.HolProg 64 :=
.seq rawBody236_161 rawBody236_166

def rawBody236_168 : StackLang.HolProg 64 :=
.seq rawBody236_160 rawBody236_167

def rawBody236_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody236_170 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody236_171 : StackLang.HolProg 64 :=
.seq rawBody236_169 rawBody236_170

def rawBody236_172 : StackLang.HolProg 64 :=
.call (some (rawBody236_168, 0, 236, 6)) (Sum.inl 154) (some (rawBody236_171, 236, 7))

def rawBody236_173 : StackLang.HolProg 64 :=
.seq rawBody236_159 rawBody236_172

def rawBody236_174 : StackLang.HolProg 64 :=
.seq rawBody236_158 rawBody236_173

def rawBody236_175 : StackLang.HolProg 64 :=
.seq rawBody236_157 rawBody236_174

def rawBody236_176 : StackLang.HolProg 64 :=
.seq rawBody236_138 rawBody236_175

def rawBody236_177 : StackLang.HolProg 64 :=
.seq rawBody236_135 rawBody236_176

def rawBody236_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody236_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody236_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody236_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody236_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody236_183 : StackLang.HolProg 64 :=
.seq rawBody236_181 rawBody236_182

def rawBody236_184 : StackLang.HolProg 64 :=
.seq rawBody236_180 rawBody236_183

def rawBody236_185 : StackLang.HolProg 64 :=
.seq rawBody236_179 rawBody236_184

def rawBody236_186 : StackLang.HolProg 64 :=
.seq rawBody236_178 rawBody236_185

def rawBody236_187 : StackLang.HolProg 64 :=
.seq rawBody236_177 rawBody236_186

def rawBody236_188 : StackLang.HolProg 64 :=
.seq rawBody236_134 rawBody236_187

def rawBody236_189 : StackLang.HolProg 64 :=
.seq rawBody236_133 rawBody236_188

def rawBody236_190 : StackLang.HolProg 64 :=
.seq rawBody236_132 rawBody236_189

def rawBody236_191 : StackLang.HolProg 64 :=
.seq rawBody236_131 rawBody236_190

def rawBody236_192 : StackLang.HolProg 64 :=
.seq rawBody236_130 rawBody236_191

def rawBody236_193 : StackLang.HolProg 64 :=
.seq rawBody236_129 rawBody236_192

def rawBody236_194 : StackLang.HolProg 64 :=
.seq rawBody236_128 rawBody236_193

def rawBody236_195 : StackLang.HolProg 64 :=
.seq rawBody236_127 rawBody236_194

def rawBody236_196 : StackLang.HolProg 64 :=
.seq rawBody236_80 rawBody236_195

def rawBody236_197 : StackLang.HolProg 64 :=
.seq rawBody236_79 rawBody236_196

def rawBody236_198 : StackLang.HolProg 64 :=
.seq rawBody236_78 rawBody236_197

def rawBody236_199 : StackLang.HolProg 64 :=
.seq rawBody236_77 rawBody236_198

def rawBody236_200 : StackLang.HolProg 64 :=
.seq rawBody236_76 rawBody236_199

def rawBody236_201 : StackLang.HolProg 64 :=
.seq rawBody236_75 rawBody236_200

def rawBody236_202 : StackLang.HolProg 64 :=
.seq rawBody236_74 rawBody236_201

def rawBody236_203 : StackLang.HolProg 64 :=
.seq rawBody236_15 rawBody236_202

def rawBody236_204 : StackLang.HolProg 64 :=
.seq rawBody236_8 rawBody236_203

def rawBody236_205 : StackLang.HolProg 64 :=
.seq rawBody236_7 rawBody236_204

def rawBody236_206 : StackLang.HolProg 64 :=
.seq rawBody236_6 rawBody236_205

def rawBody236_207 : StackLang.HolProg 64 :=
.seq rawBody236_5 rawBody236_206

def rawBody236_208 : StackLang.HolProg 64 :=
.seq rawBody236_4 rawBody236_207

def rawBody236_209 : StackLang.HolProg 64 :=
.seq rawBody236_3 rawBody236_208

def rawBody236_210 : StackLang.HolProg 64 :=
.seq rawBody236_0 rawBody236_209

def raw236 : StackLang.HolProg 64 := rawBody236_210
theorem raw236_eq : StackRawCall.compTop RawInfo.rawInfo (function236 (.list [])).1 = raw236 := by
  kernel_rfl
#print axioms raw236_eq
end InitECandidate.Proofs.BackendStages
