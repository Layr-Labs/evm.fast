import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function777
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody777_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody777_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody777_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody777_3 : StackLang.HolProg 64 :=
.seq rawBody777_1 rawBody777_2

def rawBody777_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody777_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3538#64)

def rawBody777_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody777_7 : StackLang.HolProg 64 :=
.seq rawBody777_5 rawBody777_6

def rawBody777_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody777_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody777_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody777_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 777 3

def rawBody777_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody777_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody777_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody777_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody777_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody777_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody777_18 : StackLang.HolProg 64 :=
.seq rawBody777_16 rawBody777_17

def rawBody777_19 : StackLang.HolProg 64 :=
.seq rawBody777_15 rawBody777_18

def rawBody777_20 : StackLang.HolProg 64 :=
.seq rawBody777_14 rawBody777_19

def rawBody777_21 : StackLang.HolProg 64 :=
.seq rawBody777_13 rawBody777_20

def rawBody777_22 : StackLang.HolProg 64 :=
.seq rawBody777_12 rawBody777_21

def rawBody777_23 : StackLang.HolProg 64 :=
.seq rawBody777_11 rawBody777_22

def rawBody777_24 : StackLang.HolProg 64 :=
.seq rawBody777_10 rawBody777_23

def rawBody777_25 : StackLang.HolProg 64 :=
.seq rawBody777_9 rawBody777_24

def rawBody777_26 : StackLang.HolProg 64 :=
.seq rawBody777_8 rawBody777_25

def rawBody777_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody777_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody777_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody777_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody777_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody777_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody777_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody777_34 : StackLang.HolProg 64 :=
.seq rawBody777_32 rawBody777_33

def rawBody777_35 : StackLang.HolProg 64 :=
.seq rawBody777_31 rawBody777_34

def rawBody777_36 : StackLang.HolProg 64 :=
.seq rawBody777_30 rawBody777_35

def rawBody777_37 : StackLang.HolProg 64 :=
.seq rawBody777_29 rawBody777_36

def rawBody777_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody777_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody777_40 : StackLang.HolProg 64 :=
.seq rawBody777_38 rawBody777_39

def rawBody777_41 : StackLang.HolProg 64 :=
.call (some (rawBody777_37, 0, 777, 2)) (Sum.inl 69) (some (rawBody777_40, 777, 3))

def rawBody777_42 : StackLang.HolProg 64 :=
.seq rawBody777_28 rawBody777_41

def rawBody777_43 : StackLang.HolProg 64 :=
.seq rawBody777_27 rawBody777_42

def rawBody777_44 : StackLang.HolProg 64 :=
.seq rawBody777_26 rawBody777_43

def rawBody777_45 : StackLang.HolProg 64 :=
.seq rawBody777_7 rawBody777_44

def rawBody777_46 : StackLang.HolProg 64 :=
.seq rawBody777_4 rawBody777_45

def rawBody777_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody777_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 144#64)

def rawBody777_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody777_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody777_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3539#64)

def rawBody777_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody777_53 : StackLang.HolProg 64 :=
.seq rawBody777_51 rawBody777_52

def rawBody777_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody777_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody777_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody777_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 777 5

def rawBody777_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody777_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody777_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody777_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody777_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody777_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody777_64 : StackLang.HolProg 64 :=
.seq rawBody777_62 rawBody777_63

def rawBody777_65 : StackLang.HolProg 64 :=
.seq rawBody777_61 rawBody777_64

def rawBody777_66 : StackLang.HolProg 64 :=
.seq rawBody777_60 rawBody777_65

def rawBody777_67 : StackLang.HolProg 64 :=
.seq rawBody777_59 rawBody777_66

def rawBody777_68 : StackLang.HolProg 64 :=
.seq rawBody777_58 rawBody777_67

def rawBody777_69 : StackLang.HolProg 64 :=
.seq rawBody777_57 rawBody777_68

def rawBody777_70 : StackLang.HolProg 64 :=
.seq rawBody777_56 rawBody777_69

def rawBody777_71 : StackLang.HolProg 64 :=
.seq rawBody777_55 rawBody777_70

def rawBody777_72 : StackLang.HolProg 64 :=
.seq rawBody777_54 rawBody777_71

def rawBody777_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody777_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody777_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody777_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody777_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody777_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody777_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody777_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody777_81 : StackLang.HolProg 64 :=
.seq rawBody777_79 rawBody777_80

