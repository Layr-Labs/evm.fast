import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw670
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody670_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody670_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody670_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody670_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody670_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody670_5 : StackLang.HolProg 64 :=
.seq AllocBody670_3 AllocBody670_4

def AllocBody670_6 : StackLang.HolProg 64 :=
.seq AllocBody670_2 AllocBody670_5

def AllocBody670_7 : StackLang.HolProg 64 :=
.seq AllocBody670_1 AllocBody670_6

def AllocBody670_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody670_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody670_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody670_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody670_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody670_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 8#64))

def AllocBody670_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody670_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 16#64))

def AllocBody670_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody670_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 24#64))

def AllocBody670_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody670_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def AllocBody670_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody670_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 8#64))

def AllocBody670_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody670_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 16#64))

def AllocBody670_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody670_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 24#64))

def AllocBody670_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody670_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 1

def AllocBody670_28 : StackLang.HolProg 64 :=
.seq AllocBody670_26 AllocBody670_27

def AllocBody670_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody670_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2783#64)

def AllocBody670_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody670_32 : StackLang.HolProg 64 :=
.seq AllocBody670_30 AllocBody670_31

def AllocBody670_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody670_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody670_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody670_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 670 3

def AllocBody670_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody670_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody670_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody670_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody670_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody670_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody670_43 : StackLang.HolProg 64 :=
.seq AllocBody670_41 AllocBody670_42

def AllocBody670_44 : StackLang.HolProg 64 :=
.seq AllocBody670_40 AllocBody670_43

def AllocBody670_45 : StackLang.HolProg 64 :=
.seq AllocBody670_39 AllocBody670_44

def AllocBody670_46 : StackLang.HolProg 64 :=
.seq AllocBody670_38 AllocBody670_45

def AllocBody670_47 : StackLang.HolProg 64 :=
.seq AllocBody670_37 AllocBody670_46

def AllocBody670_48 : StackLang.HolProg 64 :=
.seq AllocBody670_36 AllocBody670_47

def AllocBody670_49 : StackLang.HolProg 64 :=
.seq AllocBody670_35 AllocBody670_48

def AllocBody670_50 : StackLang.HolProg 64 :=
.seq AllocBody670_34 AllocBody670_49

def AllocBody670_51 : StackLang.HolProg 64 :=
.seq AllocBody670_33 AllocBody670_50

def AllocBody670_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody670_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody670_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody670_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody670_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody670_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody670_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody670_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 2

def AllocBody670_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody670_61 : StackLang.HolProg 64 :=
.seq AllocBody670_59 AllocBody670_60

def AllocBody670_62 : StackLang.HolProg 64 :=
.seq AllocBody670_58 AllocBody670_61

def AllocBody670_63 : StackLang.HolProg 64 :=
.seq AllocBody670_57 AllocBody670_62

def AllocBody670_64 : StackLang.HolProg 64 :=
.seq AllocBody670_56 AllocBody670_63

def AllocBody670_65 : StackLang.HolProg 64 :=
.seq AllocBody670_55 AllocBody670_64

def AllocBody670_66 : StackLang.HolProg 64 :=
.seq AllocBody670_54 AllocBody670_65

def AllocBody670_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 2

def AllocBody670_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody670_69 : StackLang.HolProg 64 :=
.seq AllocBody670_67 AllocBody670_68

def AllocBody670_70 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody670_71 : StackLang.HolProg 64 :=
.seq AllocBody670_69 AllocBody670_70

def AllocBody670_72 : StackLang.HolProg 64 :=
.call (some (AllocBody670_66, 0, 670, 2)) (Sum.inl 661) (some (AllocBody670_71, 670, 3))

def AllocBody670_73 : StackLang.HolProg 64 :=
.seq AllocBody670_53 AllocBody670_72

def AllocBody670_74 : StackLang.HolProg 64 :=
.seq AllocBody670_52 AllocBody670_73

def AllocBody670_75 : StackLang.HolProg 64 :=
.seq AllocBody670_51 AllocBody670_74

def AllocBody670_76 : StackLang.HolProg 64 :=
.seq AllocBody670_32 AllocBody670_75

def AllocBody670_77 : StackLang.HolProg 64 :=
.seq AllocBody670_29 AllocBody670_76

def AllocBody670_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody670_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody670_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody670_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody670_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def AllocBody670_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody670_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def AllocBody670_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody670_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def AllocBody670_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody670_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody670_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody670_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 10

