import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw377
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody377_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody377_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody377_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody377_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody377_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def AllocBody377_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody377_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody377_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody377_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody377_11 : StackLang.HolProg 64 :=
.seq AllocBody377_9 AllocBody377_10

def AllocBody377_12 : StackLang.HolProg 64 :=
.seq AllocBody377_8 AllocBody377_11

def AllocBody377_13 : StackLang.HolProg 64 :=
.seq AllocBody377_7 AllocBody377_12

def AllocBody377_14 : StackLang.HolProg 64 :=
.seq AllocBody377_6 AllocBody377_13

def AllocBody377_15 : StackLang.HolProg 64 :=
.seq AllocBody377_5 AllocBody377_14

def AllocBody377_16 : StackLang.HolProg 64 :=
.seq AllocBody377_4 AllocBody377_15

def AllocBody377_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody377_18 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody377_16 AllocBody377_17

def AllocBody377_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody377_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody377_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 288#64))

def AllocBody377_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 296#64))

def AllocBody377_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 304#64))

def AllocBody377_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 312#64))

def AllocBody377_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody377_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def AllocBody377_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def AllocBody377_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody377_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody377_34 : StackLang.HolProg 64 :=
.seq AllocBody377_32 AllocBody377_33

def AllocBody377_35 : StackLang.HolProg 64 :=
.seq AllocBody377_31 AllocBody377_34

def AllocBody377_36 : StackLang.HolProg 64 :=
.seq AllocBody377_30 AllocBody377_35

def AllocBody377_37 : StackLang.HolProg 64 :=
.seq AllocBody377_29 AllocBody377_36

def AllocBody377_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1089#64)

def AllocBody377_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody377_41 : StackLang.HolProg 64 :=
.seq AllocBody377_39 AllocBody377_40

def AllocBody377_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody377_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody377_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody377_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 377 3

def AllocBody377_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody377_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody377_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody377_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody377_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody377_52 : StackLang.HolProg 64 :=
.seq AllocBody377_50 AllocBody377_51

def AllocBody377_53 : StackLang.HolProg 64 :=
.seq AllocBody377_49 AllocBody377_52

def AllocBody377_54 : StackLang.HolProg 64 :=
.seq AllocBody377_48 AllocBody377_53

def AllocBody377_55 : StackLang.HolProg 64 :=
.seq AllocBody377_47 AllocBody377_54

def AllocBody377_56 : StackLang.HolProg 64 :=
.seq AllocBody377_46 AllocBody377_55

def AllocBody377_57 : StackLang.HolProg 64 :=
.seq AllocBody377_45 AllocBody377_56

def AllocBody377_58 : StackLang.HolProg 64 :=
.seq AllocBody377_44 AllocBody377_57

def AllocBody377_59 : StackLang.HolProg 64 :=
.seq AllocBody377_43 AllocBody377_58

def AllocBody377_60 : StackLang.HolProg 64 :=
.seq AllocBody377_42 AllocBody377_59

def AllocBody377_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody377_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody377_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody377_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody377_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody377_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 5

def AllocBody377_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody377_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def AllocBody377_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody377_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody377_73 : StackLang.HolProg 64 :=
.seq AllocBody377_71 AllocBody377_72

def AllocBody377_74 : StackLang.HolProg 64 :=
.seq AllocBody377_70 AllocBody377_73

def AllocBody377_75 : StackLang.HolProg 64 :=
.seq AllocBody377_69 AllocBody377_74

def AllocBody377_76 : StackLang.HolProg 64 :=
.seq AllocBody377_68 AllocBody377_75

def AllocBody377_77 : StackLang.HolProg 64 :=
.seq AllocBody377_67 AllocBody377_76

def AllocBody377_78 : StackLang.HolProg 64 :=
.seq AllocBody377_66 AllocBody377_77

def AllocBody377_79 : StackLang.HolProg 64 :=
.seq AllocBody377_65 AllocBody377_78

def AllocBody377_80 : StackLang.HolProg 64 :=
.seq AllocBody377_64 AllocBody377_79

def AllocBody377_81 : StackLang.HolProg 64 :=
.seq AllocBody377_63 AllocBody377_80

def AllocBody377_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 5

def AllocBody377_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody377_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def AllocBody377_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody377_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody377_87 : StackLang.HolProg 64 :=
.seq AllocBody377_85 AllocBody377_86

