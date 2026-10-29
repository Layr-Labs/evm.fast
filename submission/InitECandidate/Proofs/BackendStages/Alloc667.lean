import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw667
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody667_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 8

def AllocBody667_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 11#64)

def AllocBody667_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody667_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def AllocBody667_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody667_6 : StackLang.HolProg 64 :=
.seq AllocBody667_4 AllocBody667_5

def AllocBody667_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody667_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody667_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody667_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 12#64)))

def AllocBody667_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody667_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody667_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody667_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody667_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody667_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def AllocBody667_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 4

def AllocBody667_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def AllocBody667_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def AllocBody667_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 82#64)

def AllocBody667_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 6

def AllocBody667_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def AllocBody667_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody667_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def AllocBody667_31 : StackLang.HolProg 64 :=
.seq AllocBody667_29 AllocBody667_30

def AllocBody667_32 : StackLang.HolProg 64 :=
.seq AllocBody667_28 AllocBody667_31

def AllocBody667_33 : StackLang.HolProg 64 :=
.seq AllocBody667_27 AllocBody667_32

def AllocBody667_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2762#64)

def AllocBody667_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody667_37 : StackLang.HolProg 64 :=
.seq AllocBody667_35 AllocBody667_36

def AllocBody667_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody667_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody667_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody667_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 667 3

def AllocBody667_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody667_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody667_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody667_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody667_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody667_48 : StackLang.HolProg 64 :=
.seq AllocBody667_46 AllocBody667_47

def AllocBody667_49 : StackLang.HolProg 64 :=
.seq AllocBody667_45 AllocBody667_48

def AllocBody667_50 : StackLang.HolProg 64 :=
.seq AllocBody667_44 AllocBody667_49

def AllocBody667_51 : StackLang.HolProg 64 :=
.seq AllocBody667_43 AllocBody667_50

def AllocBody667_52 : StackLang.HolProg 64 :=
.seq AllocBody667_42 AllocBody667_51

def AllocBody667_53 : StackLang.HolProg 64 :=
.seq AllocBody667_41 AllocBody667_52

def AllocBody667_54 : StackLang.HolProg 64 :=
.seq AllocBody667_40 AllocBody667_53

def AllocBody667_55 : StackLang.HolProg 64 :=
.seq AllocBody667_39 AllocBody667_54

def AllocBody667_56 : StackLang.HolProg 64 :=
.seq AllocBody667_38 AllocBody667_55

def AllocBody667_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody667_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody667_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody667_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody667_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody667_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody667_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody667_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody667_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def AllocBody667_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody667_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody667_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody667_71 : StackLang.HolProg 64 :=
.seq AllocBody667_69 AllocBody667_70

def AllocBody667_72 : StackLang.HolProg 64 :=
.seq AllocBody667_68 AllocBody667_71

def AllocBody667_73 : StackLang.HolProg 64 :=
.seq AllocBody667_67 AllocBody667_72

def AllocBody667_74 : StackLang.HolProg 64 :=
.seq AllocBody667_66 AllocBody667_73

def AllocBody667_75 : StackLang.HolProg 64 :=
.seq AllocBody667_65 AllocBody667_74

def AllocBody667_76 : StackLang.HolProg 64 :=
.seq AllocBody667_64 AllocBody667_75

def AllocBody667_77 : StackLang.HolProg 64 :=
.seq AllocBody667_63 AllocBody667_76

def AllocBody667_78 : StackLang.HolProg 64 :=
.seq AllocBody667_62 AllocBody667_77

def AllocBody667_79 : StackLang.HolProg 64 :=
.seq AllocBody667_61 AllocBody667_78

def AllocBody667_80 : StackLang.HolProg 64 :=
.seq AllocBody667_60 AllocBody667_79

def AllocBody667_81 : StackLang.HolProg 64 :=
.seq AllocBody667_59 AllocBody667_80

