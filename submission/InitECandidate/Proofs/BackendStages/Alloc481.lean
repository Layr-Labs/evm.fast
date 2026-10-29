import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw481
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody481_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 11

def AllocBody481_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 10

def AllocBody481_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 16 9

def AllocBody481_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 12 8

def AllocBody481_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 6

def AllocBody481_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 14 5

def AllocBody481_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 4

def AllocBody481_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 13 3

def AllocBody481_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 11 2

def AllocBody481_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 15 1

def AllocBody481_10 : StackLang.HolProg 64 :=
.seq AllocBody481_8 AllocBody481_9

def AllocBody481_11 : StackLang.HolProg 64 :=
.seq AllocBody481_7 AllocBody481_10

def AllocBody481_12 : StackLang.HolProg 64 :=
.seq AllocBody481_6 AllocBody481_11

def AllocBody481_13 : StackLang.HolProg 64 :=
.seq AllocBody481_5 AllocBody481_12

def AllocBody481_14 : StackLang.HolProg 64 :=
.seq AllocBody481_4 AllocBody481_13

def AllocBody481_15 : StackLang.HolProg 64 :=
.seq AllocBody481_3 AllocBody481_14

def AllocBody481_16 : StackLang.HolProg 64 :=
.seq AllocBody481_2 AllocBody481_15

def AllocBody481_17 : StackLang.HolProg 64 :=
.seq AllocBody481_1 AllocBody481_16

def AllocBody481_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody481_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1512#64)

def AllocBody481_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody481_21 : StackLang.HolProg 64 :=
.seq AllocBody481_19 AllocBody481_20

def AllocBody481_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody481_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody481_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody481_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 481 3

def AllocBody481_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody481_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody481_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody481_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody481_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody481_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody481_32 : StackLang.HolProg 64 :=
.seq AllocBody481_30 AllocBody481_31

def AllocBody481_33 : StackLang.HolProg 64 :=
.seq AllocBody481_29 AllocBody481_32

def AllocBody481_34 : StackLang.HolProg 64 :=
.seq AllocBody481_28 AllocBody481_33

def AllocBody481_35 : StackLang.HolProg 64 :=
.seq AllocBody481_27 AllocBody481_34

def AllocBody481_36 : StackLang.HolProg 64 :=
.seq AllocBody481_26 AllocBody481_35

def AllocBody481_37 : StackLang.HolProg 64 :=
.seq AllocBody481_25 AllocBody481_36

def AllocBody481_38 : StackLang.HolProg 64 :=
.seq AllocBody481_24 AllocBody481_37

def AllocBody481_39 : StackLang.HolProg 64 :=
.seq AllocBody481_23 AllocBody481_38

def AllocBody481_40 : StackLang.HolProg 64 :=
.seq AllocBody481_22 AllocBody481_39

def AllocBody481_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody481_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody481_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody481_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody481_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody481_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody481_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody481_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 10

def AllocBody481_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 9

def AllocBody481_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def AllocBody481_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 6

def AllocBody481_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody481_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 4

def AllocBody481_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody481_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody481_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody481_57 : StackLang.HolProg 64 :=
.seq AllocBody481_55 AllocBody481_56

def AllocBody481_58 : StackLang.HolProg 64 :=
.seq AllocBody481_54 AllocBody481_57

def AllocBody481_59 : StackLang.HolProg 64 :=
.seq AllocBody481_53 AllocBody481_58

def AllocBody481_60 : StackLang.HolProg 64 :=
.seq AllocBody481_52 AllocBody481_59

def AllocBody481_61 : StackLang.HolProg 64 :=
.seq AllocBody481_51 AllocBody481_60

def AllocBody481_62 : StackLang.HolProg 64 :=
.seq AllocBody481_50 AllocBody481_61

def AllocBody481_63 : StackLang.HolProg 64 :=
.seq AllocBody481_49 AllocBody481_62

def AllocBody481_64 : StackLang.HolProg 64 :=
.seq AllocBody481_48 AllocBody481_63

def AllocBody481_65 : StackLang.HolProg 64 :=
.seq AllocBody481_47 AllocBody481_64

def AllocBody481_66 : StackLang.HolProg 64 :=
.seq AllocBody481_46 AllocBody481_65

def AllocBody481_67 : StackLang.HolProg 64 :=
.seq AllocBody481_45 AllocBody481_66

def AllocBody481_68 : StackLang.HolProg 64 :=
.seq AllocBody481_44 AllocBody481_67

