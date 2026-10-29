import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw345
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody345_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody345_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody345_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody345_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody345_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody345_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def AllocBody345_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_9 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody345_10 : StackLang.HolProg 64 :=
.seq AllocBody345_8 AllocBody345_9

def AllocBody345_11 : StackLang.HolProg 64 :=
.seq AllocBody345_7 AllocBody345_10

def AllocBody345_12 : StackLang.HolProg 64 :=
.seq AllocBody345_6 AllocBody345_11

def AllocBody345_13 : StackLang.HolProg 64 :=
.seq AllocBody345_5 AllocBody345_12

def AllocBody345_14 : StackLang.HolProg 64 :=
.seq AllocBody345_4 AllocBody345_13

def AllocBody345_15 : StackLang.HolProg 64 :=
.seq AllocBody345_3 AllocBody345_14

def AllocBody345_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody345_15 AllocBody345_16

def AllocBody345_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody345_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def AllocBody345_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 400#64)

def AllocBody345_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody345_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody345_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody345_27 : StackLang.HolProg 64 :=
.seq AllocBody345_25 AllocBody345_26

def AllocBody345_28 : StackLang.HolProg 64 :=
.seq AllocBody345_24 AllocBody345_27

def AllocBody345_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1000#64)

def AllocBody345_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_32 : StackLang.HolProg 64 :=
.seq AllocBody345_30 AllocBody345_31

def AllocBody345_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody345_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody345_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 3

def AllocBody345_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody345_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody345_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody345_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody345_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_43 : StackLang.HolProg 64 :=
.seq AllocBody345_41 AllocBody345_42

def AllocBody345_44 : StackLang.HolProg 64 :=
.seq AllocBody345_40 AllocBody345_43

def AllocBody345_45 : StackLang.HolProg 64 :=
.seq AllocBody345_39 AllocBody345_44

def AllocBody345_46 : StackLang.HolProg 64 :=
.seq AllocBody345_38 AllocBody345_45

def AllocBody345_47 : StackLang.HolProg 64 :=
.seq AllocBody345_37 AllocBody345_46

def AllocBody345_48 : StackLang.HolProg 64 :=
.seq AllocBody345_36 AllocBody345_47

def AllocBody345_49 : StackLang.HolProg 64 :=
.seq AllocBody345_35 AllocBody345_48

def AllocBody345_50 : StackLang.HolProg 64 :=
.seq AllocBody345_34 AllocBody345_49

def AllocBody345_51 : StackLang.HolProg 64 :=
.seq AllocBody345_33 AllocBody345_50

def AllocBody345_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody345_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody345_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody345_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody345_59 : StackLang.HolProg 64 :=
.seq AllocBody345_57 AllocBody345_58

def AllocBody345_60 : StackLang.HolProg 64 :=
.seq AllocBody345_56 AllocBody345_59

def AllocBody345_61 : StackLang.HolProg 64 :=
.seq AllocBody345_55 AllocBody345_60

def AllocBody345_62 : StackLang.HolProg 64 :=
.seq AllocBody345_54 AllocBody345_61

def AllocBody345_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_64 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody345_65 : StackLang.HolProg 64 :=
.seq AllocBody345_63 AllocBody345_64

def AllocBody345_66 : StackLang.HolProg 64 :=
.call (some (AllocBody345_62, 0, 345, 2)) (Sum.inl 68) (some (AllocBody345_65, 345, 3))

def AllocBody345_67 : StackLang.HolProg 64 :=
.seq AllocBody345_53 AllocBody345_66

def AllocBody345_68 : StackLang.HolProg 64 :=
.seq AllocBody345_52 AllocBody345_67

def AllocBody345_69 : StackLang.HolProg 64 :=
.seq AllocBody345_51 AllocBody345_68

def AllocBody345_70 : StackLang.HolProg 64 :=
.seq AllocBody345_32 AllocBody345_69

def AllocBody345_71 : StackLang.HolProg 64 :=
.seq AllocBody345_29 AllocBody345_70

def AllocBody345_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody345_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 400#64)

def AllocBody345_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody345_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1001#64)

def AllocBody345_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_79 : StackLang.HolProg 64 :=
.seq AllocBody345_77 AllocBody345_78

def AllocBody345_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody345_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody345_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 5

def AllocBody345_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody345_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody345_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody345_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody345_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_90 : StackLang.HolProg 64 :=
.seq AllocBody345_88 AllocBody345_89

def AllocBody345_91 : StackLang.HolProg 64 :=
.seq AllocBody345_87 AllocBody345_90

def AllocBody345_92 : StackLang.HolProg 64 :=
.seq AllocBody345_86 AllocBody345_91

def AllocBody345_93 : StackLang.HolProg 64 :=
.seq AllocBody345_85 AllocBody345_92

def AllocBody345_94 : StackLang.HolProg 64 :=
.seq AllocBody345_84 AllocBody345_93

def AllocBody345_95 : StackLang.HolProg 64 :=
.seq AllocBody345_83 AllocBody345_94

def AllocBody345_96 : StackLang.HolProg 64 :=
.seq AllocBody345_82 AllocBody345_95

def AllocBody345_97 : StackLang.HolProg 64 :=
.seq AllocBody345_81 AllocBody345_96

def AllocBody345_98 : StackLang.HolProg 64 :=
.seq AllocBody345_80 AllocBody345_97

def AllocBody345_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody345_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody345_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody345_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody345_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody345_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody345_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody345_109 : StackLang.HolProg 64 :=
.seq AllocBody345_107 AllocBody345_108

def AllocBody345_110 : StackLang.HolProg 64 :=
.seq AllocBody345_106 AllocBody345_109

def AllocBody345_111 : StackLang.HolProg 64 :=
.seq AllocBody345_105 AllocBody345_110

def AllocBody345_112 : StackLang.HolProg 64 :=
.seq AllocBody345_104 AllocBody345_111

def AllocBody345_113 : StackLang.HolProg 64 :=
.seq AllocBody345_103 AllocBody345_112

def AllocBody345_114 : StackLang.HolProg 64 :=
.seq AllocBody345_102 AllocBody345_113

def AllocBody345_115 : StackLang.HolProg 64 :=
.seq AllocBody345_101 AllocBody345_114

def AllocBody345_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody345_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody345_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody345_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody345_120 : StackLang.HolProg 64 :=
.seq AllocBody345_118 AllocBody345_119

def AllocBody345_121 : StackLang.HolProg 64 :=
.seq AllocBody345_117 AllocBody345_120

def AllocBody345_122 : StackLang.HolProg 64 :=
.seq AllocBody345_116 AllocBody345_121

def AllocBody345_123 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody345_124 : StackLang.HolProg 64 :=
.seq AllocBody345_122 AllocBody345_123

def AllocBody345_125 : StackLang.HolProg 64 :=
.call (some (AllocBody345_115, 0, 345, 4)) (Sum.inl 78) (some (AllocBody345_124, 345, 5))

def AllocBody345_126 : StackLang.HolProg 64 :=
.seq AllocBody345_100 AllocBody345_125

def AllocBody345_127 : StackLang.HolProg 64 :=
.seq AllocBody345_99 AllocBody345_126

def AllocBody345_128 : StackLang.HolProg 64 :=
.seq AllocBody345_98 AllocBody345_127

def AllocBody345_129 : StackLang.HolProg 64 :=
.seq AllocBody345_79 AllocBody345_128

def AllocBody345_130 : StackLang.HolProg 64 :=
.seq AllocBody345_76 AllocBody345_129

def AllocBody345_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 384#64)))

def AllocBody345_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody345_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 392#64)))

def AllocBody345_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody345_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def AllocBody345_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 9#64)

def AllocBody345_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody345_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def AllocBody345_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_147 : StackLang.HolProg 64 :=
.seq AllocBody345_145 AllocBody345_146

def AllocBody345_148 : StackLang.HolProg 64 :=
.seq AllocBody345_144 AllocBody345_147

def AllocBody345_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody345_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_152 : StackLang.HolProg 64 :=
.seq AllocBody345_150 AllocBody345_151

def AllocBody345_153 : StackLang.HolProg 64 :=
.seq AllocBody345_149 AllocBody345_152

def AllocBody345_154 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody345_148 AllocBody345_153

def AllocBody345_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def AllocBody345_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody345_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_161 : StackLang.HolProg 64 :=
.seq AllocBody345_159 AllocBody345_160

def AllocBody345_162 : StackLang.HolProg 64 :=
.seq AllocBody345_158 AllocBody345_161

def AllocBody345_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody345_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_166 : StackLang.HolProg 64 :=
.seq AllocBody345_164 AllocBody345_165

def AllocBody345_167 : StackLang.HolProg 64 :=
.seq AllocBody345_163 AllocBody345_166

def AllocBody345_168 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody345_162 AllocBody345_167

def AllocBody345_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody345_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody345_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody345_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def AllocBody345_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 3

def AllocBody345_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def AllocBody345_179 : StackLang.HolProg 64 :=
.seq AllocBody345_177 AllocBody345_178

def AllocBody345_180 : StackLang.HolProg 64 :=
.seq AllocBody345_176 AllocBody345_179

def AllocBody345_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1002#64)

def AllocBody345_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_184 : StackLang.HolProg 64 :=
.seq AllocBody345_182 AllocBody345_183

def AllocBody345_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody345_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody345_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 7

def AllocBody345_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody345_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody345_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody345_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody345_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_195 : StackLang.HolProg 64 :=
.seq AllocBody345_193 AllocBody345_194

def AllocBody345_196 : StackLang.HolProg 64 :=
.seq AllocBody345_192 AllocBody345_195

def AllocBody345_197 : StackLang.HolProg 64 :=
.seq AllocBody345_191 AllocBody345_196

def AllocBody345_198 : StackLang.HolProg 64 :=
.seq AllocBody345_190 AllocBody345_197

def AllocBody345_199 : StackLang.HolProg 64 :=
.seq AllocBody345_189 AllocBody345_198

def AllocBody345_200 : StackLang.HolProg 64 :=
.seq AllocBody345_188 AllocBody345_199

def AllocBody345_201 : StackLang.HolProg 64 :=
.seq AllocBody345_187 AllocBody345_200

def AllocBody345_202 : StackLang.HolProg 64 :=
.seq AllocBody345_186 AllocBody345_201

def AllocBody345_203 : StackLang.HolProg 64 :=
.seq AllocBody345_185 AllocBody345_202

def AllocBody345_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody345_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody345_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody345_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody345_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody345_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody345_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody345_214 : StackLang.HolProg 64 :=
.seq AllocBody345_212 AllocBody345_213

def AllocBody345_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody345_216 : StackLang.HolProg 64 :=
.seq AllocBody345_214 AllocBody345_215

def AllocBody345_217 : StackLang.HolProg 64 :=
.seq AllocBody345_211 AllocBody345_216

def AllocBody345_218 : StackLang.HolProg 64 :=
.seq AllocBody345_210 AllocBody345_217

def AllocBody345_219 : StackLang.HolProg 64 :=
.seq AllocBody345_209 AllocBody345_218

def AllocBody345_220 : StackLang.HolProg 64 :=
.seq AllocBody345_208 AllocBody345_219

def AllocBody345_221 : StackLang.HolProg 64 :=
.seq AllocBody345_207 AllocBody345_220

def AllocBody345_222 : StackLang.HolProg 64 :=
.seq AllocBody345_206 AllocBody345_221

def AllocBody345_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody345_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody345_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody345_226 : StackLang.HolProg 64 :=
.seq AllocBody345_224 AllocBody345_225

def AllocBody345_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody345_228 : StackLang.HolProg 64 :=
.seq AllocBody345_226 AllocBody345_227

def AllocBody345_229 : StackLang.HolProg 64 :=
.seq AllocBody345_223 AllocBody345_228

def AllocBody345_230 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody345_231 : StackLang.HolProg 64 :=
.seq AllocBody345_229 AllocBody345_230

def AllocBody345_232 : StackLang.HolProg 64 :=
.call (some (AllocBody345_222, 0, 345, 6)) (Sum.inl 162) (some (AllocBody345_231, 345, 7))

def AllocBody345_233 : StackLang.HolProg 64 :=
.seq AllocBody345_205 AllocBody345_232

def AllocBody345_234 : StackLang.HolProg 64 :=
.seq AllocBody345_204 AllocBody345_233

def AllocBody345_235 : StackLang.HolProg 64 :=
.seq AllocBody345_203 AllocBody345_234

def AllocBody345_236 : StackLang.HolProg 64 :=
.seq AllocBody345_184 AllocBody345_235

def AllocBody345_237 : StackLang.HolProg 64 :=
.seq AllocBody345_181 AllocBody345_236

def AllocBody345_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody345_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 11#64)

def AllocBody345_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def AllocBody345_244 : StackLang.HolProg 64 :=
.seq AllocBody345_242 AllocBody345_243

def AllocBody345_245 : StackLang.HolProg 64 :=
.seq AllocBody345_241 AllocBody345_244

def AllocBody345_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_248 : StackLang.HolProg 64 :=
.seq AllocBody345_246 AllocBody345_247

def AllocBody345_249 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody345_245 AllocBody345_248

def AllocBody345_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody345_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 12#64)

def AllocBody345_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def AllocBody345_256 : StackLang.HolProg 64 :=
.seq AllocBody345_254 AllocBody345_255

def AllocBody345_257 : StackLang.HolProg 64 :=
.seq AllocBody345_253 AllocBody345_256

def AllocBody345_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_260 : StackLang.HolProg 64 :=
.seq AllocBody345_258 AllocBody345_259

def AllocBody345_261 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody345_257 AllocBody345_260

def AllocBody345_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody345_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 14#64)

def AllocBody345_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def AllocBody345_268 : StackLang.HolProg 64 :=
.seq AllocBody345_266 AllocBody345_267

def AllocBody345_269 : StackLang.HolProg 64 :=
.seq AllocBody345_265 AllocBody345_268

def AllocBody345_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_272 : StackLang.HolProg 64 :=
.seq AllocBody345_270 AllocBody345_271

def AllocBody345_273 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody345_269 AllocBody345_272

def AllocBody345_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def AllocBody345_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 13#64)

def AllocBody345_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def AllocBody345_280 : StackLang.HolProg 64 :=
.seq AllocBody345_278 AllocBody345_279

def AllocBody345_281 : StackLang.HolProg 64 :=
.seq AllocBody345_277 AllocBody345_280

def AllocBody345_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_284 : StackLang.HolProg 64 :=
.seq AllocBody345_282 AllocBody345_283

def AllocBody345_285 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody345_281 AllocBody345_284

def AllocBody345_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_288 : StackLang.HolProg 64 :=
.seq AllocBody345_286 AllocBody345_287

def AllocBody345_289 : StackLang.HolProg 64 :=
.seq AllocBody345_285 AllocBody345_288

def AllocBody345_290 : StackLang.HolProg 64 :=
.seq AllocBody345_276 AllocBody345_289

def AllocBody345_291 : StackLang.HolProg 64 :=
.seq AllocBody345_275 AllocBody345_290

def AllocBody345_292 : StackLang.HolProg 64 :=
.seq AllocBody345_274 AllocBody345_291

def AllocBody345_293 : StackLang.HolProg 64 :=
.seq AllocBody345_273 AllocBody345_292

def AllocBody345_294 : StackLang.HolProg 64 :=
.seq AllocBody345_264 AllocBody345_293

def AllocBody345_295 : StackLang.HolProg 64 :=
.seq AllocBody345_263 AllocBody345_294

def AllocBody345_296 : StackLang.HolProg 64 :=
.seq AllocBody345_262 AllocBody345_295

def AllocBody345_297 : StackLang.HolProg 64 :=
.seq AllocBody345_261 AllocBody345_296

def AllocBody345_298 : StackLang.HolProg 64 :=
.seq AllocBody345_252 AllocBody345_297

def AllocBody345_299 : StackLang.HolProg 64 :=
.seq AllocBody345_251 AllocBody345_298

def AllocBody345_300 : StackLang.HolProg 64 :=
.seq AllocBody345_250 AllocBody345_299

def AllocBody345_301 : StackLang.HolProg 64 :=
.seq AllocBody345_249 AllocBody345_300

def AllocBody345_302 : StackLang.HolProg 64 :=
.seq AllocBody345_240 AllocBody345_301

def AllocBody345_303 : StackLang.HolProg 64 :=
.seq AllocBody345_239 AllocBody345_302

def AllocBody345_304 : StackLang.HolProg 64 :=
.seq AllocBody345_238 AllocBody345_303

def AllocBody345_305 : StackLang.HolProg 64 :=
.seq AllocBody345_237 AllocBody345_304

def AllocBody345_306 : StackLang.HolProg 64 :=
.seq AllocBody345_180 AllocBody345_305

def AllocBody345_307 : StackLang.HolProg 64 :=
.seq AllocBody345_175 AllocBody345_306

def AllocBody345_308 : StackLang.HolProg 64 :=
.seq AllocBody345_174 AllocBody345_307

def AllocBody345_309 : StackLang.HolProg 64 :=
.seq AllocBody345_173 AllocBody345_308

def AllocBody345_310 : StackLang.HolProg 64 :=
.seq AllocBody345_172 AllocBody345_309

def AllocBody345_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 192#64)

def AllocBody345_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def AllocBody345_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_316 : StackLang.HolProg 64 :=
.seq AllocBody345_314 AllocBody345_315

def AllocBody345_317 : StackLang.HolProg 64 :=
.seq AllocBody345_313 AllocBody345_316

def AllocBody345_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody345_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_321 : StackLang.HolProg 64 :=
.seq AllocBody345_319 AllocBody345_320

def AllocBody345_322 : StackLang.HolProg 64 :=
.seq AllocBody345_318 AllocBody345_321

def AllocBody345_323 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody345_317 AllocBody345_322

def AllocBody345_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 254#64)

def AllocBody345_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody345_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_330 : StackLang.HolProg 64 :=
.seq AllocBody345_328 AllocBody345_329

def AllocBody345_331 : StackLang.HolProg 64 :=
.seq AllocBody345_327 AllocBody345_330

def AllocBody345_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody345_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_335 : StackLang.HolProg 64 :=
.seq AllocBody345_333 AllocBody345_334

def AllocBody345_336 : StackLang.HolProg 64 :=
.seq AllocBody345_332 AllocBody345_335

def AllocBody345_337 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody345_331 AllocBody345_336

def AllocBody345_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody345_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody345_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody345_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def AllocBody345_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_347 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody345_348 : StackLang.HolProg 64 :=
.seq AllocBody345_346 AllocBody345_347

def AllocBody345_349 : StackLang.HolProg 64 :=
.seq AllocBody345_345 AllocBody345_348

def AllocBody345_350 : StackLang.HolProg 64 :=
.seq AllocBody345_344 AllocBody345_349

def AllocBody345_351 : StackLang.HolProg 64 :=
.seq AllocBody345_343 AllocBody345_350

def AllocBody345_352 : StackLang.HolProg 64 :=
.seq AllocBody345_342 AllocBody345_351

def AllocBody345_353 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) AllocBody345_341 AllocBody345_352

def AllocBody345_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody345_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 4

def AllocBody345_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def AllocBody345_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 2

def AllocBody345_358 : StackLang.HolProg 64 :=
.seq AllocBody345_356 AllocBody345_357

def AllocBody345_359 : StackLang.HolProg 64 :=
.seq AllocBody345_355 AllocBody345_358

def AllocBody345_360 : StackLang.HolProg 64 :=
.seq AllocBody345_354 AllocBody345_359

def AllocBody345_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1003#64)

def AllocBody345_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_364 : StackLang.HolProg 64 :=
.seq AllocBody345_362 AllocBody345_363

def AllocBody345_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody345_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody345_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 9

