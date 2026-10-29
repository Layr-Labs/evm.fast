import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw384
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody384_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 12

def AllocBody384_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody384_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody384_3 : StackLang.HolProg 64 :=
.seq AllocBody384_1 AllocBody384_2

def AllocBody384_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 192#64))

def AllocBody384_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 200#64))

def AllocBody384_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 11

def AllocBody384_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 10

def AllocBody384_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 9

def AllocBody384_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 8

def AllocBody384_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 6

def AllocBody384_12 : StackLang.HolProg 64 :=
.seq AllocBody384_10 AllocBody384_11

def AllocBody384_13 : StackLang.HolProg 64 :=
.seq AllocBody384_9 AllocBody384_12

def AllocBody384_14 : StackLang.HolProg 64 :=
.seq AllocBody384_8 AllocBody384_13

def AllocBody384_15 : StackLang.HolProg 64 :=
.seq AllocBody384_7 AllocBody384_14

def AllocBody384_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1130#64)

def AllocBody384_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody384_19 : StackLang.HolProg 64 :=
.seq AllocBody384_17 AllocBody384_18

def AllocBody384_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody384_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody384_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody384_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 384 3

def AllocBody384_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody384_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody384_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody384_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody384_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody384_30 : StackLang.HolProg 64 :=
.seq AllocBody384_28 AllocBody384_29

def AllocBody384_31 : StackLang.HolProg 64 :=
.seq AllocBody384_27 AllocBody384_30

def AllocBody384_32 : StackLang.HolProg 64 :=
.seq AllocBody384_26 AllocBody384_31

def AllocBody384_33 : StackLang.HolProg 64 :=
.seq AllocBody384_25 AllocBody384_32

def AllocBody384_34 : StackLang.HolProg 64 :=
.seq AllocBody384_24 AllocBody384_33

def AllocBody384_35 : StackLang.HolProg 64 :=
.seq AllocBody384_23 AllocBody384_34

def AllocBody384_36 : StackLang.HolProg 64 :=
.seq AllocBody384_22 AllocBody384_35

def AllocBody384_37 : StackLang.HolProg 64 :=
.seq AllocBody384_21 AllocBody384_36

def AllocBody384_38 : StackLang.HolProg 64 :=
.seq AllocBody384_20 AllocBody384_37

def AllocBody384_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody384_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody384_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody384_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody384_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody384_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody384_47 : StackLang.HolProg 64 :=
.seq AllocBody384_45 AllocBody384_46

def AllocBody384_48 : StackLang.HolProg 64 :=
.seq AllocBody384_44 AllocBody384_47

def AllocBody384_49 : StackLang.HolProg 64 :=
.seq AllocBody384_43 AllocBody384_48

def AllocBody384_50 : StackLang.HolProg 64 :=
.seq AllocBody384_42 AllocBody384_49

def AllocBody384_51 : StackLang.HolProg 64 :=
.seq AllocBody384_41 AllocBody384_50

def AllocBody384_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody384_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody384_54 : StackLang.HolProg 64 :=
.seq AllocBody384_52 AllocBody384_53

def AllocBody384_55 : StackLang.HolProg 64 :=
.call (some (AllocBody384_51, 0, 384, 2)) (Sum.inl 383) (some (AllocBody384_54, 384, 3))

def AllocBody384_56 : StackLang.HolProg 64 :=
.seq AllocBody384_40 AllocBody384_55

def AllocBody384_57 : StackLang.HolProg 64 :=
.seq AllocBody384_39 AllocBody384_56

def AllocBody384_58 : StackLang.HolProg 64 :=
.seq AllocBody384_38 AllocBody384_57

def AllocBody384_59 : StackLang.HolProg 64 :=
.seq AllocBody384_19 AllocBody384_58

def AllocBody384_60 : StackLang.HolProg 64 :=
.seq AllocBody384_16 AllocBody384_59

def AllocBody384_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody384_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody384_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 152#64))

def AllocBody384_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 160#64))

def AllocBody384_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 168#64))

def AllocBody384_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 176#64))

def AllocBody384_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 184#64))

def AllocBody384_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 8

def AllocBody384_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def AllocBody384_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 5

def AllocBody384_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 4

def AllocBody384_78 : StackLang.HolProg 64 :=
.seq AllocBody384_76 AllocBody384_77

def AllocBody384_79 : StackLang.HolProg 64 :=
.seq AllocBody384_75 AllocBody384_78

def AllocBody384_80 : StackLang.HolProg 64 :=
.seq AllocBody384_74 AllocBody384_79

def AllocBody384_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1131#64)

def AllocBody384_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody384_84 : StackLang.HolProg 64 :=
.seq AllocBody384_82 AllocBody384_83

