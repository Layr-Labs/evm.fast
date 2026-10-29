import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function331
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody331_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody331_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody331_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody331_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody331_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody331_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody331_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody331_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody331_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody331_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def rawBody331_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551488#64))

def rawBody331_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def rawBody331_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody331_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody331_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 937#64)

def rawBody331_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody331_16 : StackLang.HolProg 64 :=
.seq rawBody331_14 rawBody331_15

def rawBody331_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody331_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody331_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody331_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 331 3

def rawBody331_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody331_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody331_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody331_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody331_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody331_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody331_27 : StackLang.HolProg 64 :=
.seq rawBody331_25 rawBody331_26

def rawBody331_28 : StackLang.HolProg 64 :=
.seq rawBody331_24 rawBody331_27

def rawBody331_29 : StackLang.HolProg 64 :=
.seq rawBody331_23 rawBody331_28

def rawBody331_30 : StackLang.HolProg 64 :=
.seq rawBody331_22 rawBody331_29

def rawBody331_31 : StackLang.HolProg 64 :=
.seq rawBody331_21 rawBody331_30

def rawBody331_32 : StackLang.HolProg 64 :=
.seq rawBody331_20 rawBody331_31

def rawBody331_33 : StackLang.HolProg 64 :=
.seq rawBody331_19 rawBody331_32

def rawBody331_34 : StackLang.HolProg 64 :=
.seq rawBody331_18 rawBody331_33

def rawBody331_35 : StackLang.HolProg 64 :=
.seq rawBody331_17 rawBody331_34

def rawBody331_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody331_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody331_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody331_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody331_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody331_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody331_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody331_43 : StackLang.HolProg 64 :=
.seq rawBody331_41 rawBody331_42

def rawBody331_44 : StackLang.HolProg 64 :=
.seq rawBody331_40 rawBody331_43

def rawBody331_45 : StackLang.HolProg 64 :=
.seq rawBody331_39 rawBody331_44

def rawBody331_46 : StackLang.HolProg 64 :=
.seq rawBody331_38 rawBody331_45

def rawBody331_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody331_48 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody331_49 : StackLang.HolProg 64 :=
.seq rawBody331_47 rawBody331_48

def rawBody331_50 : StackLang.HolProg 64 :=
.call (some (rawBody331_46, 0, 331, 2)) (Sum.inl 77) (some (rawBody331_49, 331, 3))

def rawBody331_51 : StackLang.HolProg 64 :=
.seq rawBody331_37 rawBody331_50

def rawBody331_52 : StackLang.HolProg 64 :=
.seq rawBody331_36 rawBody331_51

def rawBody331_53 : StackLang.HolProg 64 :=
.seq rawBody331_35 rawBody331_52

def rawBody331_54 : StackLang.HolProg 64 :=
.seq rawBody331_16 rawBody331_53

def rawBody331_55 : StackLang.HolProg 64 :=
.seq rawBody331_13 rawBody331_54

def rawBody331_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody331_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody331_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody331_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody331_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody331_61 : StackLang.HolProg 64 :=
.seq rawBody331_59 rawBody331_60

def rawBody331_62 : StackLang.HolProg 64 :=
.seq rawBody331_58 rawBody331_61

def rawBody331_63 : StackLang.HolProg 64 :=
.seq rawBody331_57 rawBody331_62

def rawBody331_64 : StackLang.HolProg 64 :=
.seq rawBody331_56 rawBody331_63

def rawBody331_65 : StackLang.HolProg 64 :=
.seq rawBody331_55 rawBody331_64

def rawBody331_66 : StackLang.HolProg 64 :=
.seq rawBody331_12 rawBody331_65

def rawBody331_67 : StackLang.HolProg 64 :=
.seq rawBody331_11 rawBody331_66

def rawBody331_68 : StackLang.HolProg 64 :=
.seq rawBody331_10 rawBody331_67

def rawBody331_69 : StackLang.HolProg 64 :=
.seq rawBody331_9 rawBody331_68

def rawBody331_70 : StackLang.HolProg 64 :=
.seq rawBody331_8 rawBody331_69

def rawBody331_71 : StackLang.HolProg 64 :=
.seq rawBody331_7 rawBody331_70