def AllocBody345_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody345_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody345_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody345_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody345_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_375 : StackLang.HolProg 64 :=
.seq AllocBody345_373 AllocBody345_374

def AllocBody345_376 : StackLang.HolProg 64 :=
.seq AllocBody345_372 AllocBody345_375

def AllocBody345_377 : StackLang.HolProg 64 :=
.seq AllocBody345_371 AllocBody345_376

def AllocBody345_378 : StackLang.HolProg 64 :=
.seq AllocBody345_370 AllocBody345_377

def AllocBody345_379 : StackLang.HolProg 64 :=
.seq AllocBody345_369 AllocBody345_378

def AllocBody345_380 : StackLang.HolProg 64 :=
.seq AllocBody345_368 AllocBody345_379

def AllocBody345_381 : StackLang.HolProg 64 :=
.seq AllocBody345_367 AllocBody345_380

def AllocBody345_382 : StackLang.HolProg 64 :=
.seq AllocBody345_366 AllocBody345_381

def AllocBody345_383 : StackLang.HolProg 64 :=
.seq AllocBody345_365 AllocBody345_382

def AllocBody345_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody345_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody345_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody345_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody345_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody345_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody345_393 : StackLang.HolProg 64 :=
.seq AllocBody345_391 AllocBody345_392

def AllocBody345_394 : StackLang.HolProg 64 :=
.seq AllocBody345_390 AllocBody345_393

def AllocBody345_395 : StackLang.HolProg 64 :=
.seq AllocBody345_389 AllocBody345_394

def AllocBody345_396 : StackLang.HolProg 64 :=
.seq AllocBody345_388 AllocBody345_395

def AllocBody345_397 : StackLang.HolProg 64 :=
.seq AllocBody345_387 AllocBody345_396

def AllocBody345_398 : StackLang.HolProg 64 :=
.seq AllocBody345_386 AllocBody345_397

def AllocBody345_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody345_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody345_401 : StackLang.HolProg 64 :=
.seq AllocBody345_399 AllocBody345_400

def AllocBody345_402 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody345_403 : StackLang.HolProg 64 :=
.seq AllocBody345_401 AllocBody345_402

def AllocBody345_404 : StackLang.HolProg 64 :=
.call (some (AllocBody345_398, 0, 345, 8)) (Sum.inl 162) (some (AllocBody345_403, 345, 9))

def AllocBody345_405 : StackLang.HolProg 64 :=
.seq AllocBody345_385 AllocBody345_404

def AllocBody345_406 : StackLang.HolProg 64 :=
.seq AllocBody345_384 AllocBody345_405

def AllocBody345_407 : StackLang.HolProg 64 :=
.seq AllocBody345_383 AllocBody345_406

def AllocBody345_408 : StackLang.HolProg 64 :=
.seq AllocBody345_364 AllocBody345_407

def AllocBody345_409 : StackLang.HolProg 64 :=
.seq AllocBody345_361 AllocBody345_408

def AllocBody345_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_413 : StackLang.HolProg 64 :=
.seq AllocBody345_411 AllocBody345_412

def AllocBody345_414 : StackLang.HolProg 64 :=
.seq AllocBody345_410 AllocBody345_413

def AllocBody345_415 : StackLang.HolProg 64 :=
.seq AllocBody345_409 AllocBody345_414

def AllocBody345_416 : StackLang.HolProg 64 :=
.seq AllocBody345_360 AllocBody345_415

def AllocBody345_417 : StackLang.HolProg 64 :=
.seq AllocBody345_353 AllocBody345_416

def AllocBody345_418 : StackLang.HolProg 64 :=
.seq AllocBody345_340 AllocBody345_417

def AllocBody345_419 : StackLang.HolProg 64 :=
.seq AllocBody345_339 AllocBody345_418

def AllocBody345_420 : StackLang.HolProg 64 :=
.seq AllocBody345_338 AllocBody345_419

def AllocBody345_421 : StackLang.HolProg 64 :=
.seq AllocBody345_337 AllocBody345_420

def AllocBody345_422 : StackLang.HolProg 64 :=
.seq AllocBody345_326 AllocBody345_421

def AllocBody345_423 : StackLang.HolProg 64 :=
.seq AllocBody345_325 AllocBody345_422

def AllocBody345_424 : StackLang.HolProg 64 :=
.seq AllocBody345_324 AllocBody345_423

def AllocBody345_425 : StackLang.HolProg 64 :=
.seq AllocBody345_323 AllocBody345_424

def AllocBody345_426 : StackLang.HolProg 64 :=
.seq AllocBody345_312 AllocBody345_425

def AllocBody345_427 : StackLang.HolProg 64 :=
.seq AllocBody345_311 AllocBody345_426

def AllocBody345_428 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) AllocBody345_310 AllocBody345_427

def AllocBody345_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody345_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody345_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody345_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody345_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def AllocBody345_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_440 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody345_441 : StackLang.HolProg 64 :=
.seq AllocBody345_439 AllocBody345_440

def AllocBody345_442 : StackLang.HolProg 64 :=
.seq AllocBody345_438 AllocBody345_441

def AllocBody345_443 : StackLang.HolProg 64 :=
.seq AllocBody345_437 AllocBody345_442

def AllocBody345_444 : StackLang.HolProg 64 :=
.seq AllocBody345_436 AllocBody345_443

def AllocBody345_445 : StackLang.HolProg 64 :=
.seq AllocBody345_435 AllocBody345_444

def AllocBody345_446 : StackLang.HolProg 64 :=
.seq AllocBody345_434 AllocBody345_445

def AllocBody345_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_448 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody345_446 AllocBody345_447

def AllocBody345_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody345_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody345_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody345_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody345_455 : StackLang.HolProg 64 :=
.seq AllocBody345_453 AllocBody345_454

def AllocBody345_456 : StackLang.HolProg 64 :=
.seq AllocBody345_452 AllocBody345_455

def AllocBody345_457 : StackLang.HolProg 64 :=
.seq AllocBody345_451 AllocBody345_456

def AllocBody345_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1004#64)

def AllocBody345_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_461 : StackLang.HolProg 64 :=
.seq AllocBody345_459 AllocBody345_460

def AllocBody345_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody345_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody345_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 11

def AllocBody345_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody345_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody345_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody345_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody345_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_472 : StackLang.HolProg 64 :=
.seq AllocBody345_470 AllocBody345_471

def AllocBody345_473 : StackLang.HolProg 64 :=
.seq AllocBody345_469 AllocBody345_472

def AllocBody345_474 : StackLang.HolProg 64 :=
.seq AllocBody345_468 AllocBody345_473

def AllocBody345_475 : StackLang.HolProg 64 :=
.seq AllocBody345_467 AllocBody345_474

def AllocBody345_476 : StackLang.HolProg 64 :=
.seq AllocBody345_466 AllocBody345_475

def AllocBody345_477 : StackLang.HolProg 64 :=
.seq AllocBody345_465 AllocBody345_476

def AllocBody345_478 : StackLang.HolProg 64 :=
.seq AllocBody345_464 AllocBody345_477

def AllocBody345_479 : StackLang.HolProg 64 :=
.seq AllocBody345_463 AllocBody345_478

def AllocBody345_480 : StackLang.HolProg 64 :=
.seq AllocBody345_462 AllocBody345_479

def AllocBody345_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody345_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody345_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody345_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody345_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody345_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody345_490 : StackLang.HolProg 64 :=
.seq AllocBody345_488 AllocBody345_489

def AllocBody345_491 : StackLang.HolProg 64 :=
.seq AllocBody345_487 AllocBody345_490

def AllocBody345_492 : StackLang.HolProg 64 :=
.seq AllocBody345_486 AllocBody345_491

def AllocBody345_493 : StackLang.HolProg 64 :=
.seq AllocBody345_485 AllocBody345_492

def AllocBody345_494 : StackLang.HolProg 64 :=
.seq AllocBody345_484 AllocBody345_493

def AllocBody345_495 : StackLang.HolProg 64 :=
.seq AllocBody345_483 AllocBody345_494

def AllocBody345_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody345_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody345_498 : StackLang.HolProg 64 :=
.seq AllocBody345_496 AllocBody345_497

def AllocBody345_499 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody345_500 : StackLang.HolProg 64 :=
.seq AllocBody345_498 AllocBody345_499

def AllocBody345_501 : StackLang.HolProg 64 :=
.call (some (AllocBody345_495, 0, 345, 10)) (Sum.inl 169) (some (AllocBody345_500, 345, 11))

def AllocBody345_502 : StackLang.HolProg 64 :=
.seq AllocBody345_482 AllocBody345_501

def AllocBody345_503 : StackLang.HolProg 64 :=
.seq AllocBody345_481 AllocBody345_502

def AllocBody345_504 : StackLang.HolProg 64 :=
.seq AllocBody345_480 AllocBody345_503

def AllocBody345_505 : StackLang.HolProg 64 :=
.seq AllocBody345_461 AllocBody345_504

def AllocBody345_506 : StackLang.HolProg 64 :=
.seq AllocBody345_458 AllocBody345_505

def AllocBody345_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def AllocBody345_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody345_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def AllocBody345_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_515 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody345_516 : StackLang.HolProg 64 :=
.seq AllocBody345_514 AllocBody345_515

def AllocBody345_517 : StackLang.HolProg 64 :=
.seq AllocBody345_513 AllocBody345_516

def AllocBody345_518 : StackLang.HolProg 64 :=
.seq AllocBody345_512 AllocBody345_517

def AllocBody345_519 : StackLang.HolProg 64 :=
.seq AllocBody345_511 AllocBody345_518

def AllocBody345_520 : StackLang.HolProg 64 :=
.seq AllocBody345_510 AllocBody345_519

def AllocBody345_521 : StackLang.HolProg 64 :=
.seq AllocBody345_509 AllocBody345_520

def AllocBody345_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_523 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody345_521 AllocBody345_522

def AllocBody345_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody345_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody345_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody345_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 12#64)

def AllocBody345_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 8#64)

def AllocBody345_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody345_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody345_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody345_536 : StackLang.HolProg 64 :=
.seq AllocBody345_534 AllocBody345_535

def AllocBody345_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody345_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody345_539 : StackLang.HolProg 64 :=
.seq AllocBody345_537 AllocBody345_538

def AllocBody345_540 : StackLang.HolProg 64 :=
.seq AllocBody345_536 AllocBody345_539

def AllocBody345_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1005#64)

def AllocBody345_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_544 : StackLang.HolProg 64 :=
.seq AllocBody345_542 AllocBody345_543

def AllocBody345_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody345_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody345_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 13

def AllocBody345_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody345_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody345_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody345_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody345_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_555 : StackLang.HolProg 64 :=
.seq AllocBody345_553 AllocBody345_554

def AllocBody345_556 : StackLang.HolProg 64 :=
.seq AllocBody345_552 AllocBody345_555

def AllocBody345_557 : StackLang.HolProg 64 :=
.seq AllocBody345_551 AllocBody345_556

def AllocBody345_558 : StackLang.HolProg 64 :=
.seq AllocBody345_550 AllocBody345_557

def AllocBody345_559 : StackLang.HolProg 64 :=
.seq AllocBody345_549 AllocBody345_558

def AllocBody345_560 : StackLang.HolProg 64 :=
.seq AllocBody345_548 AllocBody345_559

def AllocBody345_561 : StackLang.HolProg 64 :=
.seq AllocBody345_547 AllocBody345_560

def AllocBody345_562 : StackLang.HolProg 64 :=
.seq AllocBody345_546 AllocBody345_561

def AllocBody345_563 : StackLang.HolProg 64 :=
.seq AllocBody345_545 AllocBody345_562

def AllocBody345_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody345_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody345_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody345_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody345_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody345_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody345_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody345_574 : StackLang.HolProg 64 :=
.seq AllocBody345_572 AllocBody345_573

def AllocBody345_575 : StackLang.HolProg 64 :=
.seq AllocBody345_571 AllocBody345_574

def AllocBody345_576 : StackLang.HolProg 64 :=
.seq AllocBody345_570 AllocBody345_575

def AllocBody345_577 : StackLang.HolProg 64 :=
.seq AllocBody345_569 AllocBody345_576

def AllocBody345_578 : StackLang.HolProg 64 :=
.seq AllocBody345_568 AllocBody345_577

def AllocBody345_579 : StackLang.HolProg 64 :=
.seq AllocBody345_567 AllocBody345_578

def AllocBody345_580 : StackLang.HolProg 64 :=
.seq AllocBody345_566 AllocBody345_579

def AllocBody345_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody345_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody345_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody345_584 : StackLang.HolProg 64 :=
.seq AllocBody345_582 AllocBody345_583

def AllocBody345_585 : StackLang.HolProg 64 :=
.seq AllocBody345_581 AllocBody345_584

def AllocBody345_586 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody345_587 : StackLang.HolProg 64 :=
.seq AllocBody345_585 AllocBody345_586

def AllocBody345_588 : StackLang.HolProg 64 :=
.call (some (AllocBody345_580, 0, 345, 12)) (Sum.inl 337) (some (AllocBody345_587, 345, 13))

def AllocBody345_589 : StackLang.HolProg 64 :=
.seq AllocBody345_565 AllocBody345_588

def AllocBody345_590 : StackLang.HolProg 64 :=
.seq AllocBody345_564 AllocBody345_589

def AllocBody345_591 : StackLang.HolProg 64 :=
.seq AllocBody345_563 AllocBody345_590

def AllocBody345_592 : StackLang.HolProg 64 :=
.seq AllocBody345_544 AllocBody345_591

def AllocBody345_593 : StackLang.HolProg 64 :=
.seq AllocBody345_541 AllocBody345_592

def AllocBody345_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody345_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody345_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def AllocBody345_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody345_601 : StackLang.HolProg 64 :=
.seq AllocBody345_599 AllocBody345_600

def AllocBody345_602 : StackLang.HolProg 64 :=
.seq AllocBody345_598 AllocBody345_601

def AllocBody345_603 : StackLang.HolProg 64 :=
.seq AllocBody345_597 AllocBody345_602

def AllocBody345_604 : StackLang.HolProg 64 :=
.seq AllocBody345_596 AllocBody345_603

def AllocBody345_605 : StackLang.HolProg 64 :=
.seq AllocBody345_595 AllocBody345_604

def AllocBody345_606 : StackLang.HolProg 64 :=
.seq AllocBody345_594 AllocBody345_605

def AllocBody345_607 : StackLang.HolProg 64 :=
.seq AllocBody345_593 AllocBody345_606

def AllocBody345_608 : StackLang.HolProg 64 :=
.seq AllocBody345_540 AllocBody345_607

def AllocBody345_609 : StackLang.HolProg 64 :=
.seq AllocBody345_533 AllocBody345_608

def AllocBody345_610 : StackLang.HolProg 64 :=
.seq AllocBody345_532 AllocBody345_609

def AllocBody345_611 : StackLang.HolProg 64 :=
.seq AllocBody345_531 AllocBody345_610

def AllocBody345_612 : StackLang.HolProg 64 :=
.seq AllocBody345_530 AllocBody345_611

def AllocBody345_613 : StackLang.HolProg 64 :=
.seq AllocBody345_529 AllocBody345_612

def AllocBody345_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_616 : StackLang.HolProg 64 :=
.seq AllocBody345_614 AllocBody345_615

def AllocBody345_617 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody345_613 AllocBody345_616

def AllocBody345_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def AllocBody345_621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody345_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 12#64)

def AllocBody345_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 8#64)

def AllocBody345_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody345_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody345_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody345_628 : StackLang.HolProg 64 :=
.seq AllocBody345_626 AllocBody345_627

def AllocBody345_629 : StackLang.HolProg 64 :=
.seq AllocBody345_625 AllocBody345_628

def AllocBody345_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1006#64)

def AllocBody345_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_633 : StackLang.HolProg 64 :=
.seq AllocBody345_631 AllocBody345_632

def AllocBody345_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody345_635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody345_636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 15

def AllocBody345_638 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody345_639 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody345_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody345_641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody345_643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_644 : StackLang.HolProg 64 :=
.seq AllocBody345_642 AllocBody345_643

def AllocBody345_645 : StackLang.HolProg 64 :=
.seq AllocBody345_641 AllocBody345_644

def AllocBody345_646 : StackLang.HolProg 64 :=
.seq AllocBody345_640 AllocBody345_645

def AllocBody345_647 : StackLang.HolProg 64 :=
.seq AllocBody345_639 AllocBody345_646

def AllocBody345_648 : StackLang.HolProg 64 :=
.seq AllocBody345_638 AllocBody345_647

def AllocBody345_649 : StackLang.HolProg 64 :=
.seq AllocBody345_637 AllocBody345_648

def AllocBody345_650 : StackLang.HolProg 64 :=
.seq AllocBody345_636 AllocBody345_649

def AllocBody345_651 : StackLang.HolProg 64 :=
.seq AllocBody345_635 AllocBody345_650

def AllocBody345_652 : StackLang.HolProg 64 :=
.seq AllocBody345_634 AllocBody345_651

def AllocBody345_653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody345_654 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody345_657 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody345_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody345_660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody345_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def AllocBody345_662 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody345_663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 1

def AllocBody345_664 : StackLang.HolProg 64 :=
.seq AllocBody345_662 AllocBody345_663

def AllocBody345_665 : StackLang.HolProg 64 :=
.seq AllocBody345_661 AllocBody345_664

def AllocBody345_666 : StackLang.HolProg 64 :=
.seq AllocBody345_660 AllocBody345_665

def AllocBody345_667 : StackLang.HolProg 64 :=
.seq AllocBody345_659 AllocBody345_666

def AllocBody345_668 : StackLang.HolProg 64 :=
.seq AllocBody345_658 AllocBody345_667

def AllocBody345_669 : StackLang.HolProg 64 :=
.seq AllocBody345_657 AllocBody345_668

def AllocBody345_670 : StackLang.HolProg 64 :=
.seq AllocBody345_656 AllocBody345_669

def AllocBody345_671 : StackLang.HolProg 64 :=
.seq AllocBody345_655 AllocBody345_670

def AllocBody345_672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody345_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def AllocBody345_674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody345_675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 1

def AllocBody345_676 : StackLang.HolProg 64 :=
.seq AllocBody345_674 AllocBody345_675

def AllocBody345_677 : StackLang.HolProg 64 :=
.seq AllocBody345_673 AllocBody345_676

def AllocBody345_678 : StackLang.HolProg 64 :=
.seq AllocBody345_672 AllocBody345_677

def AllocBody345_679 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody345_680 : StackLang.HolProg 64 :=
.seq AllocBody345_678 AllocBody345_679

def AllocBody345_681 : StackLang.HolProg 64 :=
.call (some (AllocBody345_671, 0, 345, 14)) (Sum.inl 337) (some (AllocBody345_680, 345, 15))

def AllocBody345_682 : StackLang.HolProg 64 :=
.seq AllocBody345_654 AllocBody345_681

def AllocBody345_683 : StackLang.HolProg 64 :=
.seq AllocBody345_653 AllocBody345_682

def AllocBody345_684 : StackLang.HolProg 64 :=
.seq AllocBody345_652 AllocBody345_683

def AllocBody345_685 : StackLang.HolProg 64 :=
.seq AllocBody345_633 AllocBody345_684

def AllocBody345_686 : StackLang.HolProg 64 :=
.seq AllocBody345_630 AllocBody345_685

def AllocBody345_687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_689 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody345_690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody345_691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody345_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_693 : StackLang.HolProg 64 :=
.seq AllocBody345_691 AllocBody345_692

def AllocBody345_694 : StackLang.HolProg 64 :=
.seq AllocBody345_690 AllocBody345_693