def AllocBody667_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def AllocBody667_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody667_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody667_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody667_86 : StackLang.HolProg 64 :=
.seq AllocBody667_84 AllocBody667_85

def AllocBody667_87 : StackLang.HolProg 64 :=
.seq AllocBody667_83 AllocBody667_86

def AllocBody667_88 : StackLang.HolProg 64 :=
.seq AllocBody667_82 AllocBody667_87

def AllocBody667_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody667_90 : StackLang.HolProg 64 :=
.seq AllocBody667_88 AllocBody667_89

def AllocBody667_91 : StackLang.HolProg 64 :=
.call (some (AllocBody667_81, 0, 667, 2)) (Sum.inl 665) (some (AllocBody667_90, 667, 3))

def AllocBody667_92 : StackLang.HolProg 64 :=
.seq AllocBody667_58 AllocBody667_91

def AllocBody667_93 : StackLang.HolProg 64 :=
.seq AllocBody667_57 AllocBody667_92

def AllocBody667_94 : StackLang.HolProg 64 :=
.seq AllocBody667_56 AllocBody667_93

def AllocBody667_95 : StackLang.HolProg 64 :=
.seq AllocBody667_37 AllocBody667_94

def AllocBody667_96 : StackLang.HolProg 64 :=
.seq AllocBody667_34 AllocBody667_95

def AllocBody667_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody667_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody667_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18#64)

def AllocBody667_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 6

def AllocBody667_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody667_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 2

def AllocBody667_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 1

def AllocBody667_104 : StackLang.HolProg 64 :=
.seq AllocBody667_102 AllocBody667_103

def AllocBody667_105 : StackLang.HolProg 64 :=
.seq AllocBody667_101 AllocBody667_104

def AllocBody667_106 : StackLang.HolProg 64 :=
.seq AllocBody667_100 AllocBody667_105

def AllocBody667_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2763#64)

def AllocBody667_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody667_110 : StackLang.HolProg 64 :=
.seq AllocBody667_108 AllocBody667_109

def AllocBody667_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody667_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody667_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody667_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 667 5

def AllocBody667_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody667_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody667_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody667_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody667_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody667_121 : StackLang.HolProg 64 :=
.seq AllocBody667_119 AllocBody667_120

def AllocBody667_122 : StackLang.HolProg 64 :=
.seq AllocBody667_118 AllocBody667_121

def AllocBody667_123 : StackLang.HolProg 64 :=
.seq AllocBody667_117 AllocBody667_122

def AllocBody667_124 : StackLang.HolProg 64 :=
.seq AllocBody667_116 AllocBody667_123

def AllocBody667_125 : StackLang.HolProg 64 :=
.seq AllocBody667_115 AllocBody667_124

def AllocBody667_126 : StackLang.HolProg 64 :=
.seq AllocBody667_114 AllocBody667_125

def AllocBody667_127 : StackLang.HolProg 64 :=
.seq AllocBody667_113 AllocBody667_126

def AllocBody667_128 : StackLang.HolProg 64 :=
.seq AllocBody667_112 AllocBody667_127

def AllocBody667_129 : StackLang.HolProg 64 :=
.seq AllocBody667_111 AllocBody667_128

def AllocBody667_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody667_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody667_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody667_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody667_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody667_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody667_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody667_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody667_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def AllocBody667_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody667_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody667_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody667_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody667_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 1

def AllocBody667_146 : StackLang.HolProg 64 :=
.seq AllocBody667_144 AllocBody667_145

def AllocBody667_147 : StackLang.HolProg 64 :=
.seq AllocBody667_143 AllocBody667_146

def AllocBody667_148 : StackLang.HolProg 64 :=
.seq AllocBody667_142 AllocBody667_147

def AllocBody667_149 : StackLang.HolProg 64 :=
.seq AllocBody667_141 AllocBody667_148

def AllocBody667_150 : StackLang.HolProg 64 :=
.seq AllocBody667_140 AllocBody667_149

