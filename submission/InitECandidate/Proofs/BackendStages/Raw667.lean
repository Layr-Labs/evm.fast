import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function667
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody667_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 8

def rawBody667_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 11#64)

def rawBody667_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody667_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def rawBody667_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody667_6 : StackLang.HolProg 64 :=
.seq rawBody667_4 rawBody667_5

def rawBody667_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def rawBody667_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody667_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody667_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 12#64)))

def rawBody667_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody667_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody667_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody667_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody667_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody667_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def rawBody667_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 4

def rawBody667_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def rawBody667_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def rawBody667_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 82#64)

def rawBody667_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 6

def rawBody667_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def rawBody667_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody667_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def rawBody667_31 : StackLang.HolProg 64 :=
.seq rawBody667_29 rawBody667_30

def rawBody667_32 : StackLang.HolProg 64 :=
.seq rawBody667_28 rawBody667_31

def rawBody667_33 : StackLang.HolProg 64 :=
.seq rawBody667_27 rawBody667_32

def rawBody667_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2762#64)

def rawBody667_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody667_37 : StackLang.HolProg 64 :=
.seq rawBody667_35 rawBody667_36

def rawBody667_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody667_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody667_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody667_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 667 3

def rawBody667_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody667_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody667_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody667_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody667_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody667_48 : StackLang.HolProg 64 :=
.seq rawBody667_46 rawBody667_47

def rawBody667_49 : StackLang.HolProg 64 :=
.seq rawBody667_45 rawBody667_48

def rawBody667_50 : StackLang.HolProg 64 :=
.seq rawBody667_44 rawBody667_49

def rawBody667_51 : StackLang.HolProg 64 :=
.seq rawBody667_43 rawBody667_50

def rawBody667_52 : StackLang.HolProg 64 :=
.seq rawBody667_42 rawBody667_51

def rawBody667_53 : StackLang.HolProg 64 :=
.seq rawBody667_41 rawBody667_52

def rawBody667_54 : StackLang.HolProg 64 :=
.seq rawBody667_40 rawBody667_53

def rawBody667_55 : StackLang.HolProg 64 :=
.seq rawBody667_39 rawBody667_54

def rawBody667_56 : StackLang.HolProg 64 :=
.seq rawBody667_38 rawBody667_55

def rawBody667_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody667_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody667_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody667_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody667_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody667_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody667_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody667_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody667_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def rawBody667_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody667_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody667_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody667_71 : StackLang.HolProg 64 :=
.seq rawBody667_69 rawBody667_70

def rawBody667_72 : StackLang.HolProg 64 :=
.seq rawBody667_68 rawBody667_71

def rawBody667_73 : StackLang.HolProg 64 :=
.seq rawBody667_67 rawBody667_72

def rawBody667_74 : StackLang.HolProg 64 :=
.seq rawBody667_66 rawBody667_73

def rawBody667_75 : StackLang.HolProg 64 :=
.seq rawBody667_65 rawBody667_74

def rawBody667_76 : StackLang.HolProg 64 :=
.seq rawBody667_64 rawBody667_75

def rawBody667_77 : StackLang.HolProg 64 :=
.seq rawBody667_63 rawBody667_76

def rawBody667_78 : StackLang.HolProg 64 :=
.seq rawBody667_62 rawBody667_77

def rawBody667_79 : StackLang.HolProg 64 :=
.seq rawBody667_61 rawBody667_78

def rawBody667_80 : StackLang.HolProg 64 :=
.seq rawBody667_60 rawBody667_79

def rawBody667_81 : StackLang.HolProg 64 :=
.seq rawBody667_59 rawBody667_80

def rawBody667_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def rawBody667_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody667_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody667_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody667_86 : StackLang.HolProg 64 :=
.seq rawBody667_84 rawBody667_85

def rawBody667_87 : StackLang.HolProg 64 :=
.seq rawBody667_83 rawBody667_86

def rawBody667_88 : StackLang.HolProg 64 :=
.seq rawBody667_82 rawBody667_87

def rawBody667_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody667_90 : StackLang.HolProg 64 :=
.seq rawBody667_88 rawBody667_89

