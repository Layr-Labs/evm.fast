import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function481
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody481_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 11

def rawBody481_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 10

def rawBody481_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 16 9

def rawBody481_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 12 8

def rawBody481_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 6

def rawBody481_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 14 5

def rawBody481_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 4

def rawBody481_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 13 3

def rawBody481_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 11 2

def rawBody481_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 15 1

def rawBody481_10 : StackLang.HolProg 64 :=
.seq rawBody481_8 rawBody481_9

def rawBody481_11 : StackLang.HolProg 64 :=
.seq rawBody481_7 rawBody481_10

def rawBody481_12 : StackLang.HolProg 64 :=
.seq rawBody481_6 rawBody481_11

def rawBody481_13 : StackLang.HolProg 64 :=
.seq rawBody481_5 rawBody481_12

def rawBody481_14 : StackLang.HolProg 64 :=
.seq rawBody481_4 rawBody481_13

def rawBody481_15 : StackLang.HolProg 64 :=
.seq rawBody481_3 rawBody481_14

def rawBody481_16 : StackLang.HolProg 64 :=
.seq rawBody481_2 rawBody481_15

def rawBody481_17 : StackLang.HolProg 64 :=
.seq rawBody481_1 rawBody481_16

def rawBody481_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody481_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1512#64)

def rawBody481_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody481_21 : StackLang.HolProg 64 :=
.seq rawBody481_19 rawBody481_20

def rawBody481_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody481_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody481_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody481_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 481 3

def rawBody481_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody481_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody481_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody481_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody481_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody481_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody481_32 : StackLang.HolProg 64 :=
.seq rawBody481_30 rawBody481_31

def rawBody481_33 : StackLang.HolProg 64 :=
.seq rawBody481_29 rawBody481_32

def rawBody481_34 : StackLang.HolProg 64 :=
.seq rawBody481_28 rawBody481_33

def rawBody481_35 : StackLang.HolProg 64 :=
.seq rawBody481_27 rawBody481_34

def rawBody481_36 : StackLang.HolProg 64 :=
.seq rawBody481_26 rawBody481_35

def rawBody481_37 : StackLang.HolProg 64 :=
.seq rawBody481_25 rawBody481_36

def rawBody481_38 : StackLang.HolProg 64 :=
.seq rawBody481_24 rawBody481_37

def rawBody481_39 : StackLang.HolProg 64 :=
.seq rawBody481_23 rawBody481_38

def rawBody481_40 : StackLang.HolProg 64 :=
.seq rawBody481_22 rawBody481_39

def rawBody481_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody481_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody481_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody481_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody481_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody481_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody481_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody481_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 10

def rawBody481_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 9

def rawBody481_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def rawBody481_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 6

def rawBody481_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody481_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 4

def rawBody481_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody481_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody481_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def rawBody481_57 : StackLang.HolProg 64 :=
.seq rawBody481_55 rawBody481_56

def rawBody481_58 : StackLang.HolProg 64 :=
.seq rawBody481_54 rawBody481_57

def rawBody481_59 : StackLang.HolProg 64 :=
.seq rawBody481_53 rawBody481_58

def rawBody481_60 : StackLang.HolProg 64 :=
.seq rawBody481_52 rawBody481_59

def rawBody481_61 : StackLang.HolProg 64 :=
.seq rawBody481_51 rawBody481_60

def rawBody481_62 : StackLang.HolProg 64 :=
.seq rawBody481_50 rawBody481_61

def rawBody481_63 : StackLang.HolProg 64 :=
.seq rawBody481_49 rawBody481_62

def rawBody481_64 : StackLang.HolProg 64 :=
.seq rawBody481_48 rawBody481_63

def rawBody481_65 : StackLang.HolProg 64 :=
.seq rawBody481_47 rawBody481_64

def rawBody481_66 : StackLang.HolProg 64 :=
.seq rawBody481_46 rawBody481_65

def rawBody481_67 : StackLang.HolProg 64 :=
.seq rawBody481_45 rawBody481_66

def rawBody481_68 : StackLang.HolProg 64 :=
.seq rawBody481_44 rawBody481_67

def rawBody481_69 : StackLang.HolProg 64 :=
.seq rawBody481_43 rawBody481_68