def rawBody777_82 : StackLang.HolProg 64 :=
.seq rawBody777_78 rawBody777_81

def rawBody777_83 : StackLang.HolProg 64 :=
.seq rawBody777_77 rawBody777_82

def rawBody777_84 : StackLang.HolProg 64 :=
.seq rawBody777_76 rawBody777_83

def rawBody777_85 : StackLang.HolProg 64 :=
.seq rawBody777_75 rawBody777_84

def rawBody777_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody777_87 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody777_88 : StackLang.HolProg 64 :=
.seq rawBody777_86 rawBody777_87

def rawBody777_89 : StackLang.HolProg 64 :=
.call (some (rawBody777_85, 0, 777, 4)) (Sum.inl 68) (some (rawBody777_88, 777, 5))

def rawBody777_90 : StackLang.HolProg 64 :=
.seq rawBody777_74 rawBody777_89

def rawBody777_91 : StackLang.HolProg 64 :=
.seq rawBody777_73 rawBody777_90

def rawBody777_92 : StackLang.HolProg 64 :=
.seq rawBody777_72 rawBody777_91

def rawBody777_93 : StackLang.HolProg 64 :=
.seq rawBody777_53 rawBody777_92

def rawBody777_94 : StackLang.HolProg 64 :=
.seq rawBody777_50 rawBody777_93

def rawBody777_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody777_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody777_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody777_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody777_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody777_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551224#64))

def rawBody777_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1344#64)))

def rawBody777_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 4#64)

def rawBody777_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody777_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody777_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3540#64)

def rawBody777_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody777_107 : StackLang.HolProg 64 :=
.seq rawBody777_105 rawBody777_106

def rawBody777_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody777_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody777_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody777_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 777 7

def rawBody777_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody777_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody777_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody777_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody777_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody777_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody777_118 : StackLang.HolProg 64 :=
.seq rawBody777_116 rawBody777_117

def rawBody777_119 : StackLang.HolProg 64 :=
.seq rawBody777_115 rawBody777_118

def rawBody777_120 : StackLang.HolProg 64 :=
.seq rawBody777_114 rawBody777_119

def rawBody777_121 : StackLang.HolProg 64 :=
.seq rawBody777_113 rawBody777_120

def rawBody777_122 : StackLang.HolProg 64 :=
.seq rawBody777_112 rawBody777_121

def rawBody777_123 : StackLang.HolProg 64 :=
.seq rawBody777_111 rawBody777_122

def rawBody777_124 : StackLang.HolProg 64 :=
.seq rawBody777_110 rawBody777_123

def rawBody777_125 : StackLang.HolProg 64 :=
.seq rawBody777_109 rawBody777_124

def rawBody777_126 : StackLang.HolProg 64 :=
.seq rawBody777_108 rawBody777_125

def rawBody777_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody777_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody777_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody777_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody777_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody777_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody777_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody777_134 : StackLang.HolProg 64 :=
.seq rawBody777_132 rawBody777_133

def rawBody777_135 : StackLang.HolProg 64 :=
.seq rawBody777_131 rawBody777_134

def rawBody777_136 : StackLang.HolProg 64 :=
.seq rawBody777_130 rawBody777_135

def rawBody777_137 : StackLang.HolProg 64 :=
.seq rawBody777_129 rawBody777_136

def rawBody777_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody777_139 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody777_140 : StackLang.HolProg 64 :=
.seq rawBody777_138 rawBody777_139

def rawBody777_141 : StackLang.HolProg 64 :=
.call (some (rawBody777_137, 0, 777, 6)) (Sum.inl 772) (some (rawBody777_140, 777, 7))

def rawBody777_142 : StackLang.HolProg 64 :=
.seq rawBody777_128 rawBody777_141

def rawBody777_143 : StackLang.HolProg 64 :=
.seq rawBody777_127 rawBody777_142

def rawBody777_144 : StackLang.HolProg 64 :=
.seq rawBody777_126 rawBody777_143

def rawBody777_145 : StackLang.HolProg 64 :=
.seq rawBody777_107 rawBody777_144

def rawBody777_146 : StackLang.HolProg 64 :=
.seq rawBody777_104 rawBody777_145

def rawBody777_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody777_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody777_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody777_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3541#64)

def rawBody777_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody777_152 : StackLang.HolProg 64 :=
.seq rawBody777_150 rawBody777_151

def rawBody777_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody777_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody777_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody777_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 777 9

