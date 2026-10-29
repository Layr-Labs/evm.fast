import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function377
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody377_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def rawBody377_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody377_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody377_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody377_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def rawBody377_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody377_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody377_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody377_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody377_11 : StackLang.HolProg 64 :=
.seq rawBody377_9 rawBody377_10

def rawBody377_12 : StackLang.HolProg 64 :=
.seq rawBody377_8 rawBody377_11

def rawBody377_13 : StackLang.HolProg 64 :=
.seq rawBody377_7 rawBody377_12

def rawBody377_14 : StackLang.HolProg 64 :=
.seq rawBody377_6 rawBody377_13

def rawBody377_15 : StackLang.HolProg 64 :=
.seq rawBody377_5 rawBody377_14

def rawBody377_16 : StackLang.HolProg 64 :=
.seq rawBody377_4 rawBody377_15

def rawBody377_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody377_18 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody377_16 rawBody377_17

def rawBody377_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody377_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody377_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 288#64))

def rawBody377_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 296#64))

def rawBody377_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 304#64))

def rawBody377_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 312#64))

def rawBody377_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody377_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def rawBody377_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def rawBody377_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def rawBody377_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody377_34 : StackLang.HolProg 64 :=
.seq rawBody377_32 rawBody377_33

def rawBody377_35 : StackLang.HolProg 64 :=
.seq rawBody377_31 rawBody377_34

def rawBody377_36 : StackLang.HolProg 64 :=
.seq rawBody377_30 rawBody377_35

def rawBody377_37 : StackLang.HolProg 64 :=
.seq rawBody377_29 rawBody377_36

def rawBody377_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1089#64)

def rawBody377_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody377_41 : StackLang.HolProg 64 :=
.seq rawBody377_39 rawBody377_40

def rawBody377_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody377_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody377_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody377_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 377 3

def rawBody377_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody377_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody377_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody377_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody377_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody377_52 : StackLang.HolProg 64 :=
.seq rawBody377_50 rawBody377_51

def rawBody377_53 : StackLang.HolProg 64 :=
.seq rawBody377_49 rawBody377_52

def rawBody377_54 : StackLang.HolProg 64 :=
.seq rawBody377_48 rawBody377_53

def rawBody377_55 : StackLang.HolProg 64 :=
.seq rawBody377_47 rawBody377_54

def rawBody377_56 : StackLang.HolProg 64 :=
.seq rawBody377_46 rawBody377_55

def rawBody377_57 : StackLang.HolProg 64 :=
.seq rawBody377_45 rawBody377_56

def rawBody377_58 : StackLang.HolProg 64 :=
.seq rawBody377_44 rawBody377_57

def rawBody377_59 : StackLang.HolProg 64 :=
.seq rawBody377_43 rawBody377_58

def rawBody377_60 : StackLang.HolProg 64 :=
.seq rawBody377_42 rawBody377_59

def rawBody377_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody377_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody377_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody377_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody377_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody377_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 5

def rawBody377_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody377_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def rawBody377_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody377_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def rawBody377_73 : StackLang.HolProg 64 :=
.seq rawBody377_71 rawBody377_72

def rawBody377_74 : StackLang.HolProg 64 :=
.seq rawBody377_70 rawBody377_73

def rawBody377_75 : StackLang.HolProg 64 :=
.seq rawBody377_69 rawBody377_74

def rawBody377_76 : StackLang.HolProg 64 :=
.seq rawBody377_68 rawBody377_75

def rawBody377_77 : StackLang.HolProg 64 :=
.seq rawBody377_67 rawBody377_76

def rawBody377_78 : StackLang.HolProg 64 :=
.seq rawBody377_66 rawBody377_77

def rawBody377_79 : StackLang.HolProg 64 :=
.seq rawBody377_65 rawBody377_78

def rawBody377_80 : StackLang.HolProg 64 :=
.seq rawBody377_64 rawBody377_79

def rawBody377_81 : StackLang.HolProg 64 :=
.seq rawBody377_63 rawBody377_80

def rawBody377_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 5

def rawBody377_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody377_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def rawBody377_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody377_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def rawBody377_87 : StackLang.HolProg 64 :=
.seq rawBody377_85 rawBody377_86