def AllocBody377_88 : StackLang.HolProg 64 :=
.seq AllocBody377_84 AllocBody377_87

def AllocBody377_89 : StackLang.HolProg 64 :=
.seq AllocBody377_83 AllocBody377_88

def AllocBody377_90 : StackLang.HolProg 64 :=
.seq AllocBody377_82 AllocBody377_89

def AllocBody377_91 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody377_92 : StackLang.HolProg 64 :=
.seq AllocBody377_90 AllocBody377_91

def AllocBody377_93 : StackLang.HolProg 64 :=
.call (some (AllocBody377_81, 0, 377, 2)) (Sum.inl 101) (some (AllocBody377_92, 377, 3))

def AllocBody377_94 : StackLang.HolProg 64 :=
.seq AllocBody377_62 AllocBody377_93

def AllocBody377_95 : StackLang.HolProg 64 :=
.seq AllocBody377_61 AllocBody377_94

def AllocBody377_96 : StackLang.HolProg 64 :=
.seq AllocBody377_60 AllocBody377_95

def AllocBody377_97 : StackLang.HolProg 64 :=
.seq AllocBody377_41 AllocBody377_96

def AllocBody377_98 : StackLang.HolProg 64 :=
.seq AllocBody377_38 AllocBody377_97

def AllocBody377_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody377_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody377_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody377_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 27#64)

def AllocBody377_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody377_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_107 : StackLang.HolProg 64 :=
.seq AllocBody377_105 AllocBody377_106

def AllocBody377_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody377_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_110 : StackLang.HolProg 64 :=
.seq AllocBody377_108 AllocBody377_109

def AllocBody377_111 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody377_107 AllocBody377_110

def AllocBody377_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody377_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 28#64)

def AllocBody377_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def AllocBody377_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_117 : StackLang.HolProg 64 :=
.seq AllocBody377_115 AllocBody377_116

def AllocBody377_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody377_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_120 : StackLang.HolProg 64 :=
.seq AllocBody377_118 AllocBody377_119

def AllocBody377_121 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody377_117 AllocBody377_120

def AllocBody377_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody377_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody377_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody377_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody377_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody377_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody377_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody377_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def AllocBody377_132 : StackLang.HolProg 64 :=
.seq AllocBody377_130 AllocBody377_131

def AllocBody377_133 : StackLang.HolProg 64 :=
.seq AllocBody377_129 AllocBody377_132

def AllocBody377_134 : StackLang.HolProg 64 :=
.seq AllocBody377_128 AllocBody377_133

def AllocBody377_135 : StackLang.HolProg 64 :=
.seq AllocBody377_127 AllocBody377_134

def AllocBody377_136 : StackLang.HolProg 64 :=
.seq AllocBody377_126 AllocBody377_135

def AllocBody377_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody377_136 AllocBody377_137

def AllocBody377_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody377_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody377_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 35#64)

def AllocBody377_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody377_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 44#64)

def AllocBody377_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody377_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def AllocBody377_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_149 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody377_150 : StackLang.HolProg 64 :=
.seq AllocBody377_148 AllocBody377_149

def AllocBody377_151 : StackLang.HolProg 64 :=
.seq AllocBody377_147 AllocBody377_150

def AllocBody377_152 : StackLang.HolProg 64 :=
.seq AllocBody377_146 AllocBody377_151

def AllocBody377_153 : StackLang.HolProg 64 :=
.seq AllocBody377_145 AllocBody377_152

def AllocBody377_154 : StackLang.HolProg 64 :=
.seq AllocBody377_144 AllocBody377_153

def AllocBody377_155 : StackLang.HolProg 64 :=
.seq AllocBody377_143 AllocBody377_154

def AllocBody377_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_157 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody377_155 AllocBody377_156

def AllocBody377_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody377_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody377_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_161 : StackLang.HolProg 64 :=
.seq AllocBody377_159 AllocBody377_160

def AllocBody377_162 : StackLang.HolProg 64 :=
.seq AllocBody377_158 AllocBody377_161

def AllocBody377_163 : StackLang.HolProg 64 :=
.seq AllocBody377_157 AllocBody377_162

def AllocBody377_164 : StackLang.HolProg 64 :=
.seq AllocBody377_142 AllocBody377_163

def AllocBody377_165 : StackLang.HolProg 64 :=
.seq AllocBody377_141 AllocBody377_164

def AllocBody377_166 : StackLang.HolProg 64 :=
.seq AllocBody377_140 AllocBody377_165

