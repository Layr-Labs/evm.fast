import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw736
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody736_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 9

def AllocBody736_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody736_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody736_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody736_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 8#64))

def AllocBody736_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody736_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 16#64))

def AllocBody736_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody736_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 24#64))

def AllocBody736_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody736_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 32#64))

def AllocBody736_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody736_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 40#64))

def AllocBody736_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody736_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 48#64))

def AllocBody736_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody736_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 56#64))

def AllocBody736_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody736_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 64#64))

def AllocBody736_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody736_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 72#64))

def AllocBody736_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody736_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 80#64))

def AllocBody736_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody736_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 88#64))

def AllocBody736_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 8

def AllocBody736_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 2

def AllocBody736_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 7

def AllocBody736_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 6

def AllocBody736_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 5

def AllocBody736_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 11 4

def AllocBody736_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 12 3

def AllocBody736_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 13 1

def AllocBody736_33 : StackLang.HolProg 64 :=
.seq AllocBody736_31 AllocBody736_32

def AllocBody736_34 : StackLang.HolProg 64 :=
.seq AllocBody736_30 AllocBody736_33

def AllocBody736_35 : StackLang.HolProg 64 :=
.seq AllocBody736_29 AllocBody736_34

def AllocBody736_36 : StackLang.HolProg 64 :=
.seq AllocBody736_28 AllocBody736_35

def AllocBody736_37 : StackLang.HolProg 64 :=
.seq AllocBody736_27 AllocBody736_36

def AllocBody736_38 : StackLang.HolProg 64 :=
.seq AllocBody736_26 AllocBody736_37

def AllocBody736_39 : StackLang.HolProg 64 :=
.seq AllocBody736_25 AllocBody736_38

def AllocBody736_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody736_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3268#64)

def AllocBody736_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody736_43 : StackLang.HolProg 64 :=
.seq AllocBody736_41 AllocBody736_42

def AllocBody736_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody736_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody736_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody736_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 736 3

def AllocBody736_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody736_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody736_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody736_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody736_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody736_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody736_54 : StackLang.HolProg 64 :=
.seq AllocBody736_52 AllocBody736_53

def AllocBody736_55 : StackLang.HolProg 64 :=
.seq AllocBody736_51 AllocBody736_54

def AllocBody736_56 : StackLang.HolProg 64 :=
.seq AllocBody736_50 AllocBody736_55

def AllocBody736_57 : StackLang.HolProg 64 :=
.seq AllocBody736_49 AllocBody736_56

def AllocBody736_58 : StackLang.HolProg 64 :=
.seq AllocBody736_48 AllocBody736_57

def AllocBody736_59 : StackLang.HolProg 64 :=
.seq AllocBody736_47 AllocBody736_58

def AllocBody736_60 : StackLang.HolProg 64 :=
.seq AllocBody736_46 AllocBody736_59

def AllocBody736_61 : StackLang.HolProg 64 :=
.seq AllocBody736_45 AllocBody736_60

def AllocBody736_62 : StackLang.HolProg 64 :=
.seq AllocBody736_44 AllocBody736_61

def AllocBody736_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody736_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody736_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody736_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody736_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody736_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody736_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody736_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 7

def AllocBody736_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 6

def AllocBody736_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 5

def AllocBody736_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 4

def AllocBody736_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody736_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody736_76 : StackLang.HolProg 64 :=
.seq AllocBody736_74 AllocBody736_75

def AllocBody736_77 : StackLang.HolProg 64 :=
.seq AllocBody736_73 AllocBody736_76

def AllocBody736_78 : StackLang.HolProg 64 :=
.seq AllocBody736_72 AllocBody736_77

def AllocBody736_79 : StackLang.HolProg 64 :=
.seq AllocBody736_71 AllocBody736_78

def AllocBody736_80 : StackLang.HolProg 64 :=
.seq AllocBody736_70 AllocBody736_79

def AllocBody736_81 : StackLang.HolProg 64 :=
.seq AllocBody736_69 AllocBody736_80

def AllocBody736_82 : StackLang.HolProg 64 :=
.seq AllocBody736_68 AllocBody736_81