def rawBody481_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 10

def rawBody481_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 9

def rawBody481_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def rawBody481_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 6

def rawBody481_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody481_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 4

def rawBody481_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody481_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody481_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def rawBody481_79 : StackLang.HolProg 64 :=
.seq rawBody481_77 rawBody481_78

def rawBody481_80 : StackLang.HolProg 64 :=
.seq rawBody481_76 rawBody481_79

def rawBody481_81 : StackLang.HolProg 64 :=
.seq rawBody481_75 rawBody481_80

def rawBody481_82 : StackLang.HolProg 64 :=
.seq rawBody481_74 rawBody481_81

def rawBody481_83 : StackLang.HolProg 64 :=
.seq rawBody481_73 rawBody481_82

def rawBody481_84 : StackLang.HolProg 64 :=
.seq rawBody481_72 rawBody481_83

def rawBody481_85 : StackLang.HolProg 64 :=
.seq rawBody481_71 rawBody481_84

def rawBody481_86 : StackLang.HolProg 64 :=
.seq rawBody481_70 rawBody481_85

def rawBody481_87 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody481_88 : StackLang.HolProg 64 :=
.seq rawBody481_86 rawBody481_87

def rawBody481_89 : StackLang.HolProg 64 :=
.call (some (rawBody481_69, 0, 481, 2)) (Sum.inl 480) (some (rawBody481_88, 481, 3))

def rawBody481_90 : StackLang.HolProg 64 :=
.seq rawBody481_42 rawBody481_89

def rawBody481_91 : StackLang.HolProg 64 :=
.seq rawBody481_41 rawBody481_90

def rawBody481_92 : StackLang.HolProg 64 :=
.seq rawBody481_40 rawBody481_91

def rawBody481_93 : StackLang.HolProg 64 :=
.seq rawBody481_21 rawBody481_92

def rawBody481_94 : StackLang.HolProg 64 :=
.seq rawBody481_18 rawBody481_93

def rawBody481_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody481_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody481_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def rawBody481_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody481_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody481_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 11

def rawBody481_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 10

def rawBody481_102 : StackLang.HolProg 64 :=
.seq rawBody481_100 rawBody481_101

def rawBody481_103 : StackLang.HolProg 64 :=
.seq rawBody481_99 rawBody481_102

def rawBody481_104 : StackLang.HolProg 64 :=
.seq rawBody481_98 rawBody481_103

def rawBody481_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody481_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 7

def rawBody481_107 : StackLang.HolProg 64 :=
.seq rawBody481_105 rawBody481_106

def rawBody481_108 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 9 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody481_104 rawBody481_107

def rawBody481_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody481_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody481_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody481_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody481_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody481_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody481_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 32#64))

def rawBody481_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody481_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody481_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody481_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody481_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody481_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 0#64))

def rawBody481_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 8

def rawBody481_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def rawBody481_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def rawBody481_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 10

def rawBody481_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def rawBody481_127 : StackLang.HolProg 64 :=
.seq rawBody481_125 rawBody481_126

def rawBody481_128 : StackLang.HolProg 64 :=
.seq rawBody481_124 rawBody481_127

def rawBody481_129 : StackLang.HolProg 64 :=
.seq rawBody481_123 rawBody481_128

def rawBody481_130 : StackLang.HolProg 64 :=
.seq rawBody481_122 rawBody481_129

def rawBody481_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody481_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1513#64)

def rawBody481_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody481_134 : StackLang.HolProg 64 :=
.seq rawBody481_132 rawBody481_133

def rawBody481_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody481_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody481_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody481_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 481 5

def rawBody481_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody481_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody481_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody481_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody481_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody481_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody481_145 : StackLang.HolProg 64 :=
.seq rawBody481_143 rawBody481_144

def rawBody481_146 : StackLang.HolProg 64 :=
.seq rawBody481_142 rawBody481_145

def rawBody481_147 : StackLang.HolProg 64 :=
.seq rawBody481_141 rawBody481_146

def rawBody481_148 : StackLang.HolProg 64 :=
.seq rawBody481_140 rawBody481_147

def rawBody481_149 : StackLang.HolProg 64 :=
.seq rawBody481_139 rawBody481_148