def AllocBody384_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody384_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody384_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody384_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 384 5

def AllocBody384_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody384_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody384_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody384_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody384_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody384_95 : StackLang.HolProg 64 :=
.seq AllocBody384_93 AllocBody384_94

def AllocBody384_96 : StackLang.HolProg 64 :=
.seq AllocBody384_92 AllocBody384_95

def AllocBody384_97 : StackLang.HolProg 64 :=
.seq AllocBody384_91 AllocBody384_96

def AllocBody384_98 : StackLang.HolProg 64 :=
.seq AllocBody384_90 AllocBody384_97

def AllocBody384_99 : StackLang.HolProg 64 :=
.seq AllocBody384_89 AllocBody384_98

def AllocBody384_100 : StackLang.HolProg 64 :=
.seq AllocBody384_88 AllocBody384_99

def AllocBody384_101 : StackLang.HolProg 64 :=
.seq AllocBody384_87 AllocBody384_100

def AllocBody384_102 : StackLang.HolProg 64 :=
.seq AllocBody384_86 AllocBody384_101

def AllocBody384_103 : StackLang.HolProg 64 :=
.seq AllocBody384_85 AllocBody384_102

def AllocBody384_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody384_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody384_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody384_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody384_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody384_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 16 10

def AllocBody384_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def AllocBody384_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def AllocBody384_114 : StackLang.HolProg 64 :=
.seq AllocBody384_112 AllocBody384_113

def AllocBody384_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody384_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody384_117 : StackLang.HolProg 64 :=
.seq AllocBody384_115 AllocBody384_116

def AllocBody384_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody384_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody384_120 : StackLang.HolProg 64 :=
.seq AllocBody384_118 AllocBody384_119

def AllocBody384_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 19 5

def AllocBody384_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody384_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody384_124 : StackLang.HolProg 64 :=
.seq AllocBody384_122 AllocBody384_123

def AllocBody384_125 : StackLang.HolProg 64 :=
.seq AllocBody384_121 AllocBody384_124

def AllocBody384_126 : StackLang.HolProg 64 :=
.seq AllocBody384_120 AllocBody384_125

def AllocBody384_127 : StackLang.HolProg 64 :=
.seq AllocBody384_117 AllocBody384_126

def AllocBody384_128 : StackLang.HolProg 64 :=
.seq AllocBody384_114 AllocBody384_127

def AllocBody384_129 : StackLang.HolProg 64 :=
.seq AllocBody384_111 AllocBody384_128

def AllocBody384_130 : StackLang.HolProg 64 :=
.seq AllocBody384_110 AllocBody384_129

def AllocBody384_131 : StackLang.HolProg 64 :=
.seq AllocBody384_109 AllocBody384_130

def AllocBody384_132 : StackLang.HolProg 64 :=
.seq AllocBody384_108 AllocBody384_131

def AllocBody384_133 : StackLang.HolProg 64 :=
.seq AllocBody384_107 AllocBody384_132

def AllocBody384_134 : StackLang.HolProg 64 :=
.seq AllocBody384_106 AllocBody384_133

def AllocBody384_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 16 10

def AllocBody384_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def AllocBody384_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def AllocBody384_138 : StackLang.HolProg 64 :=
.seq AllocBody384_136 AllocBody384_137

def AllocBody384_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody384_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody384_141 : StackLang.HolProg 64 :=
.seq AllocBody384_139 AllocBody384_140

def AllocBody384_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody384_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody384_144 : StackLang.HolProg 64 :=
.seq AllocBody384_142 AllocBody384_143

def AllocBody384_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 19 5

def AllocBody384_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody384_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody384_148 : StackLang.HolProg 64 :=
.seq AllocBody384_146 AllocBody384_147

def AllocBody384_149 : StackLang.HolProg 64 :=
.seq AllocBody384_145 AllocBody384_148

def AllocBody384_150 : StackLang.HolProg 64 :=
.seq AllocBody384_144 AllocBody384_149

def AllocBody384_151 : StackLang.HolProg 64 :=
.seq AllocBody384_141 AllocBody384_150

def AllocBody384_152 : StackLang.HolProg 64 :=
.seq AllocBody384_138 AllocBody384_151

def AllocBody384_153 : StackLang.HolProg 64 :=
.seq AllocBody384_135 AllocBody384_152

def AllocBody384_154 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody384_155 : StackLang.HolProg 64 :=
.seq AllocBody384_153 AllocBody384_154

def AllocBody384_156 : StackLang.HolProg 64 :=
.call (some (AllocBody384_134, 0, 384, 4)) (Sum.inl 102) (some (AllocBody384_155, 384, 5))