def AllocBody377_167 : StackLang.HolProg 64 :=
.seq AllocBody377_139 AllocBody377_166

def AllocBody377_168 : StackLang.HolProg 64 :=
.seq AllocBody377_138 AllocBody377_167

def AllocBody377_169 : StackLang.HolProg 64 :=
.seq AllocBody377_125 AllocBody377_168

def AllocBody377_170 : StackLang.HolProg 64 :=
.seq AllocBody377_124 AllocBody377_169

def AllocBody377_171 : StackLang.HolProg 64 :=
.seq AllocBody377_123 AllocBody377_170

def AllocBody377_172 : StackLang.HolProg 64 :=
.seq AllocBody377_122 AllocBody377_171

def AllocBody377_173 : StackLang.HolProg 64 :=
.seq AllocBody377_121 AllocBody377_172

def AllocBody377_174 : StackLang.HolProg 64 :=
.seq AllocBody377_114 AllocBody377_173

def AllocBody377_175 : StackLang.HolProg 64 :=
.seq AllocBody377_113 AllocBody377_174

def AllocBody377_176 : StackLang.HolProg 64 :=
.seq AllocBody377_112 AllocBody377_175

def AllocBody377_177 : StackLang.HolProg 64 :=
.seq AllocBody377_111 AllocBody377_176

def AllocBody377_178 : StackLang.HolProg 64 :=
.seq AllocBody377_104 AllocBody377_177

def AllocBody377_179 : StackLang.HolProg 64 :=
.seq AllocBody377_103 AllocBody377_178

def AllocBody377_180 : StackLang.HolProg 64 :=
.seq AllocBody377_102 AllocBody377_179

def AllocBody377_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody377_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_183 : StackLang.HolProg 64 :=
.seq AllocBody377_181 AllocBody377_182

def AllocBody377_184 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody377_180 AllocBody377_183

def AllocBody377_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody377_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody377_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody377_188 : StackLang.HolProg 64 :=
.seq AllocBody377_186 AllocBody377_187

def AllocBody377_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def AllocBody377_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def AllocBody377_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def AllocBody377_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 35#64)

def AllocBody377_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 5

def AllocBody377_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1090#64)

def AllocBody377_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody377_197 : StackLang.HolProg 64 :=
.seq AllocBody377_195 AllocBody377_196

def AllocBody377_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody377_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody377_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody377_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 377 5

def AllocBody377_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody377_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody377_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody377_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody377_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody377_208 : StackLang.HolProg 64 :=
.seq AllocBody377_206 AllocBody377_207

def AllocBody377_209 : StackLang.HolProg 64 :=
.seq AllocBody377_205 AllocBody377_208

def AllocBody377_210 : StackLang.HolProg 64 :=
.seq AllocBody377_204 AllocBody377_209

def AllocBody377_211 : StackLang.HolProg 64 :=
.seq AllocBody377_203 AllocBody377_210

def AllocBody377_212 : StackLang.HolProg 64 :=
.seq AllocBody377_202 AllocBody377_211

def AllocBody377_213 : StackLang.HolProg 64 :=
.seq AllocBody377_201 AllocBody377_212

def AllocBody377_214 : StackLang.HolProg 64 :=
.seq AllocBody377_200 AllocBody377_213

def AllocBody377_215 : StackLang.HolProg 64 :=
.seq AllocBody377_199 AllocBody377_214

def AllocBody377_216 : StackLang.HolProg 64 :=
.seq AllocBody377_198 AllocBody377_215

def AllocBody377_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody377_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody377_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody377_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody377_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody377_224 : StackLang.HolProg 64 :=
.seq AllocBody377_222 AllocBody377_223

def AllocBody377_225 : StackLang.HolProg 64 :=
.seq AllocBody377_221 AllocBody377_224

def AllocBody377_226 : StackLang.HolProg 64 :=
.seq AllocBody377_220 AllocBody377_225

def AllocBody377_227 : StackLang.HolProg 64 :=
.seq AllocBody377_219 AllocBody377_226

def AllocBody377_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_229 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody377_230 : StackLang.HolProg 64 :=
.seq AllocBody377_228 AllocBody377_229

def AllocBody377_231 : StackLang.HolProg 64 :=
.call (some (AllocBody377_227, 0, 377, 4)) (Sum.inl 117) (some (AllocBody377_230, 377, 5))

def AllocBody377_232 : StackLang.HolProg 64 :=
.seq AllocBody377_218 AllocBody377_231

