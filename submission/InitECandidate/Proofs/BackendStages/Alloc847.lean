import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw847
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody847_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 8

def AllocBody847_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody847_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def AllocBody847_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 5

def AllocBody847_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody847_5 : StackLang.HolProg 64 :=
.seq AllocBody847_3 AllocBody847_4

def AllocBody847_6 : StackLang.HolProg 64 :=
.seq AllocBody847_2 AllocBody847_5

def AllocBody847_7 : StackLang.HolProg 64 :=
.seq AllocBody847_1 AllocBody847_6

def AllocBody847_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody847_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4236#64)

def AllocBody847_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody847_11 : StackLang.HolProg 64 :=
.seq AllocBody847_9 AllocBody847_10

def AllocBody847_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody847_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody847_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody847_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 847 3

def AllocBody847_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody847_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody847_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody847_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody847_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody847_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody847_22 : StackLang.HolProg 64 :=
.seq AllocBody847_20 AllocBody847_21

def AllocBody847_23 : StackLang.HolProg 64 :=
.seq AllocBody847_19 AllocBody847_22

def AllocBody847_24 : StackLang.HolProg 64 :=
.seq AllocBody847_18 AllocBody847_23

def AllocBody847_25 : StackLang.HolProg 64 :=
.seq AllocBody847_17 AllocBody847_24

def AllocBody847_26 : StackLang.HolProg 64 :=
.seq AllocBody847_16 AllocBody847_25

def AllocBody847_27 : StackLang.HolProg 64 :=
.seq AllocBody847_15 AllocBody847_26

def AllocBody847_28 : StackLang.HolProg 64 :=
.seq AllocBody847_14 AllocBody847_27

def AllocBody847_29 : StackLang.HolProg 64 :=
.seq AllocBody847_13 AllocBody847_28

def AllocBody847_30 : StackLang.HolProg 64 :=
.seq AllocBody847_12 AllocBody847_29

def AllocBody847_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody847_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody847_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody847_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody847_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody847_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody847_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody847_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody847_39 : StackLang.HolProg 64 :=
.seq AllocBody847_37 AllocBody847_38

def AllocBody847_40 : StackLang.HolProg 64 :=
.seq AllocBody847_36 AllocBody847_39

def AllocBody847_41 : StackLang.HolProg 64 :=
.seq AllocBody847_35 AllocBody847_40

def AllocBody847_42 : StackLang.HolProg 64 :=
.seq AllocBody847_34 AllocBody847_41

def AllocBody847_43 : StackLang.HolProg 64 :=
.seq AllocBody847_33 AllocBody847_42

def AllocBody847_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody847_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody847_46 : StackLang.HolProg 64 :=
.seq AllocBody847_44 AllocBody847_45

def AllocBody847_47 : StackLang.HolProg 64 :=
.call (some (AllocBody847_43, 0, 847, 2)) (Sum.inl 69) (some (AllocBody847_46, 847, 3))

def AllocBody847_48 : StackLang.HolProg 64 :=
.seq AllocBody847_32 AllocBody847_47

def AllocBody847_49 : StackLang.HolProg 64 :=
.seq AllocBody847_31 AllocBody847_48

def AllocBody847_50 : StackLang.HolProg 64 :=
.seq AllocBody847_30 AllocBody847_49

def AllocBody847_51 : StackLang.HolProg 64 :=
.seq AllocBody847_11 AllocBody847_50

def AllocBody847_52 : StackLang.HolProg 64 :=
.seq AllocBody847_8 AllocBody847_51

def AllocBody847_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody847_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody847_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody847_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody847_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def AllocBody847_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody847_59 : StackLang.HolProg 64 :=
.seq AllocBody847_57 AllocBody847_58

def AllocBody847_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody847_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4237#64)

def AllocBody847_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody847_63 : StackLang.HolProg 64 :=
.seq AllocBody847_61 AllocBody847_62

def AllocBody847_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody847_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody847_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody847_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 847 5

def AllocBody847_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody847_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody847_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody847_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody847_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody847_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody847_74 : StackLang.HolProg 64 :=
.seq AllocBody847_72 AllocBody847_73

def AllocBody847_75 : StackLang.HolProg 64 :=
.seq AllocBody847_71 AllocBody847_74

def AllocBody847_76 : StackLang.HolProg 64 :=
.seq AllocBody847_70 AllocBody847_75