def AllocBody384_157 : StackLang.HolProg 64 :=
.seq AllocBody384_105 AllocBody384_156

def AllocBody384_158 : StackLang.HolProg 64 :=
.seq AllocBody384_104 AllocBody384_157

def AllocBody384_159 : StackLang.HolProg 64 :=
.seq AllocBody384_103 AllocBody384_158

def AllocBody384_160 : StackLang.HolProg 64 :=
.seq AllocBody384_84 AllocBody384_159

def AllocBody384_161 : StackLang.HolProg 64 :=
.seq AllocBody384_81 AllocBody384_160

def AllocBody384_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody384_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody384_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody384_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody384_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody384_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 12000#64)

def AllocBody384_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 6

def AllocBody384_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 31#64)))

def AllocBody384_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody384_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 12 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody384_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 11

def AllocBody384_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 17 10

def AllocBody384_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 9

def AllocBody384_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 8

def AllocBody384_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 18 7

def AllocBody384_178 : StackLang.HolProg 64 :=
.seq AllocBody384_176 AllocBody384_177

def AllocBody384_179 : StackLang.HolProg 64 :=
.seq AllocBody384_175 AllocBody384_178

def AllocBody384_180 : StackLang.HolProg 64 :=
.seq AllocBody384_174 AllocBody384_179

def AllocBody384_181 : StackLang.HolProg 64 :=
.seq AllocBody384_173 AllocBody384_180

def AllocBody384_182 : StackLang.HolProg 64 :=
.seq AllocBody384_172 AllocBody384_181

def AllocBody384_183 : StackLang.HolProg 64 :=
.seq AllocBody384_171 AllocBody384_182

def AllocBody384_184 : StackLang.HolProg 64 :=
.seq AllocBody384_170 AllocBody384_183

def AllocBody384_185 : StackLang.HolProg 64 :=
.seq AllocBody384_169 AllocBody384_184

def AllocBody384_186 : StackLang.HolProg 64 :=
.seq AllocBody384_168 AllocBody384_185

def AllocBody384_187 : StackLang.HolProg 64 :=
.seq AllocBody384_167 AllocBody384_186

def AllocBody384_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody384_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 16
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 16)))

def AllocBody384_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 19
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 19)))

def AllocBody384_191 : StackLang.HolProg 64 :=
.seq AllocBody384_189 AllocBody384_190

def AllocBody384_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 20#64)

def AllocBody384_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody384_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody384_195 : StackLang.HolProg 64 :=
.seq AllocBody384_193 AllocBody384_194

def AllocBody384_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def AllocBody384_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody384_198 : StackLang.HolProg 64 :=
.seq AllocBody384_196 AllocBody384_197

def AllocBody384_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 13 10

def AllocBody384_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody384_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody384_202 : StackLang.HolProg 64 :=
.seq AllocBody384_200 AllocBody384_201

def AllocBody384_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def AllocBody384_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody384_205 : StackLang.HolProg 64 :=
.seq AllocBody384_203 AllocBody384_204

def AllocBody384_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 9

def AllocBody384_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody384_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody384_209 : StackLang.HolProg 64 :=
.seq AllocBody384_207 AllocBody384_208

def AllocBody384_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody384_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody384_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody384_213 : StackLang.HolProg 64 :=
.seq AllocBody384_211 AllocBody384_212

def AllocBody384_214 : StackLang.HolProg 64 :=
.seq AllocBody384_210 AllocBody384_213

def AllocBody384_215 : StackLang.HolProg 64 :=
.seq AllocBody384_209 AllocBody384_214

def AllocBody384_216 : StackLang.HolProg 64 :=
.seq AllocBody384_206 AllocBody384_215

def AllocBody384_217 : StackLang.HolProg 64 :=
.seq AllocBody384_205 AllocBody384_216

def AllocBody384_218 : StackLang.HolProg 64 :=
.seq AllocBody384_202 AllocBody384_217

def AllocBody384_219 : StackLang.HolProg 64 :=
.seq AllocBody384_199 AllocBody384_218

def AllocBody384_220 : StackLang.HolProg 64 :=
.seq AllocBody384_198 AllocBody384_219

def AllocBody384_221 : StackLang.HolProg 64 :=
.seq AllocBody384_195 AllocBody384_220

def AllocBody384_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1132#64)

def AllocBody384_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody384_225 : StackLang.HolProg 64 :=
.seq AllocBody384_223 AllocBody384_224

def AllocBody384_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody384_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody384_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody384_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 384 7

def AllocBody384_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody384_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody384_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody384_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody384_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody384_236 : StackLang.HolProg 64 :=
.seq AllocBody384_234 AllocBody384_235

