import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function670
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody670_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody670_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody670_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody670_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody670_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody670_5 : StackLang.HolProg 64 :=
.seq rawBody670_3 rawBody670_4

def rawBody670_6 : StackLang.HolProg 64 :=
.seq rawBody670_2 rawBody670_5

def rawBody670_7 : StackLang.HolProg 64 :=
.seq rawBody670_1 rawBody670_6

def rawBody670_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody670_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody670_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody670_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def rawBody670_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody670_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 8#64))

def rawBody670_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody670_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 16#64))

def rawBody670_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody670_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 24#64))

def rawBody670_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody670_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def rawBody670_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody670_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 8#64))

def rawBody670_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody670_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 16#64))

def rawBody670_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody670_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 24#64))

def rawBody670_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody670_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 1

def rawBody670_28 : StackLang.HolProg 64 :=
.seq rawBody670_26 rawBody670_27

def rawBody670_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody670_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2783#64)

def rawBody670_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody670_32 : StackLang.HolProg 64 :=
.seq rawBody670_30 rawBody670_31

def rawBody670_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody670_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody670_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody670_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 670 3

def rawBody670_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody670_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody670_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody670_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody670_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody670_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody670_43 : StackLang.HolProg 64 :=
.seq rawBody670_41 rawBody670_42

def rawBody670_44 : StackLang.HolProg 64 :=
.seq rawBody670_40 rawBody670_43

def rawBody670_45 : StackLang.HolProg 64 :=
.seq rawBody670_39 rawBody670_44

def rawBody670_46 : StackLang.HolProg 64 :=
.seq rawBody670_38 rawBody670_45

def rawBody670_47 : StackLang.HolProg 64 :=
.seq rawBody670_37 rawBody670_46

def rawBody670_48 : StackLang.HolProg 64 :=
.seq rawBody670_36 rawBody670_47

def rawBody670_49 : StackLang.HolProg 64 :=
.seq rawBody670_35 rawBody670_48

def rawBody670_50 : StackLang.HolProg 64 :=
.seq rawBody670_34 rawBody670_49

def rawBody670_51 : StackLang.HolProg 64 :=
.seq rawBody670_33 rawBody670_50

def rawBody670_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody670_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody670_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody670_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody670_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody670_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody670_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody670_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 2

def rawBody670_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody670_61 : StackLang.HolProg 64 :=
.seq rawBody670_59 rawBody670_60

def rawBody670_62 : StackLang.HolProg 64 :=
.seq rawBody670_58 rawBody670_61

def rawBody670_63 : StackLang.HolProg 64 :=
.seq rawBody670_57 rawBody670_62

def rawBody670_64 : StackLang.HolProg 64 :=
.seq rawBody670_56 rawBody670_63

def rawBody670_65 : StackLang.HolProg 64 :=
.seq rawBody670_55 rawBody670_64

def rawBody670_66 : StackLang.HolProg 64 :=
.seq rawBody670_54 rawBody670_65

def rawBody670_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 2

def rawBody670_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody670_69 : StackLang.HolProg 64 :=
.seq rawBody670_67 rawBody670_68

def rawBody670_70 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody670_71 : StackLang.HolProg 64 :=
.seq rawBody670_69 rawBody670_70

def rawBody670_72 : StackLang.HolProg 64 :=
.call (some (rawBody670_66, 0, 670, 2)) (Sum.inl 661) (some (rawBody670_71, 670, 3))

def rawBody670_73 : StackLang.HolProg 64 :=
.seq rawBody670_53 rawBody670_72

def rawBody670_74 : StackLang.HolProg 64 :=
.seq rawBody670_52 rawBody670_73

def rawBody670_75 : StackLang.HolProg 64 :=
.seq rawBody670_51 rawBody670_74

def rawBody670_76 : StackLang.HolProg 64 :=
.seq rawBody670_32 rawBody670_75

def rawBody670_77 : StackLang.HolProg 64 :=
.seq rawBody670_29 rawBody670_76

def rawBody670_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody670_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody670_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody670_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody670_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def rawBody670_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody670_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def rawBody670_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody670_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def rawBody670_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody670_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody670_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody670_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 10