def AllocBody847_77 : StackLang.HolProg 64 :=
.seq AllocBody847_69 AllocBody847_76

def AllocBody847_78 : StackLang.HolProg 64 :=
.seq AllocBody847_68 AllocBody847_77

def AllocBody847_79 : StackLang.HolProg 64 :=
.seq AllocBody847_67 AllocBody847_78

def AllocBody847_80 : StackLang.HolProg 64 :=
.seq AllocBody847_66 AllocBody847_79

def AllocBody847_81 : StackLang.HolProg 64 :=
.seq AllocBody847_65 AllocBody847_80

def AllocBody847_82 : StackLang.HolProg 64 :=
.seq AllocBody847_64 AllocBody847_81

def AllocBody847_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody847_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody847_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody847_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody847_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody847_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody847_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody847_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody847_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody847_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody847_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody847_94 : StackLang.HolProg 64 :=
.seq AllocBody847_92 AllocBody847_93

def AllocBody847_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody847_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody847_97 : StackLang.HolProg 64 :=
.seq AllocBody847_95 AllocBody847_96

def AllocBody847_98 : StackLang.HolProg 64 :=
.seq AllocBody847_94 AllocBody847_97

def AllocBody847_99 : StackLang.HolProg 64 :=
.seq AllocBody847_91 AllocBody847_98

def AllocBody847_100 : StackLang.HolProg 64 :=
.seq AllocBody847_90 AllocBody847_99

def AllocBody847_101 : StackLang.HolProg 64 :=
.seq AllocBody847_89 AllocBody847_100

def AllocBody847_102 : StackLang.HolProg 64 :=
.seq AllocBody847_88 AllocBody847_101

def AllocBody847_103 : StackLang.HolProg 64 :=
.seq AllocBody847_87 AllocBody847_102

def AllocBody847_104 : StackLang.HolProg 64 :=
.seq AllocBody847_86 AllocBody847_103

def AllocBody847_105 : StackLang.HolProg 64 :=
.seq AllocBody847_85 AllocBody847_104

def AllocBody847_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody847_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody847_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody847_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody847_110 : StackLang.HolProg 64 :=
.seq AllocBody847_108 AllocBody847_109

def AllocBody847_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody847_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody847_113 : StackLang.HolProg 64 :=
.seq AllocBody847_111 AllocBody847_112

def AllocBody847_114 : StackLang.HolProg 64 :=
.seq AllocBody847_110 AllocBody847_113

def AllocBody847_115 : StackLang.HolProg 64 :=
.seq AllocBody847_107 AllocBody847_114

def AllocBody847_116 : StackLang.HolProg 64 :=
.seq AllocBody847_106 AllocBody847_115

def AllocBody847_117 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody847_118 : StackLang.HolProg 64 :=
.seq AllocBody847_116 AllocBody847_117

def AllocBody847_119 : StackLang.HolProg 64 :=
.call (some (AllocBody847_105, 0, 847, 4)) (Sum.inl 68) (some (AllocBody847_118, 847, 5))

def AllocBody847_120 : StackLang.HolProg 64 :=
.seq AllocBody847_84 AllocBody847_119

def AllocBody847_121 : StackLang.HolProg 64 :=
.seq AllocBody847_83 AllocBody847_120

def AllocBody847_122 : StackLang.HolProg 64 :=
.seq AllocBody847_82 AllocBody847_121

def AllocBody847_123 : StackLang.HolProg 64 :=
.seq AllocBody847_63 AllocBody847_122

def AllocBody847_124 : StackLang.HolProg 64 :=
.seq AllocBody847_60 AllocBody847_123

def AllocBody847_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody847_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody847_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody847_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody847_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody847_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody847_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody847_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody847_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody847_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody847_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody847_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody847_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 8#64))

def AllocBody847_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody847_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody847_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody847_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody847_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody847_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody847_144 : StackLang.HolProg 64 :=
.seq AllocBody847_142 AllocBody847_143

def AllocBody847_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def AllocBody847_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody847_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody847_148 : StackLang.HolProg 64 :=
.seq AllocBody847_146 AllocBody847_147

def AllocBody847_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody847_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody847_151 : StackLang.HolProg 64 :=
.seq AllocBody847_149 AllocBody847_150

def AllocBody847_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 4

def AllocBody847_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def AllocBody847_154 : StackLang.HolProg 64 :=
.seq AllocBody847_152 AllocBody847_153

def AllocBody847_155 : StackLang.HolProg 64 :=
.seq AllocBody847_151 AllocBody847_154