def AllocBody736_83 : StackLang.HolProg 64 :=
.seq AllocBody736_67 AllocBody736_82

def AllocBody736_84 : StackLang.HolProg 64 :=
.seq AllocBody736_66 AllocBody736_83

def AllocBody736_85 : StackLang.HolProg 64 :=
.seq AllocBody736_65 AllocBody736_84

def AllocBody736_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 7

def AllocBody736_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 6

def AllocBody736_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 5

def AllocBody736_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 4

def AllocBody736_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody736_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody736_92 : StackLang.HolProg 64 :=
.seq AllocBody736_90 AllocBody736_91

def AllocBody736_93 : StackLang.HolProg 64 :=
.seq AllocBody736_89 AllocBody736_92

def AllocBody736_94 : StackLang.HolProg 64 :=
.seq AllocBody736_88 AllocBody736_93

def AllocBody736_95 : StackLang.HolProg 64 :=
.seq AllocBody736_87 AllocBody736_94

def AllocBody736_96 : StackLang.HolProg 64 :=
.seq AllocBody736_86 AllocBody736_95

def AllocBody736_97 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody736_98 : StackLang.HolProg 64 :=
.seq AllocBody736_96 AllocBody736_97

def AllocBody736_99 : StackLang.HolProg 64 :=
.call (some (AllocBody736_85, 0, 736, 2)) (Sum.inl 712) (some (AllocBody736_98, 736, 3))

def AllocBody736_100 : StackLang.HolProg 64 :=
.seq AllocBody736_64 AllocBody736_99

def AllocBody736_101 : StackLang.HolProg 64 :=
.seq AllocBody736_63 AllocBody736_100

def AllocBody736_102 : StackLang.HolProg 64 :=
.seq AllocBody736_62 AllocBody736_101

def AllocBody736_103 : StackLang.HolProg 64 :=
.seq AllocBody736_43 AllocBody736_102

def AllocBody736_104 : StackLang.HolProg 64 :=
.seq AllocBody736_40 AllocBody736_103

def AllocBody736_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody736_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def AllocBody736_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 6

def AllocBody736_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody736_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def AllocBody736_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody736_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody736_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody736_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def AllocBody736_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody736_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 7

def AllocBody736_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def AllocBody736_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 12 1

def AllocBody736_118 : StackLang.HolProg 64 :=
.seq AllocBody736_116 AllocBody736_117

def AllocBody736_119 : StackLang.HolProg 64 :=
.seq AllocBody736_115 AllocBody736_118

def AllocBody736_120 : StackLang.HolProg 64 :=
.seq AllocBody736_114 AllocBody736_119

def AllocBody736_121 : StackLang.HolProg 64 :=
.seq AllocBody736_113 AllocBody736_120

def AllocBody736_122 : StackLang.HolProg 64 :=
.seq AllocBody736_112 AllocBody736_121

def AllocBody736_123 : StackLang.HolProg 64 :=
.seq AllocBody736_111 AllocBody736_122

def AllocBody736_124 : StackLang.HolProg 64 :=
.seq AllocBody736_110 AllocBody736_123

def AllocBody736_125 : StackLang.HolProg 64 :=
.seq AllocBody736_109 AllocBody736_124

def AllocBody736_126 : StackLang.HolProg 64 :=
.seq AllocBody736_108 AllocBody736_125

def AllocBody736_127 : StackLang.HolProg 64 :=
.seq AllocBody736_107 AllocBody736_126

def AllocBody736_128 : StackLang.HolProg 64 :=
.seq AllocBody736_106 AllocBody736_127

def AllocBody736_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody736_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3269#64)

def AllocBody736_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody736_132 : StackLang.HolProg 64 :=
.seq AllocBody736_130 AllocBody736_131

def AllocBody736_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody736_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody736_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody736_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 736 5

def AllocBody736_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody736_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody736_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody736_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody736_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody736_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody736_143 : StackLang.HolProg 64 :=
.seq AllocBody736_141 AllocBody736_142

def AllocBody736_144 : StackLang.HolProg 64 :=
.seq AllocBody736_140 AllocBody736_143

