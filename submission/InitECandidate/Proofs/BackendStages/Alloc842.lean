import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw842
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody842_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 14

def AllocBody842_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def AllocBody842_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody842_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody842_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64)))

def AllocBody842_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody842_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody842_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 12

def AllocBody842_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 11

def AllocBody842_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 13

def AllocBody842_12 : StackLang.HolProg 64 :=
.seq AllocBody842_10 AllocBody842_11

def AllocBody842_13 : StackLang.HolProg 64 :=
.seq AllocBody842_9 AllocBody842_12

def AllocBody842_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody842_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody842_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody842_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody842_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody842_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64)))

def AllocBody842_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody842_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 20#64)

def AllocBody842_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 13

def AllocBody842_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody842_28 : StackLang.HolProg 64 :=
.seq AllocBody842_26 AllocBody842_27

def AllocBody842_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 13

def AllocBody842_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 11

def AllocBody842_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody842_32 : StackLang.HolProg 64 :=
.seq AllocBody842_30 AllocBody842_31

def AllocBody842_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 11

def AllocBody842_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 10

def AllocBody842_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 9

def AllocBody842_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 7

def AllocBody842_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def AllocBody842_38 : StackLang.HolProg 64 :=
.seq AllocBody842_36 AllocBody842_37

def AllocBody842_39 : StackLang.HolProg 64 :=
.seq AllocBody842_35 AllocBody842_38

def AllocBody842_40 : StackLang.HolProg 64 :=
.seq AllocBody842_34 AllocBody842_39

def AllocBody842_41 : StackLang.HolProg 64 :=
.seq AllocBody842_33 AllocBody842_40

def AllocBody842_42 : StackLang.HolProg 64 :=
.seq AllocBody842_32 AllocBody842_41

def AllocBody842_43 : StackLang.HolProg 64 :=
.seq AllocBody842_29 AllocBody842_42

def AllocBody842_44 : StackLang.HolProg 64 :=
.seq AllocBody842_28 AllocBody842_43

def AllocBody842_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4209#64)

def AllocBody842_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody842_48 : StackLang.HolProg 64 :=
.seq AllocBody842_46 AllocBody842_47

def AllocBody842_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody842_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody842_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody842_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 842 3

def AllocBody842_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody842_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody842_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody842_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody842_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody842_59 : StackLang.HolProg 64 :=
.seq AllocBody842_57 AllocBody842_58

def AllocBody842_60 : StackLang.HolProg 64 :=
.seq AllocBody842_56 AllocBody842_59

def AllocBody842_61 : StackLang.HolProg 64 :=
.seq AllocBody842_55 AllocBody842_60

def AllocBody842_62 : StackLang.HolProg 64 :=
.seq AllocBody842_54 AllocBody842_61

def AllocBody842_63 : StackLang.HolProg 64 :=
.seq AllocBody842_53 AllocBody842_62

def AllocBody842_64 : StackLang.HolProg 64 :=
.seq AllocBody842_52 AllocBody842_63

def AllocBody842_65 : StackLang.HolProg 64 :=
.seq AllocBody842_51 AllocBody842_64

def AllocBody842_66 : StackLang.HolProg 64 :=
.seq AllocBody842_50 AllocBody842_65

def AllocBody842_67 : StackLang.HolProg 64 :=
.seq AllocBody842_49 AllocBody842_66

def AllocBody842_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody842_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody842_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody842_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody842_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody842_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 13

def AllocBody842_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 10

def AllocBody842_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def AllocBody842_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def AllocBody842_79 : StackLang.HolProg 64 :=
.seq AllocBody842_77 AllocBody842_78

def AllocBody842_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody842_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody842_82 : StackLang.HolProg 64 :=
.seq AllocBody842_80 AllocBody842_81

def AllocBody842_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody842_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody842_85 : StackLang.HolProg 64 :=
.seq AllocBody842_83 AllocBody842_84

def AllocBody842_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody842_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody842_88 : StackLang.HolProg 64 :=
.seq AllocBody842_86 AllocBody842_87

def AllocBody842_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody842_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody842_91 : StackLang.HolProg 64 :=
.seq AllocBody842_89 AllocBody842_90

def AllocBody842_92 : StackLang.HolProg 64 :=
.seq AllocBody842_88 AllocBody842_91

def AllocBody842_93 : StackLang.HolProg 64 :=
.seq AllocBody842_85 AllocBody842_92

def AllocBody842_94 : StackLang.HolProg 64 :=
.seq AllocBody842_82 AllocBody842_93

def AllocBody842_95 : StackLang.HolProg 64 :=
.seq AllocBody842_79 AllocBody842_94

def AllocBody842_96 : StackLang.HolProg 64 :=
.seq AllocBody842_76 AllocBody842_95

def AllocBody842_97 : StackLang.HolProg 64 :=
.seq AllocBody842_75 AllocBody842_96

def AllocBody842_98 : StackLang.HolProg 64 :=
.seq AllocBody842_74 AllocBody842_97

def AllocBody842_99 : StackLang.HolProg 64 :=
.seq AllocBody842_73 AllocBody842_98

def AllocBody842_100 : StackLang.HolProg 64 :=
.seq AllocBody842_72 AllocBody842_99

def AllocBody842_101 : StackLang.HolProg 64 :=
.seq AllocBody842_71 AllocBody842_100

def AllocBody842_102 : StackLang.HolProg 64 :=
.seq AllocBody842_70 AllocBody842_101

def AllocBody842_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 13

def AllocBody842_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 10

def AllocBody842_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def AllocBody842_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def AllocBody842_107 : StackLang.HolProg 64 :=
.seq AllocBody842_105 AllocBody842_106