def AllocBody847_156 : StackLang.HolProg 64 :=
.seq AllocBody847_148 AllocBody847_155

def AllocBody847_157 : StackLang.HolProg 64 :=
.seq AllocBody847_145 AllocBody847_156

def AllocBody847_158 : StackLang.HolProg 64 :=
.seq AllocBody847_144 AllocBody847_157

def AllocBody847_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody847_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4238#64)

def AllocBody847_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody847_162 : StackLang.HolProg 64 :=
.seq AllocBody847_160 AllocBody847_161

def AllocBody847_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody847_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody847_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody847_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 847 7

def AllocBody847_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody847_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody847_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody847_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody847_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody847_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody847_173 : StackLang.HolProg 64 :=
.seq AllocBody847_171 AllocBody847_172

def AllocBody847_174 : StackLang.HolProg 64 :=
.seq AllocBody847_170 AllocBody847_173

def AllocBody847_175 : StackLang.HolProg 64 :=
.seq AllocBody847_169 AllocBody847_174

def AllocBody847_176 : StackLang.HolProg 64 :=
.seq AllocBody847_168 AllocBody847_175

def AllocBody847_177 : StackLang.HolProg 64 :=
.seq AllocBody847_167 AllocBody847_176

def AllocBody847_178 : StackLang.HolProg 64 :=
.seq AllocBody847_166 AllocBody847_177

def AllocBody847_179 : StackLang.HolProg 64 :=
.seq AllocBody847_165 AllocBody847_178

def AllocBody847_180 : StackLang.HolProg 64 :=
.seq AllocBody847_164 AllocBody847_179

def AllocBody847_181 : StackLang.HolProg 64 :=
.seq AllocBody847_163 AllocBody847_180

def AllocBody847_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody847_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody847_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody847_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody847_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody847_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody847_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody847_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody847_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody847_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody847_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody847_193 : StackLang.HolProg 64 :=
.seq AllocBody847_191 AllocBody847_192

def AllocBody847_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody847_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody847_196 : StackLang.HolProg 64 :=
.seq AllocBody847_194 AllocBody847_195

def AllocBody847_197 : StackLang.HolProg 64 :=
.seq AllocBody847_193 AllocBody847_196

def AllocBody847_198 : StackLang.HolProg 64 :=
.seq AllocBody847_190 AllocBody847_197

def AllocBody847_199 : StackLang.HolProg 64 :=
.seq AllocBody847_189 AllocBody847_198

def AllocBody847_200 : StackLang.HolProg 64 :=
.seq AllocBody847_188 AllocBody847_199

def AllocBody847_201 : StackLang.HolProg 64 :=
.seq AllocBody847_187 AllocBody847_200

def AllocBody847_202 : StackLang.HolProg 64 :=
.seq AllocBody847_186 AllocBody847_201

def AllocBody847_203 : StackLang.HolProg 64 :=
.seq AllocBody847_185 AllocBody847_202

def AllocBody847_204 : StackLang.HolProg 64 :=
.seq AllocBody847_184 AllocBody847_203

def AllocBody847_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody847_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody847_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody847_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody847_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody847_210 : StackLang.HolProg 64 :=
.seq AllocBody847_208 AllocBody847_209

def AllocBody847_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody847_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody847_213 : StackLang.HolProg 64 :=
.seq AllocBody847_211 AllocBody847_212

def AllocBody847_214 : StackLang.HolProg 64 :=
.seq AllocBody847_210 AllocBody847_213

def AllocBody847_215 : StackLang.HolProg 64 :=
.seq AllocBody847_207 AllocBody847_214

def AllocBody847_216 : StackLang.HolProg 64 :=
.seq AllocBody847_206 AllocBody847_215

def AllocBody847_217 : StackLang.HolProg 64 :=
.seq AllocBody847_205 AllocBody847_216

def AllocBody847_218 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody847_219 : StackLang.HolProg 64 :=
.seq AllocBody847_217 AllocBody847_218

def AllocBody847_220 : StackLang.HolProg 64 :=
.call (some (AllocBody847_204, 0, 847, 6)) (Sum.inl 153) (some (AllocBody847_219, 847, 7))

def AllocBody847_221 : StackLang.HolProg 64 :=
.seq AllocBody847_183 AllocBody847_220

def AllocBody847_222 : StackLang.HolProg 64 :=
.seq AllocBody847_182 AllocBody847_221