def AllocBody736_145 : StackLang.HolProg 64 :=
.seq AllocBody736_139 AllocBody736_144

def AllocBody736_146 : StackLang.HolProg 64 :=
.seq AllocBody736_138 AllocBody736_145

def AllocBody736_147 : StackLang.HolProg 64 :=
.seq AllocBody736_137 AllocBody736_146

def AllocBody736_148 : StackLang.HolProg 64 :=
.seq AllocBody736_136 AllocBody736_147

def AllocBody736_149 : StackLang.HolProg 64 :=
.seq AllocBody736_135 AllocBody736_148

def AllocBody736_150 : StackLang.HolProg 64 :=
.seq AllocBody736_134 AllocBody736_149

def AllocBody736_151 : StackLang.HolProg 64 :=
.seq AllocBody736_133 AllocBody736_150

def AllocBody736_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody736_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody736_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody736_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody736_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody736_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody736_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody736_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 14 8

def AllocBody736_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 7

def AllocBody736_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 6

def AllocBody736_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 5

def AllocBody736_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 13 4

def AllocBody736_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 3

def AllocBody736_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 2

def AllocBody736_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 1

def AllocBody736_167 : StackLang.HolProg 64 :=
.seq AllocBody736_165 AllocBody736_166

def AllocBody736_168 : StackLang.HolProg 64 :=
.seq AllocBody736_164 AllocBody736_167

def AllocBody736_169 : StackLang.HolProg 64 :=
.seq AllocBody736_163 AllocBody736_168

def AllocBody736_170 : StackLang.HolProg 64 :=
.seq AllocBody736_162 AllocBody736_169

def AllocBody736_171 : StackLang.HolProg 64 :=
.seq AllocBody736_161 AllocBody736_170

def AllocBody736_172 : StackLang.HolProg 64 :=
.seq AllocBody736_160 AllocBody736_171

def AllocBody736_173 : StackLang.HolProg 64 :=
.seq AllocBody736_159 AllocBody736_172

def AllocBody736_174 : StackLang.HolProg 64 :=
.seq AllocBody736_158 AllocBody736_173

def AllocBody736_175 : StackLang.HolProg 64 :=
.seq AllocBody736_157 AllocBody736_174

def AllocBody736_176 : StackLang.HolProg 64 :=
.seq AllocBody736_156 AllocBody736_175

def AllocBody736_177 : StackLang.HolProg 64 :=
.seq AllocBody736_155 AllocBody736_176

def AllocBody736_178 : StackLang.HolProg 64 :=
.seq AllocBody736_154 AllocBody736_177

def AllocBody736_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 14 8

def AllocBody736_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 7

def AllocBody736_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 6

def AllocBody736_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 5

def AllocBody736_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 13 4

def AllocBody736_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 3

def AllocBody736_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 2

def AllocBody736_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 1

def AllocBody736_187 : StackLang.HolProg 64 :=
.seq AllocBody736_185 AllocBody736_186

def AllocBody736_188 : StackLang.HolProg 64 :=
.seq AllocBody736_184 AllocBody736_187

def AllocBody736_189 : StackLang.HolProg 64 :=
.seq AllocBody736_183 AllocBody736_188

def AllocBody736_190 : StackLang.HolProg 64 :=
.seq AllocBody736_182 AllocBody736_189

def AllocBody736_191 : StackLang.HolProg 64 :=
.seq AllocBody736_181 AllocBody736_190

def AllocBody736_192 : StackLang.HolProg 64 :=
.seq AllocBody736_180 AllocBody736_191

def AllocBody736_193 : StackLang.HolProg 64 :=
.seq AllocBody736_179 AllocBody736_192

def AllocBody736_194 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody736_195 : StackLang.HolProg 64 :=
.seq AllocBody736_193 AllocBody736_194

def AllocBody736_196 : StackLang.HolProg 64 :=
.call (some (AllocBody736_178, 0, 736, 4)) (Sum.inl 712) (some (AllocBody736_195, 736, 5))

def AllocBody736_197 : StackLang.HolProg 64 :=
.seq AllocBody736_153 AllocBody736_196

def AllocBody736_198 : StackLang.HolProg 64 :=
.seq AllocBody736_152 AllocBody736_197