def AllocBody345_695 : StackLang.HolProg 64 :=
.seq AllocBody345_689 AllocBody345_694

def AllocBody345_696 : StackLang.HolProg 64 :=
.seq AllocBody345_688 AllocBody345_695

def AllocBody345_697 : StackLang.HolProg 64 :=
.seq AllocBody345_687 AllocBody345_696

def AllocBody345_698 : StackLang.HolProg 64 :=
.seq AllocBody345_686 AllocBody345_697

def AllocBody345_699 : StackLang.HolProg 64 :=
.seq AllocBody345_629 AllocBody345_698

def AllocBody345_700 : StackLang.HolProg 64 :=
.seq AllocBody345_624 AllocBody345_699

def AllocBody345_701 : StackLang.HolProg 64 :=
.seq AllocBody345_623 AllocBody345_700

def AllocBody345_702 : StackLang.HolProg 64 :=
.seq AllocBody345_622 AllocBody345_701

def AllocBody345_703 : StackLang.HolProg 64 :=
.seq AllocBody345_621 AllocBody345_702

def AllocBody345_704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody345_706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def AllocBody345_707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody345_708 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody345_709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody345_710 : StackLang.HolProg 64 :=
.seq AllocBody345_708 AllocBody345_709

def AllocBody345_711 : StackLang.HolProg 64 :=
.seq AllocBody345_707 AllocBody345_710

def AllocBody345_712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1007#64)

def AllocBody345_714 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_715 : StackLang.HolProg 64 :=
.seq AllocBody345_713 AllocBody345_714

def AllocBody345_716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody345_717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody345_718 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_719 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 17

def AllocBody345_720 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody345_721 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody345_722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody345_723 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody345_725 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_726 : StackLang.HolProg 64 :=
.seq AllocBody345_724 AllocBody345_725

def AllocBody345_727 : StackLang.HolProg 64 :=
.seq AllocBody345_723 AllocBody345_726

def AllocBody345_728 : StackLang.HolProg 64 :=
.seq AllocBody345_722 AllocBody345_727

def AllocBody345_729 : StackLang.HolProg 64 :=
.seq AllocBody345_721 AllocBody345_728

def AllocBody345_730 : StackLang.HolProg 64 :=
.seq AllocBody345_720 AllocBody345_729

def AllocBody345_731 : StackLang.HolProg 64 :=
.seq AllocBody345_719 AllocBody345_730

def AllocBody345_732 : StackLang.HolProg 64 :=
.seq AllocBody345_718 AllocBody345_731

def AllocBody345_733 : StackLang.HolProg 64 :=
.seq AllocBody345_717 AllocBody345_732

def AllocBody345_734 : StackLang.HolProg 64 :=
.seq AllocBody345_716 AllocBody345_733

def AllocBody345_735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody345_736 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_737 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody345_739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody345_741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody345_742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody345_743 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def AllocBody345_744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody345_745 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 1

def AllocBody345_746 : StackLang.HolProg 64 :=
.seq AllocBody345_744 AllocBody345_745

def AllocBody345_747 : StackLang.HolProg 64 :=
.seq AllocBody345_743 AllocBody345_746

def AllocBody345_748 : StackLang.HolProg 64 :=
.seq AllocBody345_742 AllocBody345_747

def AllocBody345_749 : StackLang.HolProg 64 :=
.seq AllocBody345_741 AllocBody345_748

def AllocBody345_750 : StackLang.HolProg 64 :=
.seq AllocBody345_740 AllocBody345_749

def AllocBody345_751 : StackLang.HolProg 64 :=
.seq AllocBody345_739 AllocBody345_750

def AllocBody345_752 : StackLang.HolProg 64 :=
.seq AllocBody345_738 AllocBody345_751

def AllocBody345_753 : StackLang.HolProg 64 :=
.seq AllocBody345_737 AllocBody345_752

def AllocBody345_754 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody345_755 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def AllocBody345_756 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody345_757 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 1

def AllocBody345_758 : StackLang.HolProg 64 :=
.seq AllocBody345_756 AllocBody345_757

def AllocBody345_759 : StackLang.HolProg 64 :=
.seq AllocBody345_755 AllocBody345_758

def AllocBody345_760 : StackLang.HolProg 64 :=
.seq AllocBody345_754 AllocBody345_759

def AllocBody345_761 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody345_762 : StackLang.HolProg 64 :=
.seq AllocBody345_760 AllocBody345_761

def AllocBody345_763 : StackLang.HolProg 64 :=
.call (some (AllocBody345_753, 0, 345, 16)) (Sum.inl 336) (some (AllocBody345_762, 345, 17))

def AllocBody345_764 : StackLang.HolProg 64 :=
.seq AllocBody345_736 AllocBody345_763

def AllocBody345_765 : StackLang.HolProg 64 :=
.seq AllocBody345_735 AllocBody345_764

def AllocBody345_766 : StackLang.HolProg 64 :=
.seq AllocBody345_734 AllocBody345_765

def AllocBody345_767 : StackLang.HolProg 64 :=
.seq AllocBody345_715 AllocBody345_766

def AllocBody345_768 : StackLang.HolProg 64 :=
.seq AllocBody345_712 AllocBody345_767

def AllocBody345_769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_770 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_771 : StackLang.HolProg 64 :=
.seq AllocBody345_769 AllocBody345_770

def AllocBody345_772 : StackLang.HolProg 64 :=
.seq AllocBody345_768 AllocBody345_771

def AllocBody345_773 : StackLang.HolProg 64 :=
.seq AllocBody345_711 AllocBody345_772

def AllocBody345_774 : StackLang.HolProg 64 :=
.seq AllocBody345_706 AllocBody345_773

def AllocBody345_775 : StackLang.HolProg 64 :=
.seq AllocBody345_705 AllocBody345_774

def AllocBody345_776 : StackLang.HolProg 64 :=
.seq AllocBody345_704 AllocBody345_775

def AllocBody345_777 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody345_703 AllocBody345_776

def AllocBody345_778 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_780 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody345_781 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody345_783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_784 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody345_785 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_786 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody345_787 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_788 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody345_789 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_790 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody345_791 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_792 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def AllocBody345_793 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_795 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody345_796 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody345_797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody345_798 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 3

def AllocBody345_799 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 2

def AllocBody345_800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody345_801 : StackLang.HolProg 64 :=
.seq AllocBody345_799 AllocBody345_800

def AllocBody345_802 : StackLang.HolProg 64 :=
.seq AllocBody345_798 AllocBody345_801

def AllocBody345_803 : StackLang.HolProg 64 :=
.seq AllocBody345_797 AllocBody345_802

def AllocBody345_804 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1008#64)

def AllocBody345_806 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_807 : StackLang.HolProg 64 :=
.seq AllocBody345_805 AllocBody345_806

def AllocBody345_808 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody345_809 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody345_810 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_811 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 19

def AllocBody345_812 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody345_813 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody345_814 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody345_815 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_816 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody345_817 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_818 : StackLang.HolProg 64 :=
.seq AllocBody345_816 AllocBody345_817

def AllocBody345_819 : StackLang.HolProg 64 :=
.seq AllocBody345_815 AllocBody345_818

def AllocBody345_820 : StackLang.HolProg 64 :=
.seq AllocBody345_814 AllocBody345_819

def AllocBody345_821 : StackLang.HolProg 64 :=
.seq AllocBody345_813 AllocBody345_820

def AllocBody345_822 : StackLang.HolProg 64 :=
.seq AllocBody345_812 AllocBody345_821

def AllocBody345_823 : StackLang.HolProg 64 :=
.seq AllocBody345_811 AllocBody345_822

def AllocBody345_824 : StackLang.HolProg 64 :=
.seq AllocBody345_810 AllocBody345_823

def AllocBody345_825 : StackLang.HolProg 64 :=
.seq AllocBody345_809 AllocBody345_824

def AllocBody345_826 : StackLang.HolProg 64 :=
.seq AllocBody345_808 AllocBody345_825

def AllocBody345_827 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody345_828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_829 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody345_831 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody345_833 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody345_834 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody345_835 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody345_836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody345_837 : StackLang.HolProg 64 :=
.seq AllocBody345_835 AllocBody345_836

def AllocBody345_838 : StackLang.HolProg 64 :=
.seq AllocBody345_834 AllocBody345_837

def AllocBody345_839 : StackLang.HolProg 64 :=
.seq AllocBody345_833 AllocBody345_838

def AllocBody345_840 : StackLang.HolProg 64 :=
.seq AllocBody345_832 AllocBody345_839

def AllocBody345_841 : StackLang.HolProg 64 :=
.seq AllocBody345_831 AllocBody345_840

def AllocBody345_842 : StackLang.HolProg 64 :=
.seq AllocBody345_830 AllocBody345_841

def AllocBody345_843 : StackLang.HolProg 64 :=
.seq AllocBody345_829 AllocBody345_842

def AllocBody345_844 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody345_845 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody345_846 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody345_847 : StackLang.HolProg 64 :=
.seq AllocBody345_845 AllocBody345_846

def AllocBody345_848 : StackLang.HolProg 64 :=
.seq AllocBody345_844 AllocBody345_847

def AllocBody345_849 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody345_850 : StackLang.HolProg 64 :=
.seq AllocBody345_848 AllocBody345_849

def AllocBody345_851 : StackLang.HolProg 64 :=
.call (some (AllocBody345_843, 0, 345, 18)) (Sum.inl 336) (some (AllocBody345_850, 345, 19))

def AllocBody345_852 : StackLang.HolProg 64 :=
.seq AllocBody345_828 AllocBody345_851

def AllocBody345_853 : StackLang.HolProg 64 :=
.seq AllocBody345_827 AllocBody345_852

def AllocBody345_854 : StackLang.HolProg 64 :=
.seq AllocBody345_826 AllocBody345_853

def AllocBody345_855 : StackLang.HolProg 64 :=
.seq AllocBody345_807 AllocBody345_854

def AllocBody345_856 : StackLang.HolProg 64 :=
.seq AllocBody345_804 AllocBody345_855

def AllocBody345_857 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_858 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_859 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def AllocBody345_860 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody345_862 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_863 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody345_864 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_865 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody345_866 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_867 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody345_868 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_869 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody345_870 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def AllocBody345_871 : StackLang.HolProg 64 :=
.seq AllocBody345_869 AllocBody345_870

def AllocBody345_872 : StackLang.HolProg 64 :=
.seq AllocBody345_868 AllocBody345_871

def AllocBody345_873 : StackLang.HolProg 64 :=
.seq AllocBody345_867 AllocBody345_872

def AllocBody345_874 : StackLang.HolProg 64 :=
.seq AllocBody345_866 AllocBody345_873

def AllocBody345_875 : StackLang.HolProg 64 :=
.seq AllocBody345_865 AllocBody345_874

def AllocBody345_876 : StackLang.HolProg 64 :=
.seq AllocBody345_864 AllocBody345_875

def AllocBody345_877 : StackLang.HolProg 64 :=
.seq AllocBody345_863 AllocBody345_876

def AllocBody345_878 : StackLang.HolProg 64 :=
.seq AllocBody345_862 AllocBody345_877

def AllocBody345_879 : StackLang.HolProg 64 :=
.seq AllocBody345_861 AllocBody345_878

def AllocBody345_880 : StackLang.HolProg 64 :=
.seq AllocBody345_860 AllocBody345_879

def AllocBody345_881 : StackLang.HolProg 64 :=
.seq AllocBody345_859 AllocBody345_880

def AllocBody345_882 : StackLang.HolProg 64 :=
.seq AllocBody345_858 AllocBody345_881

def AllocBody345_883 : StackLang.HolProg 64 :=
.seq AllocBody345_857 AllocBody345_882

def AllocBody345_884 : StackLang.HolProg 64 :=
.seq AllocBody345_856 AllocBody345_883

def AllocBody345_885 : StackLang.HolProg 64 :=
.seq AllocBody345_803 AllocBody345_884

def AllocBody345_886 : StackLang.HolProg 64 :=
.seq AllocBody345_796 AllocBody345_885

def AllocBody345_887 : StackLang.HolProg 64 :=
.seq AllocBody345_795 AllocBody345_886

def AllocBody345_888 : StackLang.HolProg 64 :=
.seq AllocBody345_794 AllocBody345_887

def AllocBody345_889 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_890 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody345_891 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody345_892 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody345_893 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 3

def AllocBody345_894 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 2

def AllocBody345_895 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody345_896 : StackLang.HolProg 64 :=
.seq AllocBody345_894 AllocBody345_895

def AllocBody345_897 : StackLang.HolProg 64 :=
.seq AllocBody345_893 AllocBody345_896

def AllocBody345_898 : StackLang.HolProg 64 :=
.seq AllocBody345_892 AllocBody345_897

def AllocBody345_899 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1009#64)

def AllocBody345_901 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_902 : StackLang.HolProg 64 :=
.seq AllocBody345_900 AllocBody345_901

def AllocBody345_903 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody345_904 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody345_905 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_906 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 21

def AllocBody345_907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody345_908 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody345_909 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody345_910 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_911 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody345_912 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_913 : StackLang.HolProg 64 :=
.seq AllocBody345_911 AllocBody345_912

def AllocBody345_914 : StackLang.HolProg 64 :=
.seq AllocBody345_910 AllocBody345_913

def AllocBody345_915 : StackLang.HolProg 64 :=
.seq AllocBody345_909 AllocBody345_914

def AllocBody345_916 : StackLang.HolProg 64 :=
.seq AllocBody345_908 AllocBody345_915

def AllocBody345_917 : StackLang.HolProg 64 :=
.seq AllocBody345_907 AllocBody345_916

def AllocBody345_918 : StackLang.HolProg 64 :=
.seq AllocBody345_906 AllocBody345_917

def AllocBody345_919 : StackLang.HolProg 64 :=
.seq AllocBody345_905 AllocBody345_918

def AllocBody345_920 : StackLang.HolProg 64 :=
.seq AllocBody345_904 AllocBody345_919

def AllocBody345_921 : StackLang.HolProg 64 :=
.seq AllocBody345_903 AllocBody345_920

def AllocBody345_922 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody345_923 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_924 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_925 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody345_926 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_927 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody345_928 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody345_929 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody345_930 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def AllocBody345_931 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody345_932 : StackLang.HolProg 64 :=
.seq AllocBody345_930 AllocBody345_931

def AllocBody345_933 : StackLang.HolProg 64 :=
.seq AllocBody345_929 AllocBody345_932

def AllocBody345_934 : StackLang.HolProg 64 :=
.seq AllocBody345_928 AllocBody345_933

def AllocBody345_935 : StackLang.HolProg 64 :=
.seq AllocBody345_927 AllocBody345_934

def AllocBody345_936 : StackLang.HolProg 64 :=
.seq AllocBody345_926 AllocBody345_935

def AllocBody345_937 : StackLang.HolProg 64 :=
.seq AllocBody345_925 AllocBody345_936

def AllocBody345_938 : StackLang.HolProg 64 :=
.seq AllocBody345_924 AllocBody345_937

def AllocBody345_939 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody345_940 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def AllocBody345_941 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody345_942 : StackLang.HolProg 64 :=
.seq AllocBody345_940 AllocBody345_941

def AllocBody345_943 : StackLang.HolProg 64 :=
.seq AllocBody345_939 AllocBody345_942

def AllocBody345_944 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody345_945 : StackLang.HolProg 64 :=
.seq AllocBody345_943 AllocBody345_944

def AllocBody345_946 : StackLang.HolProg 64 :=
.call (some (AllocBody345_938, 0, 345, 20)) (Sum.inl 336) (some (AllocBody345_945, 345, 21))

def AllocBody345_947 : StackLang.HolProg 64 :=
.seq AllocBody345_923 AllocBody345_946

def AllocBody345_948 : StackLang.HolProg 64 :=
.seq AllocBody345_922 AllocBody345_947

def AllocBody345_949 : StackLang.HolProg 64 :=
.seq AllocBody345_921 AllocBody345_948

def AllocBody345_950 : StackLang.HolProg 64 :=
.seq AllocBody345_902 AllocBody345_949

def AllocBody345_951 : StackLang.HolProg 64 :=
.seq AllocBody345_899 AllocBody345_950

def AllocBody345_952 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_953 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_954 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def AllocBody345_955 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_956 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody345_957 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_958 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody345_959 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_960 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody345_961 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_962 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody345_963 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody345_964 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody345_965 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody345_966 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody345_967 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 3

def AllocBody345_968 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody345_969 : StackLang.HolProg 64 :=
.seq AllocBody345_967 AllocBody345_968

def AllocBody345_970 : StackLang.HolProg 64 :=
.seq AllocBody345_966 AllocBody345_969

def AllocBody345_971 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_972 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1010#64)

def AllocBody345_973 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_974 : StackLang.HolProg 64 :=
.seq AllocBody345_972 AllocBody345_973

def AllocBody345_975 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody345_976 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody345_977 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_978 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 23

def AllocBody345_979 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody345_980 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody345_981 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody345_982 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_983 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody345_984 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_985 : StackLang.HolProg 64 :=
.seq AllocBody345_983 AllocBody345_984

def AllocBody345_986 : StackLang.HolProg 64 :=
.seq AllocBody345_982 AllocBody345_985

def AllocBody345_987 : StackLang.HolProg 64 :=
.seq AllocBody345_981 AllocBody345_986

def AllocBody345_988 : StackLang.HolProg 64 :=
.seq AllocBody345_980 AllocBody345_987

def AllocBody345_989 : StackLang.HolProg 64 :=
.seq AllocBody345_979 AllocBody345_988

def AllocBody345_990 : StackLang.HolProg 64 :=
.seq AllocBody345_978 AllocBody345_989

def AllocBody345_991 : StackLang.HolProg 64 :=
.seq AllocBody345_977 AllocBody345_990

def AllocBody345_992 : StackLang.HolProg 64 :=
.seq AllocBody345_976 AllocBody345_991

def AllocBody345_993 : StackLang.HolProg 64 :=
.seq AllocBody345_975 AllocBody345_992

def AllocBody345_994 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody345_995 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_996 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody345_998 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_999 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody345_1000 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody345_1001 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody345_1002 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody345_1003 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody345_1004 : StackLang.HolProg 64 :=
.seq AllocBody345_1002 AllocBody345_1003

def AllocBody345_1005 : StackLang.HolProg 64 :=
.seq AllocBody345_1001 AllocBody345_1004

def AllocBody345_1006 : StackLang.HolProg 64 :=
.seq AllocBody345_1000 AllocBody345_1005

def AllocBody345_1007 : StackLang.HolProg 64 :=
.seq AllocBody345_999 AllocBody345_1006

def AllocBody345_1008 : StackLang.HolProg 64 :=
.seq AllocBody345_998 AllocBody345_1007

def AllocBody345_1009 : StackLang.HolProg 64 :=
.seq AllocBody345_997 AllocBody345_1008

def AllocBody345_1010 : StackLang.HolProg 64 :=
.seq AllocBody345_996 AllocBody345_1009

def AllocBody345_1011 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody345_1012 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody345_1013 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody345_1014 : StackLang.HolProg 64 :=
.seq AllocBody345_1012 AllocBody345_1013

def AllocBody345_1015 : StackLang.HolProg 64 :=
.seq AllocBody345_1011 AllocBody345_1014

def AllocBody345_1016 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody345_1017 : StackLang.HolProg 64 :=
.seq AllocBody345_1015 AllocBody345_1016

def AllocBody345_1018 : StackLang.HolProg 64 :=
.call (some (AllocBody345_1010, 0, 345, 22)) (Sum.inl 336) (some (AllocBody345_1017, 345, 23))

def AllocBody345_1019 : StackLang.HolProg 64 :=
.seq AllocBody345_995 AllocBody345_1018