def rawBody667_91 : StackLang.HolProg 64 :=
.call (some (rawBody667_81, 0, 667, 2)) (Sum.inl 665) (some (rawBody667_90, 667, 3))

def rawBody667_92 : StackLang.HolProg 64 :=
.seq rawBody667_58 rawBody667_91

def rawBody667_93 : StackLang.HolProg 64 :=
.seq rawBody667_57 rawBody667_92

def rawBody667_94 : StackLang.HolProg 64 :=
.seq rawBody667_56 rawBody667_93

def rawBody667_95 : StackLang.HolProg 64 :=
.seq rawBody667_37 rawBody667_94

def rawBody667_96 : StackLang.HolProg 64 :=
.seq rawBody667_34 rawBody667_95

def rawBody667_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody667_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody667_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18#64)

def rawBody667_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 6

def rawBody667_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody667_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 2

def rawBody667_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 1

def rawBody667_104 : StackLang.HolProg 64 :=
.seq rawBody667_102 rawBody667_103

def rawBody667_105 : StackLang.HolProg 64 :=
.seq rawBody667_101 rawBody667_104

def rawBody667_106 : StackLang.HolProg 64 :=
.seq rawBody667_100 rawBody667_105

def rawBody667_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2763#64)

def rawBody667_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody667_110 : StackLang.HolProg 64 :=
.seq rawBody667_108 rawBody667_109

def rawBody667_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody667_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody667_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody667_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 667 5

def rawBody667_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody667_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody667_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody667_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody667_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody667_121 : StackLang.HolProg 64 :=
.seq rawBody667_119 rawBody667_120

def rawBody667_122 : StackLang.HolProg 64 :=
.seq rawBody667_118 rawBody667_121

def rawBody667_123 : StackLang.HolProg 64 :=
.seq rawBody667_117 rawBody667_122

def rawBody667_124 : StackLang.HolProg 64 :=
.seq rawBody667_116 rawBody667_123

def rawBody667_125 : StackLang.HolProg 64 :=
.seq rawBody667_115 rawBody667_124

def rawBody667_126 : StackLang.HolProg 64 :=
.seq rawBody667_114 rawBody667_125

def rawBody667_127 : StackLang.HolProg 64 :=
.seq rawBody667_113 rawBody667_126

def rawBody667_128 : StackLang.HolProg 64 :=
.seq rawBody667_112 rawBody667_127

def rawBody667_129 : StackLang.HolProg 64 :=
.seq rawBody667_111 rawBody667_128

def rawBody667_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody667_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody667_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody667_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody667_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody667_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody667_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody667_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody667_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def rawBody667_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def rawBody667_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody667_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody667_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def rawBody667_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 1

def rawBody667_146 : StackLang.HolProg 64 :=
.seq rawBody667_144 rawBody667_145

def rawBody667_147 : StackLang.HolProg 64 :=
.seq rawBody667_143 rawBody667_146

def rawBody667_148 : StackLang.HolProg 64 :=
.seq rawBody667_142 rawBody667_147

def rawBody667_149 : StackLang.HolProg 64 :=
.seq rawBody667_141 rawBody667_148

def rawBody667_150 : StackLang.HolProg 64 :=
.seq rawBody667_140 rawBody667_149

def rawBody667_151 : StackLang.HolProg 64 :=
.seq rawBody667_139 rawBody667_150

def rawBody667_152 : StackLang.HolProg 64 :=
.seq rawBody667_138 rawBody667_151

def rawBody667_153 : StackLang.HolProg 64 :=
.seq rawBody667_137 rawBody667_152

def rawBody667_154 : StackLang.HolProg 64 :=
.seq rawBody667_136 rawBody667_153

def rawBody667_155 : StackLang.HolProg 64 :=
.seq rawBody667_135 rawBody667_154

def rawBody667_156 : StackLang.HolProg 64 :=
.seq rawBody667_134 rawBody667_155

def rawBody667_157 : StackLang.HolProg 64 :=
.seq rawBody667_133 rawBody667_156

def rawBody667_158 : StackLang.HolProg 64 :=
.seq rawBody667_132 rawBody667_157

def rawBody667_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def rawBody667_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def rawBody667_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody667_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody667_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def rawBody667_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 1

def rawBody667_165 : StackLang.HolProg 64 :=
.seq rawBody667_163 rawBody667_164