def AllocBody736_199 : StackLang.HolProg 64 :=
.seq AllocBody736_151 AllocBody736_198

def AllocBody736_200 : StackLang.HolProg 64 :=
.seq AllocBody736_132 AllocBody736_199

def AllocBody736_201 : StackLang.HolProg 64 :=
.seq AllocBody736_129 AllocBody736_200

def AllocBody736_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody736_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody736_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def AllocBody736_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody736_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 8#64))

def AllocBody736_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody736_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 16#64))

def AllocBody736_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody736_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 24#64))

def AllocBody736_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody736_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 32#64))

def AllocBody736_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody736_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 40#64))

def AllocBody736_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody736_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def AllocBody736_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody736_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody736_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody736_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody736_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody736_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody736_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody736_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody736_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody736_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def AllocBody736_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody736_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def AllocBody736_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody736_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody736_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 9

def AllocBody736_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 14

def AllocBody736_233 : StackLang.HolProg 64 :=
.seq AllocBody736_231 AllocBody736_232

def AllocBody736_234 : StackLang.HolProg 64 :=
.seq AllocBody736_230 AllocBody736_233

def AllocBody736_235 : StackLang.HolProg 64 :=
.seq AllocBody736_229 AllocBody736_234

def AllocBody736_236 : StackLang.HolProg 64 :=
.seq AllocBody736_228 AllocBody736_235

def AllocBody736_237 : StackLang.HolProg 64 :=
.seq AllocBody736_227 AllocBody736_236

def AllocBody736_238 : StackLang.HolProg 64 :=
.seq AllocBody736_226 AllocBody736_237

def AllocBody736_239 : StackLang.HolProg 64 :=
.seq AllocBody736_225 AllocBody736_238

def AllocBody736_240 : StackLang.HolProg 64 :=
.seq AllocBody736_224 AllocBody736_239

def AllocBody736_241 : StackLang.HolProg 64 :=
.seq AllocBody736_223 AllocBody736_240

def AllocBody736_242 : StackLang.HolProg 64 :=
.seq AllocBody736_222 AllocBody736_241

def AllocBody736_243 : StackLang.HolProg 64 :=
.seq AllocBody736_221 AllocBody736_242

def AllocBody736_244 : StackLang.HolProg 64 :=
.seq AllocBody736_220 AllocBody736_243

def AllocBody736_245 : StackLang.HolProg 64 :=
.seq AllocBody736_219 AllocBody736_244

def AllocBody736_246 : StackLang.HolProg 64 :=
.seq AllocBody736_218 AllocBody736_245

def AllocBody736_247 : StackLang.HolProg 64 :=
.seq AllocBody736_217 AllocBody736_246

def AllocBody736_248 : StackLang.HolProg 64 :=
.seq AllocBody736_216 AllocBody736_247

def AllocBody736_249 : StackLang.HolProg 64 :=
.seq AllocBody736_215 AllocBody736_248

def AllocBody736_250 : StackLang.HolProg 64 :=
.seq AllocBody736_214 AllocBody736_249

def AllocBody736_251 : StackLang.HolProg 64 :=
.seq AllocBody736_213 AllocBody736_250

def AllocBody736_252 : StackLang.HolProg 64 :=
.seq AllocBody736_212 AllocBody736_251

def AllocBody736_253 : StackLang.HolProg 64 :=
.seq AllocBody736_211 AllocBody736_252

def AllocBody736_254 : StackLang.HolProg 64 :=
.seq AllocBody736_210 AllocBody736_253

def AllocBody736_255 : StackLang.HolProg 64 :=
.seq AllocBody736_209 AllocBody736_254

def AllocBody736_256 : StackLang.HolProg 64 :=
.seq AllocBody736_208 AllocBody736_255

def AllocBody736_257 : StackLang.HolProg 64 :=
.seq AllocBody736_207 AllocBody736_256

def AllocBody736_258 : StackLang.HolProg 64 :=
.seq AllocBody736_206 AllocBody736_257

def AllocBody736_259 : StackLang.HolProg 64 :=
.seq AllocBody736_205 AllocBody736_258