def AllocBody842_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody842_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody842_110 : StackLang.HolProg 64 :=
.seq AllocBody842_108 AllocBody842_109

def AllocBody842_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody842_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody842_113 : StackLang.HolProg 64 :=
.seq AllocBody842_111 AllocBody842_112

def AllocBody842_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody842_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody842_116 : StackLang.HolProg 64 :=
.seq AllocBody842_114 AllocBody842_115

def AllocBody842_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody842_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody842_119 : StackLang.HolProg 64 :=
.seq AllocBody842_117 AllocBody842_118

def AllocBody842_120 : StackLang.HolProg 64 :=
.seq AllocBody842_116 AllocBody842_119

def AllocBody842_121 : StackLang.HolProg 64 :=
.seq AllocBody842_113 AllocBody842_120

def AllocBody842_122 : StackLang.HolProg 64 :=
.seq AllocBody842_110 AllocBody842_121

def AllocBody842_123 : StackLang.HolProg 64 :=
.seq AllocBody842_107 AllocBody842_122

def AllocBody842_124 : StackLang.HolProg 64 :=
.seq AllocBody842_104 AllocBody842_123

def AllocBody842_125 : StackLang.HolProg 64 :=
.seq AllocBody842_103 AllocBody842_124

def AllocBody842_126 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody842_127 : StackLang.HolProg 64 :=
.seq AllocBody842_125 AllocBody842_126

def AllocBody842_128 : StackLang.HolProg 64 :=
.call (some (AllocBody842_102, 0, 842, 2)) (Sum.inl 176) (some (AllocBody842_127, 842, 3))

def AllocBody842_129 : StackLang.HolProg 64 :=
.seq AllocBody842_69 AllocBody842_128

def AllocBody842_130 : StackLang.HolProg 64 :=
.seq AllocBody842_68 AllocBody842_129

def AllocBody842_131 : StackLang.HolProg 64 :=
.seq AllocBody842_67 AllocBody842_130

def AllocBody842_132 : StackLang.HolProg 64 :=
.seq AllocBody842_48 AllocBody842_131

def AllocBody842_133 : StackLang.HolProg 64 :=
.seq AllocBody842_45 AllocBody842_132

def AllocBody842_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody842_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody842_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64)))

def AllocBody842_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 16#64))

def AllocBody842_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody842_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody842_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 13

def AllocBody842_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def AllocBody842_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 5

def AllocBody842_146 : StackLang.HolProg 64 :=
.seq AllocBody842_144 AllocBody842_145

def AllocBody842_147 : StackLang.HolProg 64 :=
.seq AllocBody842_143 AllocBody842_146

def AllocBody842_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody842_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody842_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody842_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 13

def AllocBody842_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 8#64))

def AllocBody842_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody842_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def AllocBody842_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 13

def AllocBody842_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody842_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody842_159 : StackLang.HolProg 64 :=
.seq AllocBody842_157 AllocBody842_158

def AllocBody842_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody842_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody842_162 : StackLang.HolProg 64 :=
.seq AllocBody842_160 AllocBody842_161

def AllocBody842_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody842_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody842_165 : StackLang.HolProg 64 :=
.seq AllocBody842_163 AllocBody842_164

def AllocBody842_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody842_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody842_168 : StackLang.HolProg 64 :=
.seq AllocBody842_166 AllocBody842_167

def AllocBody842_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 8

def AllocBody842_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody842_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody842_172 : StackLang.HolProg 64 :=
.seq AllocBody842_170 AllocBody842_171

def AllocBody842_173 : StackLang.HolProg 64 :=
.seq AllocBody842_169 AllocBody842_172

def AllocBody842_174 : StackLang.HolProg 64 :=
.seq AllocBody842_168 AllocBody842_173

def AllocBody842_175 : StackLang.HolProg 64 :=
.seq AllocBody842_165 AllocBody842_174

def AllocBody842_176 : StackLang.HolProg 64 :=
.seq AllocBody842_162 AllocBody842_175

def AllocBody842_177 : StackLang.HolProg 64 :=
.seq AllocBody842_159 AllocBody842_176

def AllocBody842_178 : StackLang.HolProg 64 :=
.seq AllocBody842_156 AllocBody842_177

def AllocBody842_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4210#64)

def AllocBody842_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody842_182 : StackLang.HolProg 64 :=
.seq AllocBody842_180 AllocBody842_181

def AllocBody842_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody842_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody842_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody842_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 842 5

def AllocBody842_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody842_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody842_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody842_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody842_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody842_193 : StackLang.HolProg 64 :=
.seq AllocBody842_191 AllocBody842_192

def AllocBody842_194 : StackLang.HolProg 64 :=
.seq AllocBody842_190 AllocBody842_193

def AllocBody842_195 : StackLang.HolProg 64 :=
.seq AllocBody842_189 AllocBody842_194

def AllocBody842_196 : StackLang.HolProg 64 :=
.seq AllocBody842_188 AllocBody842_195

def AllocBody842_197 : StackLang.HolProg 64 :=
.seq AllocBody842_187 AllocBody842_196

def AllocBody842_198 : StackLang.HolProg 64 :=
.seq AllocBody842_186 AllocBody842_197

def AllocBody842_199 : StackLang.HolProg 64 :=
.seq AllocBody842_185 AllocBody842_198

def AllocBody842_200 : StackLang.HolProg 64 :=
.seq AllocBody842_184 AllocBody842_199

def AllocBody842_201 : StackLang.HolProg 64 :=
.seq AllocBody842_183 AllocBody842_200

def AllocBody842_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody842_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody842_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody842_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody842_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody842_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody842_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def AllocBody842_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody842_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody842_213 : StackLang.HolProg 64 :=
.seq AllocBody842_211 AllocBody842_212