def rawBody377_88 : StackLang.HolProg 64 :=
.seq rawBody377_84 rawBody377_87

def rawBody377_89 : StackLang.HolProg 64 :=
.seq rawBody377_83 rawBody377_88

def rawBody377_90 : StackLang.HolProg 64 :=
.seq rawBody377_82 rawBody377_89

def rawBody377_91 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody377_92 : StackLang.HolProg 64 :=
.seq rawBody377_90 rawBody377_91

def rawBody377_93 : StackLang.HolProg 64 :=
.call (some (rawBody377_81, 0, 377, 2)) (Sum.inl 101) (some (rawBody377_92, 377, 3))

def rawBody377_94 : StackLang.HolProg 64 :=
.seq rawBody377_62 rawBody377_93

def rawBody377_95 : StackLang.HolProg 64 :=
.seq rawBody377_61 rawBody377_94

def rawBody377_96 : StackLang.HolProg 64 :=
.seq rawBody377_60 rawBody377_95

def rawBody377_97 : StackLang.HolProg 64 :=
.seq rawBody377_41 rawBody377_96

def rawBody377_98 : StackLang.HolProg 64 :=
.seq rawBody377_38 rawBody377_97

def rawBody377_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody377_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody377_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody377_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 27#64)

def rawBody377_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody377_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_107 : StackLang.HolProg 64 :=
.seq rawBody377_105 rawBody377_106

def rawBody377_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody377_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_110 : StackLang.HolProg 64 :=
.seq rawBody377_108 rawBody377_109

def rawBody377_111 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody377_107 rawBody377_110

def rawBody377_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody377_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 28#64)

def rawBody377_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def rawBody377_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_117 : StackLang.HolProg 64 :=
.seq rawBody377_115 rawBody377_116

def rawBody377_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def rawBody377_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_120 : StackLang.HolProg 64 :=
.seq rawBody377_118 rawBody377_119

def rawBody377_121 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody377_117 rawBody377_120

def rawBody377_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody377_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody377_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody377_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody377_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody377_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody377_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody377_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def rawBody377_132 : StackLang.HolProg 64 :=
.seq rawBody377_130 rawBody377_131

def rawBody377_133 : StackLang.HolProg 64 :=
.seq rawBody377_129 rawBody377_132

def rawBody377_134 : StackLang.HolProg 64 :=
.seq rawBody377_128 rawBody377_133

def rawBody377_135 : StackLang.HolProg 64 :=
.seq rawBody377_127 rawBody377_134

def rawBody377_136 : StackLang.HolProg 64 :=
.seq rawBody377_126 rawBody377_135

def rawBody377_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody377_136 rawBody377_137

def rawBody377_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody377_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody377_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 35#64)

def rawBody377_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody377_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 44#64)

def rawBody377_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def rawBody377_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def rawBody377_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_149 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody377_150 : StackLang.HolProg 64 :=
.seq rawBody377_148 rawBody377_149

def rawBody377_151 : StackLang.HolProg 64 :=
.seq rawBody377_147 rawBody377_150

def rawBody377_152 : StackLang.HolProg 64 :=
.seq rawBody377_146 rawBody377_151

def rawBody377_153 : StackLang.HolProg 64 :=
.seq rawBody377_145 rawBody377_152

def rawBody377_154 : StackLang.HolProg 64 :=
.seq rawBody377_144 rawBody377_153

def rawBody377_155 : StackLang.HolProg 64 :=
.seq rawBody377_143 rawBody377_154

def rawBody377_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_157 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody377_155 rawBody377_156

def rawBody377_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody377_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody377_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_161 : StackLang.HolProg 64 :=
.seq rawBody377_159 rawBody377_160

def rawBody377_162 : StackLang.HolProg 64 :=
.seq rawBody377_158 rawBody377_161

def rawBody377_163 : StackLang.HolProg 64 :=
.seq rawBody377_157 rawBody377_162

def rawBody377_164 : StackLang.HolProg 64 :=
.seq rawBody377_142 rawBody377_163

def rawBody377_165 : StackLang.HolProg 64 :=
.seq rawBody377_141 rawBody377_164