def AllocBody377_233 : StackLang.HolProg 64 :=
.seq AllocBody377_217 AllocBody377_232

def AllocBody377_234 : StackLang.HolProg 64 :=
.seq AllocBody377_216 AllocBody377_233

def AllocBody377_235 : StackLang.HolProg 64 :=
.seq AllocBody377_197 AllocBody377_234

def AllocBody377_236 : StackLang.HolProg 64 :=
.seq AllocBody377_194 AllocBody377_235

def AllocBody377_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody377_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody377_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def AllocBody377_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1091#64)

def AllocBody377_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody377_244 : StackLang.HolProg 64 :=
.seq AllocBody377_242 AllocBody377_243

def AllocBody377_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody377_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody377_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody377_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 377 7

def AllocBody377_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody377_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody377_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody377_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody377_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody377_255 : StackLang.HolProg 64 :=
.seq AllocBody377_253 AllocBody377_254

def AllocBody377_256 : StackLang.HolProg 64 :=
.seq AllocBody377_252 AllocBody377_255

def AllocBody377_257 : StackLang.HolProg 64 :=
.seq AllocBody377_251 AllocBody377_256

def AllocBody377_258 : StackLang.HolProg 64 :=
.seq AllocBody377_250 AllocBody377_257

def AllocBody377_259 : StackLang.HolProg 64 :=
.seq AllocBody377_249 AllocBody377_258

def AllocBody377_260 : StackLang.HolProg 64 :=
.seq AllocBody377_248 AllocBody377_259

def AllocBody377_261 : StackLang.HolProg 64 :=
.seq AllocBody377_247 AllocBody377_260

def AllocBody377_262 : StackLang.HolProg 64 :=
.seq AllocBody377_246 AllocBody377_261

def AllocBody377_263 : StackLang.HolProg 64 :=
.seq AllocBody377_245 AllocBody377_262

def AllocBody377_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody377_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody377_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody377_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody377_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody377_271 : StackLang.HolProg 64 :=
.seq AllocBody377_269 AllocBody377_270

def AllocBody377_272 : StackLang.HolProg 64 :=
.seq AllocBody377_268 AllocBody377_271

def AllocBody377_273 : StackLang.HolProg 64 :=
.seq AllocBody377_267 AllocBody377_272

def AllocBody377_274 : StackLang.HolProg 64 :=
.seq AllocBody377_266 AllocBody377_273

def AllocBody377_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_276 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody377_277 : StackLang.HolProg 64 :=
.seq AllocBody377_275 AllocBody377_276

def AllocBody377_278 : StackLang.HolProg 64 :=
.call (some (AllocBody377_274, 0, 377, 6)) (Sum.inl 142) (some (AllocBody377_277, 377, 7))

def AllocBody377_279 : StackLang.HolProg 64 :=
.seq AllocBody377_265 AllocBody377_278

def AllocBody377_280 : StackLang.HolProg 64 :=
.seq AllocBody377_264 AllocBody377_279

def AllocBody377_281 : StackLang.HolProg 64 :=
.seq AllocBody377_263 AllocBody377_280

def AllocBody377_282 : StackLang.HolProg 64 :=
.seq AllocBody377_244 AllocBody377_281

def AllocBody377_283 : StackLang.HolProg 64 :=
.seq AllocBody377_241 AllocBody377_282

def AllocBody377_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody377_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody377_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody377_287 : StackLang.HolProg 64 :=
.seq AllocBody377_285 AllocBody377_286

def AllocBody377_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1092#64)

def AllocBody377_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody377_291 : StackLang.HolProg 64 :=
.seq AllocBody377_289 AllocBody377_290

def AllocBody377_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody377_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody377_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody377_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 377 9

def AllocBody377_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody377_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody377_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody377_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody377_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody377_302 : StackLang.HolProg 64 :=
.seq AllocBody377_300 AllocBody377_301

def AllocBody377_303 : StackLang.HolProg 64 :=
.seq AllocBody377_299 AllocBody377_302

def AllocBody377_304 : StackLang.HolProg 64 :=
.seq AllocBody377_298 AllocBody377_303

def AllocBody377_305 : StackLang.HolProg 64 :=
.seq AllocBody377_297 AllocBody377_304

def AllocBody377_306 : StackLang.HolProg 64 :=
.seq AllocBody377_296 AllocBody377_305

def AllocBody377_307 : StackLang.HolProg 64 :=
.seq AllocBody377_295 AllocBody377_306