def AllocBody667_151 : StackLang.HolProg 64 :=
.seq AllocBody667_139 AllocBody667_150

def AllocBody667_152 : StackLang.HolProg 64 :=
.seq AllocBody667_138 AllocBody667_151

def AllocBody667_153 : StackLang.HolProg 64 :=
.seq AllocBody667_137 AllocBody667_152

def AllocBody667_154 : StackLang.HolProg 64 :=
.seq AllocBody667_136 AllocBody667_153

def AllocBody667_155 : StackLang.HolProg 64 :=
.seq AllocBody667_135 AllocBody667_154

def AllocBody667_156 : StackLang.HolProg 64 :=
.seq AllocBody667_134 AllocBody667_155

def AllocBody667_157 : StackLang.HolProg 64 :=
.seq AllocBody667_133 AllocBody667_156

def AllocBody667_158 : StackLang.HolProg 64 :=
.seq AllocBody667_132 AllocBody667_157

def AllocBody667_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def AllocBody667_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody667_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody667_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody667_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody667_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 1

def AllocBody667_165 : StackLang.HolProg 64 :=
.seq AllocBody667_163 AllocBody667_164

def AllocBody667_166 : StackLang.HolProg 64 :=
.seq AllocBody667_162 AllocBody667_165

def AllocBody667_167 : StackLang.HolProg 64 :=
.seq AllocBody667_161 AllocBody667_166

def AllocBody667_168 : StackLang.HolProg 64 :=
.seq AllocBody667_160 AllocBody667_167

def AllocBody667_169 : StackLang.HolProg 64 :=
.seq AllocBody667_159 AllocBody667_168

def AllocBody667_170 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody667_171 : StackLang.HolProg 64 :=
.seq AllocBody667_169 AllocBody667_170

def AllocBody667_172 : StackLang.HolProg 64 :=
.call (some (AllocBody667_158, 0, 667, 4)) (Sum.inl 665) (some (AllocBody667_171, 667, 5))

def AllocBody667_173 : StackLang.HolProg 64 :=
.seq AllocBody667_131 AllocBody667_172

def AllocBody667_174 : StackLang.HolProg 64 :=
.seq AllocBody667_130 AllocBody667_173

def AllocBody667_175 : StackLang.HolProg 64 :=
.seq AllocBody667_129 AllocBody667_174

def AllocBody667_176 : StackLang.HolProg 64 :=
.seq AllocBody667_110 AllocBody667_175

def AllocBody667_177 : StackLang.HolProg 64 :=
.seq AllocBody667_107 AllocBody667_176

def AllocBody667_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody667_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody667_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody667_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody667_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody667_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody667_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def AllocBody667_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def AllocBody667_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def AllocBody667_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def AllocBody667_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 12 6

def AllocBody667_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 5

def AllocBody667_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 2

def AllocBody667_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 11 1

def AllocBody667_195 : StackLang.HolProg 64 :=
.seq AllocBody667_193 AllocBody667_194

def AllocBody667_196 : StackLang.HolProg 64 :=
.seq AllocBody667_192 AllocBody667_195

def AllocBody667_197 : StackLang.HolProg 64 :=
.seq AllocBody667_191 AllocBody667_196

def AllocBody667_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2764#64)

def AllocBody667_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody667_201 : StackLang.HolProg 64 :=
.seq AllocBody667_199 AllocBody667_200

def AllocBody667_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody667_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody667_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody667_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 667 7

def AllocBody667_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody667_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody667_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody667_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody667_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody667_212 : StackLang.HolProg 64 :=
.seq AllocBody667_210 AllocBody667_211

def AllocBody667_213 : StackLang.HolProg 64 :=
.seq AllocBody667_209 AllocBody667_212

def AllocBody667_214 : StackLang.HolProg 64 :=
.seq AllocBody667_208 AllocBody667_213

def AllocBody667_215 : StackLang.HolProg 64 :=
.seq AllocBody667_207 AllocBody667_214