def rawBody777_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody777_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody777_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody777_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody777_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody777_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody777_163 : StackLang.HolProg 64 :=
.seq rawBody777_161 rawBody777_162

def rawBody777_164 : StackLang.HolProg 64 :=
.seq rawBody777_160 rawBody777_163

def rawBody777_165 : StackLang.HolProg 64 :=
.seq rawBody777_159 rawBody777_164

def rawBody777_166 : StackLang.HolProg 64 :=
.seq rawBody777_158 rawBody777_165

def rawBody777_167 : StackLang.HolProg 64 :=
.seq rawBody777_157 rawBody777_166

def rawBody777_168 : StackLang.HolProg 64 :=
.seq rawBody777_156 rawBody777_167

def rawBody777_169 : StackLang.HolProg 64 :=
.seq rawBody777_155 rawBody777_168

def rawBody777_170 : StackLang.HolProg 64 :=
.seq rawBody777_154 rawBody777_169

def rawBody777_171 : StackLang.HolProg 64 :=
.seq rawBody777_153 rawBody777_170

def rawBody777_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody777_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody777_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody777_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody777_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody777_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody777_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody777_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody777_180 : StackLang.HolProg 64 :=
.seq rawBody777_178 rawBody777_179

def rawBody777_181 : StackLang.HolProg 64 :=
.seq rawBody777_177 rawBody777_180

def rawBody777_182 : StackLang.HolProg 64 :=
.seq rawBody777_176 rawBody777_181

def rawBody777_183 : StackLang.HolProg 64 :=
.seq rawBody777_175 rawBody777_182

def rawBody777_184 : StackLang.HolProg 64 :=
.seq rawBody777_174 rawBody777_183

def rawBody777_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody777_186 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody777_187 : StackLang.HolProg 64 :=
.seq rawBody777_185 rawBody777_186

def rawBody777_188 : StackLang.HolProg 64 :=
.call (some (rawBody777_184, 0, 777, 8)) (Sum.inl 767) (some (rawBody777_187, 777, 9))

def rawBody777_189 : StackLang.HolProg 64 :=
.seq rawBody777_173 rawBody777_188

def rawBody777_190 : StackLang.HolProg 64 :=
.seq rawBody777_172 rawBody777_189

def rawBody777_191 : StackLang.HolProg 64 :=
.seq rawBody777_171 rawBody777_190

def rawBody777_192 : StackLang.HolProg 64 :=
.seq rawBody777_152 rawBody777_191

def rawBody777_193 : StackLang.HolProg 64 :=
.seq rawBody777_149 rawBody777_192

def rawBody777_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody777_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody777_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody777_197 : StackLang.HolProg 64 :=
.seq rawBody777_195 rawBody777_196

def rawBody777_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody777_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3542#64)

def rawBody777_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody777_201 : StackLang.HolProg 64 :=
.seq rawBody777_199 rawBody777_200

def rawBody777_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody777_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody777_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody777_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 777 11

def rawBody777_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody777_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody777_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody777_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody777_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody777_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody777_212 : StackLang.HolProg 64 :=
.seq rawBody777_210 rawBody777_211

def rawBody777_213 : StackLang.HolProg 64 :=
.seq rawBody777_209 rawBody777_212

def rawBody777_214 : StackLang.HolProg 64 :=
.seq rawBody777_208 rawBody777_213

def rawBody777_215 : StackLang.HolProg 64 :=
.seq rawBody777_207 rawBody777_214

def rawBody777_216 : StackLang.HolProg 64 :=
.seq rawBody777_206 rawBody777_215

def rawBody777_217 : StackLang.HolProg 64 :=
.seq rawBody777_205 rawBody777_216

def rawBody777_218 : StackLang.HolProg 64 :=
.seq rawBody777_204 rawBody777_217

def rawBody777_219 : StackLang.HolProg 64 :=
.seq rawBody777_203 rawBody777_218

def rawBody777_220 : StackLang.HolProg 64 :=
.seq rawBody777_202 rawBody777_219

def rawBody777_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody777_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody777_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody777_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody777_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody777_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody777_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody777_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody777_229 : StackLang.HolProg 64 :=
.seq rawBody777_227 rawBody777_228

def rawBody777_230 : StackLang.HolProg 64 :=
.seq rawBody777_226 rawBody777_229

def rawBody777_231 : StackLang.HolProg 64 :=
.seq rawBody777_225 rawBody777_230