def rawBody667_166 : StackLang.HolProg 64 :=
.seq rawBody667_162 rawBody667_165

def rawBody667_167 : StackLang.HolProg 64 :=
.seq rawBody667_161 rawBody667_166

def rawBody667_168 : StackLang.HolProg 64 :=
.seq rawBody667_160 rawBody667_167

def rawBody667_169 : StackLang.HolProg 64 :=
.seq rawBody667_159 rawBody667_168

def rawBody667_170 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody667_171 : StackLang.HolProg 64 :=
.seq rawBody667_169 rawBody667_170

def rawBody667_172 : StackLang.HolProg 64 :=
.call (some (rawBody667_158, 0, 667, 4)) (Sum.inl 665) (some (rawBody667_171, 667, 5))

def rawBody667_173 : StackLang.HolProg 64 :=
.seq rawBody667_131 rawBody667_172

def rawBody667_174 : StackLang.HolProg 64 :=
.seq rawBody667_130 rawBody667_173

def rawBody667_175 : StackLang.HolProg 64 :=
.seq rawBody667_129 rawBody667_174

def rawBody667_176 : StackLang.HolProg 64 :=
.seq rawBody667_110 rawBody667_175

def rawBody667_177 : StackLang.HolProg 64 :=
.seq rawBody667_107 rawBody667_176

def rawBody667_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody667_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody667_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody667_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody667_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody667_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody667_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def rawBody667_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def rawBody667_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def rawBody667_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def rawBody667_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 12 6

def rawBody667_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 5

def rawBody667_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 2

def rawBody667_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 11 1

def rawBody667_195 : StackLang.HolProg 64 :=
.seq rawBody667_193 rawBody667_194

def rawBody667_196 : StackLang.HolProg 64 :=
.seq rawBody667_192 rawBody667_195

def rawBody667_197 : StackLang.HolProg 64 :=
.seq rawBody667_191 rawBody667_196

def rawBody667_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2764#64)

def rawBody667_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody667_201 : StackLang.HolProg 64 :=
.seq rawBody667_199 rawBody667_200

def rawBody667_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody667_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody667_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody667_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 667 7

def rawBody667_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody667_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody667_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody667_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody667_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody667_212 : StackLang.HolProg 64 :=
.seq rawBody667_210 rawBody667_211

def rawBody667_213 : StackLang.HolProg 64 :=
.seq rawBody667_209 rawBody667_212

def rawBody667_214 : StackLang.HolProg 64 :=
.seq rawBody667_208 rawBody667_213

def rawBody667_215 : StackLang.HolProg 64 :=
.seq rawBody667_207 rawBody667_214

def rawBody667_216 : StackLang.HolProg 64 :=
.seq rawBody667_206 rawBody667_215

def rawBody667_217 : StackLang.HolProg 64 :=
.seq rawBody667_205 rawBody667_216

def rawBody667_218 : StackLang.HolProg 64 :=
.seq rawBody667_204 rawBody667_217

def rawBody667_219 : StackLang.HolProg 64 :=
.seq rawBody667_203 rawBody667_218

def rawBody667_220 : StackLang.HolProg 64 :=
.seq rawBody667_202 rawBody667_219

def rawBody667_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody667_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody667_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody667_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody667_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody667_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def rawBody667_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def rawBody667_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody667_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 3

def rawBody667_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def rawBody667_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 1

def rawBody667_234 : StackLang.HolProg 64 :=
.seq rawBody667_232 rawBody667_233

def rawBody667_235 : StackLang.HolProg 64 :=
.seq rawBody667_231 rawBody667_234

def rawBody667_236 : StackLang.HolProg 64 :=
.seq rawBody667_230 rawBody667_235

def rawBody667_237 : StackLang.HolProg 64 :=
.seq rawBody667_229 rawBody667_236

def rawBody667_238 : StackLang.HolProg 64 :=
.seq rawBody667_228 rawBody667_237

def rawBody667_239 : StackLang.HolProg 64 :=
.seq rawBody667_227 rawBody667_238

def rawBody667_240 : StackLang.HolProg 64 :=
.seq rawBody667_226 rawBody667_239

def rawBody667_241 : StackLang.HolProg 64 :=
.seq rawBody667_225 rawBody667_240