def AllocBody667_216 : StackLang.HolProg 64 :=
.seq AllocBody667_206 AllocBody667_215

def AllocBody667_217 : StackLang.HolProg 64 :=
.seq AllocBody667_205 AllocBody667_216

def AllocBody667_218 : StackLang.HolProg 64 :=
.seq AllocBody667_204 AllocBody667_217

def AllocBody667_219 : StackLang.HolProg 64 :=
.seq AllocBody667_203 AllocBody667_218

def AllocBody667_220 : StackLang.HolProg 64 :=
.seq AllocBody667_202 AllocBody667_219

def AllocBody667_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody667_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody667_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody667_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody667_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody667_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def AllocBody667_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody667_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody667_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 3

def AllocBody667_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody667_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 1

def AllocBody667_234 : StackLang.HolProg 64 :=
.seq AllocBody667_232 AllocBody667_233

def AllocBody667_235 : StackLang.HolProg 64 :=
.seq AllocBody667_231 AllocBody667_234

def AllocBody667_236 : StackLang.HolProg 64 :=
.seq AllocBody667_230 AllocBody667_235

def AllocBody667_237 : StackLang.HolProg 64 :=
.seq AllocBody667_229 AllocBody667_236

def AllocBody667_238 : StackLang.HolProg 64 :=
.seq AllocBody667_228 AllocBody667_237

def AllocBody667_239 : StackLang.HolProg 64 :=
.seq AllocBody667_227 AllocBody667_238

def AllocBody667_240 : StackLang.HolProg 64 :=
.seq AllocBody667_226 AllocBody667_239

def AllocBody667_241 : StackLang.HolProg 64 :=
.seq AllocBody667_225 AllocBody667_240

def AllocBody667_242 : StackLang.HolProg 64 :=
.seq AllocBody667_224 AllocBody667_241

def AllocBody667_243 : StackLang.HolProg 64 :=
.seq AllocBody667_223 AllocBody667_242

def AllocBody667_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def AllocBody667_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody667_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody667_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 3

def AllocBody667_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody667_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 1

def AllocBody667_250 : StackLang.HolProg 64 :=
.seq AllocBody667_248 AllocBody667_249

def AllocBody667_251 : StackLang.HolProg 64 :=
.seq AllocBody667_247 AllocBody667_250

def AllocBody667_252 : StackLang.HolProg 64 :=
.seq AllocBody667_246 AllocBody667_251

def AllocBody667_253 : StackLang.HolProg 64 :=
.seq AllocBody667_245 AllocBody667_252

def AllocBody667_254 : StackLang.HolProg 64 :=
.seq AllocBody667_244 AllocBody667_253

def AllocBody667_255 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody667_256 : StackLang.HolProg 64 :=
.seq AllocBody667_254 AllocBody667_255

def AllocBody667_257 : StackLang.HolProg 64 :=
.call (some (AllocBody667_243, 0, 667, 6)) (Sum.inl 659) (some (AllocBody667_256, 667, 7))

def AllocBody667_258 : StackLang.HolProg 64 :=
.seq AllocBody667_222 AllocBody667_257

def AllocBody667_259 : StackLang.HolProg 64 :=
.seq AllocBody667_221 AllocBody667_258

def AllocBody667_260 : StackLang.HolProg 64 :=
.seq AllocBody667_220 AllocBody667_259

def AllocBody667_261 : StackLang.HolProg 64 :=
.seq AllocBody667_201 AllocBody667_260

def AllocBody667_262 : StackLang.HolProg 64 :=
.seq AllocBody667_198 AllocBody667_261

def AllocBody667_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody667_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody667_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody667_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody667_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody667_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody667_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody667_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def AllocBody667_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody667_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody667_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody667_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 5

def AllocBody667_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody667_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def AllocBody667_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody667_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 16#64))

def AllocBody667_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def AllocBody667_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2765#64)

def AllocBody667_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody667_293 : StackLang.HolProg 64 :=
.seq AllocBody667_291 AllocBody667_292