def AllocBody384_237 : StackLang.HolProg 64 :=
.seq AllocBody384_233 AllocBody384_236

def AllocBody384_238 : StackLang.HolProg 64 :=
.seq AllocBody384_232 AllocBody384_237

def AllocBody384_239 : StackLang.HolProg 64 :=
.seq AllocBody384_231 AllocBody384_238

def AllocBody384_240 : StackLang.HolProg 64 :=
.seq AllocBody384_230 AllocBody384_239

def AllocBody384_241 : StackLang.HolProg 64 :=
.seq AllocBody384_229 AllocBody384_240

def AllocBody384_242 : StackLang.HolProg 64 :=
.seq AllocBody384_228 AllocBody384_241

def AllocBody384_243 : StackLang.HolProg 64 :=
.seq AllocBody384_227 AllocBody384_242

def AllocBody384_244 : StackLang.HolProg 64 :=
.seq AllocBody384_226 AllocBody384_243

def AllocBody384_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody384_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody384_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody384_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody384_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody384_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 11

def AllocBody384_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 13 10

def AllocBody384_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 16 9

def AllocBody384_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 17 8

def AllocBody384_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def AllocBody384_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 6

def AllocBody384_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody384_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 4

def AllocBody384_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 3

def AllocBody384_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 19 2

def AllocBody384_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 18 1

def AllocBody384_263 : StackLang.HolProg 64 :=
.seq AllocBody384_261 AllocBody384_262

def AllocBody384_264 : StackLang.HolProg 64 :=
.seq AllocBody384_260 AllocBody384_263

def AllocBody384_265 : StackLang.HolProg 64 :=
.seq AllocBody384_259 AllocBody384_264

def AllocBody384_266 : StackLang.HolProg 64 :=
.seq AllocBody384_258 AllocBody384_265

def AllocBody384_267 : StackLang.HolProg 64 :=
.seq AllocBody384_257 AllocBody384_266

def AllocBody384_268 : StackLang.HolProg 64 :=
.seq AllocBody384_256 AllocBody384_267

def AllocBody384_269 : StackLang.HolProg 64 :=
.seq AllocBody384_255 AllocBody384_268

def AllocBody384_270 : StackLang.HolProg 64 :=
.seq AllocBody384_254 AllocBody384_269

def AllocBody384_271 : StackLang.HolProg 64 :=
.seq AllocBody384_253 AllocBody384_270

def AllocBody384_272 : StackLang.HolProg 64 :=
.seq AllocBody384_252 AllocBody384_271

def AllocBody384_273 : StackLang.HolProg 64 :=
.seq AllocBody384_251 AllocBody384_272

def AllocBody384_274 : StackLang.HolProg 64 :=
.seq AllocBody384_250 AllocBody384_273

def AllocBody384_275 : StackLang.HolProg 64 :=
.seq AllocBody384_249 AllocBody384_274

def AllocBody384_276 : StackLang.HolProg 64 :=
.seq AllocBody384_248 AllocBody384_275

def AllocBody384_277 : StackLang.HolProg 64 :=
.seq AllocBody384_247 AllocBody384_276

def AllocBody384_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 11

def AllocBody384_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 13 10

def AllocBody384_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 16 9

def AllocBody384_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 17 8

def AllocBody384_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def AllocBody384_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 6

def AllocBody384_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody384_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 4

def AllocBody384_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 3

def AllocBody384_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 19 2

def AllocBody384_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 18 1

def AllocBody384_289 : StackLang.HolProg 64 :=
.seq AllocBody384_287 AllocBody384_288

def AllocBody384_290 : StackLang.HolProg 64 :=
.seq AllocBody384_286 AllocBody384_289

def AllocBody384_291 : StackLang.HolProg 64 :=
.seq AllocBody384_285 AllocBody384_290

def AllocBody384_292 : StackLang.HolProg 64 :=
.seq AllocBody384_284 AllocBody384_291

def AllocBody384_293 : StackLang.HolProg 64 :=
.seq AllocBody384_283 AllocBody384_292

def AllocBody384_294 : StackLang.HolProg 64 :=
.seq AllocBody384_282 AllocBody384_293

def AllocBody384_295 : StackLang.HolProg 64 :=
.seq AllocBody384_281 AllocBody384_294

def AllocBody384_296 : StackLang.HolProg 64 :=
.seq AllocBody384_280 AllocBody384_295

def AllocBody384_297 : StackLang.HolProg 64 :=
.seq AllocBody384_279 AllocBody384_296

def AllocBody384_298 : StackLang.HolProg 64 :=
.seq AllocBody384_278 AllocBody384_297

def AllocBody384_299 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody384_300 : StackLang.HolProg 64 :=
.seq AllocBody384_298 AllocBody384_299