def rawBody667_242 : StackLang.HolProg 64 :=
.seq rawBody667_224 rawBody667_241

def rawBody667_243 : StackLang.HolProg 64 :=
.seq rawBody667_223 rawBody667_242

def rawBody667_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def rawBody667_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def rawBody667_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody667_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 3

def rawBody667_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def rawBody667_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 1

def rawBody667_250 : StackLang.HolProg 64 :=
.seq rawBody667_248 rawBody667_249

def rawBody667_251 : StackLang.HolProg 64 :=
.seq rawBody667_247 rawBody667_250

def rawBody667_252 : StackLang.HolProg 64 :=
.seq rawBody667_246 rawBody667_251

def rawBody667_253 : StackLang.HolProg 64 :=
.seq rawBody667_245 rawBody667_252

def rawBody667_254 : StackLang.HolProg 64 :=
.seq rawBody667_244 rawBody667_253

def rawBody667_255 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody667_256 : StackLang.HolProg 64 :=
.seq rawBody667_254 rawBody667_255

def rawBody667_257 : StackLang.HolProg 64 :=
.call (some (rawBody667_243, 0, 667, 6)) (Sum.inl 659) (some (rawBody667_256, 667, 7))

def rawBody667_258 : StackLang.HolProg 64 :=
.seq rawBody667_222 rawBody667_257

def rawBody667_259 : StackLang.HolProg 64 :=
.seq rawBody667_221 rawBody667_258

def rawBody667_260 : StackLang.HolProg 64 :=
.seq rawBody667_220 rawBody667_259

def rawBody667_261 : StackLang.HolProg 64 :=
.seq rawBody667_201 rawBody667_260

def rawBody667_262 : StackLang.HolProg 64 :=
.seq rawBody667_198 rawBody667_261

def rawBody667_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody667_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody667_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody667_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody667_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody667_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def rawBody667_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def rawBody667_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def rawBody667_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody667_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody667_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody667_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 5

def rawBody667_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody667_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def rawBody667_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody667_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 16#64))

def rawBody667_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def rawBody667_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2765#64)

def rawBody667_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody667_293 : StackLang.HolProg 64 :=
.seq rawBody667_291 rawBody667_292

def rawBody667_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody667_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody667_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody667_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 667 9

def rawBody667_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody667_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody667_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody667_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody667_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody667_304 : StackLang.HolProg 64 :=
.seq rawBody667_302 rawBody667_303

def rawBody667_305 : StackLang.HolProg 64 :=
.seq rawBody667_301 rawBody667_304

def rawBody667_306 : StackLang.HolProg 64 :=
.seq rawBody667_300 rawBody667_305

def rawBody667_307 : StackLang.HolProg 64 :=
.seq rawBody667_299 rawBody667_306

def rawBody667_308 : StackLang.HolProg 64 :=
.seq rawBody667_298 rawBody667_307

def rawBody667_309 : StackLang.HolProg 64 :=
.seq rawBody667_297 rawBody667_308

def rawBody667_310 : StackLang.HolProg 64 :=
.seq rawBody667_296 rawBody667_309

def rawBody667_311 : StackLang.HolProg 64 :=
.seq rawBody667_295 rawBody667_310

def rawBody667_312 : StackLang.HolProg 64 :=
.seq rawBody667_294 rawBody667_311

def rawBody667_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody667_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody667_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody667_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody667_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody667_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def rawBody667_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def rawBody667_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody667_323 : StackLang.HolProg 64 :=
.seq rawBody667_321 rawBody667_322

def rawBody667_324 : StackLang.HolProg 64 :=
.seq rawBody667_320 rawBody667_323

def rawBody667_325 : StackLang.HolProg 64 :=
.seq rawBody667_319 rawBody667_324

def rawBody667_326 : StackLang.HolProg 64 :=
.seq rawBody667_318 rawBody667_325

def rawBody667_327 : StackLang.HolProg 64 :=
.seq rawBody667_317 rawBody667_326

def rawBody667_328 : StackLang.HolProg 64 :=
.seq rawBody667_316 rawBody667_327

def rawBody667_329 : StackLang.HolProg 64 :=
.seq rawBody667_315 rawBody667_328