def AllocBody842_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody842_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody842_216 : StackLang.HolProg 64 :=
.seq AllocBody842_214 AllocBody842_215

def AllocBody842_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody842_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody842_219 : StackLang.HolProg 64 :=
.seq AllocBody842_217 AllocBody842_218

def AllocBody842_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody842_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody842_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody842_223 : StackLang.HolProg 64 :=
.seq AllocBody842_221 AllocBody842_222

def AllocBody842_224 : StackLang.HolProg 64 :=
.seq AllocBody842_220 AllocBody842_223

def AllocBody842_225 : StackLang.HolProg 64 :=
.seq AllocBody842_219 AllocBody842_224

def AllocBody842_226 : StackLang.HolProg 64 :=
.seq AllocBody842_216 AllocBody842_225

def AllocBody842_227 : StackLang.HolProg 64 :=
.seq AllocBody842_213 AllocBody842_226

def AllocBody842_228 : StackLang.HolProg 64 :=
.seq AllocBody842_210 AllocBody842_227

def AllocBody842_229 : StackLang.HolProg 64 :=
.seq AllocBody842_209 AllocBody842_228

def AllocBody842_230 : StackLang.HolProg 64 :=
.seq AllocBody842_208 AllocBody842_229

def AllocBody842_231 : StackLang.HolProg 64 :=
.seq AllocBody842_207 AllocBody842_230

def AllocBody842_232 : StackLang.HolProg 64 :=
.seq AllocBody842_206 AllocBody842_231

def AllocBody842_233 : StackLang.HolProg 64 :=
.seq AllocBody842_205 AllocBody842_232

def AllocBody842_234 : StackLang.HolProg 64 :=
.seq AllocBody842_204 AllocBody842_233

def AllocBody842_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody842_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def AllocBody842_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody842_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody842_239 : StackLang.HolProg 64 :=
.seq AllocBody842_237 AllocBody842_238

def AllocBody842_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody842_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody842_242 : StackLang.HolProg 64 :=
.seq AllocBody842_240 AllocBody842_241

def AllocBody842_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody842_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody842_245 : StackLang.HolProg 64 :=
.seq AllocBody842_243 AllocBody842_244

def AllocBody842_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody842_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody842_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody842_249 : StackLang.HolProg 64 :=
.seq AllocBody842_247 AllocBody842_248

def AllocBody842_250 : StackLang.HolProg 64 :=
.seq AllocBody842_246 AllocBody842_249

def AllocBody842_251 : StackLang.HolProg 64 :=
.seq AllocBody842_245 AllocBody842_250

def AllocBody842_252 : StackLang.HolProg 64 :=
.seq AllocBody842_242 AllocBody842_251

def AllocBody842_253 : StackLang.HolProg 64 :=
.seq AllocBody842_239 AllocBody842_252

def AllocBody842_254 : StackLang.HolProg 64 :=
.seq AllocBody842_236 AllocBody842_253

def AllocBody842_255 : StackLang.HolProg 64 :=
.seq AllocBody842_235 AllocBody842_254

def AllocBody842_256 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody842_257 : StackLang.HolProg 64 :=
.seq AllocBody842_255 AllocBody842_256

def AllocBody842_258 : StackLang.HolProg 64 :=
.call (some (AllocBody842_234, 0, 842, 4)) (Sum.inl 176) (some (AllocBody842_257, 842, 5))

def AllocBody842_259 : StackLang.HolProg 64 :=
.seq AllocBody842_203 AllocBody842_258

def AllocBody842_260 : StackLang.HolProg 64 :=
.seq AllocBody842_202 AllocBody842_259

def AllocBody842_261 : StackLang.HolProg 64 :=
.seq AllocBody842_201 AllocBody842_260

def AllocBody842_262 : StackLang.HolProg 64 :=
.seq AllocBody842_182 AllocBody842_261

def AllocBody842_263 : StackLang.HolProg 64 :=
.seq AllocBody842_179 AllocBody842_262

def AllocBody842_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody842_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody842_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody842_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 4

def AllocBody842_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def AllocBody842_271 : StackLang.HolProg 64 :=
.seq AllocBody842_269 AllocBody842_270

def AllocBody842_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody842_273 : StackLang.HolProg 64 :=
.seq AllocBody842_271 AllocBody842_272

def AllocBody842_274 : StackLang.HolProg 64 :=
.seq AllocBody842_268 AllocBody842_273

def AllocBody842_275 : StackLang.HolProg 64 :=
.seq AllocBody842_267 AllocBody842_274

def AllocBody842_276 : StackLang.HolProg 64 :=
.seq AllocBody842_266 AllocBody842_275

def AllocBody842_277 : StackLang.HolProg 64 :=
.seq AllocBody842_265 AllocBody842_276

def AllocBody842_278 : StackLang.HolProg 64 :=
.seq AllocBody842_264 AllocBody842_277

def AllocBody842_279 : StackLang.HolProg 64 :=
.seq AllocBody842_263 AllocBody842_278

def AllocBody842_280 : StackLang.HolProg 64 :=
.seq AllocBody842_178 AllocBody842_279

def AllocBody842_281 : StackLang.HolProg 64 :=
.seq AllocBody842_155 AllocBody842_280

def AllocBody842_282 : StackLang.HolProg 64 :=
.seq AllocBody842_154 AllocBody842_281

def AllocBody842_283 : StackLang.HolProg 64 :=
.seq AllocBody842_153 AllocBody842_282

def AllocBody842_284 : StackLang.HolProg 64 :=
.seq AllocBody842_152 AllocBody842_283

def AllocBody842_285 : StackLang.HolProg 64 :=
.seq AllocBody842_151 AllocBody842_284