def AllocBody667_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody667_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody667_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody667_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 667 9

def AllocBody667_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody667_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody667_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody667_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody667_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody667_304 : StackLang.HolProg 64 :=
.seq AllocBody667_302 AllocBody667_303

def AllocBody667_305 : StackLang.HolProg 64 :=
.seq AllocBody667_301 AllocBody667_304

def AllocBody667_306 : StackLang.HolProg 64 :=
.seq AllocBody667_300 AllocBody667_305

def AllocBody667_307 : StackLang.HolProg 64 :=
.seq AllocBody667_299 AllocBody667_306

def AllocBody667_308 : StackLang.HolProg 64 :=
.seq AllocBody667_298 AllocBody667_307

def AllocBody667_309 : StackLang.HolProg 64 :=
.seq AllocBody667_297 AllocBody667_308

def AllocBody667_310 : StackLang.HolProg 64 :=
.seq AllocBody667_296 AllocBody667_309

def AllocBody667_311 : StackLang.HolProg 64 :=
.seq AllocBody667_295 AllocBody667_310

def AllocBody667_312 : StackLang.HolProg 64 :=
.seq AllocBody667_294 AllocBody667_311

def AllocBody667_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody667_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody667_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody667_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody667_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody667_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def AllocBody667_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody667_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody667_323 : StackLang.HolProg 64 :=
.seq AllocBody667_321 AllocBody667_322

def AllocBody667_324 : StackLang.HolProg 64 :=
.seq AllocBody667_320 AllocBody667_323

def AllocBody667_325 : StackLang.HolProg 64 :=
.seq AllocBody667_319 AllocBody667_324

def AllocBody667_326 : StackLang.HolProg 64 :=
.seq AllocBody667_318 AllocBody667_325

def AllocBody667_327 : StackLang.HolProg 64 :=
.seq AllocBody667_317 AllocBody667_326

def AllocBody667_328 : StackLang.HolProg 64 :=
.seq AllocBody667_316 AllocBody667_327

def AllocBody667_329 : StackLang.HolProg 64 :=
.seq AllocBody667_315 AllocBody667_328

def AllocBody667_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def AllocBody667_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody667_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody667_333 : StackLang.HolProg 64 :=
.seq AllocBody667_331 AllocBody667_332

def AllocBody667_334 : StackLang.HolProg 64 :=
.seq AllocBody667_330 AllocBody667_333

def AllocBody667_335 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody667_336 : StackLang.HolProg 64 :=
.seq AllocBody667_334 AllocBody667_335

def AllocBody667_337 : StackLang.HolProg 64 :=
.call (some (AllocBody667_329, 0, 667, 8)) (Sum.inl 658) (some (AllocBody667_336, 667, 9))

def AllocBody667_338 : StackLang.HolProg 64 :=
.seq AllocBody667_314 AllocBody667_337

def AllocBody667_339 : StackLang.HolProg 64 :=
.seq AllocBody667_313 AllocBody667_338

def AllocBody667_340 : StackLang.HolProg 64 :=
.seq AllocBody667_312 AllocBody667_339

def AllocBody667_341 : StackLang.HolProg 64 :=
.seq AllocBody667_293 AllocBody667_340

def AllocBody667_342 : StackLang.HolProg 64 :=
.seq AllocBody667_290 AllocBody667_341

def AllocBody667_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody667_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def AllocBody667_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody667_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody667_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody667_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def AllocBody667_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def AllocBody667_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def AllocBody667_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 7

def AllocBody667_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody667_359 : StackLang.HolProg 64 :=
.seq AllocBody667_357 AllocBody667_358

def AllocBody667_360 : StackLang.HolProg 64 :=
.seq AllocBody667_356 AllocBody667_359

def AllocBody667_361 : StackLang.HolProg 64 :=
.seq AllocBody667_355 AllocBody667_360