def AllocBody481_69 : StackLang.HolProg 64 :=
.seq AllocBody481_43 AllocBody481_68

def AllocBody481_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 10

def AllocBody481_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 9

def AllocBody481_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def AllocBody481_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 6

def AllocBody481_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody481_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 4

def AllocBody481_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody481_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody481_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody481_79 : StackLang.HolProg 64 :=
.seq AllocBody481_77 AllocBody481_78

def AllocBody481_80 : StackLang.HolProg 64 :=
.seq AllocBody481_76 AllocBody481_79

def AllocBody481_81 : StackLang.HolProg 64 :=
.seq AllocBody481_75 AllocBody481_80

def AllocBody481_82 : StackLang.HolProg 64 :=
.seq AllocBody481_74 AllocBody481_81

def AllocBody481_83 : StackLang.HolProg 64 :=
.seq AllocBody481_73 AllocBody481_82

def AllocBody481_84 : StackLang.HolProg 64 :=
.seq AllocBody481_72 AllocBody481_83

def AllocBody481_85 : StackLang.HolProg 64 :=
.seq AllocBody481_71 AllocBody481_84

def AllocBody481_86 : StackLang.HolProg 64 :=
.seq AllocBody481_70 AllocBody481_85

def AllocBody481_87 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody481_88 : StackLang.HolProg 64 :=
.seq AllocBody481_86 AllocBody481_87

def AllocBody481_89 : StackLang.HolProg 64 :=
.call (some (AllocBody481_69, 0, 481, 2)) (Sum.inl 480) (some (AllocBody481_88, 481, 3))

def AllocBody481_90 : StackLang.HolProg 64 :=
.seq AllocBody481_42 AllocBody481_89

def AllocBody481_91 : StackLang.HolProg 64 :=
.seq AllocBody481_41 AllocBody481_90

def AllocBody481_92 : StackLang.HolProg 64 :=
.seq AllocBody481_40 AllocBody481_91

def AllocBody481_93 : StackLang.HolProg 64 :=
.seq AllocBody481_21 AllocBody481_92

def AllocBody481_94 : StackLang.HolProg 64 :=
.seq AllocBody481_18 AllocBody481_93

def AllocBody481_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody481_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody481_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def AllocBody481_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody481_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody481_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 11

def AllocBody481_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 10

def AllocBody481_102 : StackLang.HolProg 64 :=
.seq AllocBody481_100 AllocBody481_101

def AllocBody481_103 : StackLang.HolProg 64 :=
.seq AllocBody481_99 AllocBody481_102

def AllocBody481_104 : StackLang.HolProg 64 :=
.seq AllocBody481_98 AllocBody481_103

def AllocBody481_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody481_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 7

def AllocBody481_107 : StackLang.HolProg 64 :=
.seq AllocBody481_105 AllocBody481_106

def AllocBody481_108 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 9 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody481_104 AllocBody481_107

def AllocBody481_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody481_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody481_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody481_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody481_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody481_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody481_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 32#64))

def AllocBody481_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody481_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody481_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody481_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody481_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody481_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 0#64))

def AllocBody481_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 8

def AllocBody481_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def AllocBody481_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def AllocBody481_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 10

def AllocBody481_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody481_127 : StackLang.HolProg 64 :=
.seq AllocBody481_125 AllocBody481_126

def AllocBody481_128 : StackLang.HolProg 64 :=
.seq AllocBody481_124 AllocBody481_127

def AllocBody481_129 : StackLang.HolProg 64 :=
.seq AllocBody481_123 AllocBody481_128

def AllocBody481_130 : StackLang.HolProg 64 :=
.seq AllocBody481_122 AllocBody481_129

def AllocBody481_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody481_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1513#64)

def AllocBody481_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody481_134 : StackLang.HolProg 64 :=
.seq AllocBody481_132 AllocBody481_133

def AllocBody481_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody481_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody481_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody481_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 481 5

def AllocBody481_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody481_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody481_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody481_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody481_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody481_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody481_145 : StackLang.HolProg 64 :=
.seq AllocBody481_143 AllocBody481_144

def AllocBody481_146 : StackLang.HolProg 64 :=
.seq AllocBody481_142 AllocBody481_145

def AllocBody481_147 : StackLang.HolProg 64 :=
.seq AllocBody481_141 AllocBody481_146

def AllocBody481_148 : StackLang.HolProg 64 :=
.seq AllocBody481_140 AllocBody481_147

def AllocBody481_149 : StackLang.HolProg 64 :=
.seq AllocBody481_139 AllocBody481_148