def AllocBody384_301 : StackLang.HolProg 64 :=
.call (some (AllocBody384_277, 0, 384, 6)) (Sum.inl 79) (some (AllocBody384_300, 384, 7))

def AllocBody384_302 : StackLang.HolProg 64 :=
.seq AllocBody384_246 AllocBody384_301

def AllocBody384_303 : StackLang.HolProg 64 :=
.seq AllocBody384_245 AllocBody384_302

def AllocBody384_304 : StackLang.HolProg 64 :=
.seq AllocBody384_244 AllocBody384_303

def AllocBody384_305 : StackLang.HolProg 64 :=
.seq AllocBody384_225 AllocBody384_304

def AllocBody384_306 : StackLang.HolProg 64 :=
.seq AllocBody384_222 AllocBody384_305

def AllocBody384_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody384_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody384_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody384_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3000#64)

def AllocBody384_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody384_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody384_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 9000#64)

def AllocBody384_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_317 : StackLang.HolProg 64 :=
.seq AllocBody384_315 AllocBody384_316

def AllocBody384_318 : StackLang.HolProg 64 :=
.seq AllocBody384_314 AllocBody384_317

def AllocBody384_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody384_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_321 : StackLang.HolProg 64 :=
.seq AllocBody384_319 AllocBody384_320

def AllocBody384_322 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody384_318 AllocBody384_321

def AllocBody384_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody384_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_325 : StackLang.HolProg 64 :=
.seq AllocBody384_323 AllocBody384_324

def AllocBody384_326 : StackLang.HolProg 64 :=
.seq AllocBody384_322 AllocBody384_325

def AllocBody384_327 : StackLang.HolProg 64 :=
.seq AllocBody384_313 AllocBody384_326

def AllocBody384_328 : StackLang.HolProg 64 :=
.seq AllocBody384_312 AllocBody384_327

def AllocBody384_329 : StackLang.HolProg 64 :=
.seq AllocBody384_311 AllocBody384_328

def AllocBody384_330 : StackLang.HolProg 64 :=
.seq AllocBody384_310 AllocBody384_329

def AllocBody384_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody384_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_333 : StackLang.HolProg 64 :=
.seq AllocBody384_331 AllocBody384_332

def AllocBody384_334 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody384_330 AllocBody384_333

def AllocBody384_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody384_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_337 : StackLang.HolProg 64 :=
.seq AllocBody384_335 AllocBody384_336

def AllocBody384_338 : StackLang.HolProg 64 :=
.seq AllocBody384_334 AllocBody384_337

def AllocBody384_339 : StackLang.HolProg 64 :=
.seq AllocBody384_309 AllocBody384_338

def AllocBody384_340 : StackLang.HolProg 64 :=
.seq AllocBody384_308 AllocBody384_339

def AllocBody384_341 : StackLang.HolProg 64 :=
.seq AllocBody384_307 AllocBody384_340

def AllocBody384_342 : StackLang.HolProg 64 :=
.seq AllocBody384_306 AllocBody384_341

def AllocBody384_343 : StackLang.HolProg 64 :=
.seq AllocBody384_221 AllocBody384_342

def AllocBody384_344 : StackLang.HolProg 64 :=
.seq AllocBody384_192 AllocBody384_343

def AllocBody384_345 : StackLang.HolProg 64 :=
.seq AllocBody384_191 AllocBody384_344

def AllocBody384_346 : StackLang.HolProg 64 :=
.seq AllocBody384_188 AllocBody384_345

def AllocBody384_347 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 19 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody384_187 AllocBody384_346

def AllocBody384_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody384_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def AllocBody384_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 14 0#64)

def AllocBody384_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def AllocBody384_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody384_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody384_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 208#64))

def AllocBody384_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 216#64))

def AllocBody384_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def AllocBody384_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody384_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody384_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 24#64)

def AllocBody384_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def AllocBody384_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody384_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody384_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 15
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def AllocBody384_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 2000#64)

def AllocBody384_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 15
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 15)))

def AllocBody384_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody384_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody384_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 2900#64)

def AllocBody384_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody384_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 15
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def AllocBody384_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 14)))

def AllocBody384_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 14 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def AllocBody384_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody384_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody384_388 : StackLang.HolProg 64 :=
.seq AllocBody384_386 AllocBody384_387

def AllocBody384_389 : StackLang.HolProg 64 :=
.seq AllocBody384_385 AllocBody384_388

def AllocBody384_390 : StackLang.HolProg 64 :=
.seq AllocBody384_384 AllocBody384_389

def AllocBody384_391 : StackLang.HolProg 64 :=
.seq AllocBody384_383 AllocBody384_390

def AllocBody384_392 : StackLang.HolProg 64 :=
.seq AllocBody384_382 AllocBody384_391