def AllocBody667_362 : StackLang.HolProg 64 :=
.seq AllocBody667_354 AllocBody667_361

def AllocBody667_363 : StackLang.HolProg 64 :=
.seq AllocBody667_353 AllocBody667_362

def AllocBody667_364 : StackLang.HolProg 64 :=
.seq AllocBody667_352 AllocBody667_363

def AllocBody667_365 : StackLang.HolProg 64 :=
.seq AllocBody667_351 AllocBody667_364

def AllocBody667_366 : StackLang.HolProg 64 :=
.seq AllocBody667_350 AllocBody667_365

def AllocBody667_367 : StackLang.HolProg 64 :=
.seq AllocBody667_349 AllocBody667_366

def AllocBody667_368 : StackLang.HolProg 64 :=
.seq AllocBody667_348 AllocBody667_367

def AllocBody667_369 : StackLang.HolProg 64 :=
.seq AllocBody667_347 AllocBody667_368

def AllocBody667_370 : StackLang.HolProg 64 :=
.seq AllocBody667_346 AllocBody667_369

def AllocBody667_371 : StackLang.HolProg 64 :=
.seq AllocBody667_345 AllocBody667_370

def AllocBody667_372 : StackLang.HolProg 64 :=
.seq AllocBody667_344 AllocBody667_371

def AllocBody667_373 : StackLang.HolProg 64 :=
.seq AllocBody667_343 AllocBody667_372

def AllocBody667_374 : StackLang.HolProg 64 :=
.seq AllocBody667_342 AllocBody667_373

def AllocBody667_375 : StackLang.HolProg 64 :=
.seq AllocBody667_289 AllocBody667_374

def AllocBody667_376 : StackLang.HolProg 64 :=
.seq AllocBody667_288 AllocBody667_375

def AllocBody667_377 : StackLang.HolProg 64 :=
.seq AllocBody667_287 AllocBody667_376

def AllocBody667_378 : StackLang.HolProg 64 :=
.seq AllocBody667_286 AllocBody667_377

def AllocBody667_379 : StackLang.HolProg 64 :=
.seq AllocBody667_285 AllocBody667_378

def AllocBody667_380 : StackLang.HolProg 64 :=
.seq AllocBody667_284 AllocBody667_379

def AllocBody667_381 : StackLang.HolProg 64 :=
.seq AllocBody667_283 AllocBody667_380

def AllocBody667_382 : StackLang.HolProg 64 :=
.seq AllocBody667_282 AllocBody667_381

def AllocBody667_383 : StackLang.HolProg 64 :=
.seq AllocBody667_281 AllocBody667_382

def AllocBody667_384 : StackLang.HolProg 64 :=
.seq AllocBody667_280 AllocBody667_383

def AllocBody667_385 : StackLang.HolProg 64 :=
.seq AllocBody667_279 AllocBody667_384

def AllocBody667_386 : StackLang.HolProg 64 :=
.seq AllocBody667_278 AllocBody667_385

def AllocBody667_387 : StackLang.HolProg 64 :=
.seq AllocBody667_277 AllocBody667_386

def AllocBody667_388 : StackLang.HolProg 64 :=
.seq AllocBody667_276 AllocBody667_387

def AllocBody667_389 : StackLang.HolProg 64 :=
.seq AllocBody667_275 AllocBody667_388

def AllocBody667_390 : StackLang.HolProg 64 :=
.seq AllocBody667_274 AllocBody667_389

def AllocBody667_391 : StackLang.HolProg 64 :=
.seq AllocBody667_273 AllocBody667_390

def AllocBody667_392 : StackLang.HolProg 64 :=
.seq AllocBody667_272 AllocBody667_391

def AllocBody667_393 : StackLang.HolProg 64 :=
.seq AllocBody667_271 AllocBody667_392

def AllocBody667_394 : StackLang.HolProg 64 :=
.seq AllocBody667_270 AllocBody667_393

def AllocBody667_395 : StackLang.HolProg 64 :=
.seq AllocBody667_269 AllocBody667_394