def rawBody331_72 : StackLang.HolProg 64 :=
.seq rawBody331_6 rawBody331_71

def rawBody331_73 : StackLang.HolProg 64 :=
.seq rawBody331_5 rawBody331_72

def rawBody331_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody331_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody331_76 : StackLang.HolProg 64 :=
.seq rawBody331_74 rawBody331_75

def rawBody331_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody331_73 rawBody331_76

def rawBody331_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody331_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody331_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody331_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody331_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 938#64)

def rawBody331_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody331_84 : StackLang.HolProg 64 :=
.seq rawBody331_82 rawBody331_83

def rawBody331_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody331_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody331_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody331_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 331 5

def rawBody331_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody331_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody331_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody331_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody331_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody331_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody331_95 : StackLang.HolProg 64 :=
.seq rawBody331_93 rawBody331_94

def rawBody331_96 : StackLang.HolProg 64 :=
.seq rawBody331_92 rawBody331_95

def rawBody331_97 : StackLang.HolProg 64 :=
.seq rawBody331_91 rawBody331_96

def rawBody331_98 : StackLang.HolProg 64 :=
.seq rawBody331_90 rawBody331_97

def rawBody331_99 : StackLang.HolProg 64 :=
.seq rawBody331_89 rawBody331_98

def rawBody331_100 : StackLang.HolProg 64 :=
.seq rawBody331_88 rawBody331_99

def rawBody331_101 : StackLang.HolProg 64 :=
.seq rawBody331_87 rawBody331_100

def rawBody331_102 : StackLang.HolProg 64 :=
.seq rawBody331_86 rawBody331_101

def rawBody331_103 : StackLang.HolProg 64 :=
.seq rawBody331_85 rawBody331_102

def rawBody331_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody331_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody331_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody331_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody331_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody331_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody331_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody331_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody331_112 : StackLang.HolProg 64 :=
.seq rawBody331_110 rawBody331_111

def rawBody331_113 : StackLang.HolProg 64 :=
.seq rawBody331_109 rawBody331_112

def rawBody331_114 : StackLang.HolProg 64 :=
.seq rawBody331_108 rawBody331_113

def rawBody331_115 : StackLang.HolProg 64 :=
.seq rawBody331_107 rawBody331_114

def rawBody331_116 : StackLang.HolProg 64 :=
.seq rawBody331_106 rawBody331_115

def rawBody331_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody331_118 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody331_119 : StackLang.HolProg 64 :=
.seq rawBody331_117 rawBody331_118

def rawBody331_120 : StackLang.HolProg 64 :=
.call (some (rawBody331_116, 0, 331, 4)) (Sum.inl 330) (some (rawBody331_119, 331, 5))

def rawBody331_121 : StackLang.HolProg 64 :=
.seq rawBody331_105 rawBody331_120

def rawBody331_122 : StackLang.HolProg 64 :=
.seq rawBody331_104 rawBody331_121

def rawBody331_123 : StackLang.HolProg 64 :=
.seq rawBody331_103 rawBody331_122

def rawBody331_124 : StackLang.HolProg 64 :=
.seq rawBody331_84 rawBody331_123

def rawBody331_125 : StackLang.HolProg 64 :=
.seq rawBody331_81 rawBody331_124

def rawBody331_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody331_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody331_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def rawBody331_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody331_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody331_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 939#64)

def rawBody331_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody331_133 : StackLang.HolProg 64 :=
.seq rawBody331_131 rawBody331_132

def rawBody331_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody331_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody331_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody331_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 331 7

def rawBody331_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody331_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody331_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody331_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody331_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody331_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody331_144 : StackLang.HolProg 64 :=
.seq rawBody331_142 rawBody331_143

def rawBody331_145 : StackLang.HolProg 64 :=
.seq rawBody331_141 rawBody331_144

def rawBody331_146 : StackLang.HolProg 64 :=
.seq rawBody331_140 rawBody331_145

def rawBody331_147 : StackLang.HolProg 64 :=
.seq rawBody331_139 rawBody331_146

def rawBody331_148 : StackLang.HolProg 64 :=
.seq rawBody331_138 rawBody331_147