def rawBody670_91 : StackLang.HolProg 64 :=
.seq rawBody670_89 rawBody670_90

def rawBody670_92 : StackLang.HolProg 64 :=
.seq rawBody670_88 rawBody670_91

def rawBody670_93 : StackLang.HolProg 64 :=
.seq rawBody670_87 rawBody670_92

def rawBody670_94 : StackLang.HolProg 64 :=
.seq rawBody670_86 rawBody670_93

def rawBody670_95 : StackLang.HolProg 64 :=
.seq rawBody670_85 rawBody670_94

def rawBody670_96 : StackLang.HolProg 64 :=
.seq rawBody670_84 rawBody670_95

def rawBody670_97 : StackLang.HolProg 64 :=
.seq rawBody670_83 rawBody670_96

def rawBody670_98 : StackLang.HolProg 64 :=
.seq rawBody670_82 rawBody670_97

def rawBody670_99 : StackLang.HolProg 64 :=
.seq rawBody670_81 rawBody670_98

def rawBody670_100 : StackLang.HolProg 64 :=
.seq rawBody670_80 rawBody670_99

def rawBody670_101 : StackLang.HolProg 64 :=
.seq rawBody670_79 rawBody670_100

def rawBody670_102 : StackLang.HolProg 64 :=
.seq rawBody670_78 rawBody670_101

def rawBody670_103 : StackLang.HolProg 64 :=
.seq rawBody670_77 rawBody670_102

def rawBody670_104 : StackLang.HolProg 64 :=
.seq rawBody670_28 rawBody670_103

def rawBody670_105 : StackLang.HolProg 64 :=
.seq rawBody670_25 rawBody670_104

def rawBody670_106 : StackLang.HolProg 64 :=
.seq rawBody670_24 rawBody670_105

def rawBody670_107 : StackLang.HolProg 64 :=
.seq rawBody670_23 rawBody670_106

def rawBody670_108 : StackLang.HolProg 64 :=
.seq rawBody670_22 rawBody670_107

def rawBody670_109 : StackLang.HolProg 64 :=
.seq rawBody670_21 rawBody670_108

def rawBody670_110 : StackLang.HolProg 64 :=
.seq rawBody670_20 rawBody670_109

def rawBody670_111 : StackLang.HolProg 64 :=
.seq rawBody670_19 rawBody670_110

def rawBody670_112 : StackLang.HolProg 64 :=
.seq rawBody670_18 rawBody670_111

def rawBody670_113 : StackLang.HolProg 64 :=
.seq rawBody670_17 rawBody670_112

def rawBody670_114 : StackLang.HolProg 64 :=
.seq rawBody670_16 rawBody670_113

def rawBody670_115 : StackLang.HolProg 64 :=
.seq rawBody670_15 rawBody670_114

def rawBody670_116 : StackLang.HolProg 64 :=
.seq rawBody670_14 rawBody670_115

def rawBody670_117 : StackLang.HolProg 64 :=
.seq rawBody670_13 rawBody670_116

def rawBody670_118 : StackLang.HolProg 64 :=
.seq rawBody670_12 rawBody670_117

def rawBody670_119 : StackLang.HolProg 64 :=
.seq rawBody670_11 rawBody670_118

def rawBody670_120 : StackLang.HolProg 64 :=
.seq rawBody670_10 rawBody670_119

def rawBody670_121 : StackLang.HolProg 64 :=
.seq rawBody670_9 rawBody670_120

def rawBody670_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody670_123 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody670_121 rawBody670_122

def rawBody670_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody670_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody670_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody670_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 2#64)

def rawBody670_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody670_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody670_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody670_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody670_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody670_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody670_134 : StackLang.HolProg 64 :=
.seq rawBody670_132 rawBody670_133

def rawBody670_135 : StackLang.HolProg 64 :=
.seq rawBody670_131 rawBody670_134

def rawBody670_136 : StackLang.HolProg 64 :=
.seq rawBody670_130 rawBody670_135

def rawBody670_137 : StackLang.HolProg 64 :=
.seq rawBody670_129 rawBody670_136

def rawBody670_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody670_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2784#64)

def rawBody670_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody670_141 : StackLang.HolProg 64 :=
.seq rawBody670_139 rawBody670_140

def rawBody670_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody670_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody670_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody670_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 670 5