def AllocBody384_393 : StackLang.HolProg 64 :=
.seq AllocBody384_381 AllocBody384_392

def AllocBody384_394 : StackLang.HolProg 64 :=
.seq AllocBody384_380 AllocBody384_393

def AllocBody384_395 : StackLang.HolProg 64 :=
.seq AllocBody384_379 AllocBody384_394

def AllocBody384_396 : StackLang.HolProg 64 :=
.seq AllocBody384_378 AllocBody384_395

def AllocBody384_397 : StackLang.HolProg 64 :=
.seq AllocBody384_377 AllocBody384_396

def AllocBody384_398 : StackLang.HolProg 64 :=
.seq AllocBody384_376 AllocBody384_397

def AllocBody384_399 : StackLang.HolProg 64 :=
.seq AllocBody384_375 AllocBody384_398

def AllocBody384_400 : StackLang.HolProg 64 :=
.seq AllocBody384_374 AllocBody384_399

def AllocBody384_401 : StackLang.HolProg 64 :=
.seq AllocBody384_373 AllocBody384_400

def AllocBody384_402 : StackLang.HolProg 64 :=
.seq AllocBody384_372 AllocBody384_401

def AllocBody384_403 : StackLang.HolProg 64 :=
.seq AllocBody384_371 AllocBody384_402

def AllocBody384_404 : StackLang.HolProg 64 :=
.seq AllocBody384_370 AllocBody384_403

def AllocBody384_405 : StackLang.HolProg 64 :=
.seq AllocBody384_369 AllocBody384_404

def AllocBody384_406 : StackLang.HolProg 64 :=
.seq AllocBody384_368 AllocBody384_405

def AllocBody384_407 : StackLang.HolProg 64 :=
.seq AllocBody384_367 AllocBody384_406

def AllocBody384_408 : StackLang.HolProg 64 :=
.seq AllocBody384_366 AllocBody384_407

def AllocBody384_409 : StackLang.HolProg 64 :=
.seq AllocBody384_365 AllocBody384_408

def AllocBody384_410 : StackLang.HolProg 64 :=
.seq AllocBody384_364 AllocBody384_409

def AllocBody384_411 : StackLang.HolProg 64 :=
.seq AllocBody384_363 AllocBody384_410

def AllocBody384_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody384_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody384_414 : StackLang.HolProg 64 :=
.seq AllocBody384_412 AllocBody384_413

def AllocBody384_415 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody384_411 AllocBody384_414

def AllocBody384_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody384_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_418 : StackLang.HolProg 64 :=
.seq AllocBody384_416 AllocBody384_417

def AllocBody384_419 : StackLang.HolProg 64 :=
.seq AllocBody384_415 AllocBody384_418

def AllocBody384_420 : StackLang.HolProg 64 :=
.seq AllocBody384_362 AllocBody384_419

def AllocBody384_421 : StackLang.HolProg 64 :=
.loop AllocBody384_420

def AllocBody384_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody384_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_424 : StackLang.HolProg 64 :=
.seq AllocBody384_422 AllocBody384_423

def AllocBody384_425 : StackLang.HolProg 64 :=
.seq AllocBody384_421 AllocBody384_424

def AllocBody384_426 : StackLang.HolProg 64 :=
.seq AllocBody384_361 AllocBody384_425

def AllocBody384_427 : StackLang.HolProg 64 :=
.seq AllocBody384_360 AllocBody384_426

def AllocBody384_428 : StackLang.HolProg 64 :=
.seq AllocBody384_359 AllocBody384_427

def AllocBody384_429 : StackLang.HolProg 64 :=
.seq AllocBody384_358 AllocBody384_428

def AllocBody384_430 : StackLang.HolProg 64 :=
.seq AllocBody384_357 AllocBody384_429

def AllocBody384_431 : StackLang.HolProg 64 :=
.seq AllocBody384_356 AllocBody384_430

def AllocBody384_432 : StackLang.HolProg 64 :=
.seq AllocBody384_355 AllocBody384_431

def AllocBody384_433 : StackLang.HolProg 64 :=
.seq AllocBody384_354 AllocBody384_432

def AllocBody384_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody384_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_436 : StackLang.HolProg 64 :=
.seq AllocBody384_434 AllocBody384_435

def AllocBody384_437 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody384_433 AllocBody384_436

def AllocBody384_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody384_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 14
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody384_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody384_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody384_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def AllocBody384_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 4#64)

def AllocBody384_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody384_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 280#64))

def AllocBody384_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 7816#64)

def AllocBody384_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody384_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_455 : StackLang.HolProg 64 :=
.seq AllocBody384_453 AllocBody384_454

