import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw317
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody317_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody317_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody317_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody317_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody317_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody317_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody317_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody317_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody317_8 : StackLang.HolProg 64 :=
.seq AllocBody317_6 AllocBody317_7

def AllocBody317_9 : StackLang.HolProg 64 :=
.seq AllocBody317_5 AllocBody317_8

def AllocBody317_10 : StackLang.HolProg 64 :=
.seq AllocBody317_4 AllocBody317_9

def AllocBody317_11 : StackLang.HolProg 64 :=
.seq AllocBody317_3 AllocBody317_10

def AllocBody317_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody317_13 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody317_11 AllocBody317_12

def AllocBody317_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody317_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody317_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody317_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody317_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody317_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody317_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody317_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody317_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def AllocBody317_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody317_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody317_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody317_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody317_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody317_28 : StackLang.HolProg 64 :=
.seq AllocBody317_26 AllocBody317_27

def AllocBody317_29 : StackLang.HolProg 64 :=
.seq AllocBody317_25 AllocBody317_28

def AllocBody317_30 : StackLang.HolProg 64 :=
.seq AllocBody317_24 AllocBody317_29

def AllocBody317_31 : StackLang.HolProg 64 :=
.seq AllocBody317_23 AllocBody317_30

def AllocBody317_32 : StackLang.HolProg 64 :=
.seq AllocBody317_22 AllocBody317_31

def AllocBody317_33 : StackLang.HolProg 64 :=
.seq AllocBody317_21 AllocBody317_32

def AllocBody317_34 : StackLang.HolProg 64 :=
.seq AllocBody317_20 AllocBody317_33

def AllocBody317_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody317_36 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody317_34 AllocBody317_35

def AllocBody317_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody317_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody317_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody317_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody317_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody317_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody317_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody317_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody317_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def AllocBody317_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody317_47 : StackLang.HolProg 64 :=
.seq AllocBody317_45 AllocBody317_46

def AllocBody317_48 : StackLang.HolProg 64 :=
.seq AllocBody317_44 AllocBody317_47

def AllocBody317_49 : StackLang.HolProg 64 :=
.seq AllocBody317_43 AllocBody317_48

def AllocBody317_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody317_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 881#64)

def AllocBody317_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody317_53 : StackLang.HolProg 64 :=
.seq AllocBody317_51 AllocBody317_52

def AllocBody317_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody317_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody317_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody317_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 317 3

def AllocBody317_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody317_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody317_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody317_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody317_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody317_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody317_64 : StackLang.HolProg 64 :=
.seq AllocBody317_62 AllocBody317_63

def AllocBody317_65 : StackLang.HolProg 64 :=
.seq AllocBody317_61 AllocBody317_64

def AllocBody317_66 : StackLang.HolProg 64 :=
.seq AllocBody317_60 AllocBody317_65

def AllocBody317_67 : StackLang.HolProg 64 :=
.seq AllocBody317_59 AllocBody317_66

def AllocBody317_68 : StackLang.HolProg 64 :=
.seq AllocBody317_58 AllocBody317_67

def AllocBody317_69 : StackLang.HolProg 64 :=
.seq AllocBody317_57 AllocBody317_68

def AllocBody317_70 : StackLang.HolProg 64 :=
.seq AllocBody317_56 AllocBody317_69

def AllocBody317_71 : StackLang.HolProg 64 :=
.seq AllocBody317_55 AllocBody317_70

def AllocBody317_72 : StackLang.HolProg 64 :=
.seq AllocBody317_54 AllocBody317_71

def AllocBody317_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody317_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody317_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody317_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody317_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody317_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody317_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody317_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody317_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody317_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody317_83 : StackLang.HolProg 64 :=
.seq AllocBody317_81 AllocBody317_82

def AllocBody317_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody317_85 : StackLang.HolProg 64 :=
.seq AllocBody317_83 AllocBody317_84

def AllocBody317_86 : StackLang.HolProg 64 :=
.seq AllocBody317_80 AllocBody317_85

def AllocBody317_87 : StackLang.HolProg 64 :=
.seq AllocBody317_79 AllocBody317_86

def AllocBody317_88 : StackLang.HolProg 64 :=
.seq AllocBody317_78 AllocBody317_87