def AllocBody345_1020 : StackLang.HolProg 64 :=
.seq AllocBody345_994 AllocBody345_1019

def AllocBody345_1021 : StackLang.HolProg 64 :=
.seq AllocBody345_993 AllocBody345_1020

def AllocBody345_1022 : StackLang.HolProg 64 :=
.seq AllocBody345_974 AllocBody345_1021

def AllocBody345_1023 : StackLang.HolProg 64 :=
.seq AllocBody345_971 AllocBody345_1022

def AllocBody345_1024 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_1025 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1026 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 112#64)))

def AllocBody345_1027 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1028 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody345_1029 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1030 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody345_1031 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1032 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody345_1033 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1034 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody345_1035 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1036 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody345_1037 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def AllocBody345_1038 : StackLang.HolProg 64 :=
.seq AllocBody345_1036 AllocBody345_1037

def AllocBody345_1039 : StackLang.HolProg 64 :=
.seq AllocBody345_1035 AllocBody345_1038

def AllocBody345_1040 : StackLang.HolProg 64 :=
.seq AllocBody345_1034 AllocBody345_1039

def AllocBody345_1041 : StackLang.HolProg 64 :=
.seq AllocBody345_1033 AllocBody345_1040

def AllocBody345_1042 : StackLang.HolProg 64 :=
.seq AllocBody345_1032 AllocBody345_1041

def AllocBody345_1043 : StackLang.HolProg 64 :=
.seq AllocBody345_1031 AllocBody345_1042

def AllocBody345_1044 : StackLang.HolProg 64 :=
.seq AllocBody345_1030 AllocBody345_1043

def AllocBody345_1045 : StackLang.HolProg 64 :=
.seq AllocBody345_1029 AllocBody345_1044

def AllocBody345_1046 : StackLang.HolProg 64 :=
.seq AllocBody345_1028 AllocBody345_1045

def AllocBody345_1047 : StackLang.HolProg 64 :=
.seq AllocBody345_1027 AllocBody345_1046

def AllocBody345_1048 : StackLang.HolProg 64 :=
.seq AllocBody345_1026 AllocBody345_1047

def AllocBody345_1049 : StackLang.HolProg 64 :=
.seq AllocBody345_1025 AllocBody345_1048

def AllocBody345_1050 : StackLang.HolProg 64 :=
.seq AllocBody345_1024 AllocBody345_1049

def AllocBody345_1051 : StackLang.HolProg 64 :=
.seq AllocBody345_1023 AllocBody345_1050

def AllocBody345_1052 : StackLang.HolProg 64 :=
.seq AllocBody345_970 AllocBody345_1051

def AllocBody345_1053 : StackLang.HolProg 64 :=
.seq AllocBody345_965 AllocBody345_1052

def AllocBody345_1054 : StackLang.HolProg 64 :=
.seq AllocBody345_964 AllocBody345_1053

def AllocBody345_1055 : StackLang.HolProg 64 :=
.seq AllocBody345_963 AllocBody345_1054

def AllocBody345_1056 : StackLang.HolProg 64 :=
.seq AllocBody345_962 AllocBody345_1055

def AllocBody345_1057 : StackLang.HolProg 64 :=
.seq AllocBody345_961 AllocBody345_1056

def AllocBody345_1058 : StackLang.HolProg 64 :=
.seq AllocBody345_960 AllocBody345_1057

def AllocBody345_1059 : StackLang.HolProg 64 :=
.seq AllocBody345_959 AllocBody345_1058

def AllocBody345_1060 : StackLang.HolProg 64 :=
.seq AllocBody345_958 AllocBody345_1059

def AllocBody345_1061 : StackLang.HolProg 64 :=
.seq AllocBody345_957 AllocBody345_1060

def AllocBody345_1062 : StackLang.HolProg 64 :=
.seq AllocBody345_956 AllocBody345_1061

def AllocBody345_1063 : StackLang.HolProg 64 :=
.seq AllocBody345_955 AllocBody345_1062

def AllocBody345_1064 : StackLang.HolProg 64 :=
.seq AllocBody345_954 AllocBody345_1063

def AllocBody345_1065 : StackLang.HolProg 64 :=
.seq AllocBody345_953 AllocBody345_1064

def AllocBody345_1066 : StackLang.HolProg 64 :=
.seq AllocBody345_952 AllocBody345_1065

def AllocBody345_1067 : StackLang.HolProg 64 :=
.seq AllocBody345_951 AllocBody345_1066

def AllocBody345_1068 : StackLang.HolProg 64 :=
.seq AllocBody345_898 AllocBody345_1067

def AllocBody345_1069 : StackLang.HolProg 64 :=
.seq AllocBody345_891 AllocBody345_1068

def AllocBody345_1070 : StackLang.HolProg 64 :=
.seq AllocBody345_890 AllocBody345_1069

def AllocBody345_1071 : StackLang.HolProg 64 :=
.seq AllocBody345_889 AllocBody345_1070

def AllocBody345_1072 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) AllocBody345_888 AllocBody345_1071

def AllocBody345_1073 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_1074 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody345_1075 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 14#64)

def AllocBody345_1076 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody345_1077 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody345_1078 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody345_1079 : StackLang.HolProg 64 :=
.seq AllocBody345_1077 AllocBody345_1078

def AllocBody345_1080 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1081 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1011#64)

def AllocBody345_1082 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_1083 : StackLang.HolProg 64 :=
.seq AllocBody345_1081 AllocBody345_1082

def AllocBody345_1084 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody345_1085 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody345_1086 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_1087 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 25

def AllocBody345_1088 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody345_1089 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody345_1090 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody345_1091 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1092 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody345_1093 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_1094 : StackLang.HolProg 64 :=
.seq AllocBody345_1092 AllocBody345_1093

def AllocBody345_1095 : StackLang.HolProg 64 :=
.seq AllocBody345_1091 AllocBody345_1094

def AllocBody345_1096 : StackLang.HolProg 64 :=
.seq AllocBody345_1090 AllocBody345_1095

def AllocBody345_1097 : StackLang.HolProg 64 :=
.seq AllocBody345_1089 AllocBody345_1096

def AllocBody345_1098 : StackLang.HolProg 64 :=
.seq AllocBody345_1088 AllocBody345_1097

def AllocBody345_1099 : StackLang.HolProg 64 :=
.seq AllocBody345_1087 AllocBody345_1098

def AllocBody345_1100 : StackLang.HolProg 64 :=
.seq AllocBody345_1086 AllocBody345_1099

def AllocBody345_1101 : StackLang.HolProg 64 :=
.seq AllocBody345_1085 AllocBody345_1100

def AllocBody345_1102 : StackLang.HolProg 64 :=
.seq AllocBody345_1084 AllocBody345_1101

def AllocBody345_1103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody345_1104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody345_1107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_1108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody345_1109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody345_1110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody345_1111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody345_1112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody345_1113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody345_1114 : StackLang.HolProg 64 :=
.seq AllocBody345_1112 AllocBody345_1113

def AllocBody345_1115 : StackLang.HolProg 64 :=
.seq AllocBody345_1111 AllocBody345_1114

def AllocBody345_1116 : StackLang.HolProg 64 :=
.seq AllocBody345_1110 AllocBody345_1115

def AllocBody345_1117 : StackLang.HolProg 64 :=
.seq AllocBody345_1109 AllocBody345_1116

def AllocBody345_1118 : StackLang.HolProg 64 :=
.seq AllocBody345_1108 AllocBody345_1117

def AllocBody345_1119 : StackLang.HolProg 64 :=
.seq AllocBody345_1107 AllocBody345_1118

def AllocBody345_1120 : StackLang.HolProg 64 :=
.seq AllocBody345_1106 AllocBody345_1119

def AllocBody345_1121 : StackLang.HolProg 64 :=
.seq AllocBody345_1105 AllocBody345_1120

def AllocBody345_1122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody345_1123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody345_1124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody345_1125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody345_1126 : StackLang.HolProg 64 :=
.seq AllocBody345_1124 AllocBody345_1125

def AllocBody345_1127 : StackLang.HolProg 64 :=
.seq AllocBody345_1123 AllocBody345_1126

def AllocBody345_1128 : StackLang.HolProg 64 :=
.seq AllocBody345_1122 AllocBody345_1127

def AllocBody345_1129 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody345_1130 : StackLang.HolProg 64 :=
.seq AllocBody345_1128 AllocBody345_1129

def AllocBody345_1131 : StackLang.HolProg 64 :=
.call (some (AllocBody345_1121, 0, 345, 24)) (Sum.inl 337) (some (AllocBody345_1130, 345, 25))

def AllocBody345_1132 : StackLang.HolProg 64 :=
.seq AllocBody345_1104 AllocBody345_1131

def AllocBody345_1133 : StackLang.HolProg 64 :=
.seq AllocBody345_1103 AllocBody345_1132

def AllocBody345_1134 : StackLang.HolProg 64 :=
.seq AllocBody345_1102 AllocBody345_1133

def AllocBody345_1135 : StackLang.HolProg 64 :=
.seq AllocBody345_1083 AllocBody345_1134

def AllocBody345_1136 : StackLang.HolProg 64 :=
.seq AllocBody345_1080 AllocBody345_1135

def AllocBody345_1137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_1138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 144#64)))

def AllocBody345_1140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody345_1142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody345_1144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody345_1146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_1147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody345_1148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 20#64)

def AllocBody345_1149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody345_1150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody345_1151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody345_1152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody345_1153 : StackLang.HolProg 64 :=
.seq AllocBody345_1151 AllocBody345_1152

def AllocBody345_1154 : StackLang.HolProg 64 :=
.seq AllocBody345_1150 AllocBody345_1153

def AllocBody345_1155 : StackLang.HolProg 64 :=
.seq AllocBody345_1149 AllocBody345_1154

def AllocBody345_1156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1012#64)

def AllocBody345_1158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_1159 : StackLang.HolProg 64 :=
.seq AllocBody345_1157 AllocBody345_1158

def AllocBody345_1160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody345_1161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody345_1162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_1163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 27

def AllocBody345_1164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody345_1165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody345_1166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody345_1167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody345_1169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_1170 : StackLang.HolProg 64 :=
.seq AllocBody345_1168 AllocBody345_1169

def AllocBody345_1171 : StackLang.HolProg 64 :=
.seq AllocBody345_1167 AllocBody345_1170

def AllocBody345_1172 : StackLang.HolProg 64 :=
.seq AllocBody345_1166 AllocBody345_1171

def AllocBody345_1173 : StackLang.HolProg 64 :=
.seq AllocBody345_1165 AllocBody345_1172

def AllocBody345_1174 : StackLang.HolProg 64 :=
.seq AllocBody345_1164 AllocBody345_1173

def AllocBody345_1175 : StackLang.HolProg 64 :=
.seq AllocBody345_1163 AllocBody345_1174

def AllocBody345_1176 : StackLang.HolProg 64 :=
.seq AllocBody345_1162 AllocBody345_1175

def AllocBody345_1177 : StackLang.HolProg 64 :=
.seq AllocBody345_1161 AllocBody345_1176

def AllocBody345_1178 : StackLang.HolProg 64 :=
.seq AllocBody345_1160 AllocBody345_1177

def AllocBody345_1179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody345_1180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody345_1183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_1184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody345_1185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody345_1186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody345_1187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody345_1188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody345_1189 : StackLang.HolProg 64 :=
.seq AllocBody345_1187 AllocBody345_1188

def AllocBody345_1190 : StackLang.HolProg 64 :=
.seq AllocBody345_1186 AllocBody345_1189

def AllocBody345_1191 : StackLang.HolProg 64 :=
.seq AllocBody345_1185 AllocBody345_1190

def AllocBody345_1192 : StackLang.HolProg 64 :=
.seq AllocBody345_1184 AllocBody345_1191

def AllocBody345_1193 : StackLang.HolProg 64 :=
.seq AllocBody345_1183 AllocBody345_1192

def AllocBody345_1194 : StackLang.HolProg 64 :=
.seq AllocBody345_1182 AllocBody345_1193

def AllocBody345_1195 : StackLang.HolProg 64 :=
.seq AllocBody345_1181 AllocBody345_1194

def AllocBody345_1196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody345_1197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody345_1198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody345_1199 : StackLang.HolProg 64 :=
.seq AllocBody345_1197 AllocBody345_1198

def AllocBody345_1200 : StackLang.HolProg 64 :=
.seq AllocBody345_1196 AllocBody345_1199

def AllocBody345_1201 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody345_1202 : StackLang.HolProg 64 :=
.seq AllocBody345_1200 AllocBody345_1201

def AllocBody345_1203 : StackLang.HolProg 64 :=
.call (some (AllocBody345_1195, 0, 345, 26)) (Sum.inl 339) (some (AllocBody345_1202, 345, 27))

def AllocBody345_1204 : StackLang.HolProg 64 :=
.seq AllocBody345_1180 AllocBody345_1203

def AllocBody345_1205 : StackLang.HolProg 64 :=
.seq AllocBody345_1179 AllocBody345_1204

def AllocBody345_1206 : StackLang.HolProg 64 :=
.seq AllocBody345_1178 AllocBody345_1205

def AllocBody345_1207 : StackLang.HolProg 64 :=
.seq AllocBody345_1159 AllocBody345_1206

def AllocBody345_1208 : StackLang.HolProg 64 :=
.seq AllocBody345_1156 AllocBody345_1207

def AllocBody345_1209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_1210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1211 : StackLang.HolProg 64 :=
.seq AllocBody345_1209 AllocBody345_1210

def AllocBody345_1212 : StackLang.HolProg 64 :=
.seq AllocBody345_1208 AllocBody345_1211

def AllocBody345_1213 : StackLang.HolProg 64 :=
.seq AllocBody345_1155 AllocBody345_1212

def AllocBody345_1214 : StackLang.HolProg 64 :=
.seq AllocBody345_1148 AllocBody345_1213

def AllocBody345_1215 : StackLang.HolProg 64 :=
.seq AllocBody345_1147 AllocBody345_1214

def AllocBody345_1216 : StackLang.HolProg 64 :=
.seq AllocBody345_1146 AllocBody345_1215

def AllocBody345_1217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_1218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody345_1219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody345_1220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody345_1221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody345_1222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody345_1223 : StackLang.HolProg 64 :=
.seq AllocBody345_1221 AllocBody345_1222

def AllocBody345_1224 : StackLang.HolProg 64 :=
.seq AllocBody345_1220 AllocBody345_1223

def AllocBody345_1225 : StackLang.HolProg 64 :=
.seq AllocBody345_1219 AllocBody345_1224

def AllocBody345_1226 : StackLang.HolProg 64 :=
.seq AllocBody345_1218 AllocBody345_1225

def AllocBody345_1227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1013#64)

def AllocBody345_1229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_1230 : StackLang.HolProg 64 :=
.seq AllocBody345_1228 AllocBody345_1229

def AllocBody345_1231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody345_1232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody345_1233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_1234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 29

def AllocBody345_1235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody345_1236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody345_1237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody345_1238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody345_1240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_1241 : StackLang.HolProg 64 :=
.seq AllocBody345_1239 AllocBody345_1240

def AllocBody345_1242 : StackLang.HolProg 64 :=
.seq AllocBody345_1238 AllocBody345_1241

def AllocBody345_1243 : StackLang.HolProg 64 :=
.seq AllocBody345_1237 AllocBody345_1242

def AllocBody345_1244 : StackLang.HolProg 64 :=
.seq AllocBody345_1236 AllocBody345_1243

def AllocBody345_1245 : StackLang.HolProg 64 :=
.seq AllocBody345_1235 AllocBody345_1244

def AllocBody345_1246 : StackLang.HolProg 64 :=
.seq AllocBody345_1234 AllocBody345_1245

def AllocBody345_1247 : StackLang.HolProg 64 :=
.seq AllocBody345_1233 AllocBody345_1246

def AllocBody345_1248 : StackLang.HolProg 64 :=
.seq AllocBody345_1232 AllocBody345_1247

def AllocBody345_1249 : StackLang.HolProg 64 :=
.seq AllocBody345_1231 AllocBody345_1248

def AllocBody345_1250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody345_1251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody345_1254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_1255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody345_1256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody345_1257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody345_1258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody345_1259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody345_1260 : StackLang.HolProg 64 :=
.seq AllocBody345_1258 AllocBody345_1259

def AllocBody345_1261 : StackLang.HolProg 64 :=
.seq AllocBody345_1257 AllocBody345_1260

def AllocBody345_1262 : StackLang.HolProg 64 :=
.seq AllocBody345_1256 AllocBody345_1261

def AllocBody345_1263 : StackLang.HolProg 64 :=
.seq AllocBody345_1255 AllocBody345_1262

def AllocBody345_1264 : StackLang.HolProg 64 :=
.seq AllocBody345_1254 AllocBody345_1263

def AllocBody345_1265 : StackLang.HolProg 64 :=
.seq AllocBody345_1253 AllocBody345_1264

def AllocBody345_1266 : StackLang.HolProg 64 :=
.seq AllocBody345_1252 AllocBody345_1265

def AllocBody345_1267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody345_1268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody345_1269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody345_1270 : StackLang.HolProg 64 :=
.seq AllocBody345_1268 AllocBody345_1269

def AllocBody345_1271 : StackLang.HolProg 64 :=
.seq AllocBody345_1267 AllocBody345_1270

def AllocBody345_1272 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody345_1273 : StackLang.HolProg 64 :=
.seq AllocBody345_1271 AllocBody345_1272

def AllocBody345_1274 : StackLang.HolProg 64 :=
.call (some (AllocBody345_1266, 0, 345, 28)) (Sum.inl 340) (some (AllocBody345_1273, 345, 29))

def AllocBody345_1275 : StackLang.HolProg 64 :=
.seq AllocBody345_1251 AllocBody345_1274

def AllocBody345_1276 : StackLang.HolProg 64 :=
.seq AllocBody345_1250 AllocBody345_1275

def AllocBody345_1277 : StackLang.HolProg 64 :=
.seq AllocBody345_1249 AllocBody345_1276

def AllocBody345_1278 : StackLang.HolProg 64 :=
.seq AllocBody345_1230 AllocBody345_1277

def AllocBody345_1279 : StackLang.HolProg 64 :=
.seq AllocBody345_1227 AllocBody345_1278

def AllocBody345_1280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_1281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1282 : StackLang.HolProg 64 :=
.seq AllocBody345_1280 AllocBody345_1281

def AllocBody345_1283 : StackLang.HolProg 64 :=
.seq AllocBody345_1279 AllocBody345_1282

def AllocBody345_1284 : StackLang.HolProg 64 :=
.seq AllocBody345_1226 AllocBody345_1283

def AllocBody345_1285 : StackLang.HolProg 64 :=
.seq AllocBody345_1217 AllocBody345_1284

def AllocBody345_1286 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody345_1216 AllocBody345_1285

def AllocBody345_1287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_1288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 152#64)))

def AllocBody345_1290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody345_1292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody345_1294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody345_1295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def AllocBody345_1296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody345_1297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody345_1298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody345_1299 : StackLang.HolProg 64 :=
.seq AllocBody345_1297 AllocBody345_1298

def AllocBody345_1300 : StackLang.HolProg 64 :=
.seq AllocBody345_1296 AllocBody345_1299

def AllocBody345_1301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1014#64)

def AllocBody345_1303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_1304 : StackLang.HolProg 64 :=
.seq AllocBody345_1302 AllocBody345_1303

def AllocBody345_1305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody345_1306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody345_1307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_1308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 31

def AllocBody345_1309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody345_1310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody345_1311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody345_1312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody345_1314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_1315 : StackLang.HolProg 64 :=
.seq AllocBody345_1313 AllocBody345_1314