def rawBody667_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def rawBody667_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def rawBody667_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody667_333 : StackLang.HolProg 64 :=
.seq rawBody667_331 rawBody667_332

def rawBody667_334 : StackLang.HolProg 64 :=
.seq rawBody667_330 rawBody667_333

def rawBody667_335 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody667_336 : StackLang.HolProg 64 :=
.seq rawBody667_334 rawBody667_335

def rawBody667_337 : StackLang.HolProg 64 :=
.call (some (rawBody667_329, 0, 667, 8)) (Sum.inl 658) (some (rawBody667_336, 667, 9))

def rawBody667_338 : StackLang.HolProg 64 :=
.seq rawBody667_314 rawBody667_337

def rawBody667_339 : StackLang.HolProg 64 :=
.seq rawBody667_313 rawBody667_338

def rawBody667_340 : StackLang.HolProg 64 :=
.seq rawBody667_312 rawBody667_339

def rawBody667_341 : StackLang.HolProg 64 :=
.seq rawBody667_293 rawBody667_340

def rawBody667_342 : StackLang.HolProg 64 :=
.seq rawBody667_290 rawBody667_341

def rawBody667_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody667_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def rawBody667_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody667_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody667_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody667_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def rawBody667_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def rawBody667_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def rawBody667_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 7

def rawBody667_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody667_359 : StackLang.HolProg 64 :=
.seq rawBody667_357 rawBody667_358

def rawBody667_360 : StackLang.HolProg 64 :=
.seq rawBody667_356 rawBody667_359

def rawBody667_361 : StackLang.HolProg 64 :=
.seq rawBody667_355 rawBody667_360

def rawBody667_362 : StackLang.HolProg 64 :=
.seq rawBody667_354 rawBody667_361

def rawBody667_363 : StackLang.HolProg 64 :=
.seq rawBody667_353 rawBody667_362

def rawBody667_364 : StackLang.HolProg 64 :=
.seq rawBody667_352 rawBody667_363

def rawBody667_365 : StackLang.HolProg 64 :=
.seq rawBody667_351 rawBody667_364

def rawBody667_366 : StackLang.HolProg 64 :=
.seq rawBody667_350 rawBody667_365

def rawBody667_367 : StackLang.HolProg 64 :=
.seq rawBody667_349 rawBody667_366

def rawBody667_368 : StackLang.HolProg 64 :=
.seq rawBody667_348 rawBody667_367

def rawBody667_369 : StackLang.HolProg 64 :=
.seq rawBody667_347 rawBody667_368

def rawBody667_370 : StackLang.HolProg 64 :=
.seq rawBody667_346 rawBody667_369

def rawBody667_371 : StackLang.HolProg 64 :=
.seq rawBody667_345 rawBody667_370

def rawBody667_372 : StackLang.HolProg 64 :=
.seq rawBody667_344 rawBody667_371

def rawBody667_373 : StackLang.HolProg 64 :=
.seq rawBody667_343 rawBody667_372

def rawBody667_374 : StackLang.HolProg 64 :=
.seq rawBody667_342 rawBody667_373

def rawBody667_375 : StackLang.HolProg 64 :=
.seq rawBody667_289 rawBody667_374

def rawBody667_376 : StackLang.HolProg 64 :=
.seq rawBody667_288 rawBody667_375

def rawBody667_377 : StackLang.HolProg 64 :=
.seq rawBody667_287 rawBody667_376

def rawBody667_378 : StackLang.HolProg 64 :=
.seq rawBody667_286 rawBody667_377

def rawBody667_379 : StackLang.HolProg 64 :=
.seq rawBody667_285 rawBody667_378

def rawBody667_380 : StackLang.HolProg 64 :=
.seq rawBody667_284 rawBody667_379

def rawBody667_381 : StackLang.HolProg 64 :=
.seq rawBody667_283 rawBody667_380

def rawBody667_382 : StackLang.HolProg 64 :=
.seq rawBody667_282 rawBody667_381

def rawBody667_383 : StackLang.HolProg 64 :=
.seq rawBody667_281 rawBody667_382

def rawBody667_384 : StackLang.HolProg 64 :=
.seq rawBody667_280 rawBody667_383

def rawBody667_385 : StackLang.HolProg 64 :=
.seq rawBody667_279 rawBody667_384