def AllocBody670_91 : StackLang.HolProg 64 :=
.seq AllocBody670_89 AllocBody670_90

def AllocBody670_92 : StackLang.HolProg 64 :=
.seq AllocBody670_88 AllocBody670_91

def AllocBody670_93 : StackLang.HolProg 64 :=
.seq AllocBody670_87 AllocBody670_92

def AllocBody670_94 : StackLang.HolProg 64 :=
.seq AllocBody670_86 AllocBody670_93

def AllocBody670_95 : StackLang.HolProg 64 :=
.seq AllocBody670_85 AllocBody670_94

def AllocBody670_96 : StackLang.HolProg 64 :=
.seq AllocBody670_84 AllocBody670_95

def AllocBody670_97 : StackLang.HolProg 64 :=
.seq AllocBody670_83 AllocBody670_96

def AllocBody670_98 : StackLang.HolProg 64 :=
.seq AllocBody670_82 AllocBody670_97

def AllocBody670_99 : StackLang.HolProg 64 :=
.seq AllocBody670_81 AllocBody670_98

def AllocBody670_100 : StackLang.HolProg 64 :=
.seq AllocBody670_80 AllocBody670_99

def AllocBody670_101 : StackLang.HolProg 64 :=
.seq AllocBody670_79 AllocBody670_100

def AllocBody670_102 : StackLang.HolProg 64 :=
.seq AllocBody670_78 AllocBody670_101

def AllocBody670_103 : StackLang.HolProg 64 :=
.seq AllocBody670_77 AllocBody670_102

def AllocBody670_104 : StackLang.HolProg 64 :=
.seq AllocBody670_28 AllocBody670_103

def AllocBody670_105 : StackLang.HolProg 64 :=
.seq AllocBody670_25 AllocBody670_104

def AllocBody670_106 : StackLang.HolProg 64 :=
.seq AllocBody670_24 AllocBody670_105

def AllocBody670_107 : StackLang.HolProg 64 :=
.seq AllocBody670_23 AllocBody670_106

def AllocBody670_108 : StackLang.HolProg 64 :=
.seq AllocBody670_22 AllocBody670_107

def AllocBody670_109 : StackLang.HolProg 64 :=
.seq AllocBody670_21 AllocBody670_108

def AllocBody670_110 : StackLang.HolProg 64 :=
.seq AllocBody670_20 AllocBody670_109

def AllocBody670_111 : StackLang.HolProg 64 :=
.seq AllocBody670_19 AllocBody670_110

def AllocBody670_112 : StackLang.HolProg 64 :=
.seq AllocBody670_18 AllocBody670_111

def AllocBody670_113 : StackLang.HolProg 64 :=
.seq AllocBody670_17 AllocBody670_112

def AllocBody670_114 : StackLang.HolProg 64 :=
.seq AllocBody670_16 AllocBody670_113

def AllocBody670_115 : StackLang.HolProg 64 :=
.seq AllocBody670_15 AllocBody670_114

def AllocBody670_116 : StackLang.HolProg 64 :=
.seq AllocBody670_14 AllocBody670_115

def AllocBody670_117 : StackLang.HolProg 64 :=
.seq AllocBody670_13 AllocBody670_116

def AllocBody670_118 : StackLang.HolProg 64 :=
.seq AllocBody670_12 AllocBody670_117

def AllocBody670_119 : StackLang.HolProg 64 :=
.seq AllocBody670_11 AllocBody670_118

def AllocBody670_120 : StackLang.HolProg 64 :=
.seq AllocBody670_10 AllocBody670_119

def AllocBody670_121 : StackLang.HolProg 64 :=
.seq AllocBody670_9 AllocBody670_120

def AllocBody670_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody670_123 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody670_121 AllocBody670_122

def AllocBody670_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody670_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody670_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody670_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 2#64)

def AllocBody670_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody670_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody670_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody670_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody670_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody670_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody670_134 : StackLang.HolProg 64 :=
.seq AllocBody670_132 AllocBody670_133

def AllocBody670_135 : StackLang.HolProg 64 :=
.seq AllocBody670_131 AllocBody670_134

def AllocBody670_136 : StackLang.HolProg 64 :=
.seq AllocBody670_130 AllocBody670_135

def AllocBody670_137 : StackLang.HolProg 64 :=
.seq AllocBody670_129 AllocBody670_136

def AllocBody670_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody670_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2784#64)

def AllocBody670_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody670_141 : StackLang.HolProg 64 :=
.seq AllocBody670_139 AllocBody670_140

def AllocBody670_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody670_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody670_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody670_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 670 5