def AllocBody736_260 : StackLang.HolProg 64 :=
.seq AllocBody736_204 AllocBody736_259

def AllocBody736_261 : StackLang.HolProg 64 :=
.seq AllocBody736_203 AllocBody736_260

def AllocBody736_262 : StackLang.HolProg 64 :=
.seq AllocBody736_202 AllocBody736_261

def AllocBody736_263 : StackLang.HolProg 64 :=
.seq AllocBody736_201 AllocBody736_262

def AllocBody736_264 : StackLang.HolProg 64 :=
.seq AllocBody736_128 AllocBody736_263

def AllocBody736_265 : StackLang.HolProg 64 :=
.seq AllocBody736_105 AllocBody736_264

def AllocBody736_266 : StackLang.HolProg 64 :=
.seq AllocBody736_104 AllocBody736_265

def AllocBody736_267 : StackLang.HolProg 64 :=
.seq AllocBody736_39 AllocBody736_266

def AllocBody736_268 : StackLang.HolProg 64 :=
.seq AllocBody736_24 AllocBody736_267

def AllocBody736_269 : StackLang.HolProg 64 :=
.seq AllocBody736_23 AllocBody736_268

def AllocBody736_270 : StackLang.HolProg 64 :=
.seq AllocBody736_22 AllocBody736_269

def AllocBody736_271 : StackLang.HolProg 64 :=
.seq AllocBody736_21 AllocBody736_270

def AllocBody736_272 : StackLang.HolProg 64 :=
.seq AllocBody736_20 AllocBody736_271

def AllocBody736_273 : StackLang.HolProg 64 :=
.seq AllocBody736_19 AllocBody736_272

def AllocBody736_274 : StackLang.HolProg 64 :=
.seq AllocBody736_18 AllocBody736_273

def AllocBody736_275 : StackLang.HolProg 64 :=
.seq AllocBody736_17 AllocBody736_274

def AllocBody736_276 : StackLang.HolProg 64 :=
.seq AllocBody736_16 AllocBody736_275

def AllocBody736_277 : StackLang.HolProg 64 :=
.seq AllocBody736_15 AllocBody736_276

def AllocBody736_278 : StackLang.HolProg 64 :=
.seq AllocBody736_14 AllocBody736_277

def AllocBody736_279 : StackLang.HolProg 64 :=
.seq AllocBody736_13 AllocBody736_278

def AllocBody736_280 : StackLang.HolProg 64 :=
.seq AllocBody736_12 AllocBody736_279

def AllocBody736_281 : StackLang.HolProg 64 :=
.seq AllocBody736_11 AllocBody736_280

def AllocBody736_282 : StackLang.HolProg 64 :=
.seq AllocBody736_10 AllocBody736_281

def AllocBody736_283 : StackLang.HolProg 64 :=
.seq AllocBody736_9 AllocBody736_282

def AllocBody736_284 : StackLang.HolProg 64 :=
.seq AllocBody736_8 AllocBody736_283

def AllocBody736_285 : StackLang.HolProg 64 :=
.seq AllocBody736_7 AllocBody736_284

def AllocBody736_286 : StackLang.HolProg 64 :=
.seq AllocBody736_6 AllocBody736_285

def AllocBody736_287 : StackLang.HolProg 64 :=
.seq AllocBody736_5 AllocBody736_286

def AllocBody736_288 : StackLang.HolProg 64 :=
.seq AllocBody736_4 AllocBody736_287

def AllocBody736_289 : StackLang.HolProg 64 :=
.seq AllocBody736_3 AllocBody736_288

def AllocBody736_290 : StackLang.HolProg 64 :=
.seq AllocBody736_2 AllocBody736_289

def AllocBody736_291 : StackLang.HolProg 64 :=
.seq AllocBody736_1 AllocBody736_290

def AllocBody736_292 : StackLang.HolProg 64 :=
.seq AllocBody736_0 AllocBody736_291

def Alloc736 : Nat × StackLang.HolProg 64 := (736, AllocBody736_292)
theorem Alloc736_eq : StackAlloc.progComp (736, raw736) = Alloc736 := by
  kernel_rfl
#print axioms Alloc736_eq
end InitECandidate.Proofs.BackendStages