def AllocBody345_1316 : StackLang.HolProg 64 :=
.seq AllocBody345_1312 AllocBody345_1315

def AllocBody345_1317 : StackLang.HolProg 64 :=
.seq AllocBody345_1311 AllocBody345_1316

def AllocBody345_1318 : StackLang.HolProg 64 :=
.seq AllocBody345_1310 AllocBody345_1317

def AllocBody345_1319 : StackLang.HolProg 64 :=
.seq AllocBody345_1309 AllocBody345_1318

def AllocBody345_1320 : StackLang.HolProg 64 :=
.seq AllocBody345_1308 AllocBody345_1319

def AllocBody345_1321 : StackLang.HolProg 64 :=
.seq AllocBody345_1307 AllocBody345_1320

def AllocBody345_1322 : StackLang.HolProg 64 :=
.seq AllocBody345_1306 AllocBody345_1321

def AllocBody345_1323 : StackLang.HolProg 64 :=
.seq AllocBody345_1305 AllocBody345_1322

def AllocBody345_1324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody345_1325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody345_1328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_1329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody345_1330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody345_1331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody345_1332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody345_1333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody345_1334 : StackLang.HolProg 64 :=
.seq AllocBody345_1332 AllocBody345_1333

def AllocBody345_1335 : StackLang.HolProg 64 :=
.seq AllocBody345_1331 AllocBody345_1334

def AllocBody345_1336 : StackLang.HolProg 64 :=
.seq AllocBody345_1330 AllocBody345_1335

def AllocBody345_1337 : StackLang.HolProg 64 :=
.seq AllocBody345_1329 AllocBody345_1336

def AllocBody345_1338 : StackLang.HolProg 64 :=
.seq AllocBody345_1328 AllocBody345_1337

def AllocBody345_1339 : StackLang.HolProg 64 :=
.seq AllocBody345_1327 AllocBody345_1338

def AllocBody345_1340 : StackLang.HolProg 64 :=
.seq AllocBody345_1326 AllocBody345_1339

def AllocBody345_1341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody345_1342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody345_1343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody345_1344 : StackLang.HolProg 64 :=
.seq AllocBody345_1342 AllocBody345_1343

def AllocBody345_1345 : StackLang.HolProg 64 :=
.seq AllocBody345_1341 AllocBody345_1344

def AllocBody345_1346 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody345_1347 : StackLang.HolProg 64 :=
.seq AllocBody345_1345 AllocBody345_1346

def AllocBody345_1348 : StackLang.HolProg 64 :=
.call (some (AllocBody345_1340, 0, 345, 30)) (Sum.inl 336) (some (AllocBody345_1347, 345, 31))

def AllocBody345_1349 : StackLang.HolProg 64 :=
.seq AllocBody345_1325 AllocBody345_1348

def AllocBody345_1350 : StackLang.HolProg 64 :=
.seq AllocBody345_1324 AllocBody345_1349

def AllocBody345_1351 : StackLang.HolProg 64 :=
.seq AllocBody345_1323 AllocBody345_1350

def AllocBody345_1352 : StackLang.HolProg 64 :=
.seq AllocBody345_1304 AllocBody345_1351

def AllocBody345_1353 : StackLang.HolProg 64 :=
.seq AllocBody345_1301 AllocBody345_1352

def AllocBody345_1354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_1355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def AllocBody345_1357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody345_1359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody345_1361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody345_1363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody345_1365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody345_1367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody345_1368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody345_1369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def AllocBody345_1370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 1

def AllocBody345_1371 : StackLang.HolProg 64 :=
.seq AllocBody345_1369 AllocBody345_1370

def AllocBody345_1372 : StackLang.HolProg 64 :=
.seq AllocBody345_1368 AllocBody345_1371

def AllocBody345_1373 : StackLang.HolProg 64 :=
.seq AllocBody345_1367 AllocBody345_1372

def AllocBody345_1374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1015#64)

def AllocBody345_1376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_1377 : StackLang.HolProg 64 :=
.seq AllocBody345_1375 AllocBody345_1376

def AllocBody345_1378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody345_1379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody345_1380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_1381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 33

def AllocBody345_1382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody345_1383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody345_1384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody345_1385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody345_1387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_1388 : StackLang.HolProg 64 :=
.seq AllocBody345_1386 AllocBody345_1387

def AllocBody345_1389 : StackLang.HolProg 64 :=
.seq AllocBody345_1385 AllocBody345_1388

def AllocBody345_1390 : StackLang.HolProg 64 :=
.seq AllocBody345_1384 AllocBody345_1389

def AllocBody345_1391 : StackLang.HolProg 64 :=
.seq AllocBody345_1383 AllocBody345_1390

def AllocBody345_1392 : StackLang.HolProg 64 :=
.seq AllocBody345_1382 AllocBody345_1391

def AllocBody345_1393 : StackLang.HolProg 64 :=
.seq AllocBody345_1381 AllocBody345_1392

def AllocBody345_1394 : StackLang.HolProg 64 :=
.seq AllocBody345_1380 AllocBody345_1393

def AllocBody345_1395 : StackLang.HolProg 64 :=
.seq AllocBody345_1379 AllocBody345_1394

def AllocBody345_1396 : StackLang.HolProg 64 :=
.seq AllocBody345_1378 AllocBody345_1395

def AllocBody345_1397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody345_1398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody345_1401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_1402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody345_1403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody345_1404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody345_1405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody345_1406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody345_1407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody345_1408 : StackLang.HolProg 64 :=
.seq AllocBody345_1406 AllocBody345_1407

def AllocBody345_1409 : StackLang.HolProg 64 :=
.seq AllocBody345_1405 AllocBody345_1408

def AllocBody345_1410 : StackLang.HolProg 64 :=
.seq AllocBody345_1404 AllocBody345_1409

def AllocBody345_1411 : StackLang.HolProg 64 :=
.seq AllocBody345_1403 AllocBody345_1410

def AllocBody345_1412 : StackLang.HolProg 64 :=
.seq AllocBody345_1402 AllocBody345_1411

def AllocBody345_1413 : StackLang.HolProg 64 :=
.seq AllocBody345_1401 AllocBody345_1412

def AllocBody345_1414 : StackLang.HolProg 64 :=
.seq AllocBody345_1400 AllocBody345_1413

def AllocBody345_1415 : StackLang.HolProg 64 :=
.seq AllocBody345_1399 AllocBody345_1414

def AllocBody345_1416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody345_1417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody345_1418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody345_1419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody345_1420 : StackLang.HolProg 64 :=
.seq AllocBody345_1418 AllocBody345_1419

def AllocBody345_1421 : StackLang.HolProg 64 :=
.seq AllocBody345_1417 AllocBody345_1420

def AllocBody345_1422 : StackLang.HolProg 64 :=
.seq AllocBody345_1416 AllocBody345_1421

def AllocBody345_1423 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody345_1424 : StackLang.HolProg 64 :=
.seq AllocBody345_1422 AllocBody345_1423

def AllocBody345_1425 : StackLang.HolProg 64 :=
.call (some (AllocBody345_1415, 0, 345, 32)) (Sum.inl 338) (some (AllocBody345_1424, 345, 33))

def AllocBody345_1426 : StackLang.HolProg 64 :=
.seq AllocBody345_1398 AllocBody345_1425

def AllocBody345_1427 : StackLang.HolProg 64 :=
.seq AllocBody345_1397 AllocBody345_1426

def AllocBody345_1428 : StackLang.HolProg 64 :=
.seq AllocBody345_1396 AllocBody345_1427

def AllocBody345_1429 : StackLang.HolProg 64 :=
.seq AllocBody345_1377 AllocBody345_1428

def AllocBody345_1430 : StackLang.HolProg 64 :=
.seq AllocBody345_1374 AllocBody345_1429

def AllocBody345_1431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_1432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def AllocBody345_1434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody345_1436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 200#64)))

def AllocBody345_1438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody345_1440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody345_1442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody345_1444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_1445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody345_1446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody345_1447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody345_1448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody345_1449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody345_1450 : StackLang.HolProg 64 :=
.seq AllocBody345_1448 AllocBody345_1449

def AllocBody345_1451 : StackLang.HolProg 64 :=
.seq AllocBody345_1447 AllocBody345_1450

def AllocBody345_1452 : StackLang.HolProg 64 :=
.seq AllocBody345_1446 AllocBody345_1451

def AllocBody345_1453 : StackLang.HolProg 64 :=
.seq AllocBody345_1445 AllocBody345_1452

def AllocBody345_1454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1016#64)

def AllocBody345_1456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_1457 : StackLang.HolProg 64 :=
.seq AllocBody345_1455 AllocBody345_1456

def AllocBody345_1458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody345_1459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody345_1460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_1461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 35

def AllocBody345_1462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody345_1463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody345_1464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody345_1465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody345_1467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_1468 : StackLang.HolProg 64 :=
.seq AllocBody345_1466 AllocBody345_1467

def AllocBody345_1469 : StackLang.HolProg 64 :=
.seq AllocBody345_1465 AllocBody345_1468

def AllocBody345_1470 : StackLang.HolProg 64 :=
.seq AllocBody345_1464 AllocBody345_1469

def AllocBody345_1471 : StackLang.HolProg 64 :=
.seq AllocBody345_1463 AllocBody345_1470

def AllocBody345_1472 : StackLang.HolProg 64 :=
.seq AllocBody345_1462 AllocBody345_1471

def AllocBody345_1473 : StackLang.HolProg 64 :=
.seq AllocBody345_1461 AllocBody345_1472

def AllocBody345_1474 : StackLang.HolProg 64 :=
.seq AllocBody345_1460 AllocBody345_1473

def AllocBody345_1475 : StackLang.HolProg 64 :=
.seq AllocBody345_1459 AllocBody345_1474

def AllocBody345_1476 : StackLang.HolProg 64 :=
.seq AllocBody345_1458 AllocBody345_1475

def AllocBody345_1477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody345_1478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody345_1481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_1482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody345_1483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody345_1484 : StackLang.HolProg 64 :=
.seq AllocBody345_1482 AllocBody345_1483

def AllocBody345_1485 : StackLang.HolProg 64 :=
.seq AllocBody345_1481 AllocBody345_1484

def AllocBody345_1486 : StackLang.HolProg 64 :=
.seq AllocBody345_1480 AllocBody345_1485

def AllocBody345_1487 : StackLang.HolProg 64 :=
.seq AllocBody345_1479 AllocBody345_1486

def AllocBody345_1488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1489 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody345_1490 : StackLang.HolProg 64 :=
.seq AllocBody345_1488 AllocBody345_1489

def AllocBody345_1491 : StackLang.HolProg 64 :=
.call (some (AllocBody345_1487, 0, 345, 34)) (Sum.inl 341) (some (AllocBody345_1490, 345, 35))

def AllocBody345_1492 : StackLang.HolProg 64 :=
.seq AllocBody345_1478 AllocBody345_1491

def AllocBody345_1493 : StackLang.HolProg 64 :=
.seq AllocBody345_1477 AllocBody345_1492

def AllocBody345_1494 : StackLang.HolProg 64 :=
.seq AllocBody345_1476 AllocBody345_1493

def AllocBody345_1495 : StackLang.HolProg 64 :=
.seq AllocBody345_1457 AllocBody345_1494

def AllocBody345_1496 : StackLang.HolProg 64 :=
.seq AllocBody345_1454 AllocBody345_1495

def AllocBody345_1497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_1498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody345_1499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1017#64)

def AllocBody345_1501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_1502 : StackLang.HolProg 64 :=
.seq AllocBody345_1500 AllocBody345_1501

def AllocBody345_1503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody345_1504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody345_1505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_1506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 37

def AllocBody345_1507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody345_1508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody345_1509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody345_1510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody345_1512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_1513 : StackLang.HolProg 64 :=
.seq AllocBody345_1511 AllocBody345_1512

def AllocBody345_1514 : StackLang.HolProg 64 :=
.seq AllocBody345_1510 AllocBody345_1513

def AllocBody345_1515 : StackLang.HolProg 64 :=
.seq AllocBody345_1509 AllocBody345_1514

def AllocBody345_1516 : StackLang.HolProg 64 :=
.seq AllocBody345_1508 AllocBody345_1515

def AllocBody345_1517 : StackLang.HolProg 64 :=
.seq AllocBody345_1507 AllocBody345_1516

def AllocBody345_1518 : StackLang.HolProg 64 :=
.seq AllocBody345_1506 AllocBody345_1517

def AllocBody345_1519 : StackLang.HolProg 64 :=
.seq AllocBody345_1505 AllocBody345_1518

def AllocBody345_1520 : StackLang.HolProg 64 :=
.seq AllocBody345_1504 AllocBody345_1519

def AllocBody345_1521 : StackLang.HolProg 64 :=
.seq AllocBody345_1503 AllocBody345_1520

def AllocBody345_1522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody345_1523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody345_1526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_1527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody345_1528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody345_1529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody345_1530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody345_1531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody345_1532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody345_1533 : StackLang.HolProg 64 :=
.seq AllocBody345_1531 AllocBody345_1532

def AllocBody345_1534 : StackLang.HolProg 64 :=
.seq AllocBody345_1530 AllocBody345_1533

def AllocBody345_1535 : StackLang.HolProg 64 :=
.seq AllocBody345_1529 AllocBody345_1534

def AllocBody345_1536 : StackLang.HolProg 64 :=
.seq AllocBody345_1528 AllocBody345_1535

def AllocBody345_1537 : StackLang.HolProg 64 :=
.seq AllocBody345_1527 AllocBody345_1536

def AllocBody345_1538 : StackLang.HolProg 64 :=
.seq AllocBody345_1526 AllocBody345_1537

def AllocBody345_1539 : StackLang.HolProg 64 :=
.seq AllocBody345_1525 AllocBody345_1538

def AllocBody345_1540 : StackLang.HolProg 64 :=
.seq AllocBody345_1524 AllocBody345_1539

def AllocBody345_1541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody345_1542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody345_1543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody345_1544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody345_1545 : StackLang.HolProg 64 :=
.seq AllocBody345_1543 AllocBody345_1544

def AllocBody345_1546 : StackLang.HolProg 64 :=
.seq AllocBody345_1542 AllocBody345_1545

def AllocBody345_1547 : StackLang.HolProg 64 :=
.seq AllocBody345_1541 AllocBody345_1546

def AllocBody345_1548 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody345_1549 : StackLang.HolProg 64 :=
.seq AllocBody345_1547 AllocBody345_1548

def AllocBody345_1550 : StackLang.HolProg 64 :=
.call (some (AllocBody345_1540, 0, 345, 36)) (Sum.inl 342) (some (AllocBody345_1549, 345, 37))

def AllocBody345_1551 : StackLang.HolProg 64 :=
.seq AllocBody345_1523 AllocBody345_1550

def AllocBody345_1552 : StackLang.HolProg 64 :=
.seq AllocBody345_1522 AllocBody345_1551

def AllocBody345_1553 : StackLang.HolProg 64 :=
.seq AllocBody345_1521 AllocBody345_1552

def AllocBody345_1554 : StackLang.HolProg 64 :=
.seq AllocBody345_1502 AllocBody345_1553

def AllocBody345_1555 : StackLang.HolProg 64 :=
.seq AllocBody345_1499 AllocBody345_1554

def AllocBody345_1556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_1557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 208#64)))

def AllocBody345_1559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody345_1561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 216#64)))

def AllocBody345_1563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody345_1565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody345_1567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody345_1568 : StackLang.HolProg 64 :=
.seq AllocBody345_1566 AllocBody345_1567

def AllocBody345_1569 : StackLang.HolProg 64 :=
.seq AllocBody345_1565 AllocBody345_1568

def AllocBody345_1570 : StackLang.HolProg 64 :=
.seq AllocBody345_1564 AllocBody345_1569

def AllocBody345_1571 : StackLang.HolProg 64 :=
.seq AllocBody345_1563 AllocBody345_1570

def AllocBody345_1572 : StackLang.HolProg 64 :=
.seq AllocBody345_1562 AllocBody345_1571

def AllocBody345_1573 : StackLang.HolProg 64 :=
.seq AllocBody345_1561 AllocBody345_1572

def AllocBody345_1574 : StackLang.HolProg 64 :=
.seq AllocBody345_1560 AllocBody345_1573

def AllocBody345_1575 : StackLang.HolProg 64 :=
.seq AllocBody345_1559 AllocBody345_1574

def AllocBody345_1576 : StackLang.HolProg 64 :=
.seq AllocBody345_1558 AllocBody345_1575

def AllocBody345_1577 : StackLang.HolProg 64 :=
.seq AllocBody345_1557 AllocBody345_1576

def AllocBody345_1578 : StackLang.HolProg 64 :=
.seq AllocBody345_1556 AllocBody345_1577

def AllocBody345_1579 : StackLang.HolProg 64 :=
.seq AllocBody345_1555 AllocBody345_1578

def AllocBody345_1580 : StackLang.HolProg 64 :=
.seq AllocBody345_1498 AllocBody345_1579

def AllocBody345_1581 : StackLang.HolProg 64 :=
.seq AllocBody345_1497 AllocBody345_1580

def AllocBody345_1582 : StackLang.HolProg 64 :=
.seq AllocBody345_1496 AllocBody345_1581

def AllocBody345_1583 : StackLang.HolProg 64 :=
.seq AllocBody345_1453 AllocBody345_1582

def AllocBody345_1584 : StackLang.HolProg 64 :=
.seq AllocBody345_1444 AllocBody345_1583

def AllocBody345_1585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_1586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody345_1587 : StackLang.HolProg 64 :=
.seq AllocBody345_1585 AllocBody345_1586

def AllocBody345_1588 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody345_1584 AllocBody345_1587

def AllocBody345_1589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_1590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody345_1592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_1593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody345_1594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def AllocBody345_1595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody345_1596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody345_1597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody345_1598 : StackLang.HolProg 64 :=
.seq AllocBody345_1596 AllocBody345_1597

def AllocBody345_1599 : StackLang.HolProg 64 :=
.seq AllocBody345_1595 AllocBody345_1598

def AllocBody345_1600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1018#64)

def AllocBody345_1602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_1603 : StackLang.HolProg 64 :=
.seq AllocBody345_1601 AllocBody345_1602

def AllocBody345_1604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody345_1605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody345_1606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_1607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 39

def AllocBody345_1608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody345_1609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody345_1610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody345_1611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody345_1613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_1614 : StackLang.HolProg 64 :=
.seq AllocBody345_1612 AllocBody345_1613

def AllocBody345_1615 : StackLang.HolProg 64 :=
.seq AllocBody345_1611 AllocBody345_1614

def AllocBody345_1616 : StackLang.HolProg 64 :=
.seq AllocBody345_1610 AllocBody345_1615

def AllocBody345_1617 : StackLang.HolProg 64 :=
.seq AllocBody345_1609 AllocBody345_1616

def AllocBody345_1618 : StackLang.HolProg 64 :=
.seq AllocBody345_1608 AllocBody345_1617

def AllocBody345_1619 : StackLang.HolProg 64 :=
.seq AllocBody345_1607 AllocBody345_1618

def AllocBody345_1620 : StackLang.HolProg 64 :=
.seq AllocBody345_1606 AllocBody345_1619

def AllocBody345_1621 : StackLang.HolProg 64 :=
.seq AllocBody345_1605 AllocBody345_1620

def AllocBody345_1622 : StackLang.HolProg 64 :=
.seq AllocBody345_1604 AllocBody345_1621

def AllocBody345_1623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody345_1624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody345_1627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_1628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody345_1629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody345_1630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody345_1631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody345_1632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody345_1633 : StackLang.HolProg 64 :=
.seq AllocBody345_1631 AllocBody345_1632