def AllocBody481_150 : StackLang.HolProg 64 :=
.seq AllocBody481_138 AllocBody481_149

def AllocBody481_151 : StackLang.HolProg 64 :=
.seq AllocBody481_137 AllocBody481_150

def AllocBody481_152 : StackLang.HolProg 64 :=
.seq AllocBody481_136 AllocBody481_151

def AllocBody481_153 : StackLang.HolProg 64 :=
.seq AllocBody481_135 AllocBody481_152

def AllocBody481_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody481_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody481_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody481_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody481_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody481_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody481_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody481_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 10

def AllocBody481_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 9

def AllocBody481_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 8

def AllocBody481_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def AllocBody481_165 : StackLang.HolProg 64 :=
.seq AllocBody481_163 AllocBody481_164

def AllocBody481_166 : StackLang.HolProg 64 :=
.seq AllocBody481_162 AllocBody481_165

def AllocBody481_167 : StackLang.HolProg 64 :=
.seq AllocBody481_161 AllocBody481_166

def AllocBody481_168 : StackLang.HolProg 64 :=
.seq AllocBody481_160 AllocBody481_167

def AllocBody481_169 : StackLang.HolProg 64 :=
.seq AllocBody481_159 AllocBody481_168

def AllocBody481_170 : StackLang.HolProg 64 :=
.seq AllocBody481_158 AllocBody481_169

def AllocBody481_171 : StackLang.HolProg 64 :=
.seq AllocBody481_157 AllocBody481_170

def AllocBody481_172 : StackLang.HolProg 64 :=
.seq AllocBody481_156 AllocBody481_171

def AllocBody481_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 10

def AllocBody481_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 9

def AllocBody481_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 8

def AllocBody481_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def AllocBody481_177 : StackLang.HolProg 64 :=
.seq AllocBody481_175 AllocBody481_176

def AllocBody481_178 : StackLang.HolProg 64 :=
.seq AllocBody481_174 AllocBody481_177

def AllocBody481_179 : StackLang.HolProg 64 :=
.seq AllocBody481_173 AllocBody481_178

def AllocBody481_180 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody481_181 : StackLang.HolProg 64 :=
.seq AllocBody481_179 AllocBody481_180

def AllocBody481_182 : StackLang.HolProg 64 :=
.call (some (AllocBody481_172, 0, 481, 4)) (Sum.inl 480) (some (AllocBody481_181, 481, 5))

def AllocBody481_183 : StackLang.HolProg 64 :=
.seq AllocBody481_155 AllocBody481_182

def AllocBody481_184 : StackLang.HolProg 64 :=
.seq AllocBody481_154 AllocBody481_183

def AllocBody481_185 : StackLang.HolProg 64 :=
.seq AllocBody481_153 AllocBody481_184

def AllocBody481_186 : StackLang.HolProg 64 :=
.seq AllocBody481_134 AllocBody481_185

def AllocBody481_187 : StackLang.HolProg 64 :=
.seq AllocBody481_131 AllocBody481_186

def AllocBody481_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody481_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody481_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody481_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody481_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody481_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody481_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody481_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody481_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody481_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def AllocBody481_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody481_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody481_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 11

def AllocBody481_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 8

def AllocBody481_202 : StackLang.HolProg 64 :=
.seq AllocBody481_200 AllocBody481_201

def AllocBody481_203 : StackLang.HolProg 64 :=
.seq AllocBody481_199 AllocBody481_202

def AllocBody481_204 : StackLang.HolProg 64 :=
.seq AllocBody481_198 AllocBody481_203

def AllocBody481_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody481_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody481_207 : StackLang.HolProg 64 :=
.seq AllocBody481_205 AllocBody481_206

def AllocBody481_208 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody481_204 AllocBody481_207

def AllocBody481_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody481_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody481_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody481_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody481_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody481_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody481_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody481_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 11

def AllocBody481_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 8

def AllocBody481_218 : StackLang.HolProg 64 :=
.seq AllocBody481_216 AllocBody481_217

def AllocBody481_219 : StackLang.HolProg 64 :=
.seq AllocBody481_215 AllocBody481_218

def AllocBody481_220 : StackLang.HolProg 64 :=
.seq AllocBody481_214 AllocBody481_219

def AllocBody481_221 : StackLang.HolProg 64 :=
.seq AllocBody481_213 AllocBody481_220

def AllocBody481_222 : StackLang.HolProg 64 :=
.seq AllocBody481_212 AllocBody481_221