def AllocBody847_223 : StackLang.HolProg 64 :=
.seq AllocBody847_181 AllocBody847_222

def AllocBody847_224 : StackLang.HolProg 64 :=
.seq AllocBody847_162 AllocBody847_223

def AllocBody847_225 : StackLang.HolProg 64 :=
.seq AllocBody847_159 AllocBody847_224

def AllocBody847_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody847_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody847_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody847_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 7

def AllocBody847_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody847_231 : StackLang.HolProg 64 :=
.seq AllocBody847_229 AllocBody847_230

def AllocBody847_232 : StackLang.HolProg 64 :=
.seq AllocBody847_228 AllocBody847_231

def AllocBody847_233 : StackLang.HolProg 64 :=
.seq AllocBody847_227 AllocBody847_232

def AllocBody847_234 : StackLang.HolProg 64 :=
.seq AllocBody847_226 AllocBody847_233

def AllocBody847_235 : StackLang.HolProg 64 :=
.seq AllocBody847_225 AllocBody847_234

def AllocBody847_236 : StackLang.HolProg 64 :=
.seq AllocBody847_158 AllocBody847_235

def AllocBody847_237 : StackLang.HolProg 64 :=
.seq AllocBody847_141 AllocBody847_236

def AllocBody847_238 : StackLang.HolProg 64 :=
.seq AllocBody847_140 AllocBody847_237

def AllocBody847_239 : StackLang.HolProg 64 :=
.seq AllocBody847_139 AllocBody847_238

def AllocBody847_240 : StackLang.HolProg 64 :=
.seq AllocBody847_138 AllocBody847_239

def AllocBody847_241 : StackLang.HolProg 64 :=
.seq AllocBody847_137 AllocBody847_240

def AllocBody847_242 : StackLang.HolProg 64 :=
.seq AllocBody847_136 AllocBody847_241

def AllocBody847_243 : StackLang.HolProg 64 :=
.seq AllocBody847_135 AllocBody847_242

def AllocBody847_244 : StackLang.HolProg 64 :=
.seq AllocBody847_134 AllocBody847_243

def AllocBody847_245 : StackLang.HolProg 64 :=
.seq AllocBody847_133 AllocBody847_244

def AllocBody847_246 : StackLang.HolProg 64 :=
.seq AllocBody847_132 AllocBody847_245

def AllocBody847_247 : StackLang.HolProg 64 :=
.seq AllocBody847_131 AllocBody847_246

def AllocBody847_248 : StackLang.HolProg 64 :=
.seq AllocBody847_130 AllocBody847_247

def AllocBody847_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody847_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody847_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody847_252 : StackLang.HolProg 64 :=
.seq AllocBody847_250 AllocBody847_251

def AllocBody847_253 : StackLang.HolProg 64 :=
.seq AllocBody847_249 AllocBody847_252

def AllocBody847_254 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody847_248 AllocBody847_253

def AllocBody847_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody847_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 6

def AllocBody847_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def AllocBody847_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 7

def AllocBody847_259 : StackLang.HolProg 64 :=
.seq AllocBody847_257 AllocBody847_258

def AllocBody847_260 : StackLang.HolProg 64 :=
.seq AllocBody847_256 AllocBody847_259

def AllocBody847_261 : StackLang.HolProg 64 :=
.seq AllocBody847_255 AllocBody847_260

def AllocBody847_262 : StackLang.HolProg 64 :=
.seq AllocBody847_254 AllocBody847_261

def AllocBody847_263 : StackLang.HolProg 64 :=
.seq AllocBody847_129 AllocBody847_262

def AllocBody847_264 : StackLang.HolProg 64 :=
.loop AllocBody847_263

def AllocBody847_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody847_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody847_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody847_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 7

def AllocBody847_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody847_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody847_271 : StackLang.HolProg 64 :=
.seq AllocBody847_269 AllocBody847_270

def AllocBody847_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody847_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody847_274 : StackLang.HolProg 64 :=
.seq AllocBody847_272 AllocBody847_273

def AllocBody847_275 : StackLang.HolProg 64 :=
.seq AllocBody847_271 AllocBody847_274

def AllocBody847_276 : StackLang.HolProg 64 :=
.seq AllocBody847_268 AllocBody847_275

def AllocBody847_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody847_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4239#64)

def AllocBody847_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody847_280 : StackLang.HolProg 64 :=
.seq AllocBody847_278 AllocBody847_279

def AllocBody847_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody847_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody847_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody847_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 847 9