def rawBody377_166 : StackLang.HolProg 64 :=
.seq rawBody377_140 rawBody377_165

def rawBody377_167 : StackLang.HolProg 64 :=
.seq rawBody377_139 rawBody377_166

def rawBody377_168 : StackLang.HolProg 64 :=
.seq rawBody377_138 rawBody377_167

def rawBody377_169 : StackLang.HolProg 64 :=
.seq rawBody377_125 rawBody377_168

def rawBody377_170 : StackLang.HolProg 64 :=
.seq rawBody377_124 rawBody377_169

def rawBody377_171 : StackLang.HolProg 64 :=
.seq rawBody377_123 rawBody377_170

def rawBody377_172 : StackLang.HolProg 64 :=
.seq rawBody377_122 rawBody377_171

def rawBody377_173 : StackLang.HolProg 64 :=
.seq rawBody377_121 rawBody377_172

def rawBody377_174 : StackLang.HolProg 64 :=
.seq rawBody377_114 rawBody377_173

def rawBody377_175 : StackLang.HolProg 64 :=
.seq rawBody377_113 rawBody377_174

def rawBody377_176 : StackLang.HolProg 64 :=
.seq rawBody377_112 rawBody377_175

def rawBody377_177 : StackLang.HolProg 64 :=
.seq rawBody377_111 rawBody377_176

def rawBody377_178 : StackLang.HolProg 64 :=
.seq rawBody377_104 rawBody377_177

def rawBody377_179 : StackLang.HolProg 64 :=
.seq rawBody377_103 rawBody377_178

def rawBody377_180 : StackLang.HolProg 64 :=
.seq rawBody377_102 rawBody377_179

def rawBody377_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody377_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_183 : StackLang.HolProg 64 :=
.seq rawBody377_181 rawBody377_182

def rawBody377_184 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody377_180 rawBody377_183

def rawBody377_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody377_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody377_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody377_188 : StackLang.HolProg 64 :=
.seq rawBody377_186 rawBody377_187

def rawBody377_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def rawBody377_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def rawBody377_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def rawBody377_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 35#64)

def rawBody377_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 5

def rawBody377_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1090#64)

def rawBody377_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody377_197 : StackLang.HolProg 64 :=
.seq rawBody377_195 rawBody377_196

def rawBody377_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody377_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody377_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody377_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 377 5

def rawBody377_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody377_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody377_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody377_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody377_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody377_208 : StackLang.HolProg 64 :=
.seq rawBody377_206 rawBody377_207

def rawBody377_209 : StackLang.HolProg 64 :=
.seq rawBody377_205 rawBody377_208

def rawBody377_210 : StackLang.HolProg 64 :=
.seq rawBody377_204 rawBody377_209

def rawBody377_211 : StackLang.HolProg 64 :=
.seq rawBody377_203 rawBody377_210

def rawBody377_212 : StackLang.HolProg 64 :=
.seq rawBody377_202 rawBody377_211

def rawBody377_213 : StackLang.HolProg 64 :=
.seq rawBody377_201 rawBody377_212

def rawBody377_214 : StackLang.HolProg 64 :=
.seq rawBody377_200 rawBody377_213

def rawBody377_215 : StackLang.HolProg 64 :=
.seq rawBody377_199 rawBody377_214

def rawBody377_216 : StackLang.HolProg 64 :=
.seq rawBody377_198 rawBody377_215

def rawBody377_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody377_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody377_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody377_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody377_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody377_224 : StackLang.HolProg 64 :=
.seq rawBody377_222 rawBody377_223

def rawBody377_225 : StackLang.HolProg 64 :=
.seq rawBody377_221 rawBody377_224

def rawBody377_226 : StackLang.HolProg 64 :=
.seq rawBody377_220 rawBody377_225

def rawBody377_227 : StackLang.HolProg 64 :=
.seq rawBody377_219 rawBody377_226

def rawBody377_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_229 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody377_230 : StackLang.HolProg 64 :=
.seq rawBody377_228 rawBody377_229

def rawBody377_231 : StackLang.HolProg 64 :=
.call (some (rawBody377_227, 0, 377, 4)) (Sum.inl 117) (some (rawBody377_230, 377, 5))