def AllocBody842_286 : StackLang.HolProg 64 :=
.seq AllocBody842_150 AllocBody842_285

def AllocBody842_287 : StackLang.HolProg 64 :=
.seq AllocBody842_149 AllocBody842_286

def AllocBody842_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody842_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody842_290 : StackLang.HolProg 64 :=
.seq AllocBody842_288 AllocBody842_289

def AllocBody842_291 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody842_287 AllocBody842_290

def AllocBody842_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody842_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 12

def AllocBody842_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 13

def AllocBody842_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 11

def AllocBody842_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 4

def AllocBody842_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 10

def AllocBody842_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 9

def AllocBody842_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 8

def AllocBody842_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 11 7

def AllocBody842_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 12 6

def AllocBody842_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 13 5

def AllocBody842_303 : StackLang.HolProg 64 :=
.seq AllocBody842_301 AllocBody842_302

def AllocBody842_304 : StackLang.HolProg 64 :=
.seq AllocBody842_300 AllocBody842_303

def AllocBody842_305 : StackLang.HolProg 64 :=
.seq AllocBody842_299 AllocBody842_304

def AllocBody842_306 : StackLang.HolProg 64 :=
.seq AllocBody842_298 AllocBody842_305

def AllocBody842_307 : StackLang.HolProg 64 :=
.seq AllocBody842_297 AllocBody842_306

def AllocBody842_308 : StackLang.HolProg 64 :=
.seq AllocBody842_296 AllocBody842_307

def AllocBody842_309 : StackLang.HolProg 64 :=
.seq AllocBody842_295 AllocBody842_308

def AllocBody842_310 : StackLang.HolProg 64 :=
.seq AllocBody842_294 AllocBody842_309

def AllocBody842_311 : StackLang.HolProg 64 :=
.seq AllocBody842_293 AllocBody842_310

def AllocBody842_312 : StackLang.HolProg 64 :=
.seq AllocBody842_292 AllocBody842_311

def AllocBody842_313 : StackLang.HolProg 64 :=
.seq AllocBody842_291 AllocBody842_312

def AllocBody842_314 : StackLang.HolProg 64 :=
.seq AllocBody842_148 AllocBody842_313

def AllocBody842_315 : StackLang.HolProg 64 :=
.loop AllocBody842_314

def AllocBody842_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody842_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 5

def AllocBody842_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4211#64)

def AllocBody842_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody842_321 : StackLang.HolProg 64 :=
.seq AllocBody842_319 AllocBody842_320

def AllocBody842_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody842_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody842_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody842_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 842 7

def AllocBody842_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody842_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody842_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody842_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody842_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody842_332 : StackLang.HolProg 64 :=
.seq AllocBody842_330 AllocBody842_331

def AllocBody842_333 : StackLang.HolProg 64 :=
.seq AllocBody842_329 AllocBody842_332

def AllocBody842_334 : StackLang.HolProg 64 :=
.seq AllocBody842_328 AllocBody842_333

def AllocBody842_335 : StackLang.HolProg 64 :=
.seq AllocBody842_327 AllocBody842_334

def AllocBody842_336 : StackLang.HolProg 64 :=
.seq AllocBody842_326 AllocBody842_335

def AllocBody842_337 : StackLang.HolProg 64 :=
.seq AllocBody842_325 AllocBody842_336

def AllocBody842_338 : StackLang.HolProg 64 :=
.seq AllocBody842_324 AllocBody842_337

def AllocBody842_339 : StackLang.HolProg 64 :=
.seq AllocBody842_323 AllocBody842_338

def AllocBody842_340 : StackLang.HolProg 64 :=
.seq AllocBody842_322 AllocBody842_339

def AllocBody842_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody842_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody842_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody842_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody842_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody842_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def AllocBody842_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 11

def AllocBody842_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 13

def AllocBody842_351 : StackLang.HolProg 64 :=
.seq AllocBody842_349 AllocBody842_350

def AllocBody842_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody842_353 : StackLang.HolProg 64 :=
.seq AllocBody842_351 AllocBody842_352

def AllocBody842_354 : StackLang.HolProg 64 :=
.seq AllocBody842_348 AllocBody842_353

def AllocBody842_355 : StackLang.HolProg 64 :=
.seq AllocBody842_347 AllocBody842_354

def AllocBody842_356 : StackLang.HolProg 64 :=
.seq AllocBody842_346 AllocBody842_355

def AllocBody842_357 : StackLang.HolProg 64 :=
.seq AllocBody842_345 AllocBody842_356

def AllocBody842_358 : StackLang.HolProg 64 :=
.seq AllocBody842_344 AllocBody842_357

def AllocBody842_359 : StackLang.HolProg 64 :=
.seq AllocBody842_343 AllocBody842_358

def AllocBody842_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def AllocBody842_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 11

def AllocBody842_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 13

def AllocBody842_363 : StackLang.HolProg 64 :=
.seq AllocBody842_361 AllocBody842_362

def AllocBody842_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody842_365 : StackLang.HolProg 64 :=
.seq AllocBody842_363 AllocBody842_364

def AllocBody842_366 : StackLang.HolProg 64 :=
.seq AllocBody842_360 AllocBody842_365

def AllocBody842_367 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody842_368 : StackLang.HolProg 64 :=
.seq AllocBody842_366 AllocBody842_367

def AllocBody842_369 : StackLang.HolProg 64 :=
.call (some (AllocBody842_359, 0, 842, 6)) (Sum.inl 840) (some (AllocBody842_368, 842, 7))

def AllocBody842_370 : StackLang.HolProg 64 :=
.seq AllocBody842_342 AllocBody842_369