def rawBody667_386 : StackLang.HolProg 64 :=
.seq rawBody667_278 rawBody667_385

def rawBody667_387 : StackLang.HolProg 64 :=
.seq rawBody667_277 rawBody667_386

def rawBody667_388 : StackLang.HolProg 64 :=
.seq rawBody667_276 rawBody667_387

def rawBody667_389 : StackLang.HolProg 64 :=
.seq rawBody667_275 rawBody667_388

def rawBody667_390 : StackLang.HolProg 64 :=
.seq rawBody667_274 rawBody667_389

def rawBody667_391 : StackLang.HolProg 64 :=
.seq rawBody667_273 rawBody667_390

def rawBody667_392 : StackLang.HolProg 64 :=
.seq rawBody667_272 rawBody667_391

def rawBody667_393 : StackLang.HolProg 64 :=
.seq rawBody667_271 rawBody667_392

def rawBody667_394 : StackLang.HolProg 64 :=
.seq rawBody667_270 rawBody667_393

def rawBody667_395 : StackLang.HolProg 64 :=
.seq rawBody667_269 rawBody667_394

def rawBody667_396 : StackLang.HolProg 64 :=
.seq rawBody667_268 rawBody667_395

def rawBody667_397 : StackLang.HolProg 64 :=
.seq rawBody667_267 rawBody667_396

def rawBody667_398 : StackLang.HolProg 64 :=
.seq rawBody667_266 rawBody667_397

def rawBody667_399 : StackLang.HolProg 64 :=
.seq rawBody667_265 rawBody667_398

def rawBody667_400 : StackLang.HolProg 64 :=
.seq rawBody667_264 rawBody667_399

def rawBody667_401 : StackLang.HolProg 64 :=
.seq rawBody667_263 rawBody667_400

def rawBody667_402 : StackLang.HolProg 64 :=
.seq rawBody667_262 rawBody667_401

def rawBody667_403 : StackLang.HolProg 64 :=
.seq rawBody667_197 rawBody667_402

def rawBody667_404 : StackLang.HolProg 64 :=
.seq rawBody667_190 rawBody667_403

def rawBody667_405 : StackLang.HolProg 64 :=
.seq rawBody667_189 rawBody667_404

def rawBody667_406 : StackLang.HolProg 64 :=
.seq rawBody667_188 rawBody667_405

def rawBody667_407 : StackLang.HolProg 64 :=
.seq rawBody667_187 rawBody667_406

def rawBody667_408 : StackLang.HolProg 64 :=
.seq rawBody667_186 rawBody667_407

def rawBody667_409 : StackLang.HolProg 64 :=
.seq rawBody667_185 rawBody667_408

def rawBody667_410 : StackLang.HolProg 64 :=
.seq rawBody667_184 rawBody667_409

def rawBody667_411 : StackLang.HolProg 64 :=
.seq rawBody667_183 rawBody667_410

def rawBody667_412 : StackLang.HolProg 64 :=
.seq rawBody667_182 rawBody667_411

def rawBody667_413 : StackLang.HolProg 64 :=
.seq rawBody667_181 rawBody667_412

def rawBody667_414 : StackLang.HolProg 64 :=
.seq rawBody667_180 rawBody667_413

def rawBody667_415 : StackLang.HolProg 64 :=
.seq rawBody667_179 rawBody667_414

def rawBody667_416 : StackLang.HolProg 64 :=
.seq rawBody667_178 rawBody667_415

def rawBody667_417 : StackLang.HolProg 64 :=
.seq rawBody667_177 rawBody667_416

def rawBody667_418 : StackLang.HolProg 64 :=
.seq rawBody667_106 rawBody667_417

def rawBody667_419 : StackLang.HolProg 64 :=
.seq rawBody667_99 rawBody667_418

def rawBody667_420 : StackLang.HolProg 64 :=
.seq rawBody667_98 rawBody667_419

def rawBody667_421 : StackLang.HolProg 64 :=
.seq rawBody667_97 rawBody667_420

def rawBody667_422 : StackLang.HolProg 64 :=
.seq rawBody667_96 rawBody667_421

def rawBody667_423 : StackLang.HolProg 64 :=
.seq rawBody667_33 rawBody667_422

def rawBody667_424 : StackLang.HolProg 64 :=
.seq rawBody667_26 rawBody667_423