def rawBody670_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody670_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody670_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody670_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody670_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody670_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody670_152 : StackLang.HolProg 64 :=
.seq rawBody670_150 rawBody670_151

def rawBody670_153 : StackLang.HolProg 64 :=
.seq rawBody670_149 rawBody670_152

def rawBody670_154 : StackLang.HolProg 64 :=
.seq rawBody670_148 rawBody670_153

def rawBody670_155 : StackLang.HolProg 64 :=
.seq rawBody670_147 rawBody670_154

def rawBody670_156 : StackLang.HolProg 64 :=
.seq rawBody670_146 rawBody670_155

def rawBody670_157 : StackLang.HolProg 64 :=
.seq rawBody670_145 rawBody670_156

def rawBody670_158 : StackLang.HolProg 64 :=
.seq rawBody670_144 rawBody670_157

def rawBody670_159 : StackLang.HolProg 64 :=
.seq rawBody670_143 rawBody670_158

def rawBody670_160 : StackLang.HolProg 64 :=
.seq rawBody670_142 rawBody670_159

def rawBody670_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody670_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody670_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody670_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody670_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody670_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody670_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody670_168 : StackLang.HolProg 64 :=
.seq rawBody670_166 rawBody670_167

def rawBody670_169 : StackLang.HolProg 64 :=
.seq rawBody670_165 rawBody670_168

def rawBody670_170 : StackLang.HolProg 64 :=
.seq rawBody670_164 rawBody670_169

def rawBody670_171 : StackLang.HolProg 64 :=
.seq rawBody670_163 rawBody670_170

def rawBody670_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody670_173 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody670_174 : StackLang.HolProg 64 :=
.seq rawBody670_172 rawBody670_173

def rawBody670_175 : StackLang.HolProg 64 :=
.call (some (rawBody670_171, 0, 670, 4)) (Sum.inl 666) (some (rawBody670_174, 670, 5))

def rawBody670_176 : StackLang.HolProg 64 :=
.seq rawBody670_162 rawBody670_175

def rawBody670_177 : StackLang.HolProg 64 :=
.seq rawBody670_161 rawBody670_176

def rawBody670_178 : StackLang.HolProg 64 :=
.seq rawBody670_160 rawBody670_177

def rawBody670_179 : StackLang.HolProg 64 :=
.seq rawBody670_141 rawBody670_178

def rawBody670_180 : StackLang.HolProg 64 :=
.seq rawBody670_138 rawBody670_179

def rawBody670_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody670_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody670_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody670_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody670_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody670_186 : StackLang.HolProg 64 :=
.seq rawBody670_184 rawBody670_185

def rawBody670_187 : StackLang.HolProg 64 :=
.seq rawBody670_183 rawBody670_186

def rawBody670_188 : StackLang.HolProg 64 :=
.seq rawBody670_182 rawBody670_187

def rawBody670_189 : StackLang.HolProg 64 :=
.seq rawBody670_181 rawBody670_188

def rawBody670_190 : StackLang.HolProg 64 :=
.seq rawBody670_180 rawBody670_189

def rawBody670_191 : StackLang.HolProg 64 :=
.seq rawBody670_137 rawBody670_190

def rawBody670_192 : StackLang.HolProg 64 :=
.seq rawBody670_128 rawBody670_191

def rawBody670_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody670_194 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody670_192 rawBody670_193

def rawBody670_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody670_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody670_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody670_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody670_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody670_200 : StackLang.HolProg 64 :=
.seq rawBody670_198 rawBody670_199

def rawBody670_201 : StackLang.HolProg 64 :=
.seq rawBody670_197 rawBody670_200

def rawBody670_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody670_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2785#64)

def rawBody670_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody670_205 : StackLang.HolProg 64 :=
.seq rawBody670_203 rawBody670_204

def rawBody670_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody670_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody670_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody670_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 670 7

def rawBody670_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody670_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody670_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody670_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody670_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody670_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody670_216 : StackLang.HolProg 64 :=
.seq rawBody670_214 rawBody670_215

def rawBody670_217 : StackLang.HolProg 64 :=
.seq rawBody670_213 rawBody670_216

def rawBody670_218 : StackLang.HolProg 64 :=
.seq rawBody670_212 rawBody670_217