def rawBody377_232 : StackLang.HolProg 64 :=
.seq rawBody377_218 rawBody377_231

def rawBody377_233 : StackLang.HolProg 64 :=
.seq rawBody377_217 rawBody377_232

def rawBody377_234 : StackLang.HolProg 64 :=
.seq rawBody377_216 rawBody377_233

def rawBody377_235 : StackLang.HolProg 64 :=
.seq rawBody377_197 rawBody377_234

def rawBody377_236 : StackLang.HolProg 64 :=
.seq rawBody377_194 rawBody377_235

def rawBody377_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody377_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody377_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def rawBody377_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1091#64)

def rawBody377_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody377_244 : StackLang.HolProg 64 :=
.seq rawBody377_242 rawBody377_243

def rawBody377_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody377_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody377_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody377_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 377 7

def rawBody377_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody377_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody377_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody377_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody377_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody377_255 : StackLang.HolProg 64 :=
.seq rawBody377_253 rawBody377_254

def rawBody377_256 : StackLang.HolProg 64 :=
.seq rawBody377_252 rawBody377_255

def rawBody377_257 : StackLang.HolProg 64 :=
.seq rawBody377_251 rawBody377_256

def rawBody377_258 : StackLang.HolProg 64 :=
.seq rawBody377_250 rawBody377_257

def rawBody377_259 : StackLang.HolProg 64 :=
.seq rawBody377_249 rawBody377_258

def rawBody377_260 : StackLang.HolProg 64 :=
.seq rawBody377_248 rawBody377_259

def rawBody377_261 : StackLang.HolProg 64 :=
.seq rawBody377_247 rawBody377_260

def rawBody377_262 : StackLang.HolProg 64 :=
.seq rawBody377_246 rawBody377_261

def rawBody377_263 : StackLang.HolProg 64 :=
.seq rawBody377_245 rawBody377_262

def rawBody377_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody377_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody377_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody377_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody377_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody377_271 : StackLang.HolProg 64 :=
.seq rawBody377_269 rawBody377_270

def rawBody377_272 : StackLang.HolProg 64 :=
.seq rawBody377_268 rawBody377_271

def rawBody377_273 : StackLang.HolProg 64 :=
.seq rawBody377_267 rawBody377_272

def rawBody377_274 : StackLang.HolProg 64 :=
.seq rawBody377_266 rawBody377_273

def rawBody377_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_276 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody377_277 : StackLang.HolProg 64 :=
.seq rawBody377_275 rawBody377_276

def rawBody377_278 : StackLang.HolProg 64 :=
.call (some (rawBody377_274, 0, 377, 6)) (Sum.inl 142) (some (rawBody377_277, 377, 7))

def rawBody377_279 : StackLang.HolProg 64 :=
.seq rawBody377_265 rawBody377_278

def rawBody377_280 : StackLang.HolProg 64 :=
.seq rawBody377_264 rawBody377_279

def rawBody377_281 : StackLang.HolProg 64 :=
.seq rawBody377_263 rawBody377_280

def rawBody377_282 : StackLang.HolProg 64 :=
.seq rawBody377_244 rawBody377_281

def rawBody377_283 : StackLang.HolProg 64 :=
.seq rawBody377_241 rawBody377_282

def rawBody377_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody377_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody377_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody377_287 : StackLang.HolProg 64 :=
.seq rawBody377_285 rawBody377_286

def rawBody377_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1092#64)

def rawBody377_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody377_291 : StackLang.HolProg 64 :=
.seq rawBody377_289 rawBody377_290

def rawBody377_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody377_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody377_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody377_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 377 9

def rawBody377_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody377_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody377_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody377_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody377_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody377_302 : StackLang.HolProg 64 :=
.seq rawBody377_300 rawBody377_301

def rawBody377_303 : StackLang.HolProg 64 :=
.seq rawBody377_299 rawBody377_302

def rawBody377_304 : StackLang.HolProg 64 :=
.seq rawBody377_298 rawBody377_303

def rawBody377_305 : StackLang.HolProg 64 :=
.seq rawBody377_297 rawBody377_304

def rawBody377_306 : StackLang.HolProg 64 :=
.seq rawBody377_296 rawBody377_305