def AllocBody345_1634 : StackLang.HolProg 64 :=
.seq AllocBody345_1630 AllocBody345_1633

def AllocBody345_1635 : StackLang.HolProg 64 :=
.seq AllocBody345_1629 AllocBody345_1634

def AllocBody345_1636 : StackLang.HolProg 64 :=
.seq AllocBody345_1628 AllocBody345_1635

def AllocBody345_1637 : StackLang.HolProg 64 :=
.seq AllocBody345_1627 AllocBody345_1636

def AllocBody345_1638 : StackLang.HolProg 64 :=
.seq AllocBody345_1626 AllocBody345_1637

def AllocBody345_1639 : StackLang.HolProg 64 :=
.seq AllocBody345_1625 AllocBody345_1638

def AllocBody345_1640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody345_1641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody345_1642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody345_1643 : StackLang.HolProg 64 :=
.seq AllocBody345_1641 AllocBody345_1642

def AllocBody345_1644 : StackLang.HolProg 64 :=
.seq AllocBody345_1640 AllocBody345_1643

def AllocBody345_1645 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody345_1646 : StackLang.HolProg 64 :=
.seq AllocBody345_1644 AllocBody345_1645

def AllocBody345_1647 : StackLang.HolProg 64 :=
.call (some (AllocBody345_1639, 0, 345, 38)) (Sum.inl 336) (some (AllocBody345_1646, 345, 39))

def AllocBody345_1648 : StackLang.HolProg 64 :=
.seq AllocBody345_1624 AllocBody345_1647

def AllocBody345_1649 : StackLang.HolProg 64 :=
.seq AllocBody345_1623 AllocBody345_1648

def AllocBody345_1650 : StackLang.HolProg 64 :=
.seq AllocBody345_1622 AllocBody345_1649

def AllocBody345_1651 : StackLang.HolProg 64 :=
.seq AllocBody345_1603 AllocBody345_1650

def AllocBody345_1652 : StackLang.HolProg 64 :=
.seq AllocBody345_1600 AllocBody345_1651

def AllocBody345_1653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_1654 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 224#64)))

def AllocBody345_1656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1657 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody345_1658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody345_1660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody345_1662 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody345_1664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody345_1665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody345_1666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody345_1667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def AllocBody345_1668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody345_1669 : StackLang.HolProg 64 :=
.seq AllocBody345_1667 AllocBody345_1668

def AllocBody345_1670 : StackLang.HolProg 64 :=
.seq AllocBody345_1666 AllocBody345_1669

def AllocBody345_1671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1019#64)

def AllocBody345_1673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_1674 : StackLang.HolProg 64 :=
.seq AllocBody345_1672 AllocBody345_1673

def AllocBody345_1675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody345_1676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody345_1677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_1678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 41

def AllocBody345_1679 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody345_1680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody345_1681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody345_1682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody345_1684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_1685 : StackLang.HolProg 64 :=
.seq AllocBody345_1683 AllocBody345_1684

def AllocBody345_1686 : StackLang.HolProg 64 :=
.seq AllocBody345_1682 AllocBody345_1685

def AllocBody345_1687 : StackLang.HolProg 64 :=
.seq AllocBody345_1681 AllocBody345_1686

def AllocBody345_1688 : StackLang.HolProg 64 :=
.seq AllocBody345_1680 AllocBody345_1687

def AllocBody345_1689 : StackLang.HolProg 64 :=
.seq AllocBody345_1679 AllocBody345_1688

def AllocBody345_1690 : StackLang.HolProg 64 :=
.seq AllocBody345_1678 AllocBody345_1689

def AllocBody345_1691 : StackLang.HolProg 64 :=
.seq AllocBody345_1677 AllocBody345_1690

def AllocBody345_1692 : StackLang.HolProg 64 :=
.seq AllocBody345_1676 AllocBody345_1691

def AllocBody345_1693 : StackLang.HolProg 64 :=
.seq AllocBody345_1675 AllocBody345_1692

def AllocBody345_1694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody345_1695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody345_1698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_1699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody345_1700 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody345_1701 : StackLang.HolProg 64 :=
.seq AllocBody345_1699 AllocBody345_1700

def AllocBody345_1702 : StackLang.HolProg 64 :=
.seq AllocBody345_1698 AllocBody345_1701

def AllocBody345_1703 : StackLang.HolProg 64 :=
.seq AllocBody345_1697 AllocBody345_1702

def AllocBody345_1704 : StackLang.HolProg 64 :=
.seq AllocBody345_1696 AllocBody345_1703

def AllocBody345_1705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1706 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody345_1707 : StackLang.HolProg 64 :=
.seq AllocBody345_1705 AllocBody345_1706

def AllocBody345_1708 : StackLang.HolProg 64 :=
.call (some (AllocBody345_1704, 0, 345, 40)) (Sum.inl 341) (some (AllocBody345_1707, 345, 41))

def AllocBody345_1709 : StackLang.HolProg 64 :=
.seq AllocBody345_1695 AllocBody345_1708

def AllocBody345_1710 : StackLang.HolProg 64 :=
.seq AllocBody345_1694 AllocBody345_1709

def AllocBody345_1711 : StackLang.HolProg 64 :=
.seq AllocBody345_1693 AllocBody345_1710

def AllocBody345_1712 : StackLang.HolProg 64 :=
.seq AllocBody345_1674 AllocBody345_1711

def AllocBody345_1713 : StackLang.HolProg 64 :=
.seq AllocBody345_1671 AllocBody345_1712

def AllocBody345_1714 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_1715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody345_1716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1717 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1020#64)

def AllocBody345_1718 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_1719 : StackLang.HolProg 64 :=
.seq AllocBody345_1717 AllocBody345_1718

def AllocBody345_1720 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody345_1721 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody345_1722 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_1723 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 43

def AllocBody345_1724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody345_1725 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody345_1726 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody345_1727 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1728 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody345_1729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_1730 : StackLang.HolProg 64 :=
.seq AllocBody345_1728 AllocBody345_1729

def AllocBody345_1731 : StackLang.HolProg 64 :=
.seq AllocBody345_1727 AllocBody345_1730

def AllocBody345_1732 : StackLang.HolProg 64 :=
.seq AllocBody345_1726 AllocBody345_1731

def AllocBody345_1733 : StackLang.HolProg 64 :=
.seq AllocBody345_1725 AllocBody345_1732

def AllocBody345_1734 : StackLang.HolProg 64 :=
.seq AllocBody345_1724 AllocBody345_1733

def AllocBody345_1735 : StackLang.HolProg 64 :=
.seq AllocBody345_1723 AllocBody345_1734

def AllocBody345_1736 : StackLang.HolProg 64 :=
.seq AllocBody345_1722 AllocBody345_1735

def AllocBody345_1737 : StackLang.HolProg 64 :=
.seq AllocBody345_1721 AllocBody345_1736

def AllocBody345_1738 : StackLang.HolProg 64 :=
.seq AllocBody345_1720 AllocBody345_1737

def AllocBody345_1739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody345_1740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1741 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody345_1743 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_1744 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody345_1745 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody345_1746 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody345_1747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody345_1748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody345_1749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody345_1750 : StackLang.HolProg 64 :=
.seq AllocBody345_1748 AllocBody345_1749

def AllocBody345_1751 : StackLang.HolProg 64 :=
.seq AllocBody345_1747 AllocBody345_1750

def AllocBody345_1752 : StackLang.HolProg 64 :=
.seq AllocBody345_1746 AllocBody345_1751

def AllocBody345_1753 : StackLang.HolProg 64 :=
.seq AllocBody345_1745 AllocBody345_1752

def AllocBody345_1754 : StackLang.HolProg 64 :=
.seq AllocBody345_1744 AllocBody345_1753

def AllocBody345_1755 : StackLang.HolProg 64 :=
.seq AllocBody345_1743 AllocBody345_1754

def AllocBody345_1756 : StackLang.HolProg 64 :=
.seq AllocBody345_1742 AllocBody345_1755

def AllocBody345_1757 : StackLang.HolProg 64 :=
.seq AllocBody345_1741 AllocBody345_1756

def AllocBody345_1758 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody345_1759 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody345_1760 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody345_1761 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody345_1762 : StackLang.HolProg 64 :=
.seq AllocBody345_1760 AllocBody345_1761

def AllocBody345_1763 : StackLang.HolProg 64 :=
.seq AllocBody345_1759 AllocBody345_1762

def AllocBody345_1764 : StackLang.HolProg 64 :=
.seq AllocBody345_1758 AllocBody345_1763

def AllocBody345_1765 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody345_1766 : StackLang.HolProg 64 :=
.seq AllocBody345_1764 AllocBody345_1765

def AllocBody345_1767 : StackLang.HolProg 64 :=
.call (some (AllocBody345_1757, 0, 345, 42)) (Sum.inl 343) (some (AllocBody345_1766, 345, 43))

def AllocBody345_1768 : StackLang.HolProg 64 :=
.seq AllocBody345_1740 AllocBody345_1767

def AllocBody345_1769 : StackLang.HolProg 64 :=
.seq AllocBody345_1739 AllocBody345_1768

def AllocBody345_1770 : StackLang.HolProg 64 :=
.seq AllocBody345_1738 AllocBody345_1769

def AllocBody345_1771 : StackLang.HolProg 64 :=
.seq AllocBody345_1719 AllocBody345_1770

def AllocBody345_1772 : StackLang.HolProg 64 :=
.seq AllocBody345_1716 AllocBody345_1771

def AllocBody345_1773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_1774 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1775 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 256#64)))

def AllocBody345_1776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1777 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody345_1778 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 264#64)))

def AllocBody345_1780 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1781 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody345_1782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody345_1784 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody345_1785 : StackLang.HolProg 64 :=
.seq AllocBody345_1783 AllocBody345_1784

def AllocBody345_1786 : StackLang.HolProg 64 :=
.seq AllocBody345_1782 AllocBody345_1785

def AllocBody345_1787 : StackLang.HolProg 64 :=
.seq AllocBody345_1781 AllocBody345_1786

def AllocBody345_1788 : StackLang.HolProg 64 :=
.seq AllocBody345_1780 AllocBody345_1787

def AllocBody345_1789 : StackLang.HolProg 64 :=
.seq AllocBody345_1779 AllocBody345_1788

def AllocBody345_1790 : StackLang.HolProg 64 :=
.seq AllocBody345_1778 AllocBody345_1789

def AllocBody345_1791 : StackLang.HolProg 64 :=
.seq AllocBody345_1777 AllocBody345_1790

def AllocBody345_1792 : StackLang.HolProg 64 :=
.seq AllocBody345_1776 AllocBody345_1791

def AllocBody345_1793 : StackLang.HolProg 64 :=
.seq AllocBody345_1775 AllocBody345_1792

def AllocBody345_1794 : StackLang.HolProg 64 :=
.seq AllocBody345_1774 AllocBody345_1793

def AllocBody345_1795 : StackLang.HolProg 64 :=
.seq AllocBody345_1773 AllocBody345_1794

def AllocBody345_1796 : StackLang.HolProg 64 :=
.seq AllocBody345_1772 AllocBody345_1795

def AllocBody345_1797 : StackLang.HolProg 64 :=
.seq AllocBody345_1715 AllocBody345_1796

def AllocBody345_1798 : StackLang.HolProg 64 :=
.seq AllocBody345_1714 AllocBody345_1797

def AllocBody345_1799 : StackLang.HolProg 64 :=
.seq AllocBody345_1713 AllocBody345_1798

def AllocBody345_1800 : StackLang.HolProg 64 :=
.seq AllocBody345_1670 AllocBody345_1799

def AllocBody345_1801 : StackLang.HolProg 64 :=
.seq AllocBody345_1665 AllocBody345_1800

def AllocBody345_1802 : StackLang.HolProg 64 :=
.seq AllocBody345_1664 AllocBody345_1801

def AllocBody345_1803 : StackLang.HolProg 64 :=
.seq AllocBody345_1663 AllocBody345_1802

def AllocBody345_1804 : StackLang.HolProg 64 :=
.seq AllocBody345_1662 AllocBody345_1803

def AllocBody345_1805 : StackLang.HolProg 64 :=
.seq AllocBody345_1661 AllocBody345_1804

def AllocBody345_1806 : StackLang.HolProg 64 :=
.seq AllocBody345_1660 AllocBody345_1805

def AllocBody345_1807 : StackLang.HolProg 64 :=
.seq AllocBody345_1659 AllocBody345_1806

def AllocBody345_1808 : StackLang.HolProg 64 :=
.seq AllocBody345_1658 AllocBody345_1807

def AllocBody345_1809 : StackLang.HolProg 64 :=
.seq AllocBody345_1657 AllocBody345_1808

def AllocBody345_1810 : StackLang.HolProg 64 :=
.seq AllocBody345_1656 AllocBody345_1809

def AllocBody345_1811 : StackLang.HolProg 64 :=
.seq AllocBody345_1655 AllocBody345_1810

def AllocBody345_1812 : StackLang.HolProg 64 :=
.seq AllocBody345_1654 AllocBody345_1811

def AllocBody345_1813 : StackLang.HolProg 64 :=
.seq AllocBody345_1653 AllocBody345_1812

def AllocBody345_1814 : StackLang.HolProg 64 :=
.seq AllocBody345_1652 AllocBody345_1813

def AllocBody345_1815 : StackLang.HolProg 64 :=
.seq AllocBody345_1599 AllocBody345_1814

def AllocBody345_1816 : StackLang.HolProg 64 :=
.seq AllocBody345_1594 AllocBody345_1815

def AllocBody345_1817 : StackLang.HolProg 64 :=
.seq AllocBody345_1593 AllocBody345_1816

def AllocBody345_1818 : StackLang.HolProg 64 :=
.seq AllocBody345_1592 AllocBody345_1817

def AllocBody345_1819 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_1820 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1821 : StackLang.HolProg 64 :=
.seq AllocBody345_1819 AllocBody345_1820

def AllocBody345_1822 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody345_1818 AllocBody345_1821

def AllocBody345_1823 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_1824 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def AllocBody345_1826 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_1827 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody345_1828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody345_1829 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody345_1830 : StackLang.HolProg 64 :=
.seq AllocBody345_1828 AllocBody345_1829

def AllocBody345_1831 : StackLang.HolProg 64 :=
.seq AllocBody345_1827 AllocBody345_1830

def AllocBody345_1832 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1833 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1021#64)

def AllocBody345_1834 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_1835 : StackLang.HolProg 64 :=
.seq AllocBody345_1833 AllocBody345_1834

def AllocBody345_1836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody345_1837 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody345_1838 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_1839 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 45

def AllocBody345_1840 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody345_1841 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody345_1842 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody345_1843 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1844 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody345_1845 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_1846 : StackLang.HolProg 64 :=
.seq AllocBody345_1844 AllocBody345_1845

def AllocBody345_1847 : StackLang.HolProg 64 :=
.seq AllocBody345_1843 AllocBody345_1846

def AllocBody345_1848 : StackLang.HolProg 64 :=
.seq AllocBody345_1842 AllocBody345_1847

def AllocBody345_1849 : StackLang.HolProg 64 :=
.seq AllocBody345_1841 AllocBody345_1848

def AllocBody345_1850 : StackLang.HolProg 64 :=
.seq AllocBody345_1840 AllocBody345_1849

def AllocBody345_1851 : StackLang.HolProg 64 :=
.seq AllocBody345_1839 AllocBody345_1850

def AllocBody345_1852 : StackLang.HolProg 64 :=
.seq AllocBody345_1838 AllocBody345_1851

def AllocBody345_1853 : StackLang.HolProg 64 :=
.seq AllocBody345_1837 AllocBody345_1852

def AllocBody345_1854 : StackLang.HolProg 64 :=
.seq AllocBody345_1836 AllocBody345_1853

def AllocBody345_1855 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody345_1856 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1857 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1858 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody345_1859 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_1860 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody345_1861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody345_1862 : StackLang.HolProg 64 :=
.seq AllocBody345_1860 AllocBody345_1861

def AllocBody345_1863 : StackLang.HolProg 64 :=
.seq AllocBody345_1859 AllocBody345_1862

def AllocBody345_1864 : StackLang.HolProg 64 :=
.seq AllocBody345_1858 AllocBody345_1863

def AllocBody345_1865 : StackLang.HolProg 64 :=
.seq AllocBody345_1857 AllocBody345_1864

def AllocBody345_1866 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1867 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody345_1868 : StackLang.HolProg 64 :=
.seq AllocBody345_1866 AllocBody345_1867

def AllocBody345_1869 : StackLang.HolProg 64 :=
.call (some (AllocBody345_1865, 0, 345, 44)) (Sum.inl 341) (some (AllocBody345_1868, 345, 45))

def AllocBody345_1870 : StackLang.HolProg 64 :=
.seq AllocBody345_1856 AllocBody345_1869

def AllocBody345_1871 : StackLang.HolProg 64 :=
.seq AllocBody345_1855 AllocBody345_1870

def AllocBody345_1872 : StackLang.HolProg 64 :=
.seq AllocBody345_1854 AllocBody345_1871

def AllocBody345_1873 : StackLang.HolProg 64 :=
.seq AllocBody345_1835 AllocBody345_1872

def AllocBody345_1874 : StackLang.HolProg 64 :=
.seq AllocBody345_1832 AllocBody345_1873

def AllocBody345_1875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_1876 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody345_1877 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1022#64)

def AllocBody345_1879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_1880 : StackLang.HolProg 64 :=
.seq AllocBody345_1878 AllocBody345_1879

def AllocBody345_1881 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody345_1882 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody345_1883 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_1884 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 47

def AllocBody345_1885 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody345_1886 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody345_1887 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody345_1888 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1889 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody345_1890 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_1891 : StackLang.HolProg 64 :=
.seq AllocBody345_1889 AllocBody345_1890

def AllocBody345_1892 : StackLang.HolProg 64 :=
.seq AllocBody345_1888 AllocBody345_1891

def AllocBody345_1893 : StackLang.HolProg 64 :=
.seq AllocBody345_1887 AllocBody345_1892

def AllocBody345_1894 : StackLang.HolProg 64 :=
.seq AllocBody345_1886 AllocBody345_1893

def AllocBody345_1895 : StackLang.HolProg 64 :=
.seq AllocBody345_1885 AllocBody345_1894

def AllocBody345_1896 : StackLang.HolProg 64 :=
.seq AllocBody345_1884 AllocBody345_1895

def AllocBody345_1897 : StackLang.HolProg 64 :=
.seq AllocBody345_1883 AllocBody345_1896

def AllocBody345_1898 : StackLang.HolProg 64 :=
.seq AllocBody345_1882 AllocBody345_1897

def AllocBody345_1899 : StackLang.HolProg 64 :=
.seq AllocBody345_1881 AllocBody345_1898

def AllocBody345_1900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody345_1901 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1902 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1903 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody345_1904 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_1905 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody345_1906 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody345_1907 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody345_1908 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody345_1909 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody345_1910 : StackLang.HolProg 64 :=
.seq AllocBody345_1908 AllocBody345_1909

def AllocBody345_1911 : StackLang.HolProg 64 :=
.seq AllocBody345_1907 AllocBody345_1910

def AllocBody345_1912 : StackLang.HolProg 64 :=
.seq AllocBody345_1906 AllocBody345_1911

def AllocBody345_1913 : StackLang.HolProg 64 :=
.seq AllocBody345_1905 AllocBody345_1912

def AllocBody345_1914 : StackLang.HolProg 64 :=
.seq AllocBody345_1904 AllocBody345_1913

def AllocBody345_1915 : StackLang.HolProg 64 :=
.seq AllocBody345_1903 AllocBody345_1914

def AllocBody345_1916 : StackLang.HolProg 64 :=
.seq AllocBody345_1902 AllocBody345_1915