def rawBody670_219 : StackLang.HolProg 64 :=
.seq rawBody670_211 rawBody670_218

def rawBody670_220 : StackLang.HolProg 64 :=
.seq rawBody670_210 rawBody670_219

def rawBody670_221 : StackLang.HolProg 64 :=
.seq rawBody670_209 rawBody670_220

def rawBody670_222 : StackLang.HolProg 64 :=
.seq rawBody670_208 rawBody670_221

def rawBody670_223 : StackLang.HolProg 64 :=
.seq rawBody670_207 rawBody670_222

def rawBody670_224 : StackLang.HolProg 64 :=
.seq rawBody670_206 rawBody670_223

def rawBody670_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody670_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody670_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody670_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody670_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody670_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody670_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody670_232 : StackLang.HolProg 64 :=
.seq rawBody670_230 rawBody670_231

def rawBody670_233 : StackLang.HolProg 64 :=
.seq rawBody670_229 rawBody670_232

def rawBody670_234 : StackLang.HolProg 64 :=
.seq rawBody670_228 rawBody670_233

def rawBody670_235 : StackLang.HolProg 64 :=
.seq rawBody670_227 rawBody670_234

def rawBody670_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody670_237 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody670_238 : StackLang.HolProg 64 :=
.seq rawBody670_236 rawBody670_237

def rawBody670_239 : StackLang.HolProg 64 :=
.call (some (rawBody670_235, 0, 670, 6)) (Sum.inl 668) (some (rawBody670_238, 670, 7))

def rawBody670_240 : StackLang.HolProg 64 :=
.seq rawBody670_226 rawBody670_239

def rawBody670_241 : StackLang.HolProg 64 :=
.seq rawBody670_225 rawBody670_240

def rawBody670_242 : StackLang.HolProg 64 :=
.seq rawBody670_224 rawBody670_241

def rawBody670_243 : StackLang.HolProg 64 :=
.seq rawBody670_205 rawBody670_242

def rawBody670_244 : StackLang.HolProg 64 :=
.seq rawBody670_202 rawBody670_243

def rawBody670_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody670_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody670_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody670_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody670_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody670_250 : StackLang.HolProg 64 :=
.seq rawBody670_248 rawBody670_249

def rawBody670_251 : StackLang.HolProg 64 :=
.seq rawBody670_247 rawBody670_250

def rawBody670_252 : StackLang.HolProg 64 :=
.seq rawBody670_246 rawBody670_251

def rawBody670_253 : StackLang.HolProg 64 :=
.seq rawBody670_245 rawBody670_252

def rawBody670_254 : StackLang.HolProg 64 :=
.seq rawBody670_244 rawBody670_253

def rawBody670_255 : StackLang.HolProg 64 :=
.seq rawBody670_201 rawBody670_254

def rawBody670_256 : StackLang.HolProg 64 :=
.seq rawBody670_196 rawBody670_255

def rawBody670_257 : StackLang.HolProg 64 :=
.seq rawBody670_195 rawBody670_256

def rawBody670_258 : StackLang.HolProg 64 :=
.seq rawBody670_194 rawBody670_257

def rawBody670_259 : StackLang.HolProg 64 :=
.seq rawBody670_127 rawBody670_258

def rawBody670_260 : StackLang.HolProg 64 :=
.seq rawBody670_126 rawBody670_259

def rawBody670_261 : StackLang.HolProg 64 :=
.seq rawBody670_125 rawBody670_260

def rawBody670_262 : StackLang.HolProg 64 :=
.seq rawBody670_124 rawBody670_261

def rawBody670_263 : StackLang.HolProg 64 :=
.seq rawBody670_123 rawBody670_262

def rawBody670_264 : StackLang.HolProg 64 :=
.seq rawBody670_8 rawBody670_263

def rawBody670_265 : StackLang.HolProg 64 :=
.seq rawBody670_7 rawBody670_264

def rawBody670_266 : StackLang.HolProg 64 :=
.seq rawBody670_0 rawBody670_265

def raw670 : StackLang.HolProg 64 := rawBody670_266
theorem raw670_eq : StackRawCall.compTop RawInfo.rawInfo (function670 (.list [])).1 = raw670 := by
  kernel_rfl
#print axioms raw670_eq
end InitECandidate.Proofs.BackendStages