def AllocBody317_89 : StackLang.HolProg 64 :=
.seq AllocBody317_77 AllocBody317_88

def AllocBody317_90 : StackLang.HolProg 64 :=
.seq AllocBody317_76 AllocBody317_89

def AllocBody317_91 : StackLang.HolProg 64 :=
.seq AllocBody317_75 AllocBody317_90

def AllocBody317_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody317_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody317_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody317_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody317_96 : StackLang.HolProg 64 :=
.seq AllocBody317_94 AllocBody317_95

def AllocBody317_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody317_98 : StackLang.HolProg 64 :=
.seq AllocBody317_96 AllocBody317_97

def AllocBody317_99 : StackLang.HolProg 64 :=
.seq AllocBody317_93 AllocBody317_98

def AllocBody317_100 : StackLang.HolProg 64 :=
.seq AllocBody317_92 AllocBody317_99

def AllocBody317_101 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody317_102 : StackLang.HolProg 64 :=
.seq AllocBody317_100 AllocBody317_101

def AllocBody317_103 : StackLang.HolProg 64 :=
.call (some (AllocBody317_91, 0, 317, 2)) (Sum.inl 286) (some (AllocBody317_102, 317, 3))

def AllocBody317_104 : StackLang.HolProg 64 :=
.seq AllocBody317_74 AllocBody317_103

def AllocBody317_105 : StackLang.HolProg 64 :=
.seq AllocBody317_73 AllocBody317_104

def AllocBody317_106 : StackLang.HolProg 64 :=
.seq AllocBody317_72 AllocBody317_105

def AllocBody317_107 : StackLang.HolProg 64 :=
.seq AllocBody317_53 AllocBody317_106

def AllocBody317_108 : StackLang.HolProg 64 :=
.seq AllocBody317_50 AllocBody317_107

def AllocBody317_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody317_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody317_111 : StackLang.HolProg 64 :=
.seq AllocBody317_109 AllocBody317_110

def AllocBody317_112 : StackLang.HolProg 64 :=
.seq AllocBody317_108 AllocBody317_111

def AllocBody317_113 : StackLang.HolProg 64 :=
.seq AllocBody317_49 AllocBody317_112

def AllocBody317_114 : StackLang.HolProg 64 :=
.seq AllocBody317_42 AllocBody317_113

def AllocBody317_115 : StackLang.HolProg 64 :=
.seq AllocBody317_41 AllocBody317_114

def AllocBody317_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody317_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody317_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody317_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def AllocBody317_120 : StackLang.HolProg 64 :=
.seq AllocBody317_118 AllocBody317_119

def AllocBody317_121 : StackLang.HolProg 64 :=
.seq AllocBody317_117 AllocBody317_120

def AllocBody317_122 : StackLang.HolProg 64 :=
.seq AllocBody317_116 AllocBody317_121

def AllocBody317_123 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody317_115 AllocBody317_122

def AllocBody317_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody317_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody317_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody317_127 : StackLang.HolProg 64 :=
.seq AllocBody317_125 AllocBody317_126

def AllocBody317_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def AllocBody317_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody317_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 40#64))

def AllocBody317_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody317_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody317_133 : StackLang.HolProg 64 :=
.seq AllocBody317_131 AllocBody317_132

def AllocBody317_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody317_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 882#64)

def AllocBody317_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody317_137 : StackLang.HolProg 64 :=
.seq AllocBody317_135 AllocBody317_136

def AllocBody317_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody317_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody317_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody317_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 317 5

def AllocBody317_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody317_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody317_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody317_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody317_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody317_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody317_148 : StackLang.HolProg 64 :=
.seq AllocBody317_146 AllocBody317_147

def AllocBody317_149 : StackLang.HolProg 64 :=
.seq AllocBody317_145 AllocBody317_148

def AllocBody317_150 : StackLang.HolProg 64 :=
.seq AllocBody317_144 AllocBody317_149

def AllocBody317_151 : StackLang.HolProg 64 :=
.seq AllocBody317_143 AllocBody317_150

def AllocBody317_152 : StackLang.HolProg 64 :=
.seq AllocBody317_142 AllocBody317_151

def AllocBody317_153 : StackLang.HolProg 64 :=
.seq AllocBody317_141 AllocBody317_152

def AllocBody317_154 : StackLang.HolProg 64 :=
.seq AllocBody317_140 AllocBody317_153