def AllocBody377_308 : StackLang.HolProg 64 :=
.seq AllocBody377_294 AllocBody377_307

def AllocBody377_309 : StackLang.HolProg 64 :=
.seq AllocBody377_293 AllocBody377_308

def AllocBody377_310 : StackLang.HolProg 64 :=
.seq AllocBody377_292 AllocBody377_309

def AllocBody377_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody377_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody377_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody377_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody377_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody377_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody377_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody377_320 : StackLang.HolProg 64 :=
.seq AllocBody377_318 AllocBody377_319

def AllocBody377_321 : StackLang.HolProg 64 :=
.seq AllocBody377_317 AllocBody377_320

def AllocBody377_322 : StackLang.HolProg 64 :=
.seq AllocBody377_316 AllocBody377_321

def AllocBody377_323 : StackLang.HolProg 64 :=
.seq AllocBody377_315 AllocBody377_322

def AllocBody377_324 : StackLang.HolProg 64 :=
.seq AllocBody377_314 AllocBody377_323

def AllocBody377_325 : StackLang.HolProg 64 :=
.seq AllocBody377_313 AllocBody377_324

def AllocBody377_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody377_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody377_328 : StackLang.HolProg 64 :=
.seq AllocBody377_326 AllocBody377_327

def AllocBody377_329 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody377_330 : StackLang.HolProg 64 :=
.seq AllocBody377_328 AllocBody377_329

def AllocBody377_331 : StackLang.HolProg 64 :=
.call (some (AllocBody377_325, 0, 377, 8)) (Sum.inl 101) (some (AllocBody377_330, 377, 9))

def AllocBody377_332 : StackLang.HolProg 64 :=
.seq AllocBody377_312 AllocBody377_331

def AllocBody377_333 : StackLang.HolProg 64 :=
.seq AllocBody377_311 AllocBody377_332

def AllocBody377_334 : StackLang.HolProg 64 :=
.seq AllocBody377_310 AllocBody377_333

def AllocBody377_335 : StackLang.HolProg 64 :=
.seq AllocBody377_291 AllocBody377_334

def AllocBody377_336 : StackLang.HolProg 64 :=
.seq AllocBody377_288 AllocBody377_335

def AllocBody377_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody377_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody377_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody377_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 45#64)

def AllocBody377_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody377_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def AllocBody377_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_346 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody377_347 : StackLang.HolProg 64 :=
.seq AllocBody377_345 AllocBody377_346

def AllocBody377_348 : StackLang.HolProg 64 :=
.seq AllocBody377_344 AllocBody377_347

def AllocBody377_349 : StackLang.HolProg 64 :=
.seq AllocBody377_343 AllocBody377_348

def AllocBody377_350 : StackLang.HolProg 64 :=
.seq AllocBody377_342 AllocBody377_349

def AllocBody377_351 : StackLang.HolProg 64 :=
.seq AllocBody377_341 AllocBody377_350

def AllocBody377_352 : StackLang.HolProg 64 :=
.seq AllocBody377_340 AllocBody377_351

def AllocBody377_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_354 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody377_352 AllocBody377_353

def AllocBody377_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody377_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody377_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody377_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody377_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody377_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody377_361 : StackLang.HolProg 64 :=
.seq AllocBody377_359 AllocBody377_360

def AllocBody377_362 : StackLang.HolProg 64 :=
.seq AllocBody377_358 AllocBody377_361

def AllocBody377_363 : StackLang.HolProg 64 :=
.seq AllocBody377_357 AllocBody377_362

def AllocBody377_364 : StackLang.HolProg 64 :=
.seq AllocBody377_356 AllocBody377_363

def AllocBody377_365 : StackLang.HolProg 64 :=
.seq AllocBody377_355 AllocBody377_364

def AllocBody377_366 : StackLang.HolProg 64 :=
.seq AllocBody377_354 AllocBody377_365

def AllocBody377_367 : StackLang.HolProg 64 :=
.seq AllocBody377_339 AllocBody377_366

def AllocBody377_368 : StackLang.HolProg 64 :=
.seq AllocBody377_338 AllocBody377_367

def AllocBody377_369 : StackLang.HolProg 64 :=
.seq AllocBody377_337 AllocBody377_368

def AllocBody377_370 : StackLang.HolProg 64 :=
.seq AllocBody377_336 AllocBody377_369

def AllocBody377_371 : StackLang.HolProg 64 :=
.seq AllocBody377_287 AllocBody377_370