def AllocBody847_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody847_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody847_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody847_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody847_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody847_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody847_291 : StackLang.HolProg 64 :=
.seq AllocBody847_289 AllocBody847_290

def AllocBody847_292 : StackLang.HolProg 64 :=
.seq AllocBody847_288 AllocBody847_291

def AllocBody847_293 : StackLang.HolProg 64 :=
.seq AllocBody847_287 AllocBody847_292

def AllocBody847_294 : StackLang.HolProg 64 :=
.seq AllocBody847_286 AllocBody847_293

def AllocBody847_295 : StackLang.HolProg 64 :=
.seq AllocBody847_285 AllocBody847_294

def AllocBody847_296 : StackLang.HolProg 64 :=
.seq AllocBody847_284 AllocBody847_295

def AllocBody847_297 : StackLang.HolProg 64 :=
.seq AllocBody847_283 AllocBody847_296

def AllocBody847_298 : StackLang.HolProg 64 :=
.seq AllocBody847_282 AllocBody847_297

def AllocBody847_299 : StackLang.HolProg 64 :=
.seq AllocBody847_281 AllocBody847_298

def AllocBody847_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody847_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody847_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody847_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody847_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody847_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody847_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody847_307 : StackLang.HolProg 64 :=
.seq AllocBody847_305 AllocBody847_306

def AllocBody847_308 : StackLang.HolProg 64 :=
.seq AllocBody847_304 AllocBody847_307

def AllocBody847_309 : StackLang.HolProg 64 :=
.seq AllocBody847_303 AllocBody847_308

def AllocBody847_310 : StackLang.HolProg 64 :=
.seq AllocBody847_302 AllocBody847_309

def AllocBody847_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody847_312 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody847_313 : StackLang.HolProg 64 :=
.seq AllocBody847_311 AllocBody847_312

def AllocBody847_314 : StackLang.HolProg 64 :=
.call (some (AllocBody847_310, 0, 847, 8)) (Sum.inl 153) (some (AllocBody847_313, 847, 9))

def AllocBody847_315 : StackLang.HolProg 64 :=
.seq AllocBody847_301 AllocBody847_314

def AllocBody847_316 : StackLang.HolProg 64 :=
.seq AllocBody847_300 AllocBody847_315

def AllocBody847_317 : StackLang.HolProg 64 :=
.seq AllocBody847_299 AllocBody847_316

def AllocBody847_318 : StackLang.HolProg 64 :=
.seq AllocBody847_280 AllocBody847_317

def AllocBody847_319 : StackLang.HolProg 64 :=
.seq AllocBody847_277 AllocBody847_318

def AllocBody847_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody847_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody847_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody847_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4240#64)

def AllocBody847_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody847_325 : StackLang.HolProg 64 :=
.seq AllocBody847_323 AllocBody847_324

def AllocBody847_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody847_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody847_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody847_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 847 11

def AllocBody847_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody847_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody847_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody847_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody847_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody847_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody847_336 : StackLang.HolProg 64 :=
.seq AllocBody847_334 AllocBody847_335

def AllocBody847_337 : StackLang.HolProg 64 :=
.seq AllocBody847_333 AllocBody847_336

def AllocBody847_338 : StackLang.HolProg 64 :=
.seq AllocBody847_332 AllocBody847_337

def AllocBody847_339 : StackLang.HolProg 64 :=
.seq AllocBody847_331 AllocBody847_338

def AllocBody847_340 : StackLang.HolProg 64 :=
.seq AllocBody847_330 AllocBody847_339

def AllocBody847_341 : StackLang.HolProg 64 :=
.seq AllocBody847_329 AllocBody847_340

def AllocBody847_342 : StackLang.HolProg 64 :=
.seq AllocBody847_328 AllocBody847_341

def AllocBody847_343 : StackLang.HolProg 64 :=
.seq AllocBody847_327 AllocBody847_342

def AllocBody847_344 : StackLang.HolProg 64 :=
.seq AllocBody847_326 AllocBody847_343

def AllocBody847_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody847_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody847_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody847_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody847_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody847_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody847_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody847_352 : StackLang.HolProg 64 :=
.seq AllocBody847_350 AllocBody847_351

def AllocBody847_353 : StackLang.HolProg 64 :=
.seq AllocBody847_349 AllocBody847_352

def AllocBody847_354 : StackLang.HolProg 64 :=
.seq AllocBody847_348 AllocBody847_353