def AllocBody317_155 : StackLang.HolProg 64 :=
.seq AllocBody317_139 AllocBody317_154

def AllocBody317_156 : StackLang.HolProg 64 :=
.seq AllocBody317_138 AllocBody317_155

def AllocBody317_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody317_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody317_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody317_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody317_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody317_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody317_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody317_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody317_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody317_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody317_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody317_168 : StackLang.HolProg 64 :=
.seq AllocBody317_166 AllocBody317_167

def AllocBody317_169 : StackLang.HolProg 64 :=
.seq AllocBody317_165 AllocBody317_168

def AllocBody317_170 : StackLang.HolProg 64 :=
.seq AllocBody317_164 AllocBody317_169

def AllocBody317_171 : StackLang.HolProg 64 :=
.seq AllocBody317_163 AllocBody317_170

def AllocBody317_172 : StackLang.HolProg 64 :=
.seq AllocBody317_162 AllocBody317_171

def AllocBody317_173 : StackLang.HolProg 64 :=
.seq AllocBody317_161 AllocBody317_172

def AllocBody317_174 : StackLang.HolProg 64 :=
.seq AllocBody317_160 AllocBody317_173

def AllocBody317_175 : StackLang.HolProg 64 :=
.seq AllocBody317_159 AllocBody317_174

def AllocBody317_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody317_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody317_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody317_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody317_180 : StackLang.HolProg 64 :=
.seq AllocBody317_178 AllocBody317_179

def AllocBody317_181 : StackLang.HolProg 64 :=
.seq AllocBody317_177 AllocBody317_180

def AllocBody317_182 : StackLang.HolProg 64 :=
.seq AllocBody317_176 AllocBody317_181

def AllocBody317_183 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody317_184 : StackLang.HolProg 64 :=
.seq AllocBody317_182 AllocBody317_183

def AllocBody317_185 : StackLang.HolProg 64 :=
.call (some (AllocBody317_175, 0, 317, 4)) (Sum.inl 292) (some (AllocBody317_184, 317, 5))

def AllocBody317_186 : StackLang.HolProg 64 :=
.seq AllocBody317_158 AllocBody317_185

def AllocBody317_187 : StackLang.HolProg 64 :=
.seq AllocBody317_157 AllocBody317_186

def AllocBody317_188 : StackLang.HolProg 64 :=
.seq AllocBody317_156 AllocBody317_187

def AllocBody317_189 : StackLang.HolProg 64 :=
.seq AllocBody317_137 AllocBody317_188

def AllocBody317_190 : StackLang.HolProg 64 :=
.seq AllocBody317_134 AllocBody317_189

def AllocBody317_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody317_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody317_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 40#64))

def AllocBody317_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody317_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody317_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody317_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody317_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody317_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody317_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 48#64))

def AllocBody317_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody317_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody317_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 1

def AllocBody317_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 297

def AllocBody317_205 : StackLang.HolProg 64 :=
.seq AllocBody317_203 AllocBody317_204

def AllocBody317_206 : StackLang.HolProg 64 :=
.seq AllocBody317_202 AllocBody317_205

def AllocBody317_207 : StackLang.HolProg 64 :=
.seq AllocBody317_201 AllocBody317_206

def AllocBody317_208 : StackLang.HolProg 64 :=
.seq AllocBody317_200 AllocBody317_207

def AllocBody317_209 : StackLang.HolProg 64 :=
.seq AllocBody317_199 AllocBody317_208

def AllocBody317_210 : StackLang.HolProg 64 :=
.seq AllocBody317_198 AllocBody317_209

def AllocBody317_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody317_212 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody317_210 AllocBody317_211

def AllocBody317_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody317_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody317_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody317_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 48#64))

def AllocBody317_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody317_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 56#64))

def AllocBody317_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody317_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody317_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 296

def AllocBody317_222 : StackLang.HolProg 64 :=
.seq AllocBody317_220 AllocBody317_221

def AllocBody317_223 : StackLang.HolProg 64 :=
.seq AllocBody317_219 AllocBody317_222

def AllocBody317_224 : StackLang.HolProg 64 :=
.seq AllocBody317_218 AllocBody317_223

def AllocBody317_225 : StackLang.HolProg 64 :=
.seq AllocBody317_217 AllocBody317_224