def AllocBody384_456 : StackLang.HolProg 64 :=
.seq AllocBody384_452 AllocBody384_455

def AllocBody384_457 : StackLang.HolProg 64 :=
.seq AllocBody384_451 AllocBody384_456

def AllocBody384_458 : StackLang.HolProg 64 :=
.seq AllocBody384_450 AllocBody384_457

def AllocBody384_459 : StackLang.HolProg 64 :=
.seq AllocBody384_449 AllocBody384_458

def AllocBody384_460 : StackLang.HolProg 64 :=
.seq AllocBody384_448 AllocBody384_459

def AllocBody384_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody384_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_463 : StackLang.HolProg 64 :=
.seq AllocBody384_461 AllocBody384_462

def AllocBody384_464 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody384_460 AllocBody384_463

def AllocBody384_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody384_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody384_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 14
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody384_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 12000#64)

def AllocBody384_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody384_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody384_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody384_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def AllocBody384_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody384_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody384_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody384_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody384_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody384_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 12

def AllocBody384_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody384_489 : StackLang.HolProg 64 :=
.seq AllocBody384_487 AllocBody384_488

def AllocBody384_490 : StackLang.HolProg 64 :=
.seq AllocBody384_486 AllocBody384_489

def AllocBody384_491 : StackLang.HolProg 64 :=
.seq AllocBody384_485 AllocBody384_490

def AllocBody384_492 : StackLang.HolProg 64 :=
.seq AllocBody384_484 AllocBody384_491

def AllocBody384_493 : StackLang.HolProg 64 :=
.seq AllocBody384_483 AllocBody384_492

def AllocBody384_494 : StackLang.HolProg 64 :=
.seq AllocBody384_482 AllocBody384_493

def AllocBody384_495 : StackLang.HolProg 64 :=
.seq AllocBody384_481 AllocBody384_494

def AllocBody384_496 : StackLang.HolProg 64 :=
.seq AllocBody384_480 AllocBody384_495

def AllocBody384_497 : StackLang.HolProg 64 :=
.seq AllocBody384_479 AllocBody384_496

def AllocBody384_498 : StackLang.HolProg 64 :=
.seq AllocBody384_478 AllocBody384_497

def AllocBody384_499 : StackLang.HolProg 64 :=
.seq AllocBody384_477 AllocBody384_498

def AllocBody384_500 : StackLang.HolProg 64 :=
.seq AllocBody384_476 AllocBody384_499

def AllocBody384_501 : StackLang.HolProg 64 :=
.seq AllocBody384_475 AllocBody384_500

def AllocBody384_502 : StackLang.HolProg 64 :=
.seq AllocBody384_474 AllocBody384_501

def AllocBody384_503 : StackLang.HolProg 64 :=
.seq AllocBody384_473 AllocBody384_502

def AllocBody384_504 : StackLang.HolProg 64 :=
.seq AllocBody384_472 AllocBody384_503

def AllocBody384_505 : StackLang.HolProg 64 :=
.seq AllocBody384_471 AllocBody384_504

def AllocBody384_506 : StackLang.HolProg 64 :=
.seq AllocBody384_470 AllocBody384_505

def AllocBody384_507 : StackLang.HolProg 64 :=
.seq AllocBody384_469 AllocBody384_506

def AllocBody384_508 : StackLang.HolProg 64 :=
.seq AllocBody384_468 AllocBody384_507

def AllocBody384_509 : StackLang.HolProg 64 :=
.seq AllocBody384_467 AllocBody384_508

def AllocBody384_510 : StackLang.HolProg 64 :=
.seq AllocBody384_466 AllocBody384_509

def AllocBody384_511 : StackLang.HolProg 64 :=
.seq AllocBody384_465 AllocBody384_510

def AllocBody384_512 : StackLang.HolProg 64 :=
.seq AllocBody384_464 AllocBody384_511

def AllocBody384_513 : StackLang.HolProg 64 :=
.seq AllocBody384_447 AllocBody384_512

def AllocBody384_514 : StackLang.HolProg 64 :=
.seq AllocBody384_446 AllocBody384_513

def AllocBody384_515 : StackLang.HolProg 64 :=
.seq AllocBody384_445 AllocBody384_514

def AllocBody384_516 : StackLang.HolProg 64 :=
.seq AllocBody384_444 AllocBody384_515

def AllocBody384_517 : StackLang.HolProg 64 :=
.seq AllocBody384_443 AllocBody384_516

def AllocBody384_518 : StackLang.HolProg 64 :=
.seq AllocBody384_442 AllocBody384_517

def AllocBody384_519 : StackLang.HolProg 64 :=
.seq AllocBody384_441 AllocBody384_518