def AllocBody842_371 : StackLang.HolProg 64 :=
.seq AllocBody842_341 AllocBody842_370

def AllocBody842_372 : StackLang.HolProg 64 :=
.seq AllocBody842_340 AllocBody842_371

def AllocBody842_373 : StackLang.HolProg 64 :=
.seq AllocBody842_321 AllocBody842_372

def AllocBody842_374 : StackLang.HolProg 64 :=
.seq AllocBody842_318 AllocBody842_373

def AllocBody842_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody842_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody842_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def AllocBody842_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def AllocBody842_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 11

def AllocBody842_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4212#64)

def AllocBody842_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody842_386 : StackLang.HolProg 64 :=
.seq AllocBody842_384 AllocBody842_385

def AllocBody842_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody842_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody842_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody842_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 842 9

def AllocBody842_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody842_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody842_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody842_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody842_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody842_397 : StackLang.HolProg 64 :=
.seq AllocBody842_395 AllocBody842_396

def AllocBody842_398 : StackLang.HolProg 64 :=
.seq AllocBody842_394 AllocBody842_397

def AllocBody842_399 : StackLang.HolProg 64 :=
.seq AllocBody842_393 AllocBody842_398

def AllocBody842_400 : StackLang.HolProg 64 :=
.seq AllocBody842_392 AllocBody842_399

def AllocBody842_401 : StackLang.HolProg 64 :=
.seq AllocBody842_391 AllocBody842_400

def AllocBody842_402 : StackLang.HolProg 64 :=
.seq AllocBody842_390 AllocBody842_401

def AllocBody842_403 : StackLang.HolProg 64 :=
.seq AllocBody842_389 AllocBody842_402

def AllocBody842_404 : StackLang.HolProg 64 :=
.seq AllocBody842_388 AllocBody842_403

def AllocBody842_405 : StackLang.HolProg 64 :=
.seq AllocBody842_387 AllocBody842_404

def AllocBody842_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody842_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody842_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody842_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody842_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody842_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 11

def AllocBody842_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 10

def AllocBody842_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def AllocBody842_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def AllocBody842_417 : StackLang.HolProg 64 :=
.seq AllocBody842_415 AllocBody842_416

def AllocBody842_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody842_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody842_420 : StackLang.HolProg 64 :=
.seq AllocBody842_418 AllocBody842_419

def AllocBody842_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody842_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody842_423 : StackLang.HolProg 64 :=
.seq AllocBody842_421 AllocBody842_422

def AllocBody842_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody842_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody842_426 : StackLang.HolProg 64 :=
.seq AllocBody842_424 AllocBody842_425

def AllocBody842_427 : StackLang.HolProg 64 :=
.seq AllocBody842_423 AllocBody842_426

def AllocBody842_428 : StackLang.HolProg 64 :=
.seq AllocBody842_420 AllocBody842_427

def AllocBody842_429 : StackLang.HolProg 64 :=
.seq AllocBody842_417 AllocBody842_428

def AllocBody842_430 : StackLang.HolProg 64 :=
.seq AllocBody842_414 AllocBody842_429

def AllocBody842_431 : StackLang.HolProg 64 :=
.seq AllocBody842_413 AllocBody842_430

def AllocBody842_432 : StackLang.HolProg 64 :=
.seq AllocBody842_412 AllocBody842_431

def AllocBody842_433 : StackLang.HolProg 64 :=
.seq AllocBody842_411 AllocBody842_432

def AllocBody842_434 : StackLang.HolProg 64 :=
.seq AllocBody842_410 AllocBody842_433

def AllocBody842_435 : StackLang.HolProg 64 :=
.seq AllocBody842_409 AllocBody842_434

def AllocBody842_436 : StackLang.HolProg 64 :=
.seq AllocBody842_408 AllocBody842_435

def AllocBody842_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 11

def AllocBody842_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 10

def AllocBody842_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def AllocBody842_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def AllocBody842_441 : StackLang.HolProg 64 :=
.seq AllocBody842_439 AllocBody842_440

def AllocBody842_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody842_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody842_444 : StackLang.HolProg 64 :=
.seq AllocBody842_442 AllocBody842_443

def AllocBody842_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody842_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody842_447 : StackLang.HolProg 64 :=
.seq AllocBody842_445 AllocBody842_446

def AllocBody842_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody842_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody842_450 : StackLang.HolProg 64 :=
.seq AllocBody842_448 AllocBody842_449

def AllocBody842_451 : StackLang.HolProg 64 :=
.seq AllocBody842_447 AllocBody842_450

def AllocBody842_452 : StackLang.HolProg 64 :=
.seq AllocBody842_444 AllocBody842_451

def AllocBody842_453 : StackLang.HolProg 64 :=
.seq AllocBody842_441 AllocBody842_452

def AllocBody842_454 : StackLang.HolProg 64 :=
.seq AllocBody842_438 AllocBody842_453

def AllocBody842_455 : StackLang.HolProg 64 :=
.seq AllocBody842_437 AllocBody842_454

def AllocBody842_456 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody842_457 : StackLang.HolProg 64 :=
.seq AllocBody842_455 AllocBody842_456

def AllocBody842_458 : StackLang.HolProg 64 :=
.call (some (AllocBody842_436, 0, 842, 8)) (Sum.inl 176) (some (AllocBody842_457, 842, 9))

def AllocBody842_459 : StackLang.HolProg 64 :=
.seq AllocBody842_407 AllocBody842_458

def AllocBody842_460 : StackLang.HolProg 64 :=
.seq AllocBody842_406 AllocBody842_459

def AllocBody842_461 : StackLang.HolProg 64 :=
.seq AllocBody842_405 AllocBody842_460

def AllocBody842_462 : StackLang.HolProg 64 :=
.seq AllocBody842_386 AllocBody842_461