def AllocBody345_1917 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody345_1918 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody345_1919 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody345_1920 : StackLang.HolProg 64 :=
.seq AllocBody345_1918 AllocBody345_1919

def AllocBody345_1921 : StackLang.HolProg 64 :=
.seq AllocBody345_1917 AllocBody345_1920

def AllocBody345_1922 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody345_1923 : StackLang.HolProg 64 :=
.seq AllocBody345_1921 AllocBody345_1922

def AllocBody345_1924 : StackLang.HolProg 64 :=
.call (some (AllocBody345_1916, 0, 345, 46)) (Sum.inl 344) (some (AllocBody345_1923, 345, 47))

def AllocBody345_1925 : StackLang.HolProg 64 :=
.seq AllocBody345_1901 AllocBody345_1924

def AllocBody345_1926 : StackLang.HolProg 64 :=
.seq AllocBody345_1900 AllocBody345_1925

def AllocBody345_1927 : StackLang.HolProg 64 :=
.seq AllocBody345_1899 AllocBody345_1926

def AllocBody345_1928 : StackLang.HolProg 64 :=
.seq AllocBody345_1880 AllocBody345_1927

def AllocBody345_1929 : StackLang.HolProg 64 :=
.seq AllocBody345_1877 AllocBody345_1928

def AllocBody345_1930 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_1931 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1932 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 272#64)))

def AllocBody345_1933 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1934 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody345_1935 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1936 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 280#64)))

def AllocBody345_1937 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1938 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody345_1939 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1940 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody345_1941 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody345_1942 : StackLang.HolProg 64 :=
.seq AllocBody345_1940 AllocBody345_1941

def AllocBody345_1943 : StackLang.HolProg 64 :=
.seq AllocBody345_1939 AllocBody345_1942

def AllocBody345_1944 : StackLang.HolProg 64 :=
.seq AllocBody345_1938 AllocBody345_1943

def AllocBody345_1945 : StackLang.HolProg 64 :=
.seq AllocBody345_1937 AllocBody345_1944

def AllocBody345_1946 : StackLang.HolProg 64 :=
.seq AllocBody345_1936 AllocBody345_1945

def AllocBody345_1947 : StackLang.HolProg 64 :=
.seq AllocBody345_1935 AllocBody345_1946

def AllocBody345_1948 : StackLang.HolProg 64 :=
.seq AllocBody345_1934 AllocBody345_1947

def AllocBody345_1949 : StackLang.HolProg 64 :=
.seq AllocBody345_1933 AllocBody345_1948

def AllocBody345_1950 : StackLang.HolProg 64 :=
.seq AllocBody345_1932 AllocBody345_1949

def AllocBody345_1951 : StackLang.HolProg 64 :=
.seq AllocBody345_1931 AllocBody345_1950

def AllocBody345_1952 : StackLang.HolProg 64 :=
.seq AllocBody345_1930 AllocBody345_1951

def AllocBody345_1953 : StackLang.HolProg 64 :=
.seq AllocBody345_1929 AllocBody345_1952

def AllocBody345_1954 : StackLang.HolProg 64 :=
.seq AllocBody345_1876 AllocBody345_1953

def AllocBody345_1955 : StackLang.HolProg 64 :=
.seq AllocBody345_1875 AllocBody345_1954

def AllocBody345_1956 : StackLang.HolProg 64 :=
.seq AllocBody345_1874 AllocBody345_1955

def AllocBody345_1957 : StackLang.HolProg 64 :=
.seq AllocBody345_1831 AllocBody345_1956

def AllocBody345_1958 : StackLang.HolProg 64 :=
.seq AllocBody345_1826 AllocBody345_1957

def AllocBody345_1959 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_1960 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1961 : StackLang.HolProg 64 :=
.seq AllocBody345_1959 AllocBody345_1960

def AllocBody345_1962 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody345_1958 AllocBody345_1961

def AllocBody345_1963 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_1964 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody345_1965 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def AllocBody345_1966 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody345_1967 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody345_1968 : StackLang.HolProg 64 :=
.seq AllocBody345_1966 AllocBody345_1967

def AllocBody345_1969 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1970 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1023#64)

def AllocBody345_1971 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_1972 : StackLang.HolProg 64 :=
.seq AllocBody345_1970 AllocBody345_1971

def AllocBody345_1973 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody345_1974 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody345_1975 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_1976 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 49

def AllocBody345_1977 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody345_1978 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody345_1979 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody345_1980 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1981 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody345_1982 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_1983 : StackLang.HolProg 64 :=
.seq AllocBody345_1981 AllocBody345_1982

def AllocBody345_1984 : StackLang.HolProg 64 :=
.seq AllocBody345_1980 AllocBody345_1983

def AllocBody345_1985 : StackLang.HolProg 64 :=
.seq AllocBody345_1979 AllocBody345_1984

def AllocBody345_1986 : StackLang.HolProg 64 :=
.seq AllocBody345_1978 AllocBody345_1985

def AllocBody345_1987 : StackLang.HolProg 64 :=
.seq AllocBody345_1977 AllocBody345_1986

def AllocBody345_1988 : StackLang.HolProg 64 :=
.seq AllocBody345_1976 AllocBody345_1987

def AllocBody345_1989 : StackLang.HolProg 64 :=
.seq AllocBody345_1975 AllocBody345_1988

def AllocBody345_1990 : StackLang.HolProg 64 :=
.seq AllocBody345_1974 AllocBody345_1989

def AllocBody345_1991 : StackLang.HolProg 64 :=
.seq AllocBody345_1973 AllocBody345_1990

def AllocBody345_1992 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody345_1993 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1994 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_1995 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody345_1996 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_1997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody345_1998 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody345_1999 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody345_2000 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def AllocBody345_2001 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody345_2002 : StackLang.HolProg 64 :=
.seq AllocBody345_2000 AllocBody345_2001

def AllocBody345_2003 : StackLang.HolProg 64 :=
.seq AllocBody345_1999 AllocBody345_2002

def AllocBody345_2004 : StackLang.HolProg 64 :=
.seq AllocBody345_1998 AllocBody345_2003

def AllocBody345_2005 : StackLang.HolProg 64 :=
.seq AllocBody345_1997 AllocBody345_2004

def AllocBody345_2006 : StackLang.HolProg 64 :=
.seq AllocBody345_1996 AllocBody345_2005

def AllocBody345_2007 : StackLang.HolProg 64 :=
.seq AllocBody345_1995 AllocBody345_2006

def AllocBody345_2008 : StackLang.HolProg 64 :=
.seq AllocBody345_1994 AllocBody345_2007

def AllocBody345_2009 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody345_2010 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def AllocBody345_2011 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody345_2012 : StackLang.HolProg 64 :=
.seq AllocBody345_2010 AllocBody345_2011

def AllocBody345_2013 : StackLang.HolProg 64 :=
.seq AllocBody345_2009 AllocBody345_2012

def AllocBody345_2014 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody345_2015 : StackLang.HolProg 64 :=
.seq AllocBody345_2013 AllocBody345_2014

def AllocBody345_2016 : StackLang.HolProg 64 :=
.call (some (AllocBody345_2008, 0, 345, 48)) (Sum.inl 336) (some (AllocBody345_2015, 345, 49))

def AllocBody345_2017 : StackLang.HolProg 64 :=
.seq AllocBody345_1993 AllocBody345_2016

def AllocBody345_2018 : StackLang.HolProg 64 :=
.seq AllocBody345_1992 AllocBody345_2017

def AllocBody345_2019 : StackLang.HolProg 64 :=
.seq AllocBody345_1991 AllocBody345_2018

def AllocBody345_2020 : StackLang.HolProg 64 :=
.seq AllocBody345_1972 AllocBody345_2019

def AllocBody345_2021 : StackLang.HolProg 64 :=
.seq AllocBody345_1969 AllocBody345_2020

def AllocBody345_2022 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_2023 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_2024 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def AllocBody345_2025 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_2026 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody345_2027 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_2028 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody345_2029 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_2030 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody345_2031 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_2032 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody345_2033 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody345_2034 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody345_2035 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def AllocBody345_2036 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody345_2037 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 3

def AllocBody345_2038 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody345_2039 : StackLang.HolProg 64 :=
.seq AllocBody345_2037 AllocBody345_2038

def AllocBody345_2040 : StackLang.HolProg 64 :=
.seq AllocBody345_2036 AllocBody345_2039

def AllocBody345_2041 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_2042 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1024#64)

def AllocBody345_2043 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_2044 : StackLang.HolProg 64 :=
.seq AllocBody345_2042 AllocBody345_2043

def AllocBody345_2045 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody345_2046 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody345_2047 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_2048 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 51

def AllocBody345_2049 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody345_2050 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody345_2051 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody345_2052 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_2053 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody345_2054 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_2055 : StackLang.HolProg 64 :=
.seq AllocBody345_2053 AllocBody345_2054

def AllocBody345_2056 : StackLang.HolProg 64 :=
.seq AllocBody345_2052 AllocBody345_2055

def AllocBody345_2057 : StackLang.HolProg 64 :=
.seq AllocBody345_2051 AllocBody345_2056

def AllocBody345_2058 : StackLang.HolProg 64 :=
.seq AllocBody345_2050 AllocBody345_2057

def AllocBody345_2059 : StackLang.HolProg 64 :=
.seq AllocBody345_2049 AllocBody345_2058

def AllocBody345_2060 : StackLang.HolProg 64 :=
.seq AllocBody345_2048 AllocBody345_2059

def AllocBody345_2061 : StackLang.HolProg 64 :=
.seq AllocBody345_2047 AllocBody345_2060

def AllocBody345_2062 : StackLang.HolProg 64 :=
.seq AllocBody345_2046 AllocBody345_2061

def AllocBody345_2063 : StackLang.HolProg 64 :=
.seq AllocBody345_2045 AllocBody345_2062

def AllocBody345_2064 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody345_2065 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_2066 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_2067 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody345_2068 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_2069 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody345_2070 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody345_2071 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody345_2072 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def AllocBody345_2073 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody345_2074 : StackLang.HolProg 64 :=
.seq AllocBody345_2072 AllocBody345_2073

def AllocBody345_2075 : StackLang.HolProg 64 :=
.seq AllocBody345_2071 AllocBody345_2074

def AllocBody345_2076 : StackLang.HolProg 64 :=
.seq AllocBody345_2070 AllocBody345_2075

def AllocBody345_2077 : StackLang.HolProg 64 :=
.seq AllocBody345_2069 AllocBody345_2076

def AllocBody345_2078 : StackLang.HolProg 64 :=
.seq AllocBody345_2068 AllocBody345_2077

def AllocBody345_2079 : StackLang.HolProg 64 :=
.seq AllocBody345_2067 AllocBody345_2078

def AllocBody345_2080 : StackLang.HolProg 64 :=
.seq AllocBody345_2066 AllocBody345_2079

def AllocBody345_2081 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody345_2082 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def AllocBody345_2083 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody345_2084 : StackLang.HolProg 64 :=
.seq AllocBody345_2082 AllocBody345_2083

def AllocBody345_2085 : StackLang.HolProg 64 :=
.seq AllocBody345_2081 AllocBody345_2084

def AllocBody345_2086 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody345_2087 : StackLang.HolProg 64 :=
.seq AllocBody345_2085 AllocBody345_2086

def AllocBody345_2088 : StackLang.HolProg 64 :=
.call (some (AllocBody345_2080, 0, 345, 50)) (Sum.inl 336) (some (AllocBody345_2087, 345, 51))

def AllocBody345_2089 : StackLang.HolProg 64 :=
.seq AllocBody345_2065 AllocBody345_2088

def AllocBody345_2090 : StackLang.HolProg 64 :=
.seq AllocBody345_2064 AllocBody345_2089

def AllocBody345_2091 : StackLang.HolProg 64 :=
.seq AllocBody345_2063 AllocBody345_2090

def AllocBody345_2092 : StackLang.HolProg 64 :=
.seq AllocBody345_2044 AllocBody345_2091

def AllocBody345_2093 : StackLang.HolProg 64 :=
.seq AllocBody345_2041 AllocBody345_2092

def AllocBody345_2094 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_2095 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_2096 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 320#64)))

def AllocBody345_2097 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_2098 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody345_2099 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_2100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody345_2101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_2102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody345_2103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_2104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody345_2105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody345_2106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody345_2107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def AllocBody345_2108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 4

def AllocBody345_2109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_2110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1025#64)

def AllocBody345_2111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_2112 : StackLang.HolProg 64 :=
.seq AllocBody345_2110 AllocBody345_2111

def AllocBody345_2113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody345_2114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody345_2115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody345_2116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 345 53

def AllocBody345_2117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody345_2118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody345_2119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody345_2120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_2121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody345_2122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_2123 : StackLang.HolProg 64 :=
.seq AllocBody345_2121 AllocBody345_2122

def AllocBody345_2124 : StackLang.HolProg 64 :=
.seq AllocBody345_2120 AllocBody345_2123

def AllocBody345_2125 : StackLang.HolProg 64 :=
.seq AllocBody345_2119 AllocBody345_2124

def AllocBody345_2126 : StackLang.HolProg 64 :=
.seq AllocBody345_2118 AllocBody345_2125

def AllocBody345_2127 : StackLang.HolProg 64 :=
.seq AllocBody345_2117 AllocBody345_2126

def AllocBody345_2128 : StackLang.HolProg 64 :=
.seq AllocBody345_2116 AllocBody345_2127

def AllocBody345_2129 : StackLang.HolProg 64 :=
.seq AllocBody345_2115 AllocBody345_2128

def AllocBody345_2130 : StackLang.HolProg 64 :=
.seq AllocBody345_2114 AllocBody345_2129

def AllocBody345_2131 : StackLang.HolProg 64 :=
.seq AllocBody345_2113 AllocBody345_2130

def AllocBody345_2132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody345_2133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_2134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_2135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody345_2136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody345_2137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody345_2138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody345_2139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody345_2140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody345_2141 : StackLang.HolProg 64 :=
.seq AllocBody345_2139 AllocBody345_2140

def AllocBody345_2142 : StackLang.HolProg 64 :=
.seq AllocBody345_2138 AllocBody345_2141

def AllocBody345_2143 : StackLang.HolProg 64 :=
.seq AllocBody345_2137 AllocBody345_2142

def AllocBody345_2144 : StackLang.HolProg 64 :=
.seq AllocBody345_2136 AllocBody345_2143

def AllocBody345_2145 : StackLang.HolProg 64 :=
.seq AllocBody345_2135 AllocBody345_2144

def AllocBody345_2146 : StackLang.HolProg 64 :=
.seq AllocBody345_2134 AllocBody345_2145

def AllocBody345_2147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody345_2148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody345_2149 : StackLang.HolProg 64 :=
.seq AllocBody345_2147 AllocBody345_2148

def AllocBody345_2150 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody345_2151 : StackLang.HolProg 64 :=
.seq AllocBody345_2149 AllocBody345_2150

def AllocBody345_2152 : StackLang.HolProg 64 :=
.call (some (AllocBody345_2146, 0, 345, 52)) (Sum.inl 336) (some (AllocBody345_2151, 345, 53))

def AllocBody345_2153 : StackLang.HolProg 64 :=
.seq AllocBody345_2133 AllocBody345_2152

def AllocBody345_2154 : StackLang.HolProg 64 :=
.seq AllocBody345_2132 AllocBody345_2153

def AllocBody345_2155 : StackLang.HolProg 64 :=
.seq AllocBody345_2131 AllocBody345_2154

def AllocBody345_2156 : StackLang.HolProg 64 :=
.seq AllocBody345_2112 AllocBody345_2155

def AllocBody345_2157 : StackLang.HolProg 64 :=
.seq AllocBody345_2109 AllocBody345_2156

def AllocBody345_2158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody345_2159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_2160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 352#64)))

def AllocBody345_2161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_2162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody345_2163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_2164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody345_2165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_2166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody345_2167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody345_2168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody345_2169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody345_2170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody345_2171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def AllocBody345_2172 : StackLang.HolProg 64 :=
.seq AllocBody345_2170 AllocBody345_2171

def AllocBody345_2173 : StackLang.HolProg 64 :=
.seq AllocBody345_2169 AllocBody345_2172

def AllocBody345_2174 : StackLang.HolProg 64 :=
.seq AllocBody345_2168 AllocBody345_2173

def AllocBody345_2175 : StackLang.HolProg 64 :=
.seq AllocBody345_2167 AllocBody345_2174

def AllocBody345_2176 : StackLang.HolProg 64 :=
.seq AllocBody345_2166 AllocBody345_2175

def AllocBody345_2177 : StackLang.HolProg 64 :=
.seq AllocBody345_2165 AllocBody345_2176

def AllocBody345_2178 : StackLang.HolProg 64 :=
.seq AllocBody345_2164 AllocBody345_2177

def AllocBody345_2179 : StackLang.HolProg 64 :=
.seq AllocBody345_2163 AllocBody345_2178

def AllocBody345_2180 : StackLang.HolProg 64 :=
.seq AllocBody345_2162 AllocBody345_2179

def AllocBody345_2181 : StackLang.HolProg 64 :=
.seq AllocBody345_2161 AllocBody345_2180

def AllocBody345_2182 : StackLang.HolProg 64 :=
.seq AllocBody345_2160 AllocBody345_2181

def AllocBody345_2183 : StackLang.HolProg 64 :=
.seq AllocBody345_2159 AllocBody345_2182

def AllocBody345_2184 : StackLang.HolProg 64 :=
.seq AllocBody345_2158 AllocBody345_2183

def AllocBody345_2185 : StackLang.HolProg 64 :=
.seq AllocBody345_2157 AllocBody345_2184

def AllocBody345_2186 : StackLang.HolProg 64 :=
.seq AllocBody345_2108 AllocBody345_2185

def AllocBody345_2187 : StackLang.HolProg 64 :=
.seq AllocBody345_2107 AllocBody345_2186

def AllocBody345_2188 : StackLang.HolProg 64 :=
.seq AllocBody345_2106 AllocBody345_2187

def AllocBody345_2189 : StackLang.HolProg 64 :=
.seq AllocBody345_2105 AllocBody345_2188

def AllocBody345_2190 : StackLang.HolProg 64 :=
.seq AllocBody345_2104 AllocBody345_2189

def AllocBody345_2191 : StackLang.HolProg 64 :=
.seq AllocBody345_2103 AllocBody345_2190

def AllocBody345_2192 : StackLang.HolProg 64 :=
.seq AllocBody345_2102 AllocBody345_2191

def AllocBody345_2193 : StackLang.HolProg 64 :=
.seq AllocBody345_2101 AllocBody345_2192

def AllocBody345_2194 : StackLang.HolProg 64 :=
.seq AllocBody345_2100 AllocBody345_2193

def AllocBody345_2195 : StackLang.HolProg 64 :=
.seq AllocBody345_2099 AllocBody345_2194

def AllocBody345_2196 : StackLang.HolProg 64 :=
.seq AllocBody345_2098 AllocBody345_2195

def AllocBody345_2197 : StackLang.HolProg 64 :=
.seq AllocBody345_2097 AllocBody345_2196

def AllocBody345_2198 : StackLang.HolProg 64 :=
.seq AllocBody345_2096 AllocBody345_2197

def AllocBody345_2199 : StackLang.HolProg 64 :=
.seq AllocBody345_2095 AllocBody345_2198

def AllocBody345_2200 : StackLang.HolProg 64 :=
.seq AllocBody345_2094 AllocBody345_2199

def AllocBody345_2201 : StackLang.HolProg 64 :=
.seq AllocBody345_2093 AllocBody345_2200

def AllocBody345_2202 : StackLang.HolProg 64 :=
.seq AllocBody345_2040 AllocBody345_2201