def AllocBody847_355 : StackLang.HolProg 64 :=
.seq AllocBody847_347 AllocBody847_354

def AllocBody847_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody847_357 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody847_358 : StackLang.HolProg 64 :=
.seq AllocBody847_356 AllocBody847_357

def AllocBody847_359 : StackLang.HolProg 64 :=
.call (some (AllocBody847_355, 0, 847, 10)) (Sum.inl 70) (some (AllocBody847_358, 847, 11))

def AllocBody847_360 : StackLang.HolProg 64 :=
.seq AllocBody847_346 AllocBody847_359

def AllocBody847_361 : StackLang.HolProg 64 :=
.seq AllocBody847_345 AllocBody847_360

def AllocBody847_362 : StackLang.HolProg 64 :=
.seq AllocBody847_344 AllocBody847_361

def AllocBody847_363 : StackLang.HolProg 64 :=
.seq AllocBody847_325 AllocBody847_362

def AllocBody847_364 : StackLang.HolProg 64 :=
.seq AllocBody847_322 AllocBody847_363

def AllocBody847_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody847_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody847_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody847_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 8

def AllocBody847_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody847_370 : StackLang.HolProg 64 :=
.seq AllocBody847_368 AllocBody847_369

def AllocBody847_371 : StackLang.HolProg 64 :=
.seq AllocBody847_367 AllocBody847_370

def AllocBody847_372 : StackLang.HolProg 64 :=
.seq AllocBody847_366 AllocBody847_371

def AllocBody847_373 : StackLang.HolProg 64 :=
.seq AllocBody847_365 AllocBody847_372

def AllocBody847_374 : StackLang.HolProg 64 :=
.seq AllocBody847_364 AllocBody847_373

def AllocBody847_375 : StackLang.HolProg 64 :=
.seq AllocBody847_321 AllocBody847_374

def AllocBody847_376 : StackLang.HolProg 64 :=
.seq AllocBody847_320 AllocBody847_375

def AllocBody847_377 : StackLang.HolProg 64 :=
.seq AllocBody847_319 AllocBody847_376

def AllocBody847_378 : StackLang.HolProg 64 :=
.seq AllocBody847_276 AllocBody847_377

def AllocBody847_379 : StackLang.HolProg 64 :=
.seq AllocBody847_267 AllocBody847_378

def AllocBody847_380 : StackLang.HolProg 64 :=
.seq AllocBody847_266 AllocBody847_379

def AllocBody847_381 : StackLang.HolProg 64 :=
.seq AllocBody847_265 AllocBody847_380

def AllocBody847_382 : StackLang.HolProg 64 :=
.seq AllocBody847_264 AllocBody847_381

def AllocBody847_383 : StackLang.HolProg 64 :=
.seq AllocBody847_128 AllocBody847_382

def AllocBody847_384 : StackLang.HolProg 64 :=
.seq AllocBody847_127 AllocBody847_383

def AllocBody847_385 : StackLang.HolProg 64 :=
.seq AllocBody847_126 AllocBody847_384

def AllocBody847_386 : StackLang.HolProg 64 :=
.seq AllocBody847_125 AllocBody847_385

def AllocBody847_387 : StackLang.HolProg 64 :=
.seq AllocBody847_124 AllocBody847_386

def AllocBody847_388 : StackLang.HolProg 64 :=
.seq AllocBody847_59 AllocBody847_387

def AllocBody847_389 : StackLang.HolProg 64 :=
.seq AllocBody847_56 AllocBody847_388

def AllocBody847_390 : StackLang.HolProg 64 :=
.seq AllocBody847_55 AllocBody847_389

def AllocBody847_391 : StackLang.HolProg 64 :=
.seq AllocBody847_54 AllocBody847_390

def AllocBody847_392 : StackLang.HolProg 64 :=
.seq AllocBody847_53 AllocBody847_391

def AllocBody847_393 : StackLang.HolProg 64 :=
.seq AllocBody847_52 AllocBody847_392

def AllocBody847_394 : StackLang.HolProg 64 :=
.seq AllocBody847_7 AllocBody847_393

def AllocBody847_395 : StackLang.HolProg 64 :=
.seq AllocBody847_0 AllocBody847_394

def Alloc847 : Nat × StackLang.HolProg 64 := (847, AllocBody847_395)
theorem Alloc847_eq : StackAlloc.progComp (847, raw847) = Alloc847 := by
  kernel_rfl
#print axioms Alloc847_eq
end InitECandidate.Proofs.BackendStages