def AllocBody667_396 : StackLang.HolProg 64 :=
.seq AllocBody667_268 AllocBody667_395

def AllocBody667_397 : StackLang.HolProg 64 :=
.seq AllocBody667_267 AllocBody667_396

def AllocBody667_398 : StackLang.HolProg 64 :=
.seq AllocBody667_266 AllocBody667_397

def AllocBody667_399 : StackLang.HolProg 64 :=
.seq AllocBody667_265 AllocBody667_398

def AllocBody667_400 : StackLang.HolProg 64 :=
.seq AllocBody667_264 AllocBody667_399

def AllocBody667_401 : StackLang.HolProg 64 :=
.seq AllocBody667_263 AllocBody667_400

def AllocBody667_402 : StackLang.HolProg 64 :=
.seq AllocBody667_262 AllocBody667_401

def AllocBody667_403 : StackLang.HolProg 64 :=
.seq AllocBody667_197 AllocBody667_402

def AllocBody667_404 : StackLang.HolProg 64 :=
.seq AllocBody667_190 AllocBody667_403

def AllocBody667_405 : StackLang.HolProg 64 :=
.seq AllocBody667_189 AllocBody667_404

def AllocBody667_406 : StackLang.HolProg 64 :=
.seq AllocBody667_188 AllocBody667_405

def AllocBody667_407 : StackLang.HolProg 64 :=
.seq AllocBody667_187 AllocBody667_406

def AllocBody667_408 : StackLang.HolProg 64 :=
.seq AllocBody667_186 AllocBody667_407

def AllocBody667_409 : StackLang.HolProg 64 :=
.seq AllocBody667_185 AllocBody667_408

def AllocBody667_410 : StackLang.HolProg 64 :=
.seq AllocBody667_184 AllocBody667_409

def AllocBody667_411 : StackLang.HolProg 64 :=
.seq AllocBody667_183 AllocBody667_410

def AllocBody667_412 : StackLang.HolProg 64 :=
.seq AllocBody667_182 AllocBody667_411

def AllocBody667_413 : StackLang.HolProg 64 :=
.seq AllocBody667_181 AllocBody667_412

def AllocBody667_414 : StackLang.HolProg 64 :=
.seq AllocBody667_180 AllocBody667_413

def AllocBody667_415 : StackLang.HolProg 64 :=
.seq AllocBody667_179 AllocBody667_414

def AllocBody667_416 : StackLang.HolProg 64 :=
.seq AllocBody667_178 AllocBody667_415

def AllocBody667_417 : StackLang.HolProg 64 :=
.seq AllocBody667_177 AllocBody667_416

def AllocBody667_418 : StackLang.HolProg 64 :=
.seq AllocBody667_106 AllocBody667_417

def AllocBody667_419 : StackLang.HolProg 64 :=
.seq AllocBody667_99 AllocBody667_418

def AllocBody667_420 : StackLang.HolProg 64 :=
.seq AllocBody667_98 AllocBody667_419

def AllocBody667_421 : StackLang.HolProg 64 :=
.seq AllocBody667_97 AllocBody667_420

def AllocBody667_422 : StackLang.HolProg 64 :=
.seq AllocBody667_96 AllocBody667_421

def AllocBody667_423 : StackLang.HolProg 64 :=
.seq AllocBody667_33 AllocBody667_422

def AllocBody667_424 : StackLang.HolProg 64 :=
.seq AllocBody667_26 AllocBody667_423

def AllocBody667_425 : StackLang.HolProg 64 :=
.seq AllocBody667_25 AllocBody667_424

def AllocBody667_426 : StackLang.HolProg 64 :=
.seq AllocBody667_24 AllocBody667_425

def AllocBody667_427 : StackLang.HolProg 64 :=
.seq AllocBody667_23 AllocBody667_426

def AllocBody667_428 : StackLang.HolProg 64 :=
.seq AllocBody667_22 AllocBody667_427

def AllocBody667_429 : StackLang.HolProg 64 :=
.seq AllocBody667_21 AllocBody667_428