def AllocBody842_463 : StackLang.HolProg 64 :=
.seq AllocBody842_383 AllocBody842_462

def AllocBody842_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody842_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody842_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody842_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 11

def AllocBody842_469 : StackLang.HolProg 64 :=
.seq AllocBody842_467 AllocBody842_468

def AllocBody842_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4213#64)

def AllocBody842_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody842_473 : StackLang.HolProg 64 :=
.seq AllocBody842_471 AllocBody842_472

def AllocBody842_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody842_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody842_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody842_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 842 11

def AllocBody842_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody842_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody842_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody842_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody842_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody842_484 : StackLang.HolProg 64 :=
.seq AllocBody842_482 AllocBody842_483

def AllocBody842_485 : StackLang.HolProg 64 :=
.seq AllocBody842_481 AllocBody842_484

def AllocBody842_486 : StackLang.HolProg 64 :=
.seq AllocBody842_480 AllocBody842_485

def AllocBody842_487 : StackLang.HolProg 64 :=
.seq AllocBody842_479 AllocBody842_486

def AllocBody842_488 : StackLang.HolProg 64 :=
.seq AllocBody842_478 AllocBody842_487

def AllocBody842_489 : StackLang.HolProg 64 :=
.seq AllocBody842_477 AllocBody842_488

def AllocBody842_490 : StackLang.HolProg 64 :=
.seq AllocBody842_476 AllocBody842_489

def AllocBody842_491 : StackLang.HolProg 64 :=
.seq AllocBody842_475 AllocBody842_490

def AllocBody842_492 : StackLang.HolProg 64 :=
.seq AllocBody842_474 AllocBody842_491

def AllocBody842_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody842_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody842_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody842_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody842_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody842_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def AllocBody842_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 11

def AllocBody842_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 10

def AllocBody842_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 9

def AllocBody842_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 8

def AllocBody842_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 7

def AllocBody842_506 : StackLang.HolProg 64 :=
.seq AllocBody842_504 AllocBody842_505

def AllocBody842_507 : StackLang.HolProg 64 :=
.seq AllocBody842_503 AllocBody842_506

def AllocBody842_508 : StackLang.HolProg 64 :=
.seq AllocBody842_502 AllocBody842_507

def AllocBody842_509 : StackLang.HolProg 64 :=
.seq AllocBody842_501 AllocBody842_508

def AllocBody842_510 : StackLang.HolProg 64 :=
.seq AllocBody842_500 AllocBody842_509

def AllocBody842_511 : StackLang.HolProg 64 :=
.seq AllocBody842_499 AllocBody842_510

def AllocBody842_512 : StackLang.HolProg 64 :=
.seq AllocBody842_498 AllocBody842_511

def AllocBody842_513 : StackLang.HolProg 64 :=
.seq AllocBody842_497 AllocBody842_512

def AllocBody842_514 : StackLang.HolProg 64 :=
.seq AllocBody842_496 AllocBody842_513

def AllocBody842_515 : StackLang.HolProg 64 :=
.seq AllocBody842_495 AllocBody842_514

def AllocBody842_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def AllocBody842_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 11

def AllocBody842_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 10

def AllocBody842_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 9

def AllocBody842_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 8

def AllocBody842_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 7

def AllocBody842_522 : StackLang.HolProg 64 :=
.seq AllocBody842_520 AllocBody842_521

def AllocBody842_523 : StackLang.HolProg 64 :=
.seq AllocBody842_519 AllocBody842_522

def AllocBody842_524 : StackLang.HolProg 64 :=
.seq AllocBody842_518 AllocBody842_523

def AllocBody842_525 : StackLang.HolProg 64 :=
.seq AllocBody842_517 AllocBody842_524

def AllocBody842_526 : StackLang.HolProg 64 :=
.seq AllocBody842_516 AllocBody842_525

def AllocBody842_527 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody842_528 : StackLang.HolProg 64 :=
.seq AllocBody842_526 AllocBody842_527

def AllocBody842_529 : StackLang.HolProg 64 :=
.call (some (AllocBody842_515, 0, 842, 10)) (Sum.inl 840) (some (AllocBody842_528, 842, 11))

def AllocBody842_530 : StackLang.HolProg 64 :=
.seq AllocBody842_494 AllocBody842_529

def AllocBody842_531 : StackLang.HolProg 64 :=
.seq AllocBody842_493 AllocBody842_530

def AllocBody842_532 : StackLang.HolProg 64 :=
.seq AllocBody842_492 AllocBody842_531

def AllocBody842_533 : StackLang.HolProg 64 :=
.seq AllocBody842_473 AllocBody842_532

def AllocBody842_534 : StackLang.HolProg 64 :=
.seq AllocBody842_470 AllocBody842_533

def AllocBody842_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody842_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody842_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody842_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 11

def AllocBody842_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 13

def AllocBody842_542 : StackLang.HolProg 64 :=
.seq AllocBody842_540 AllocBody842_541

def AllocBody842_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody842_544 : StackLang.HolProg 64 :=
.seq AllocBody842_542 AllocBody842_543

def AllocBody842_545 : StackLang.HolProg 64 :=
.seq AllocBody842_539 AllocBody842_544

def AllocBody842_546 : StackLang.HolProg 64 :=
.seq AllocBody842_538 AllocBody842_545

def AllocBody842_547 : StackLang.HolProg 64 :=
.seq AllocBody842_537 AllocBody842_546

def AllocBody842_548 : StackLang.HolProg 64 :=
.seq AllocBody842_536 AllocBody842_547

def AllocBody842_549 : StackLang.HolProg 64 :=
.seq AllocBody842_535 AllocBody842_548