def AllocBody481_223 : StackLang.HolProg 64 :=
.seq AllocBody481_211 AllocBody481_222

def AllocBody481_224 : StackLang.HolProg 64 :=
.seq AllocBody481_210 AllocBody481_223

def AllocBody481_225 : StackLang.HolProg 64 :=
.seq AllocBody481_209 AllocBody481_224

def AllocBody481_226 : StackLang.HolProg 64 :=
.seq AllocBody481_208 AllocBody481_225

def AllocBody481_227 : StackLang.HolProg 64 :=
.seq AllocBody481_197 AllocBody481_226

def AllocBody481_228 : StackLang.HolProg 64 :=
.seq AllocBody481_196 AllocBody481_227

def AllocBody481_229 : StackLang.HolProg 64 :=
.seq AllocBody481_195 AllocBody481_228

def AllocBody481_230 : StackLang.HolProg 64 :=
.seq AllocBody481_194 AllocBody481_229

def AllocBody481_231 : StackLang.HolProg 64 :=
.seq AllocBody481_193 AllocBody481_230

def AllocBody481_232 : StackLang.HolProg 64 :=
.seq AllocBody481_192 AllocBody481_231

def AllocBody481_233 : StackLang.HolProg 64 :=
.seq AllocBody481_191 AllocBody481_232

def AllocBody481_234 : StackLang.HolProg 64 :=
.seq AllocBody481_190 AllocBody481_233

def AllocBody481_235 : StackLang.HolProg 64 :=
.seq AllocBody481_189 AllocBody481_234

def AllocBody481_236 : StackLang.HolProg 64 :=
.seq AllocBody481_188 AllocBody481_235

def AllocBody481_237 : StackLang.HolProg 64 :=
.seq AllocBody481_187 AllocBody481_236

def AllocBody481_238 : StackLang.HolProg 64 :=
.seq AllocBody481_130 AllocBody481_237

def AllocBody481_239 : StackLang.HolProg 64 :=
.seq AllocBody481_121 AllocBody481_238

def AllocBody481_240 : StackLang.HolProg 64 :=
.seq AllocBody481_120 AllocBody481_239

def AllocBody481_241 : StackLang.HolProg 64 :=
.seq AllocBody481_119 AllocBody481_240

def AllocBody481_242 : StackLang.HolProg 64 :=
.seq AllocBody481_118 AllocBody481_241

def AllocBody481_243 : StackLang.HolProg 64 :=
.seq AllocBody481_117 AllocBody481_242

def AllocBody481_244 : StackLang.HolProg 64 :=
.seq AllocBody481_116 AllocBody481_243

def AllocBody481_245 : StackLang.HolProg 64 :=
.seq AllocBody481_115 AllocBody481_244

def AllocBody481_246 : StackLang.HolProg 64 :=
.seq AllocBody481_114 AllocBody481_245

def AllocBody481_247 : StackLang.HolProg 64 :=
.seq AllocBody481_113 AllocBody481_246

def AllocBody481_248 : StackLang.HolProg 64 :=
.seq AllocBody481_112 AllocBody481_247

def AllocBody481_249 : StackLang.HolProg 64 :=
.seq AllocBody481_111 AllocBody481_248

def AllocBody481_250 : StackLang.HolProg 64 :=
.seq AllocBody481_110 AllocBody481_249

def AllocBody481_251 : StackLang.HolProg 64 :=
.seq AllocBody481_109 AllocBody481_250

def AllocBody481_252 : StackLang.HolProg 64 :=
.seq AllocBody481_108 AllocBody481_251

def AllocBody481_253 : StackLang.HolProg 64 :=
.seq AllocBody481_97 AllocBody481_252

def AllocBody481_254 : StackLang.HolProg 64 :=
.seq AllocBody481_96 AllocBody481_253

def AllocBody481_255 : StackLang.HolProg 64 :=
.seq AllocBody481_95 AllocBody481_254

def AllocBody481_256 : StackLang.HolProg 64 :=
.seq AllocBody481_94 AllocBody481_255

def AllocBody481_257 : StackLang.HolProg 64 :=
.seq AllocBody481_17 AllocBody481_256

def AllocBody481_258 : StackLang.HolProg 64 :=
.seq AllocBody481_0 AllocBody481_257

def Alloc481 : Nat × StackLang.HolProg 64 := (481, AllocBody481_258)
theorem Alloc481_eq : StackAlloc.progComp (481, raw481) = Alloc481 := by
  kernel_rfl
#print axioms Alloc481_eq
end InitECandidate.Proofs.BackendStages