def rawBody377_307 : StackLang.HolProg 64 :=
.seq rawBody377_295 rawBody377_306

def rawBody377_308 : StackLang.HolProg 64 :=
.seq rawBody377_294 rawBody377_307

def rawBody377_309 : StackLang.HolProg 64 :=
.seq rawBody377_293 rawBody377_308

def rawBody377_310 : StackLang.HolProg 64 :=
.seq rawBody377_292 rawBody377_309

def rawBody377_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody377_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody377_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody377_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody377_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody377_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody377_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody377_320 : StackLang.HolProg 64 :=
.seq rawBody377_318 rawBody377_319

def rawBody377_321 : StackLang.HolProg 64 :=
.seq rawBody377_317 rawBody377_320

def rawBody377_322 : StackLang.HolProg 64 :=
.seq rawBody377_316 rawBody377_321

def rawBody377_323 : StackLang.HolProg 64 :=
.seq rawBody377_315 rawBody377_322

def rawBody377_324 : StackLang.HolProg 64 :=
.seq rawBody377_314 rawBody377_323

def rawBody377_325 : StackLang.HolProg 64 :=
.seq rawBody377_313 rawBody377_324

def rawBody377_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody377_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody377_328 : StackLang.HolProg 64 :=
.seq rawBody377_326 rawBody377_327

def rawBody377_329 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody377_330 : StackLang.HolProg 64 :=
.seq rawBody377_328 rawBody377_329

def rawBody377_331 : StackLang.HolProg 64 :=
.call (some (rawBody377_325, 0, 377, 8)) (Sum.inl 101) (some (rawBody377_330, 377, 9))

def rawBody377_332 : StackLang.HolProg 64 :=
.seq rawBody377_312 rawBody377_331

def rawBody377_333 : StackLang.HolProg 64 :=
.seq rawBody377_311 rawBody377_332

def rawBody377_334 : StackLang.HolProg 64 :=
.seq rawBody377_310 rawBody377_333

def rawBody377_335 : StackLang.HolProg 64 :=
.seq rawBody377_291 rawBody377_334

def rawBody377_336 : StackLang.HolProg 64 :=
.seq rawBody377_288 rawBody377_335

def rawBody377_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody377_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody377_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody377_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 45#64)

def rawBody377_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def rawBody377_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def rawBody377_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_346 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody377_347 : StackLang.HolProg 64 :=
.seq rawBody377_345 rawBody377_346

def rawBody377_348 : StackLang.HolProg 64 :=
.seq rawBody377_344 rawBody377_347

def rawBody377_349 : StackLang.HolProg 64 :=
.seq rawBody377_343 rawBody377_348

def rawBody377_350 : StackLang.HolProg 64 :=
.seq rawBody377_342 rawBody377_349

def rawBody377_351 : StackLang.HolProg 64 :=
.seq rawBody377_341 rawBody377_350

def rawBody377_352 : StackLang.HolProg 64 :=
.seq rawBody377_340 rawBody377_351

def rawBody377_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_354 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody377_352 rawBody377_353

def rawBody377_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody377_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody377_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody377_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody377_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody377_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody377_361 : StackLang.HolProg 64 :=
.seq rawBody377_359 rawBody377_360

def rawBody377_362 : StackLang.HolProg 64 :=
.seq rawBody377_358 rawBody377_361

def rawBody377_363 : StackLang.HolProg 64 :=
.seq rawBody377_357 rawBody377_362

def rawBody377_364 : StackLang.HolProg 64 :=
.seq rawBody377_356 rawBody377_363

def rawBody377_365 : StackLang.HolProg 64 :=
.seq rawBody377_355 rawBody377_364

def rawBody377_366 : StackLang.HolProg 64 :=
.seq rawBody377_354 rawBody377_365

def rawBody377_367 : StackLang.HolProg 64 :=
.seq rawBody377_339 rawBody377_366

def rawBody377_368 : StackLang.HolProg 64 :=
.seq rawBody377_338 rawBody377_367

def rawBody377_369 : StackLang.HolProg 64 :=
.seq rawBody377_337 rawBody377_368

def rawBody377_370 : StackLang.HolProg 64 :=
.seq rawBody377_336 rawBody377_369