def AllocBody317_226 : StackLang.HolProg 64 :=
.seq AllocBody317_216 AllocBody317_225

def AllocBody317_227 : StackLang.HolProg 64 :=
.seq AllocBody317_215 AllocBody317_226

def AllocBody317_228 : StackLang.HolProg 64 :=
.seq AllocBody317_214 AllocBody317_227

def AllocBody317_229 : StackLang.HolProg 64 :=
.seq AllocBody317_213 AllocBody317_228

def AllocBody317_230 : StackLang.HolProg 64 :=
.seq AllocBody317_212 AllocBody317_229

def AllocBody317_231 : StackLang.HolProg 64 :=
.seq AllocBody317_197 AllocBody317_230

def AllocBody317_232 : StackLang.HolProg 64 :=
.seq AllocBody317_196 AllocBody317_231

def AllocBody317_233 : StackLang.HolProg 64 :=
.seq AllocBody317_195 AllocBody317_232

def AllocBody317_234 : StackLang.HolProg 64 :=
.seq AllocBody317_194 AllocBody317_233

def AllocBody317_235 : StackLang.HolProg 64 :=
.seq AllocBody317_193 AllocBody317_234

def AllocBody317_236 : StackLang.HolProg 64 :=
.seq AllocBody317_192 AllocBody317_235

def AllocBody317_237 : StackLang.HolProg 64 :=
.seq AllocBody317_191 AllocBody317_236

def AllocBody317_238 : StackLang.HolProg 64 :=
.seq AllocBody317_190 AllocBody317_237

def AllocBody317_239 : StackLang.HolProg 64 :=
.seq AllocBody317_133 AllocBody317_238

def AllocBody317_240 : StackLang.HolProg 64 :=
.seq AllocBody317_130 AllocBody317_239

def AllocBody317_241 : StackLang.HolProg 64 :=
.seq AllocBody317_129 AllocBody317_240

def AllocBody317_242 : StackLang.HolProg 64 :=
.seq AllocBody317_128 AllocBody317_241

def AllocBody317_243 : StackLang.HolProg 64 :=
.seq AllocBody317_127 AllocBody317_242

def AllocBody317_244 : StackLang.HolProg 64 :=
.seq AllocBody317_124 AllocBody317_243

def AllocBody317_245 : StackLang.HolProg 64 :=
.seq AllocBody317_123 AllocBody317_244

def AllocBody317_246 : StackLang.HolProg 64 :=
.seq AllocBody317_40 AllocBody317_245

def AllocBody317_247 : StackLang.HolProg 64 :=
.seq AllocBody317_39 AllocBody317_246

def AllocBody317_248 : StackLang.HolProg 64 :=
.seq AllocBody317_38 AllocBody317_247

def AllocBody317_249 : StackLang.HolProg 64 :=
.seq AllocBody317_37 AllocBody317_248

def AllocBody317_250 : StackLang.HolProg 64 :=
.seq AllocBody317_36 AllocBody317_249

def AllocBody317_251 : StackLang.HolProg 64 :=
.seq AllocBody317_19 AllocBody317_250

def AllocBody317_252 : StackLang.HolProg 64 :=
.seq AllocBody317_18 AllocBody317_251

def AllocBody317_253 : StackLang.HolProg 64 :=
.seq AllocBody317_17 AllocBody317_252

def AllocBody317_254 : StackLang.HolProg 64 :=
.seq AllocBody317_16 AllocBody317_253

def AllocBody317_255 : StackLang.HolProg 64 :=
.seq AllocBody317_15 AllocBody317_254

def AllocBody317_256 : StackLang.HolProg 64 :=
.seq AllocBody317_14 AllocBody317_255

def AllocBody317_257 : StackLang.HolProg 64 :=
.seq AllocBody317_13 AllocBody317_256

def AllocBody317_258 : StackLang.HolProg 64 :=
.seq AllocBody317_2 AllocBody317_257

def AllocBody317_259 : StackLang.HolProg 64 :=
.seq AllocBody317_1 AllocBody317_258

def AllocBody317_260 : StackLang.HolProg 64 :=
.seq AllocBody317_0 AllocBody317_259

def Alloc317 : Nat × StackLang.HolProg 64 := (317, AllocBody317_260)
theorem Alloc317_eq : StackAlloc.progComp (317, raw317) = Alloc317 := by
  kernel_rfl
#print axioms Alloc317_eq
end InitECandidate.Proofs.BackendStages