def rawBody667_425 : StackLang.HolProg 64 :=
.seq rawBody667_25 rawBody667_424

def rawBody667_426 : StackLang.HolProg 64 :=
.seq rawBody667_24 rawBody667_425

def rawBody667_427 : StackLang.HolProg 64 :=
.seq rawBody667_23 rawBody667_426

def rawBody667_428 : StackLang.HolProg 64 :=
.seq rawBody667_22 rawBody667_427

def rawBody667_429 : StackLang.HolProg 64 :=
.seq rawBody667_21 rawBody667_428

def rawBody667_430 : StackLang.HolProg 64 :=
.seq rawBody667_20 rawBody667_429

def rawBody667_431 : StackLang.HolProg 64 :=
.seq rawBody667_19 rawBody667_430

def rawBody667_432 : StackLang.HolProg 64 :=
.seq rawBody667_18 rawBody667_431

def rawBody667_433 : StackLang.HolProg 64 :=
.seq rawBody667_17 rawBody667_432

def rawBody667_434 : StackLang.HolProg 64 :=
.seq rawBody667_16 rawBody667_433

def rawBody667_435 : StackLang.HolProg 64 :=
.seq rawBody667_15 rawBody667_434

def rawBody667_436 : StackLang.HolProg 64 :=
.seq rawBody667_14 rawBody667_435

def rawBody667_437 : StackLang.HolProg 64 :=
.seq rawBody667_13 rawBody667_436

def rawBody667_438 : StackLang.HolProg 64 :=
.seq rawBody667_12 rawBody667_437

def rawBody667_439 : StackLang.HolProg 64 :=
.seq rawBody667_11 rawBody667_438

def rawBody667_440 : StackLang.HolProg 64 :=
.seq rawBody667_10 rawBody667_439

def rawBody667_441 : StackLang.HolProg 64 :=
.seq rawBody667_9 rawBody667_440

def rawBody667_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody667_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody667_444 : StackLang.HolProg 64 :=
.seq rawBody667_442 rawBody667_443

def rawBody667_445 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) rawBody667_441 rawBody667_444

def rawBody667_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody667_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def rawBody667_448 : StackLang.HolProg 64 :=
.seq rawBody667_446 rawBody667_447

def rawBody667_449 : StackLang.HolProg 64 :=
.seq rawBody667_445 rawBody667_448

def rawBody667_450 : StackLang.HolProg 64 :=
.seq rawBody667_8 rawBody667_449

def rawBody667_451 : StackLang.HolProg 64 :=
.seq rawBody667_7 rawBody667_450

def rawBody667_452 : StackLang.HolProg 64 :=
.loop rawBody667_451

def rawBody667_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody667_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody667_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody667_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody667_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 8

def rawBody667_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def rawBody667_459 : StackLang.HolProg 64 :=
.seq rawBody667_457 rawBody667_458

def rawBody667_460 : StackLang.HolProg 64 :=
.seq rawBody667_456 rawBody667_459

def rawBody667_461 : StackLang.HolProg 64 :=
.seq rawBody667_455 rawBody667_460

def rawBody667_462 : StackLang.HolProg 64 :=
.seq rawBody667_454 rawBody667_461

def rawBody667_463 : StackLang.HolProg 64 :=
.seq rawBody667_453 rawBody667_462

def rawBody667_464 : StackLang.HolProg 64 :=
.seq rawBody667_452 rawBody667_463

def rawBody667_465 : StackLang.HolProg 64 :=
.seq rawBody667_6 rawBody667_464

def rawBody667_466 : StackLang.HolProg 64 :=
.seq rawBody667_3 rawBody667_465

def rawBody667_467 : StackLang.HolProg 64 :=
.seq rawBody667_2 rawBody667_466

def rawBody667_468 : StackLang.HolProg 64 :=
.seq rawBody667_1 rawBody667_467

def rawBody667_469 : StackLang.HolProg 64 :=
.seq rawBody667_0 rawBody667_468

def raw667 : StackLang.HolProg 64 := rawBody667_469
theorem raw667_eq : StackRawCall.compTop RawInfo.rawInfo (function667 (.list [])).1 = raw667 := by
  kernel_rfl
#print axioms raw667_eq
end InitECandidate.Proofs.BackendStages