def rawBody377_371 : StackLang.HolProg 64 :=
.seq rawBody377_287 rawBody377_370

def rawBody377_372 : StackLang.HolProg 64 :=
.seq rawBody377_284 rawBody377_371

def rawBody377_373 : StackLang.HolProg 64 :=
.seq rawBody377_283 rawBody377_372

def rawBody377_374 : StackLang.HolProg 64 :=
.seq rawBody377_240 rawBody377_373

def rawBody377_375 : StackLang.HolProg 64 :=
.seq rawBody377_239 rawBody377_374

def rawBody377_376 : StackLang.HolProg 64 :=
.seq rawBody377_238 rawBody377_375

def rawBody377_377 : StackLang.HolProg 64 :=
.seq rawBody377_237 rawBody377_376

def rawBody377_378 : StackLang.HolProg 64 :=
.seq rawBody377_236 rawBody377_377

def rawBody377_379 : StackLang.HolProg 64 :=
.seq rawBody377_193 rawBody377_378

def rawBody377_380 : StackLang.HolProg 64 :=
.seq rawBody377_192 rawBody377_379

def rawBody377_381 : StackLang.HolProg 64 :=
.seq rawBody377_191 rawBody377_380

def rawBody377_382 : StackLang.HolProg 64 :=
.seq rawBody377_190 rawBody377_381

def rawBody377_383 : StackLang.HolProg 64 :=
.seq rawBody377_189 rawBody377_382

def rawBody377_384 : StackLang.HolProg 64 :=
.seq rawBody377_188 rawBody377_383

def rawBody377_385 : StackLang.HolProg 64 :=
.seq rawBody377_185 rawBody377_384

def rawBody377_386 : StackLang.HolProg 64 :=
.seq rawBody377_184 rawBody377_385

def rawBody377_387 : StackLang.HolProg 64 :=
.seq rawBody377_101 rawBody377_386

def rawBody377_388 : StackLang.HolProg 64 :=
.seq rawBody377_100 rawBody377_387

def rawBody377_389 : StackLang.HolProg 64 :=
.seq rawBody377_99 rawBody377_388

def rawBody377_390 : StackLang.HolProg 64 :=
.seq rawBody377_98 rawBody377_389

def rawBody377_391 : StackLang.HolProg 64 :=
.seq rawBody377_37 rawBody377_390

def rawBody377_392 : StackLang.HolProg 64 :=
.seq rawBody377_28 rawBody377_391

def rawBody377_393 : StackLang.HolProg 64 :=
.seq rawBody377_27 rawBody377_392

def rawBody377_394 : StackLang.HolProg 64 :=
.seq rawBody377_26 rawBody377_393

def rawBody377_395 : StackLang.HolProg 64 :=
.seq rawBody377_25 rawBody377_394

def rawBody377_396 : StackLang.HolProg 64 :=
.seq rawBody377_24 rawBody377_395

def rawBody377_397 : StackLang.HolProg 64 :=
.seq rawBody377_23 rawBody377_396

def rawBody377_398 : StackLang.HolProg 64 :=
.seq rawBody377_22 rawBody377_397

def rawBody377_399 : StackLang.HolProg 64 :=
.seq rawBody377_21 rawBody377_398

def rawBody377_400 : StackLang.HolProg 64 :=
.seq rawBody377_20 rawBody377_399

def rawBody377_401 : StackLang.HolProg 64 :=
.seq rawBody377_19 rawBody377_400

def rawBody377_402 : StackLang.HolProg 64 :=
.seq rawBody377_18 rawBody377_401

def rawBody377_403 : StackLang.HolProg 64 :=
.seq rawBody377_3 rawBody377_402

def rawBody377_404 : StackLang.HolProg 64 :=
.seq rawBody377_2 rawBody377_403

def rawBody377_405 : StackLang.HolProg 64 :=
.seq rawBody377_1 rawBody377_404

def rawBody377_406 : StackLang.HolProg 64 :=
.seq rawBody377_0 rawBody377_405

def raw377 : StackLang.HolProg 64 := rawBody377_406
theorem raw377_eq : StackRawCall.compTop RawInfo.rawInfo (function377 (.list [])).1 = raw377 := by
  kernel_rfl
#print axioms raw377_eq
end InitECandidate.Proofs.BackendStages