def AllocBody345_2203 : StackLang.HolProg 64 :=
.seq AllocBody345_2035 AllocBody345_2202

def AllocBody345_2204 : StackLang.HolProg 64 :=
.seq AllocBody345_2034 AllocBody345_2203

def AllocBody345_2205 : StackLang.HolProg 64 :=
.seq AllocBody345_2033 AllocBody345_2204

def AllocBody345_2206 : StackLang.HolProg 64 :=
.seq AllocBody345_2032 AllocBody345_2205

def AllocBody345_2207 : StackLang.HolProg 64 :=
.seq AllocBody345_2031 AllocBody345_2206

def AllocBody345_2208 : StackLang.HolProg 64 :=
.seq AllocBody345_2030 AllocBody345_2207

def AllocBody345_2209 : StackLang.HolProg 64 :=
.seq AllocBody345_2029 AllocBody345_2208

def AllocBody345_2210 : StackLang.HolProg 64 :=
.seq AllocBody345_2028 AllocBody345_2209

def AllocBody345_2211 : StackLang.HolProg 64 :=
.seq AllocBody345_2027 AllocBody345_2210

def AllocBody345_2212 : StackLang.HolProg 64 :=
.seq AllocBody345_2026 AllocBody345_2211

def AllocBody345_2213 : StackLang.HolProg 64 :=
.seq AllocBody345_2025 AllocBody345_2212

def AllocBody345_2214 : StackLang.HolProg 64 :=
.seq AllocBody345_2024 AllocBody345_2213

def AllocBody345_2215 : StackLang.HolProg 64 :=
.seq AllocBody345_2023 AllocBody345_2214

def AllocBody345_2216 : StackLang.HolProg 64 :=
.seq AllocBody345_2022 AllocBody345_2215

def AllocBody345_2217 : StackLang.HolProg 64 :=
.seq AllocBody345_2021 AllocBody345_2216

def AllocBody345_2218 : StackLang.HolProg 64 :=
.seq AllocBody345_1968 AllocBody345_2217

def AllocBody345_2219 : StackLang.HolProg 64 :=
.seq AllocBody345_1965 AllocBody345_2218

def AllocBody345_2220 : StackLang.HolProg 64 :=
.seq AllocBody345_1964 AllocBody345_2219

def AllocBody345_2221 : StackLang.HolProg 64 :=
.seq AllocBody345_1963 AllocBody345_2220

def AllocBody345_2222 : StackLang.HolProg 64 :=
.seq AllocBody345_1962 AllocBody345_2221

def AllocBody345_2223 : StackLang.HolProg 64 :=
.seq AllocBody345_1825 AllocBody345_2222

def AllocBody345_2224 : StackLang.HolProg 64 :=
.seq AllocBody345_1824 AllocBody345_2223

def AllocBody345_2225 : StackLang.HolProg 64 :=
.seq AllocBody345_1823 AllocBody345_2224

def AllocBody345_2226 : StackLang.HolProg 64 :=
.seq AllocBody345_1822 AllocBody345_2225

def AllocBody345_2227 : StackLang.HolProg 64 :=
.seq AllocBody345_1591 AllocBody345_2226

def AllocBody345_2228 : StackLang.HolProg 64 :=
.seq AllocBody345_1590 AllocBody345_2227

def AllocBody345_2229 : StackLang.HolProg 64 :=
.seq AllocBody345_1589 AllocBody345_2228

def AllocBody345_2230 : StackLang.HolProg 64 :=
.seq AllocBody345_1588 AllocBody345_2229

def AllocBody345_2231 : StackLang.HolProg 64 :=
.seq AllocBody345_1443 AllocBody345_2230

def AllocBody345_2232 : StackLang.HolProg 64 :=
.seq AllocBody345_1442 AllocBody345_2231

def AllocBody345_2233 : StackLang.HolProg 64 :=
.seq AllocBody345_1441 AllocBody345_2232

def AllocBody345_2234 : StackLang.HolProg 64 :=
.seq AllocBody345_1440 AllocBody345_2233

def AllocBody345_2235 : StackLang.HolProg 64 :=
.seq AllocBody345_1439 AllocBody345_2234

def AllocBody345_2236 : StackLang.HolProg 64 :=
.seq AllocBody345_1438 AllocBody345_2235

def AllocBody345_2237 : StackLang.HolProg 64 :=
.seq AllocBody345_1437 AllocBody345_2236

def AllocBody345_2238 : StackLang.HolProg 64 :=
.seq AllocBody345_1436 AllocBody345_2237

def AllocBody345_2239 : StackLang.HolProg 64 :=
.seq AllocBody345_1435 AllocBody345_2238

def AllocBody345_2240 : StackLang.HolProg 64 :=
.seq AllocBody345_1434 AllocBody345_2239

def AllocBody345_2241 : StackLang.HolProg 64 :=
.seq AllocBody345_1433 AllocBody345_2240

def AllocBody345_2242 : StackLang.HolProg 64 :=
.seq AllocBody345_1432 AllocBody345_2241

def AllocBody345_2243 : StackLang.HolProg 64 :=
.seq AllocBody345_1431 AllocBody345_2242

def AllocBody345_2244 : StackLang.HolProg 64 :=
.seq AllocBody345_1430 AllocBody345_2243

def AllocBody345_2245 : StackLang.HolProg 64 :=
.seq AllocBody345_1373 AllocBody345_2244

def AllocBody345_2246 : StackLang.HolProg 64 :=
.seq AllocBody345_1366 AllocBody345_2245

def AllocBody345_2247 : StackLang.HolProg 64 :=
.seq AllocBody345_1365 AllocBody345_2246

def AllocBody345_2248 : StackLang.HolProg 64 :=
.seq AllocBody345_1364 AllocBody345_2247

def AllocBody345_2249 : StackLang.HolProg 64 :=
.seq AllocBody345_1363 AllocBody345_2248

def AllocBody345_2250 : StackLang.HolProg 64 :=
.seq AllocBody345_1362 AllocBody345_2249

def AllocBody345_2251 : StackLang.HolProg 64 :=
.seq AllocBody345_1361 AllocBody345_2250

def AllocBody345_2252 : StackLang.HolProg 64 :=
.seq AllocBody345_1360 AllocBody345_2251

def AllocBody345_2253 : StackLang.HolProg 64 :=
.seq AllocBody345_1359 AllocBody345_2252

def AllocBody345_2254 : StackLang.HolProg 64 :=
.seq AllocBody345_1358 AllocBody345_2253

def AllocBody345_2255 : StackLang.HolProg 64 :=
.seq AllocBody345_1357 AllocBody345_2254

def AllocBody345_2256 : StackLang.HolProg 64 :=
.seq AllocBody345_1356 AllocBody345_2255

def AllocBody345_2257 : StackLang.HolProg 64 :=
.seq AllocBody345_1355 AllocBody345_2256

def AllocBody345_2258 : StackLang.HolProg 64 :=
.seq AllocBody345_1354 AllocBody345_2257

def AllocBody345_2259 : StackLang.HolProg 64 :=
.seq AllocBody345_1353 AllocBody345_2258

def AllocBody345_2260 : StackLang.HolProg 64 :=
.seq AllocBody345_1300 AllocBody345_2259

def AllocBody345_2261 : StackLang.HolProg 64 :=
.seq AllocBody345_1295 AllocBody345_2260

def AllocBody345_2262 : StackLang.HolProg 64 :=
.seq AllocBody345_1294 AllocBody345_2261

def AllocBody345_2263 : StackLang.HolProg 64 :=
.seq AllocBody345_1293 AllocBody345_2262

def AllocBody345_2264 : StackLang.HolProg 64 :=
.seq AllocBody345_1292 AllocBody345_2263

def AllocBody345_2265 : StackLang.HolProg 64 :=
.seq AllocBody345_1291 AllocBody345_2264

def AllocBody345_2266 : StackLang.HolProg 64 :=
.seq AllocBody345_1290 AllocBody345_2265

def AllocBody345_2267 : StackLang.HolProg 64 :=
.seq AllocBody345_1289 AllocBody345_2266

def AllocBody345_2268 : StackLang.HolProg 64 :=
.seq AllocBody345_1288 AllocBody345_2267

def AllocBody345_2269 : StackLang.HolProg 64 :=
.seq AllocBody345_1287 AllocBody345_2268

def AllocBody345_2270 : StackLang.HolProg 64 :=
.seq AllocBody345_1286 AllocBody345_2269

def AllocBody345_2271 : StackLang.HolProg 64 :=
.seq AllocBody345_1145 AllocBody345_2270

def AllocBody345_2272 : StackLang.HolProg 64 :=
.seq AllocBody345_1144 AllocBody345_2271

def AllocBody345_2273 : StackLang.HolProg 64 :=
.seq AllocBody345_1143 AllocBody345_2272

def AllocBody345_2274 : StackLang.HolProg 64 :=
.seq AllocBody345_1142 AllocBody345_2273

def AllocBody345_2275 : StackLang.HolProg 64 :=
.seq AllocBody345_1141 AllocBody345_2274

def AllocBody345_2276 : StackLang.HolProg 64 :=
.seq AllocBody345_1140 AllocBody345_2275

def AllocBody345_2277 : StackLang.HolProg 64 :=
.seq AllocBody345_1139 AllocBody345_2276

def AllocBody345_2278 : StackLang.HolProg 64 :=
.seq AllocBody345_1138 AllocBody345_2277

def AllocBody345_2279 : StackLang.HolProg 64 :=
.seq AllocBody345_1137 AllocBody345_2278

def AllocBody345_2280 : StackLang.HolProg 64 :=
.seq AllocBody345_1136 AllocBody345_2279

def AllocBody345_2281 : StackLang.HolProg 64 :=
.seq AllocBody345_1079 AllocBody345_2280

def AllocBody345_2282 : StackLang.HolProg 64 :=
.seq AllocBody345_1076 AllocBody345_2281

def AllocBody345_2283 : StackLang.HolProg 64 :=
.seq AllocBody345_1075 AllocBody345_2282

def AllocBody345_2284 : StackLang.HolProg 64 :=
.seq AllocBody345_1074 AllocBody345_2283

def AllocBody345_2285 : StackLang.HolProg 64 :=
.seq AllocBody345_1073 AllocBody345_2284

def AllocBody345_2286 : StackLang.HolProg 64 :=
.seq AllocBody345_1072 AllocBody345_2285

def AllocBody345_2287 : StackLang.HolProg 64 :=
.seq AllocBody345_793 AllocBody345_2286

def AllocBody345_2288 : StackLang.HolProg 64 :=
.seq AllocBody345_792 AllocBody345_2287

def AllocBody345_2289 : StackLang.HolProg 64 :=
.seq AllocBody345_791 AllocBody345_2288

def AllocBody345_2290 : StackLang.HolProg 64 :=
.seq AllocBody345_790 AllocBody345_2289

def AllocBody345_2291 : StackLang.HolProg 64 :=
.seq AllocBody345_789 AllocBody345_2290

def AllocBody345_2292 : StackLang.HolProg 64 :=
.seq AllocBody345_788 AllocBody345_2291

def AllocBody345_2293 : StackLang.HolProg 64 :=
.seq AllocBody345_787 AllocBody345_2292

def AllocBody345_2294 : StackLang.HolProg 64 :=
.seq AllocBody345_786 AllocBody345_2293

def AllocBody345_2295 : StackLang.HolProg 64 :=
.seq AllocBody345_785 AllocBody345_2294

def AllocBody345_2296 : StackLang.HolProg 64 :=
.seq AllocBody345_784 AllocBody345_2295

def AllocBody345_2297 : StackLang.HolProg 64 :=
.seq AllocBody345_783 AllocBody345_2296

def AllocBody345_2298 : StackLang.HolProg 64 :=
.seq AllocBody345_782 AllocBody345_2297

def AllocBody345_2299 : StackLang.HolProg 64 :=
.seq AllocBody345_781 AllocBody345_2298

def AllocBody345_2300 : StackLang.HolProg 64 :=
.seq AllocBody345_780 AllocBody345_2299

def AllocBody345_2301 : StackLang.HolProg 64 :=
.seq AllocBody345_779 AllocBody345_2300

def AllocBody345_2302 : StackLang.HolProg 64 :=
.seq AllocBody345_778 AllocBody345_2301

def AllocBody345_2303 : StackLang.HolProg 64 :=
.seq AllocBody345_777 AllocBody345_2302

def AllocBody345_2304 : StackLang.HolProg 64 :=
.seq AllocBody345_620 AllocBody345_2303

def AllocBody345_2305 : StackLang.HolProg 64 :=
.seq AllocBody345_619 AllocBody345_2304

def AllocBody345_2306 : StackLang.HolProg 64 :=
.seq AllocBody345_618 AllocBody345_2305

def AllocBody345_2307 : StackLang.HolProg 64 :=
.seq AllocBody345_617 AllocBody345_2306

def AllocBody345_2308 : StackLang.HolProg 64 :=
.seq AllocBody345_528 AllocBody345_2307

def AllocBody345_2309 : StackLang.HolProg 64 :=
.seq AllocBody345_527 AllocBody345_2308

def AllocBody345_2310 : StackLang.HolProg 64 :=
.seq AllocBody345_526 AllocBody345_2309

def AllocBody345_2311 : StackLang.HolProg 64 :=
.seq AllocBody345_525 AllocBody345_2310

def AllocBody345_2312 : StackLang.HolProg 64 :=
.seq AllocBody345_524 AllocBody345_2311

def AllocBody345_2313 : StackLang.HolProg 64 :=
.seq AllocBody345_523 AllocBody345_2312

def AllocBody345_2314 : StackLang.HolProg 64 :=
.seq AllocBody345_508 AllocBody345_2313

def AllocBody345_2315 : StackLang.HolProg 64 :=
.seq AllocBody345_507 AllocBody345_2314

def AllocBody345_2316 : StackLang.HolProg 64 :=
.seq AllocBody345_506 AllocBody345_2315

def AllocBody345_2317 : StackLang.HolProg 64 :=
.seq AllocBody345_457 AllocBody345_2316

def AllocBody345_2318 : StackLang.HolProg 64 :=
.seq AllocBody345_450 AllocBody345_2317

def AllocBody345_2319 : StackLang.HolProg 64 :=
.seq AllocBody345_449 AllocBody345_2318

def AllocBody345_2320 : StackLang.HolProg 64 :=
.seq AllocBody345_448 AllocBody345_2319

def AllocBody345_2321 : StackLang.HolProg 64 :=
.seq AllocBody345_433 AllocBody345_2320

def AllocBody345_2322 : StackLang.HolProg 64 :=
.seq AllocBody345_432 AllocBody345_2321

def AllocBody345_2323 : StackLang.HolProg 64 :=
.seq AllocBody345_431 AllocBody345_2322

def AllocBody345_2324 : StackLang.HolProg 64 :=
.seq AllocBody345_430 AllocBody345_2323

def AllocBody345_2325 : StackLang.HolProg 64 :=
.seq AllocBody345_429 AllocBody345_2324

def AllocBody345_2326 : StackLang.HolProg 64 :=
.seq AllocBody345_428 AllocBody345_2325

def AllocBody345_2327 : StackLang.HolProg 64 :=
.seq AllocBody345_171 AllocBody345_2326

def AllocBody345_2328 : StackLang.HolProg 64 :=
.seq AllocBody345_170 AllocBody345_2327

def AllocBody345_2329 : StackLang.HolProg 64 :=
.seq AllocBody345_169 AllocBody345_2328

def AllocBody345_2330 : StackLang.HolProg 64 :=
.seq AllocBody345_168 AllocBody345_2329

def AllocBody345_2331 : StackLang.HolProg 64 :=
.seq AllocBody345_157 AllocBody345_2330

def AllocBody345_2332 : StackLang.HolProg 64 :=
.seq AllocBody345_156 AllocBody345_2331

def AllocBody345_2333 : StackLang.HolProg 64 :=
.seq AllocBody345_155 AllocBody345_2332

def AllocBody345_2334 : StackLang.HolProg 64 :=
.seq AllocBody345_154 AllocBody345_2333

def AllocBody345_2335 : StackLang.HolProg 64 :=
.seq AllocBody345_143 AllocBody345_2334

def AllocBody345_2336 : StackLang.HolProg 64 :=
.seq AllocBody345_142 AllocBody345_2335

def AllocBody345_2337 : StackLang.HolProg 64 :=
.seq AllocBody345_141 AllocBody345_2336

def AllocBody345_2338 : StackLang.HolProg 64 :=
.seq AllocBody345_140 AllocBody345_2337

def AllocBody345_2339 : StackLang.HolProg 64 :=
.seq AllocBody345_139 AllocBody345_2338

def AllocBody345_2340 : StackLang.HolProg 64 :=
.seq AllocBody345_138 AllocBody345_2339

def AllocBody345_2341 : StackLang.HolProg 64 :=
.seq AllocBody345_137 AllocBody345_2340

def AllocBody345_2342 : StackLang.HolProg 64 :=
.seq AllocBody345_136 AllocBody345_2341

def AllocBody345_2343 : StackLang.HolProg 64 :=
.seq AllocBody345_135 AllocBody345_2342

def AllocBody345_2344 : StackLang.HolProg 64 :=
.seq AllocBody345_134 AllocBody345_2343

def AllocBody345_2345 : StackLang.HolProg 64 :=
.seq AllocBody345_133 AllocBody345_2344

def AllocBody345_2346 : StackLang.HolProg 64 :=
.seq AllocBody345_132 AllocBody345_2345

def AllocBody345_2347 : StackLang.HolProg 64 :=
.seq AllocBody345_131 AllocBody345_2346

def AllocBody345_2348 : StackLang.HolProg 64 :=
.seq AllocBody345_130 AllocBody345_2347

def AllocBody345_2349 : StackLang.HolProg 64 :=
.seq AllocBody345_75 AllocBody345_2348

def AllocBody345_2350 : StackLang.HolProg 64 :=
.seq AllocBody345_74 AllocBody345_2349

def AllocBody345_2351 : StackLang.HolProg 64 :=
.seq AllocBody345_73 AllocBody345_2350

def AllocBody345_2352 : StackLang.HolProg 64 :=
.seq AllocBody345_72 AllocBody345_2351

def AllocBody345_2353 : StackLang.HolProg 64 :=
.seq AllocBody345_71 AllocBody345_2352

def AllocBody345_2354 : StackLang.HolProg 64 :=
.seq AllocBody345_28 AllocBody345_2353

def AllocBody345_2355 : StackLang.HolProg 64 :=
.seq AllocBody345_23 AllocBody345_2354

def AllocBody345_2356 : StackLang.HolProg 64 :=
.seq AllocBody345_22 AllocBody345_2355

def AllocBody345_2357 : StackLang.HolProg 64 :=
.seq AllocBody345_21 AllocBody345_2356

def AllocBody345_2358 : StackLang.HolProg 64 :=
.seq AllocBody345_20 AllocBody345_2357

def AllocBody345_2359 : StackLang.HolProg 64 :=
.seq AllocBody345_19 AllocBody345_2358

def AllocBody345_2360 : StackLang.HolProg 64 :=
.seq AllocBody345_18 AllocBody345_2359

def AllocBody345_2361 : StackLang.HolProg 64 :=
.seq AllocBody345_17 AllocBody345_2360

def AllocBody345_2362 : StackLang.HolProg 64 :=
.seq AllocBody345_2 AllocBody345_2361

def AllocBody345_2363 : StackLang.HolProg 64 :=
.seq AllocBody345_1 AllocBody345_2362

def AllocBody345_2364 : StackLang.HolProg 64 :=
.seq AllocBody345_0 AllocBody345_2363

def Alloc345 : Nat × StackLang.HolProg 64 := (345, AllocBody345_2364)
theorem Alloc345_eq : StackAlloc.progComp (345, raw345) = Alloc345 := by
  kernel_rfl
#print axioms Alloc345_eq
end InitECandidate.Proofs.BackendStages