def AllocBody377_372 : StackLang.HolProg 64 :=
.seq AllocBody377_284 AllocBody377_371

def AllocBody377_373 : StackLang.HolProg 64 :=
.seq AllocBody377_283 AllocBody377_372

def AllocBody377_374 : StackLang.HolProg 64 :=
.seq AllocBody377_240 AllocBody377_373

def AllocBody377_375 : StackLang.HolProg 64 :=
.seq AllocBody377_239 AllocBody377_374

def AllocBody377_376 : StackLang.HolProg 64 :=
.seq AllocBody377_238 AllocBody377_375

def AllocBody377_377 : StackLang.HolProg 64 :=
.seq AllocBody377_237 AllocBody377_376

def AllocBody377_378 : StackLang.HolProg 64 :=
.seq AllocBody377_236 AllocBody377_377

def AllocBody377_379 : StackLang.HolProg 64 :=
.seq AllocBody377_193 AllocBody377_378

def AllocBody377_380 : StackLang.HolProg 64 :=
.seq AllocBody377_192 AllocBody377_379

def AllocBody377_381 : StackLang.HolProg 64 :=
.seq AllocBody377_191 AllocBody377_380

def AllocBody377_382 : StackLang.HolProg 64 :=
.seq AllocBody377_190 AllocBody377_381

def AllocBody377_383 : StackLang.HolProg 64 :=
.seq AllocBody377_189 AllocBody377_382

def AllocBody377_384 : StackLang.HolProg 64 :=
.seq AllocBody377_188 AllocBody377_383

def AllocBody377_385 : StackLang.HolProg 64 :=
.seq AllocBody377_185 AllocBody377_384

def AllocBody377_386 : StackLang.HolProg 64 :=
.seq AllocBody377_184 AllocBody377_385

def AllocBody377_387 : StackLang.HolProg 64 :=
.seq AllocBody377_101 AllocBody377_386

def AllocBody377_388 : StackLang.HolProg 64 :=
.seq AllocBody377_100 AllocBody377_387

def AllocBody377_389 : StackLang.HolProg 64 :=
.seq AllocBody377_99 AllocBody377_388

def AllocBody377_390 : StackLang.HolProg 64 :=
.seq AllocBody377_98 AllocBody377_389

def AllocBody377_391 : StackLang.HolProg 64 :=
.seq AllocBody377_37 AllocBody377_390

def AllocBody377_392 : StackLang.HolProg 64 :=
.seq AllocBody377_28 AllocBody377_391

def AllocBody377_393 : StackLang.HolProg 64 :=
.seq AllocBody377_27 AllocBody377_392

def AllocBody377_394 : StackLang.HolProg 64 :=
.seq AllocBody377_26 AllocBody377_393

def AllocBody377_395 : StackLang.HolProg 64 :=
.seq AllocBody377_25 AllocBody377_394

def AllocBody377_396 : StackLang.HolProg 64 :=
.seq AllocBody377_24 AllocBody377_395

def AllocBody377_397 : StackLang.HolProg 64 :=
.seq AllocBody377_23 AllocBody377_396

def AllocBody377_398 : StackLang.HolProg 64 :=
.seq AllocBody377_22 AllocBody377_397

def AllocBody377_399 : StackLang.HolProg 64 :=
.seq AllocBody377_21 AllocBody377_398

def AllocBody377_400 : StackLang.HolProg 64 :=
.seq AllocBody377_20 AllocBody377_399

def AllocBody377_401 : StackLang.HolProg 64 :=
.seq AllocBody377_19 AllocBody377_400

def AllocBody377_402 : StackLang.HolProg 64 :=
.seq AllocBody377_18 AllocBody377_401

def AllocBody377_403 : StackLang.HolProg 64 :=
.seq AllocBody377_3 AllocBody377_402

def AllocBody377_404 : StackLang.HolProg 64 :=
.seq AllocBody377_2 AllocBody377_403

def AllocBody377_405 : StackLang.HolProg 64 :=
.seq AllocBody377_1 AllocBody377_404

def AllocBody377_406 : StackLang.HolProg 64 :=
.seq AllocBody377_0 AllocBody377_405

def Alloc377 : Nat × StackLang.HolProg 64 := (377, AllocBody377_406)
theorem Alloc377_eq : StackAlloc.progComp (377, raw377) = Alloc377 := by
  kernel_rfl
#print axioms Alloc377_eq
end InitECandidate.Proofs.BackendStages