def rawBody331_149 : StackLang.HolProg 64 :=
.seq rawBody331_137 rawBody331_148

def rawBody331_150 : StackLang.HolProg 64 :=
.seq rawBody331_136 rawBody331_149

def rawBody331_151 : StackLang.HolProg 64 :=
.seq rawBody331_135 rawBody331_150

def rawBody331_152 : StackLang.HolProg 64 :=
.seq rawBody331_134 rawBody331_151

def rawBody331_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody331_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody331_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody331_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody331_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody331_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody331_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody331_160 : StackLang.HolProg 64 :=
.seq rawBody331_158 rawBody331_159

def rawBody331_161 : StackLang.HolProg 64 :=
.seq rawBody331_157 rawBody331_160

def rawBody331_162 : StackLang.HolProg 64 :=
.seq rawBody331_156 rawBody331_161

def rawBody331_163 : StackLang.HolProg 64 :=
.seq rawBody331_155 rawBody331_162

def rawBody331_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody331_165 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody331_166 : StackLang.HolProg 64 :=
.seq rawBody331_164 rawBody331_165

def rawBody331_167 : StackLang.HolProg 64 :=
.call (some (rawBody331_163, 0, 331, 6)) (Sum.inl 77) (some (rawBody331_166, 331, 7))

def rawBody331_168 : StackLang.HolProg 64 :=
.seq rawBody331_154 rawBody331_167

def rawBody331_169 : StackLang.HolProg 64 :=
.seq rawBody331_153 rawBody331_168

def rawBody331_170 : StackLang.HolProg 64 :=
.seq rawBody331_152 rawBody331_169

def rawBody331_171 : StackLang.HolProg 64 :=
.seq rawBody331_133 rawBody331_170

def rawBody331_172 : StackLang.HolProg 64 :=
.seq rawBody331_130 rawBody331_171

def rawBody331_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody331_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody331_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody331_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody331_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody331_178 : StackLang.HolProg 64 :=
.seq rawBody331_176 rawBody331_177

def rawBody331_179 : StackLang.HolProg 64 :=
.seq rawBody331_175 rawBody331_178

def rawBody331_180 : StackLang.HolProg 64 :=
.seq rawBody331_174 rawBody331_179

def rawBody331_181 : StackLang.HolProg 64 :=
.seq rawBody331_173 rawBody331_180

def rawBody331_182 : StackLang.HolProg 64 :=
.seq rawBody331_172 rawBody331_181

def rawBody331_183 : StackLang.HolProg 64 :=
.seq rawBody331_129 rawBody331_182

def rawBody331_184 : StackLang.HolProg 64 :=
.seq rawBody331_128 rawBody331_183

def rawBody331_185 : StackLang.HolProg 64 :=
.seq rawBody331_127 rawBody331_184

def rawBody331_186 : StackLang.HolProg 64 :=
.seq rawBody331_126 rawBody331_185

def rawBody331_187 : StackLang.HolProg 64 :=
.seq rawBody331_125 rawBody331_186

def rawBody331_188 : StackLang.HolProg 64 :=
.seq rawBody331_80 rawBody331_187

def rawBody331_189 : StackLang.HolProg 64 :=
.seq rawBody331_79 rawBody331_188

def rawBody331_190 : StackLang.HolProg 64 :=
.seq rawBody331_78 rawBody331_189

def rawBody331_191 : StackLang.HolProg 64 :=
.seq rawBody331_77 rawBody331_190

def rawBody331_192 : StackLang.HolProg 64 :=
.seq rawBody331_4 rawBody331_191

def rawBody331_193 : StackLang.HolProg 64 :=
.seq rawBody331_3 rawBody331_192

def rawBody331_194 : StackLang.HolProg 64 :=
.seq rawBody331_2 rawBody331_193

def rawBody331_195 : StackLang.HolProg 64 :=
.seq rawBody331_1 rawBody331_194

def rawBody331_196 : StackLang.HolProg 64 :=
.seq rawBody331_0 rawBody331_195

def raw331 : StackLang.HolProg 64 := rawBody331_196
theorem raw331_eq : StackRawCall.compTop RawInfo.rawInfo (function331 (.list [])).1 = raw331 := by
  kernel_rfl
#print axioms raw331_eq
end InitECandidate.Proofs.BackendStages