def AllocBody667_430 : StackLang.HolProg 64 :=
.seq AllocBody667_20 AllocBody667_429

def AllocBody667_431 : StackLang.HolProg 64 :=
.seq AllocBody667_19 AllocBody667_430

def AllocBody667_432 : StackLang.HolProg 64 :=
.seq AllocBody667_18 AllocBody667_431

def AllocBody667_433 : StackLang.HolProg 64 :=
.seq AllocBody667_17 AllocBody667_432

def AllocBody667_434 : StackLang.HolProg 64 :=
.seq AllocBody667_16 AllocBody667_433

def AllocBody667_435 : StackLang.HolProg 64 :=
.seq AllocBody667_15 AllocBody667_434

def AllocBody667_436 : StackLang.HolProg 64 :=
.seq AllocBody667_14 AllocBody667_435

def AllocBody667_437 : StackLang.HolProg 64 :=
.seq AllocBody667_13 AllocBody667_436

def AllocBody667_438 : StackLang.HolProg 64 :=
.seq AllocBody667_12 AllocBody667_437

def AllocBody667_439 : StackLang.HolProg 64 :=
.seq AllocBody667_11 AllocBody667_438

def AllocBody667_440 : StackLang.HolProg 64 :=
.seq AllocBody667_10 AllocBody667_439

def AllocBody667_441 : StackLang.HolProg 64 :=
.seq AllocBody667_9 AllocBody667_440

def AllocBody667_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody667_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody667_444 : StackLang.HolProg 64 :=
.seq AllocBody667_442 AllocBody667_443

def AllocBody667_445 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) AllocBody667_441 AllocBody667_444

def AllocBody667_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody667_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def AllocBody667_448 : StackLang.HolProg 64 :=
.seq AllocBody667_446 AllocBody667_447

def AllocBody667_449 : StackLang.HolProg 64 :=
.seq AllocBody667_445 AllocBody667_448

def AllocBody667_450 : StackLang.HolProg 64 :=
.seq AllocBody667_8 AllocBody667_449

def AllocBody667_451 : StackLang.HolProg 64 :=
.seq AllocBody667_7 AllocBody667_450

def AllocBody667_452 : StackLang.HolProg 64 :=
.loop AllocBody667_451

def AllocBody667_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody667_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody667_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody667_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody667_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 8

def AllocBody667_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def AllocBody667_459 : StackLang.HolProg 64 :=
.seq AllocBody667_457 AllocBody667_458

def AllocBody667_460 : StackLang.HolProg 64 :=
.seq AllocBody667_456 AllocBody667_459

def AllocBody667_461 : StackLang.HolProg 64 :=
.seq AllocBody667_455 AllocBody667_460

def AllocBody667_462 : StackLang.HolProg 64 :=
.seq AllocBody667_454 AllocBody667_461

def AllocBody667_463 : StackLang.HolProg 64 :=
.seq AllocBody667_453 AllocBody667_462

def AllocBody667_464 : StackLang.HolProg 64 :=
.seq AllocBody667_452 AllocBody667_463

def AllocBody667_465 : StackLang.HolProg 64 :=
.seq AllocBody667_6 AllocBody667_464

def AllocBody667_466 : StackLang.HolProg 64 :=
.seq AllocBody667_3 AllocBody667_465

def AllocBody667_467 : StackLang.HolProg 64 :=
.seq AllocBody667_2 AllocBody667_466

def AllocBody667_468 : StackLang.HolProg 64 :=
.seq AllocBody667_1 AllocBody667_467

def AllocBody667_469 : StackLang.HolProg 64 :=
.seq AllocBody667_0 AllocBody667_468

def Alloc667 : Nat × StackLang.HolProg 64 := (667, AllocBody667_469)
theorem Alloc667_eq : StackAlloc.progComp (667, raw667) = Alloc667 := by
  kernel_rfl
#print axioms Alloc667_eq
end InitECandidate.Proofs.BackendStages