def rawBody481_150 : StackLang.HolProg 64 :=
.seq rawBody481_138 rawBody481_149

def rawBody481_151 : StackLang.HolProg 64 :=
.seq rawBody481_137 rawBody481_150

def rawBody481_152 : StackLang.HolProg 64 :=
.seq rawBody481_136 rawBody481_151

def rawBody481_153 : StackLang.HolProg 64 :=
.seq rawBody481_135 rawBody481_152

def rawBody481_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody481_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody481_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody481_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody481_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody481_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody481_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody481_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 10

def rawBody481_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 9

def rawBody481_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 8

def rawBody481_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def rawBody481_165 : StackLang.HolProg 64 :=
.seq rawBody481_163 rawBody481_164

def rawBody481_166 : StackLang.HolProg 64 :=
.seq rawBody481_162 rawBody481_165

def rawBody481_167 : StackLang.HolProg 64 :=
.seq rawBody481_161 rawBody481_166

def rawBody481_168 : StackLang.HolProg 64 :=
.seq rawBody481_160 rawBody481_167

def rawBody481_169 : StackLang.HolProg 64 :=
.seq rawBody481_159 rawBody481_168

def rawBody481_170 : StackLang.HolProg 64 :=
.seq rawBody481_158 rawBody481_169

def rawBody481_171 : StackLang.HolProg 64 :=
.seq rawBody481_157 rawBody481_170

def rawBody481_172 : StackLang.HolProg 64 :=
.seq rawBody481_156 rawBody481_171

def rawBody481_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 10

def rawBody481_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 9

def rawBody481_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 8

def rawBody481_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def rawBody481_177 : StackLang.HolProg 64 :=
.seq rawBody481_175 rawBody481_176

def rawBody481_178 : StackLang.HolProg 64 :=
.seq rawBody481_174 rawBody481_177

def rawBody481_179 : StackLang.HolProg 64 :=
.seq rawBody481_173 rawBody481_178

def rawBody481_180 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody481_181 : StackLang.HolProg 64 :=
.seq rawBody481_179 rawBody481_180

def rawBody481_182 : StackLang.HolProg 64 :=
.call (some (rawBody481_172, 0, 481, 4)) (Sum.inl 480) (some (rawBody481_181, 481, 5))

def rawBody481_183 : StackLang.HolProg 64 :=
.seq rawBody481_155 rawBody481_182

def rawBody481_184 : StackLang.HolProg 64 :=
.seq rawBody481_154 rawBody481_183

def rawBody481_185 : StackLang.HolProg 64 :=
.seq rawBody481_153 rawBody481_184

def rawBody481_186 : StackLang.HolProg 64 :=
.seq rawBody481_134 rawBody481_185

def rawBody481_187 : StackLang.HolProg 64 :=
.seq rawBody481_131 rawBody481_186

def rawBody481_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody481_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody481_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody481_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody481_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody481_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody481_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody481_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody481_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody481_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def rawBody481_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody481_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody481_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 11

def rawBody481_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 8

def rawBody481_202 : StackLang.HolProg 64 :=
.seq rawBody481_200 rawBody481_201

def rawBody481_203 : StackLang.HolProg 64 :=
.seq rawBody481_199 rawBody481_202

def rawBody481_204 : StackLang.HolProg 64 :=
.seq rawBody481_198 rawBody481_203

def rawBody481_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody481_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody481_207 : StackLang.HolProg 64 :=
.seq rawBody481_205 rawBody481_206

def rawBody481_208 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody481_204 rawBody481_207

def rawBody481_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody481_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody481_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody481_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody481_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody481_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody481_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody481_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 11

def rawBody481_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 8

def rawBody481_218 : StackLang.HolProg 64 :=
.seq rawBody481_216 rawBody481_217

def rawBody481_219 : StackLang.HolProg 64 :=
.seq rawBody481_215 rawBody481_218

def rawBody481_220 : StackLang.HolProg 64 :=
.seq rawBody481_214 rawBody481_219

def rawBody481_221 : StackLang.HolProg 64 :=
.seq rawBody481_213 rawBody481_220

def rawBody481_222 : StackLang.HolProg 64 :=
.seq rawBody481_212 rawBody481_221