def AllocBody670_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody670_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody670_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody670_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody670_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody670_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody670_152 : StackLang.HolProg 64 :=
.seq AllocBody670_150 AllocBody670_151

def AllocBody670_153 : StackLang.HolProg 64 :=
.seq AllocBody670_149 AllocBody670_152

def AllocBody670_154 : StackLang.HolProg 64 :=
.seq AllocBody670_148 AllocBody670_153

def AllocBody670_155 : StackLang.HolProg 64 :=
.seq AllocBody670_147 AllocBody670_154

def AllocBody670_156 : StackLang.HolProg 64 :=
.seq AllocBody670_146 AllocBody670_155

def AllocBody670_157 : StackLang.HolProg 64 :=
.seq AllocBody670_145 AllocBody670_156

def AllocBody670_158 : StackLang.HolProg 64 :=
.seq AllocBody670_144 AllocBody670_157

def AllocBody670_159 : StackLang.HolProg 64 :=
.seq AllocBody670_143 AllocBody670_158

def AllocBody670_160 : StackLang.HolProg 64 :=
.seq AllocBody670_142 AllocBody670_159

def AllocBody670_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody670_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody670_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody670_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody670_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody670_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody670_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody670_168 : StackLang.HolProg 64 :=
.seq AllocBody670_166 AllocBody670_167

def AllocBody670_169 : StackLang.HolProg 64 :=
.seq AllocBody670_165 AllocBody670_168

def AllocBody670_170 : StackLang.HolProg 64 :=
.seq AllocBody670_164 AllocBody670_169

def AllocBody670_171 : StackLang.HolProg 64 :=
.seq AllocBody670_163 AllocBody670_170

def AllocBody670_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody670_173 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody670_174 : StackLang.HolProg 64 :=
.seq AllocBody670_172 AllocBody670_173

def AllocBody670_175 : StackLang.HolProg 64 :=
.call (some (AllocBody670_171, 0, 670, 4)) (Sum.inl 666) (some (AllocBody670_174, 670, 5))

def AllocBody670_176 : StackLang.HolProg 64 :=
.seq AllocBody670_162 AllocBody670_175

def AllocBody670_177 : StackLang.HolProg 64 :=
.seq AllocBody670_161 AllocBody670_176

def AllocBody670_178 : StackLang.HolProg 64 :=
.seq AllocBody670_160 AllocBody670_177

def AllocBody670_179 : StackLang.HolProg 64 :=
.seq AllocBody670_141 AllocBody670_178

def AllocBody670_180 : StackLang.HolProg 64 :=
.seq AllocBody670_138 AllocBody670_179

def AllocBody670_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody670_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody670_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody670_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody670_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody670_186 : StackLang.HolProg 64 :=
.seq AllocBody670_184 AllocBody670_185

def AllocBody670_187 : StackLang.HolProg 64 :=
.seq AllocBody670_183 AllocBody670_186

def AllocBody670_188 : StackLang.HolProg 64 :=
.seq AllocBody670_182 AllocBody670_187

def AllocBody670_189 : StackLang.HolProg 64 :=
.seq AllocBody670_181 AllocBody670_188

def AllocBody670_190 : StackLang.HolProg 64 :=
.seq AllocBody670_180 AllocBody670_189

def AllocBody670_191 : StackLang.HolProg 64 :=
.seq AllocBody670_137 AllocBody670_190

def AllocBody670_192 : StackLang.HolProg 64 :=
.seq AllocBody670_128 AllocBody670_191

def AllocBody670_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody670_194 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody670_192 AllocBody670_193

def AllocBody670_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody670_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody670_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody670_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody670_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody670_200 : StackLang.HolProg 64 :=
.seq AllocBody670_198 AllocBody670_199

def AllocBody670_201 : StackLang.HolProg 64 :=
.seq AllocBody670_197 AllocBody670_200

def AllocBody670_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody670_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2785#64)

def AllocBody670_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody670_205 : StackLang.HolProg 64 :=
.seq AllocBody670_203 AllocBody670_204

def AllocBody670_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody670_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody670_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody670_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 670 7

def AllocBody670_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody670_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody670_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody670_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody670_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody670_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody670_216 : StackLang.HolProg 64 :=
.seq AllocBody670_214 AllocBody670_215

def AllocBody670_217 : StackLang.HolProg 64 :=
.seq AllocBody670_213 AllocBody670_216

def AllocBody670_218 : StackLang.HolProg 64 :=
.seq AllocBody670_212 AllocBody670_217