def rawBody777_232 : StackLang.HolProg 64 :=
.seq rawBody777_224 rawBody777_231

def rawBody777_233 : StackLang.HolProg 64 :=
.seq rawBody777_223 rawBody777_232

def rawBody777_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody777_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody777_236 : StackLang.HolProg 64 :=
.seq rawBody777_234 rawBody777_235

def rawBody777_237 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody777_238 : StackLang.HolProg 64 :=
.seq rawBody777_236 rawBody777_237

def rawBody777_239 : StackLang.HolProg 64 :=
.call (some (rawBody777_233, 0, 777, 10)) (Sum.inl 70) (some (rawBody777_238, 777, 11))

def rawBody777_240 : StackLang.HolProg 64 :=
.seq rawBody777_222 rawBody777_239

def rawBody777_241 : StackLang.HolProg 64 :=
.seq rawBody777_221 rawBody777_240

def rawBody777_242 : StackLang.HolProg 64 :=
.seq rawBody777_220 rawBody777_241

def rawBody777_243 : StackLang.HolProg 64 :=
.seq rawBody777_201 rawBody777_242

def rawBody777_244 : StackLang.HolProg 64 :=
.seq rawBody777_198 rawBody777_243

def rawBody777_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody777_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody777_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody777_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody777_249 : StackLang.HolProg 64 :=
.seq rawBody777_247 rawBody777_248

def rawBody777_250 : StackLang.HolProg 64 :=
.seq rawBody777_246 rawBody777_249

def rawBody777_251 : StackLang.HolProg 64 :=
.seq rawBody777_245 rawBody777_250

def rawBody777_252 : StackLang.HolProg 64 :=
.seq rawBody777_244 rawBody777_251

def rawBody777_253 : StackLang.HolProg 64 :=
.seq rawBody777_197 rawBody777_252

def rawBody777_254 : StackLang.HolProg 64 :=
.seq rawBody777_194 rawBody777_253

def rawBody777_255 : StackLang.HolProg 64 :=
.seq rawBody777_193 rawBody777_254

def rawBody777_256 : StackLang.HolProg 64 :=
.seq rawBody777_148 rawBody777_255

def rawBody777_257 : StackLang.HolProg 64 :=
.seq rawBody777_147 rawBody777_256

def rawBody777_258 : StackLang.HolProg 64 :=
.seq rawBody777_146 rawBody777_257

def rawBody777_259 : StackLang.HolProg 64 :=
.seq rawBody777_103 rawBody777_258

def rawBody777_260 : StackLang.HolProg 64 :=
.seq rawBody777_102 rawBody777_259

def rawBody777_261 : StackLang.HolProg 64 :=
.seq rawBody777_101 rawBody777_260

def rawBody777_262 : StackLang.HolProg 64 :=
.seq rawBody777_100 rawBody777_261

def rawBody777_263 : StackLang.HolProg 64 :=
.seq rawBody777_99 rawBody777_262

def rawBody777_264 : StackLang.HolProg 64 :=
.seq rawBody777_98 rawBody777_263

def rawBody777_265 : StackLang.HolProg 64 :=
.seq rawBody777_97 rawBody777_264

def rawBody777_266 : StackLang.HolProg 64 :=
.seq rawBody777_96 rawBody777_265

def rawBody777_267 : StackLang.HolProg 64 :=
.seq rawBody777_95 rawBody777_266

def rawBody777_268 : StackLang.HolProg 64 :=
.seq rawBody777_94 rawBody777_267

def rawBody777_269 : StackLang.HolProg 64 :=
.seq rawBody777_49 rawBody777_268

def rawBody777_270 : StackLang.HolProg 64 :=
.seq rawBody777_48 rawBody777_269

def rawBody777_271 : StackLang.HolProg 64 :=
.seq rawBody777_47 rawBody777_270

def rawBody777_272 : StackLang.HolProg 64 :=
.seq rawBody777_46 rawBody777_271

def rawBody777_273 : StackLang.HolProg 64 :=
.seq rawBody777_3 rawBody777_272

def rawBody777_274 : StackLang.HolProg 64 :=
.seq rawBody777_0 rawBody777_273

def raw777 : StackLang.HolProg 64 := rawBody777_274
theorem raw777_eq : StackRawCall.compTop RawInfo.rawInfo (function777 (.list [])).1 = raw777 := by
  kernel_rfl
#print axioms raw777_eq
end InitECandidate.Proofs.BackendStages