def AllocBody384_520 : StackLang.HolProg 64 :=
.seq AllocBody384_440 AllocBody384_519

def AllocBody384_521 : StackLang.HolProg 64 :=
.seq AllocBody384_439 AllocBody384_520

def AllocBody384_522 : StackLang.HolProg 64 :=
.seq AllocBody384_438 AllocBody384_521

def AllocBody384_523 : StackLang.HolProg 64 :=
.seq AllocBody384_437 AllocBody384_522

def AllocBody384_524 : StackLang.HolProg 64 :=
.seq AllocBody384_353 AllocBody384_523

def AllocBody384_525 : StackLang.HolProg 64 :=
.seq AllocBody384_352 AllocBody384_524

def AllocBody384_526 : StackLang.HolProg 64 :=
.seq AllocBody384_351 AllocBody384_525

def AllocBody384_527 : StackLang.HolProg 64 :=
.seq AllocBody384_350 AllocBody384_526

def AllocBody384_528 : StackLang.HolProg 64 :=
.seq AllocBody384_349 AllocBody384_527

def AllocBody384_529 : StackLang.HolProg 64 :=
.seq AllocBody384_348 AllocBody384_528

def AllocBody384_530 : StackLang.HolProg 64 :=
.seq AllocBody384_347 AllocBody384_529

def AllocBody384_531 : StackLang.HolProg 64 :=
.seq AllocBody384_166 AllocBody384_530

def AllocBody384_532 : StackLang.HolProg 64 :=
.seq AllocBody384_165 AllocBody384_531

def AllocBody384_533 : StackLang.HolProg 64 :=
.seq AllocBody384_164 AllocBody384_532

def AllocBody384_534 : StackLang.HolProg 64 :=
.seq AllocBody384_163 AllocBody384_533

def AllocBody384_535 : StackLang.HolProg 64 :=
.seq AllocBody384_162 AllocBody384_534

def AllocBody384_536 : StackLang.HolProg 64 :=
.seq AllocBody384_161 AllocBody384_535

def AllocBody384_537 : StackLang.HolProg 64 :=
.seq AllocBody384_80 AllocBody384_536

def AllocBody384_538 : StackLang.HolProg 64 :=
.seq AllocBody384_73 AllocBody384_537

def AllocBody384_539 : StackLang.HolProg 64 :=
.seq AllocBody384_72 AllocBody384_538

def AllocBody384_540 : StackLang.HolProg 64 :=
.seq AllocBody384_71 AllocBody384_539

def AllocBody384_541 : StackLang.HolProg 64 :=
.seq AllocBody384_70 AllocBody384_540

def AllocBody384_542 : StackLang.HolProg 64 :=
.seq AllocBody384_69 AllocBody384_541

def AllocBody384_543 : StackLang.HolProg 64 :=
.seq AllocBody384_68 AllocBody384_542

def AllocBody384_544 : StackLang.HolProg 64 :=
.seq AllocBody384_67 AllocBody384_543

def AllocBody384_545 : StackLang.HolProg 64 :=
.seq AllocBody384_66 AllocBody384_544

def AllocBody384_546 : StackLang.HolProg 64 :=
.seq AllocBody384_65 AllocBody384_545

def AllocBody384_547 : StackLang.HolProg 64 :=
.seq AllocBody384_64 AllocBody384_546

def AllocBody384_548 : StackLang.HolProg 64 :=
.seq AllocBody384_63 AllocBody384_547

def AllocBody384_549 : StackLang.HolProg 64 :=
.seq AllocBody384_62 AllocBody384_548

def AllocBody384_550 : StackLang.HolProg 64 :=
.seq AllocBody384_61 AllocBody384_549

def AllocBody384_551 : StackLang.HolProg 64 :=
.seq AllocBody384_60 AllocBody384_550

def AllocBody384_552 : StackLang.HolProg 64 :=
.seq AllocBody384_15 AllocBody384_551

def AllocBody384_553 : StackLang.HolProg 64 :=
.seq AllocBody384_6 AllocBody384_552

def AllocBody384_554 : StackLang.HolProg 64 :=
.seq AllocBody384_5 AllocBody384_553

def AllocBody384_555 : StackLang.HolProg 64 :=
.seq AllocBody384_4 AllocBody384_554

def AllocBody384_556 : StackLang.HolProg 64 :=
.seq AllocBody384_3 AllocBody384_555

def AllocBody384_557 : StackLang.HolProg 64 :=
.seq AllocBody384_0 AllocBody384_556

def Alloc384 : Nat × StackLang.HolProg 64 := (384, AllocBody384_557)
theorem Alloc384_eq : StackAlloc.progComp (384, raw384) = Alloc384 := by
  kernel_rfl
#print axioms Alloc384_eq
end InitECandidate.Proofs.BackendStages