def AllocBody670_219 : StackLang.HolProg 64 :=
.seq AllocBody670_211 AllocBody670_218

def AllocBody670_220 : StackLang.HolProg 64 :=
.seq AllocBody670_210 AllocBody670_219

def AllocBody670_221 : StackLang.HolProg 64 :=
.seq AllocBody670_209 AllocBody670_220

def AllocBody670_222 : StackLang.HolProg 64 :=
.seq AllocBody670_208 AllocBody670_221

def AllocBody670_223 : StackLang.HolProg 64 :=
.seq AllocBody670_207 AllocBody670_222

def AllocBody670_224 : StackLang.HolProg 64 :=
.seq AllocBody670_206 AllocBody670_223

def AllocBody670_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody670_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody670_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody670_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody670_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody670_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody670_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody670_232 : StackLang.HolProg 64 :=
.seq AllocBody670_230 AllocBody670_231

def AllocBody670_233 : StackLang.HolProg 64 :=
.seq AllocBody670_229 AllocBody670_232

def AllocBody670_234 : StackLang.HolProg 64 :=
.seq AllocBody670_228 AllocBody670_233

def AllocBody670_235 : StackLang.HolProg 64 :=
.seq AllocBody670_227 AllocBody670_234

def AllocBody670_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody670_237 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody670_238 : StackLang.HolProg 64 :=
.seq AllocBody670_236 AllocBody670_237

def AllocBody670_239 : StackLang.HolProg 64 :=
.call (some (AllocBody670_235, 0, 670, 6)) (Sum.inl 668) (some (AllocBody670_238, 670, 7))

def AllocBody670_240 : StackLang.HolProg 64 :=
.seq AllocBody670_226 AllocBody670_239

def AllocBody670_241 : StackLang.HolProg 64 :=
.seq AllocBody670_225 AllocBody670_240

def AllocBody670_242 : StackLang.HolProg 64 :=
.seq AllocBody670_224 AllocBody670_241

def AllocBody670_243 : StackLang.HolProg 64 :=
.seq AllocBody670_205 AllocBody670_242

def AllocBody670_244 : StackLang.HolProg 64 :=
.seq AllocBody670_202 AllocBody670_243

def AllocBody670_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody670_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody670_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody670_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody670_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody670_250 : StackLang.HolProg 64 :=
.seq AllocBody670_248 AllocBody670_249

def AllocBody670_251 : StackLang.HolProg 64 :=
.seq AllocBody670_247 AllocBody670_250

def AllocBody670_252 : StackLang.HolProg 64 :=
.seq AllocBody670_246 AllocBody670_251

def AllocBody670_253 : StackLang.HolProg 64 :=
.seq AllocBody670_245 AllocBody670_252

def AllocBody670_254 : StackLang.HolProg 64 :=
.seq AllocBody670_244 AllocBody670_253

def AllocBody670_255 : StackLang.HolProg 64 :=
.seq AllocBody670_201 AllocBody670_254

def AllocBody670_256 : StackLang.HolProg 64 :=
.seq AllocBody670_196 AllocBody670_255

def AllocBody670_257 : StackLang.HolProg 64 :=
.seq AllocBody670_195 AllocBody670_256

def AllocBody670_258 : StackLang.HolProg 64 :=
.seq AllocBody670_194 AllocBody670_257

def AllocBody670_259 : StackLang.HolProg 64 :=
.seq AllocBody670_127 AllocBody670_258

def AllocBody670_260 : StackLang.HolProg 64 :=
.seq AllocBody670_126 AllocBody670_259

def AllocBody670_261 : StackLang.HolProg 64 :=
.seq AllocBody670_125 AllocBody670_260

def AllocBody670_262 : StackLang.HolProg 64 :=
.seq AllocBody670_124 AllocBody670_261

def AllocBody670_263 : StackLang.HolProg 64 :=
.seq AllocBody670_123 AllocBody670_262

def AllocBody670_264 : StackLang.HolProg 64 :=
.seq AllocBody670_8 AllocBody670_263

def AllocBody670_265 : StackLang.HolProg 64 :=
.seq AllocBody670_7 AllocBody670_264

def AllocBody670_266 : StackLang.HolProg 64 :=
.seq AllocBody670_0 AllocBody670_265

def Alloc670 : Nat × StackLang.HolProg 64 := (670, AllocBody670_266)
theorem Alloc670_eq : StackAlloc.progComp (670, raw670) = Alloc670 := by
  kernel_rfl
#print axioms Alloc670_eq
end InitECandidate.Proofs.BackendStages