def AllocBody842_550 : StackLang.HolProg 64 :=
.seq AllocBody842_534 AllocBody842_549

def AllocBody842_551 : StackLang.HolProg 64 :=
.seq AllocBody842_469 AllocBody842_550

def AllocBody842_552 : StackLang.HolProg 64 :=
.seq AllocBody842_466 AllocBody842_551

def AllocBody842_553 : StackLang.HolProg 64 :=
.seq AllocBody842_465 AllocBody842_552

def AllocBody842_554 : StackLang.HolProg 64 :=
.seq AllocBody842_464 AllocBody842_553

def AllocBody842_555 : StackLang.HolProg 64 :=
.seq AllocBody842_463 AllocBody842_554

def AllocBody842_556 : StackLang.HolProg 64 :=
.seq AllocBody842_382 AllocBody842_555

def AllocBody842_557 : StackLang.HolProg 64 :=
.seq AllocBody842_381 AllocBody842_556

def AllocBody842_558 : StackLang.HolProg 64 :=
.seq AllocBody842_380 AllocBody842_557

def AllocBody842_559 : StackLang.HolProg 64 :=
.seq AllocBody842_379 AllocBody842_558

def AllocBody842_560 : StackLang.HolProg 64 :=
.seq AllocBody842_378 AllocBody842_559

def AllocBody842_561 : StackLang.HolProg 64 :=
.seq AllocBody842_377 AllocBody842_560

def AllocBody842_562 : StackLang.HolProg 64 :=
.seq AllocBody842_376 AllocBody842_561

def AllocBody842_563 : StackLang.HolProg 64 :=
.seq AllocBody842_375 AllocBody842_562

def AllocBody842_564 : StackLang.HolProg 64 :=
.seq AllocBody842_374 AllocBody842_563

def AllocBody842_565 : StackLang.HolProg 64 :=
.seq AllocBody842_317 AllocBody842_564

def AllocBody842_566 : StackLang.HolProg 64 :=
.seq AllocBody842_316 AllocBody842_565

def AllocBody842_567 : StackLang.HolProg 64 :=
.seq AllocBody842_315 AllocBody842_566

def AllocBody842_568 : StackLang.HolProg 64 :=
.seq AllocBody842_147 AllocBody842_567

def AllocBody842_569 : StackLang.HolProg 64 :=
.seq AllocBody842_142 AllocBody842_568

def AllocBody842_570 : StackLang.HolProg 64 :=
.seq AllocBody842_141 AllocBody842_569

def AllocBody842_571 : StackLang.HolProg 64 :=
.seq AllocBody842_140 AllocBody842_570

def AllocBody842_572 : StackLang.HolProg 64 :=
.seq AllocBody842_139 AllocBody842_571

def AllocBody842_573 : StackLang.HolProg 64 :=
.seq AllocBody842_138 AllocBody842_572

def AllocBody842_574 : StackLang.HolProg 64 :=
.seq AllocBody842_137 AllocBody842_573

def AllocBody842_575 : StackLang.HolProg 64 :=
.seq AllocBody842_136 AllocBody842_574

def AllocBody842_576 : StackLang.HolProg 64 :=
.seq AllocBody842_135 AllocBody842_575

def AllocBody842_577 : StackLang.HolProg 64 :=
.seq AllocBody842_134 AllocBody842_576

def AllocBody842_578 : StackLang.HolProg 64 :=
.seq AllocBody842_133 AllocBody842_577

def AllocBody842_579 : StackLang.HolProg 64 :=
.seq AllocBody842_44 AllocBody842_578

def AllocBody842_580 : StackLang.HolProg 64 :=
.seq AllocBody842_25 AllocBody842_579

def AllocBody842_581 : StackLang.HolProg 64 :=
.seq AllocBody842_24 AllocBody842_580

def AllocBody842_582 : StackLang.HolProg 64 :=
.seq AllocBody842_23 AllocBody842_581

def AllocBody842_583 : StackLang.HolProg 64 :=
.seq AllocBody842_22 AllocBody842_582

def AllocBody842_584 : StackLang.HolProg 64 :=
.seq AllocBody842_21 AllocBody842_583

def AllocBody842_585 : StackLang.HolProg 64 :=
.seq AllocBody842_20 AllocBody842_584

def AllocBody842_586 : StackLang.HolProg 64 :=
.seq AllocBody842_19 AllocBody842_585

def AllocBody842_587 : StackLang.HolProg 64 :=
.seq AllocBody842_18 AllocBody842_586

def AllocBody842_588 : StackLang.HolProg 64 :=
.seq AllocBody842_17 AllocBody842_587

def AllocBody842_589 : StackLang.HolProg 64 :=
.seq AllocBody842_16 AllocBody842_588

def AllocBody842_590 : StackLang.HolProg 64 :=
.seq AllocBody842_15 AllocBody842_589

def AllocBody842_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody842_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody842_593 : StackLang.HolProg 64 :=
.seq AllocBody842_591 AllocBody842_592

def AllocBody842_594 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) AllocBody842_590 AllocBody842_593

def AllocBody842_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody842_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 12

def AllocBody842_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 11

def AllocBody842_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 13

def AllocBody842_599 : StackLang.HolProg 64 :=
.seq AllocBody842_597 AllocBody842_598

def AllocBody842_600 : StackLang.HolProg 64 :=
.seq AllocBody842_596 AllocBody842_599

def AllocBody842_601 : StackLang.HolProg 64 :=
.seq AllocBody842_595 AllocBody842_600

def AllocBody842_602 : StackLang.HolProg 64 :=
.seq AllocBody842_594 AllocBody842_601

def AllocBody842_603 : StackLang.HolProg 64 :=
.seq AllocBody842_14 AllocBody842_602

def AllocBody842_604 : StackLang.HolProg 64 :=
.loop AllocBody842_603