def rawBody481_223 : StackLang.HolProg 64 :=
.seq rawBody481_211 rawBody481_222

def rawBody481_224 : StackLang.HolProg 64 :=
.seq rawBody481_210 rawBody481_223

def rawBody481_225 : StackLang.HolProg 64 :=
.seq rawBody481_209 rawBody481_224

def rawBody481_226 : StackLang.HolProg 64 :=
.seq rawBody481_208 rawBody481_225

def rawBody481_227 : StackLang.HolProg 64 :=
.seq rawBody481_197 rawBody481_226

def rawBody481_228 : StackLang.HolProg 64 :=
.seq rawBody481_196 rawBody481_227

def rawBody481_229 : StackLang.HolProg 64 :=
.seq rawBody481_195 rawBody481_228

def rawBody481_230 : StackLang.HolProg 64 :=
.seq rawBody481_194 rawBody481_229

def rawBody481_231 : StackLang.HolProg 64 :=
.seq rawBody481_193 rawBody481_230

def rawBody481_232 : StackLang.HolProg 64 :=
.seq rawBody481_192 rawBody481_231

def rawBody481_233 : StackLang.HolProg 64 :=
.seq rawBody481_191 rawBody481_232

def rawBody481_234 : StackLang.HolProg 64 :=
.seq rawBody481_190 rawBody481_233

def rawBody481_235 : StackLang.HolProg 64 :=
.seq rawBody481_189 rawBody481_234

def rawBody481_236 : StackLang.HolProg 64 :=
.seq rawBody481_188 rawBody481_235

def rawBody481_237 : StackLang.HolProg 64 :=
.seq rawBody481_187 rawBody481_236

def rawBody481_238 : StackLang.HolProg 64 :=
.seq rawBody481_130 rawBody481_237

def rawBody481_239 : StackLang.HolProg 64 :=
.seq rawBody481_121 rawBody481_238

def rawBody481_240 : StackLang.HolProg 64 :=
.seq rawBody481_120 rawBody481_239

def rawBody481_241 : StackLang.HolProg 64 :=
.seq rawBody481_119 rawBody481_240

def rawBody481_242 : StackLang.HolProg 64 :=
.seq rawBody481_118 rawBody481_241

def rawBody481_243 : StackLang.HolProg 64 :=
.seq rawBody481_117 rawBody481_242

def rawBody481_244 : StackLang.HolProg 64 :=
.seq rawBody481_116 rawBody481_243

def rawBody481_245 : StackLang.HolProg 64 :=
.seq rawBody481_115 rawBody481_244

def rawBody481_246 : StackLang.HolProg 64 :=
.seq rawBody481_114 rawBody481_245

def rawBody481_247 : StackLang.HolProg 64 :=
.seq rawBody481_113 rawBody481_246

def rawBody481_248 : StackLang.HolProg 64 :=
.seq rawBody481_112 rawBody481_247

def rawBody481_249 : StackLang.HolProg 64 :=
.seq rawBody481_111 rawBody481_248

def rawBody481_250 : StackLang.HolProg 64 :=
.seq rawBody481_110 rawBody481_249

def rawBody481_251 : StackLang.HolProg 64 :=
.seq rawBody481_109 rawBody481_250

def rawBody481_252 : StackLang.HolProg 64 :=
.seq rawBody481_108 rawBody481_251

def rawBody481_253 : StackLang.HolProg 64 :=
.seq rawBody481_97 rawBody481_252

def rawBody481_254 : StackLang.HolProg 64 :=
.seq rawBody481_96 rawBody481_253

def rawBody481_255 : StackLang.HolProg 64 :=
.seq rawBody481_95 rawBody481_254

def rawBody481_256 : StackLang.HolProg 64 :=
.seq rawBody481_94 rawBody481_255

def rawBody481_257 : StackLang.HolProg 64 :=
.seq rawBody481_17 rawBody481_256

def rawBody481_258 : StackLang.HolProg 64 :=
.seq rawBody481_0 rawBody481_257

def raw481 : StackLang.HolProg 64 := rawBody481_258
theorem raw481_eq : StackRawCall.compTop RawInfo.rawInfo (function481 (.list [])).1 = raw481 := by
  kernel_rfl
#print axioms raw481_eq
end InitECandidate.Proofs.BackendStages