def AllocBody842_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody842_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 13

def AllocBody842_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 12

def AllocBody842_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 13

def AllocBody842_609 : StackLang.HolProg 64 :=
.seq AllocBody842_607 AllocBody842_608

def AllocBody842_610 : StackLang.HolProg 64 :=
.seq AllocBody842_606 AllocBody842_609

def AllocBody842_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4214#64)

def AllocBody842_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody842_614 : StackLang.HolProg 64 :=
.seq AllocBody842_612 AllocBody842_613

def AllocBody842_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody842_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody842_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody842_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 842 13

def AllocBody842_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody842_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody842_621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody842_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody842_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody842_625 : StackLang.HolProg 64 :=
.seq AllocBody842_623 AllocBody842_624

def AllocBody842_626 : StackLang.HolProg 64 :=
.seq AllocBody842_622 AllocBody842_625

def AllocBody842_627 : StackLang.HolProg 64 :=
.seq AllocBody842_621 AllocBody842_626

def AllocBody842_628 : StackLang.HolProg 64 :=
.seq AllocBody842_620 AllocBody842_627

def AllocBody842_629 : StackLang.HolProg 64 :=
.seq AllocBody842_619 AllocBody842_628

def AllocBody842_630 : StackLang.HolProg 64 :=
.seq AllocBody842_618 AllocBody842_629

def AllocBody842_631 : StackLang.HolProg 64 :=
.seq AllocBody842_617 AllocBody842_630

def AllocBody842_632 : StackLang.HolProg 64 :=
.seq AllocBody842_616 AllocBody842_631

def AllocBody842_633 : StackLang.HolProg 64 :=
.seq AllocBody842_615 AllocBody842_632

def AllocBody842_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody842_635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody842_637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody842_638 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody842_639 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody842_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody842_641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def AllocBody842_642 : StackLang.HolProg 64 :=
.seq AllocBody842_640 AllocBody842_641

def AllocBody842_643 : StackLang.HolProg 64 :=
.seq AllocBody842_639 AllocBody842_642

def AllocBody842_644 : StackLang.HolProg 64 :=
.seq AllocBody842_638 AllocBody842_643

def AllocBody842_645 : StackLang.HolProg 64 :=
.seq AllocBody842_637 AllocBody842_644

def AllocBody842_646 : StackLang.HolProg 64 :=
.seq AllocBody842_636 AllocBody842_645

def AllocBody842_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def AllocBody842_648 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody842_649 : StackLang.HolProg 64 :=
.seq AllocBody842_647 AllocBody842_648

def AllocBody842_650 : StackLang.HolProg 64 :=
.call (some (AllocBody842_646, 0, 842, 12)) (Sum.inl 840) (some (AllocBody842_649, 842, 13))

def AllocBody842_651 : StackLang.HolProg 64 :=
.seq AllocBody842_635 AllocBody842_650

def AllocBody842_652 : StackLang.HolProg 64 :=
.seq AllocBody842_634 AllocBody842_651

def AllocBody842_653 : StackLang.HolProg 64 :=
.seq AllocBody842_633 AllocBody842_652

def AllocBody842_654 : StackLang.HolProg 64 :=
.seq AllocBody842_614 AllocBody842_653

def AllocBody842_655 : StackLang.HolProg 64 :=
.seq AllocBody842_611 AllocBody842_654

def AllocBody842_656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody842_657 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody842_658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 14

def AllocBody842_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody842_660 : StackLang.HolProg 64 :=
.seq AllocBody842_658 AllocBody842_659

def AllocBody842_661 : StackLang.HolProg 64 :=
.seq AllocBody842_657 AllocBody842_660

def AllocBody842_662 : StackLang.HolProg 64 :=
.seq AllocBody842_656 AllocBody842_661

def AllocBody842_663 : StackLang.HolProg 64 :=
.seq AllocBody842_655 AllocBody842_662

def AllocBody842_664 : StackLang.HolProg 64 :=
.seq AllocBody842_610 AllocBody842_663

def AllocBody842_665 : StackLang.HolProg 64 :=
.seq AllocBody842_605 AllocBody842_664

def AllocBody842_666 : StackLang.HolProg 64 :=
.seq AllocBody842_604 AllocBody842_665

def AllocBody842_667 : StackLang.HolProg 64 :=
.seq AllocBody842_13 AllocBody842_666

def AllocBody842_668 : StackLang.HolProg 64 :=
.seq AllocBody842_8 AllocBody842_667

def AllocBody842_669 : StackLang.HolProg 64 :=
.seq AllocBody842_7 AllocBody842_668

def AllocBody842_670 : StackLang.HolProg 64 :=
.seq AllocBody842_6 AllocBody842_669

def AllocBody842_671 : StackLang.HolProg 64 :=
.seq AllocBody842_5 AllocBody842_670

def AllocBody842_672 : StackLang.HolProg 64 :=
.seq AllocBody842_4 AllocBody842_671

def AllocBody842_673 : StackLang.HolProg 64 :=
.seq AllocBody842_3 AllocBody842_672

def AllocBody842_674 : StackLang.HolProg 64 :=
.seq AllocBody842_2 AllocBody842_673

def AllocBody842_675 : StackLang.HolProg 64 :=
.seq AllocBody842_1 AllocBody842_674

def AllocBody842_676 : StackLang.HolProg 64 :=
.seq AllocBody842_0 AllocBody842_675

def Alloc842 : Nat × StackLang.HolProg 64 := (842, AllocBody842_676)
theorem Alloc842_eq : StackAlloc.progComp (842, raw842) = Alloc842 := by
  kernel_rfl
#print axioms Alloc842_eq
end InitECandidate.Proofs.BackendStages
