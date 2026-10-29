import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function736
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody736_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 9

def rawBody736_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody736_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody736_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody736_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 8#64))

def rawBody736_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody736_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 16#64))

def rawBody736_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody736_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 24#64))

def rawBody736_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody736_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 32#64))

def rawBody736_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody736_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 40#64))

def rawBody736_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody736_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 48#64))

def rawBody736_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody736_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 56#64))

def rawBody736_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody736_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 64#64))

def rawBody736_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody736_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 72#64))

def rawBody736_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody736_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 80#64))

def rawBody736_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody736_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 88#64))

def rawBody736_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 8

def rawBody736_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 2

def rawBody736_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 7

def rawBody736_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 6

def rawBody736_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 5

def rawBody736_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 11 4

def rawBody736_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 12 3

def rawBody736_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 13 1

def rawBody736_33 : StackLang.HolProg 64 :=
.seq rawBody736_31 rawBody736_32

def rawBody736_34 : StackLang.HolProg 64 :=
.seq rawBody736_30 rawBody736_33

def rawBody736_35 : StackLang.HolProg 64 :=
.seq rawBody736_29 rawBody736_34

def rawBody736_36 : StackLang.HolProg 64 :=
.seq rawBody736_28 rawBody736_35

def rawBody736_37 : StackLang.HolProg 64 :=
.seq rawBody736_27 rawBody736_36

def rawBody736_38 : StackLang.HolProg 64 :=
.seq rawBody736_26 rawBody736_37

def rawBody736_39 : StackLang.HolProg 64 :=
.seq rawBody736_25 rawBody736_38

def rawBody736_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody736_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3268#64)

def rawBody736_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody736_43 : StackLang.HolProg 64 :=
.seq rawBody736_41 rawBody736_42

def rawBody736_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody736_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody736_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody736_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 736 3

def rawBody736_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody736_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody736_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody736_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody736_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody736_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody736_54 : StackLang.HolProg 64 :=
.seq rawBody736_52 rawBody736_53

def rawBody736_55 : StackLang.HolProg 64 :=
.seq rawBody736_51 rawBody736_54

def rawBody736_56 : StackLang.HolProg 64 :=
.seq rawBody736_50 rawBody736_55

def rawBody736_57 : StackLang.HolProg 64 :=
.seq rawBody736_49 rawBody736_56

def rawBody736_58 : StackLang.HolProg 64 :=
.seq rawBody736_48 rawBody736_57

def rawBody736_59 : StackLang.HolProg 64 :=
.seq rawBody736_47 rawBody736_58

def rawBody736_60 : StackLang.HolProg 64 :=
.seq rawBody736_46 rawBody736_59

def rawBody736_61 : StackLang.HolProg 64 :=
.seq rawBody736_45 rawBody736_60

def rawBody736_62 : StackLang.HolProg 64 :=
.seq rawBody736_44 rawBody736_61

def rawBody736_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody736_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody736_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody736_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody736_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody736_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody736_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody736_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 7

def rawBody736_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 6

def rawBody736_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 5

def rawBody736_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 4

def rawBody736_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody736_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def rawBody736_76 : StackLang.HolProg 64 :=
.seq rawBody736_74 rawBody736_75

def rawBody736_77 : StackLang.HolProg 64 :=
.seq rawBody736_73 rawBody736_76

def rawBody736_78 : StackLang.HolProg 64 :=
.seq rawBody736_72 rawBody736_77

def rawBody736_79 : StackLang.HolProg 64 :=
.seq rawBody736_71 rawBody736_78

def rawBody736_80 : StackLang.HolProg 64 :=
.seq rawBody736_70 rawBody736_79

def rawBody736_81 : StackLang.HolProg 64 :=
.seq rawBody736_69 rawBody736_80

def rawBody736_82 : StackLang.HolProg 64 :=
.seq rawBody736_68 rawBody736_81

def rawBody736_83 : StackLang.HolProg 64 :=
.seq rawBody736_67 rawBody736_82

def rawBody736_84 : StackLang.HolProg 64 :=
.seq rawBody736_66 rawBody736_83

def rawBody736_85 : StackLang.HolProg 64 :=
.seq rawBody736_65 rawBody736_84

def rawBody736_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 7

def rawBody736_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 6

def rawBody736_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 5

def rawBody736_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 4

def rawBody736_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody736_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def rawBody736_92 : StackLang.HolProg 64 :=
.seq rawBody736_90 rawBody736_91

def rawBody736_93 : StackLang.HolProg 64 :=
.seq rawBody736_89 rawBody736_92

def rawBody736_94 : StackLang.HolProg 64 :=
.seq rawBody736_88 rawBody736_93

def rawBody736_95 : StackLang.HolProg 64 :=
.seq rawBody736_87 rawBody736_94

def rawBody736_96 : StackLang.HolProg 64 :=
.seq rawBody736_86 rawBody736_95

def rawBody736_97 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody736_98 : StackLang.HolProg 64 :=
.seq rawBody736_96 rawBody736_97

def rawBody736_99 : StackLang.HolProg 64 :=
.call (some (rawBody736_85, 0, 736, 2)) (Sum.inl 712) (some (rawBody736_98, 736, 3))

def rawBody736_100 : StackLang.HolProg 64 :=
.seq rawBody736_64 rawBody736_99

def rawBody736_101 : StackLang.HolProg 64 :=
.seq rawBody736_63 rawBody736_100

def rawBody736_102 : StackLang.HolProg 64 :=
.seq rawBody736_62 rawBody736_101

def rawBody736_103 : StackLang.HolProg 64 :=
.seq rawBody736_43 rawBody736_102

def rawBody736_104 : StackLang.HolProg 64 :=
.seq rawBody736_40 rawBody736_103

def rawBody736_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody736_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def rawBody736_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 6

def rawBody736_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody736_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def rawBody736_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody736_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def rawBody736_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody736_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def rawBody736_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody736_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 7

def rawBody736_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def rawBody736_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 12 1

def rawBody736_118 : StackLang.HolProg 64 :=
.seq rawBody736_116 rawBody736_117

def rawBody736_119 : StackLang.HolProg 64 :=
.seq rawBody736_115 rawBody736_118

def rawBody736_120 : StackLang.HolProg 64 :=
.seq rawBody736_114 rawBody736_119

def rawBody736_121 : StackLang.HolProg 64 :=
.seq rawBody736_113 rawBody736_120

def rawBody736_122 : StackLang.HolProg 64 :=
.seq rawBody736_112 rawBody736_121

def rawBody736_123 : StackLang.HolProg 64 :=
.seq rawBody736_111 rawBody736_122

def rawBody736_124 : StackLang.HolProg 64 :=
.seq rawBody736_110 rawBody736_123

def rawBody736_125 : StackLang.HolProg 64 :=
.seq rawBody736_109 rawBody736_124

def rawBody736_126 : StackLang.HolProg 64 :=
.seq rawBody736_108 rawBody736_125

def rawBody736_127 : StackLang.HolProg 64 :=
.seq rawBody736_107 rawBody736_126

def rawBody736_128 : StackLang.HolProg 64 :=
.seq rawBody736_106 rawBody736_127

def rawBody736_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody736_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3269#64)

def rawBody736_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody736_132 : StackLang.HolProg 64 :=
.seq rawBody736_130 rawBody736_131

def rawBody736_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody736_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody736_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody736_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 736 5

def rawBody736_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody736_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody736_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody736_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody736_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody736_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody736_143 : StackLang.HolProg 64 :=
.seq rawBody736_141 rawBody736_142

def rawBody736_144 : StackLang.HolProg 64 :=
.seq rawBody736_140 rawBody736_143

def rawBody736_145 : StackLang.HolProg 64 :=
.seq rawBody736_139 rawBody736_144

def rawBody736_146 : StackLang.HolProg 64 :=
.seq rawBody736_138 rawBody736_145

def rawBody736_147 : StackLang.HolProg 64 :=
.seq rawBody736_137 rawBody736_146

def rawBody736_148 : StackLang.HolProg 64 :=
.seq rawBody736_136 rawBody736_147

def rawBody736_149 : StackLang.HolProg 64 :=
.seq rawBody736_135 rawBody736_148

def rawBody736_150 : StackLang.HolProg 64 :=
.seq rawBody736_134 rawBody736_149

def rawBody736_151 : StackLang.HolProg 64 :=
.seq rawBody736_133 rawBody736_150

def rawBody736_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody736_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody736_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody736_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody736_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody736_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody736_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody736_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 14 8

def rawBody736_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 7

def rawBody736_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 6

def rawBody736_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 5

def rawBody736_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 13 4

def rawBody736_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 3

def rawBody736_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 2

def rawBody736_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 1

def rawBody736_167 : StackLang.HolProg 64 :=
.seq rawBody736_165 rawBody736_166

def rawBody736_168 : StackLang.HolProg 64 :=
.seq rawBody736_164 rawBody736_167

def rawBody736_169 : StackLang.HolProg 64 :=
.seq rawBody736_163 rawBody736_168

def rawBody736_170 : StackLang.HolProg 64 :=
.seq rawBody736_162 rawBody736_169

def rawBody736_171 : StackLang.HolProg 64 :=
.seq rawBody736_161 rawBody736_170

def rawBody736_172 : StackLang.HolProg 64 :=
.seq rawBody736_160 rawBody736_171

def rawBody736_173 : StackLang.HolProg 64 :=
.seq rawBody736_159 rawBody736_172

def rawBody736_174 : StackLang.HolProg 64 :=
.seq rawBody736_158 rawBody736_173

def rawBody736_175 : StackLang.HolProg 64 :=
.seq rawBody736_157 rawBody736_174

def rawBody736_176 : StackLang.HolProg 64 :=
.seq rawBody736_156 rawBody736_175

def rawBody736_177 : StackLang.HolProg 64 :=
.seq rawBody736_155 rawBody736_176

def rawBody736_178 : StackLang.HolProg 64 :=
.seq rawBody736_154 rawBody736_177

def rawBody736_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 14 8

def rawBody736_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 7

def rawBody736_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 6

def rawBody736_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 5

def rawBody736_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 13 4

def rawBody736_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 3

def rawBody736_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 2

def rawBody736_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 1

def rawBody736_187 : StackLang.HolProg 64 :=
.seq rawBody736_185 rawBody736_186

def rawBody736_188 : StackLang.HolProg 64 :=
.seq rawBody736_184 rawBody736_187

def rawBody736_189 : StackLang.HolProg 64 :=
.seq rawBody736_183 rawBody736_188

def rawBody736_190 : StackLang.HolProg 64 :=
.seq rawBody736_182 rawBody736_189

def rawBody736_191 : StackLang.HolProg 64 :=
.seq rawBody736_181 rawBody736_190

def rawBody736_192 : StackLang.HolProg 64 :=
.seq rawBody736_180 rawBody736_191

def rawBody736_193 : StackLang.HolProg 64 :=
.seq rawBody736_179 rawBody736_192

def rawBody736_194 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody736_195 : StackLang.HolProg 64 :=
.seq rawBody736_193 rawBody736_194

def rawBody736_196 : StackLang.HolProg 64 :=
.call (some (rawBody736_178, 0, 736, 4)) (Sum.inl 712) (some (rawBody736_195, 736, 5))

def rawBody736_197 : StackLang.HolProg 64 :=
.seq rawBody736_153 rawBody736_196

def rawBody736_198 : StackLang.HolProg 64 :=
.seq rawBody736_152 rawBody736_197

def rawBody736_199 : StackLang.HolProg 64 :=
.seq rawBody736_151 rawBody736_198

def rawBody736_200 : StackLang.HolProg 64 :=
.seq rawBody736_132 rawBody736_199

def rawBody736_201 : StackLang.HolProg 64 :=
.seq rawBody736_129 rawBody736_200

def rawBody736_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody736_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody736_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def rawBody736_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody736_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 8#64))

def rawBody736_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody736_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 16#64))

def rawBody736_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody736_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 24#64))

def rawBody736_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody736_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 32#64))

def rawBody736_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody736_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 40#64))

def rawBody736_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody736_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def rawBody736_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody736_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody736_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody736_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody736_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody736_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def rawBody736_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody736_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def rawBody736_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody736_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def rawBody736_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody736_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def rawBody736_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody736_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody736_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 9

def rawBody736_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 14

def rawBody736_233 : StackLang.HolProg 64 :=
.seq rawBody736_231 rawBody736_232

def rawBody736_234 : StackLang.HolProg 64 :=
.seq rawBody736_230 rawBody736_233

def rawBody736_235 : StackLang.HolProg 64 :=
.seq rawBody736_229 rawBody736_234

def rawBody736_236 : StackLang.HolProg 64 :=
.seq rawBody736_228 rawBody736_235

def rawBody736_237 : StackLang.HolProg 64 :=
.seq rawBody736_227 rawBody736_236

def rawBody736_238 : StackLang.HolProg 64 :=
.seq rawBody736_226 rawBody736_237

def rawBody736_239 : StackLang.HolProg 64 :=
.seq rawBody736_225 rawBody736_238

def rawBody736_240 : StackLang.HolProg 64 :=
.seq rawBody736_224 rawBody736_239

def rawBody736_241 : StackLang.HolProg 64 :=
.seq rawBody736_223 rawBody736_240

def rawBody736_242 : StackLang.HolProg 64 :=
.seq rawBody736_222 rawBody736_241

def rawBody736_243 : StackLang.HolProg 64 :=
.seq rawBody736_221 rawBody736_242

def rawBody736_244 : StackLang.HolProg 64 :=
.seq rawBody736_220 rawBody736_243

def rawBody736_245 : StackLang.HolProg 64 :=
.seq rawBody736_219 rawBody736_244

def rawBody736_246 : StackLang.HolProg 64 :=
.seq rawBody736_218 rawBody736_245

def rawBody736_247 : StackLang.HolProg 64 :=
.seq rawBody736_217 rawBody736_246

def rawBody736_248 : StackLang.HolProg 64 :=
.seq rawBody736_216 rawBody736_247

def rawBody736_249 : StackLang.HolProg 64 :=
.seq rawBody736_215 rawBody736_248

def rawBody736_250 : StackLang.HolProg 64 :=
.seq rawBody736_214 rawBody736_249

def rawBody736_251 : StackLang.HolProg 64 :=
.seq rawBody736_213 rawBody736_250

def rawBody736_252 : StackLang.HolProg 64 :=
.seq rawBody736_212 rawBody736_251

def rawBody736_253 : StackLang.HolProg 64 :=
.seq rawBody736_211 rawBody736_252

def rawBody736_254 : StackLang.HolProg 64 :=
.seq rawBody736_210 rawBody736_253

def rawBody736_255 : StackLang.HolProg 64 :=
.seq rawBody736_209 rawBody736_254

def rawBody736_256 : StackLang.HolProg 64 :=
.seq rawBody736_208 rawBody736_255

def rawBody736_257 : StackLang.HolProg 64 :=
.seq rawBody736_207 rawBody736_256

def rawBody736_258 : StackLang.HolProg 64 :=
.seq rawBody736_206 rawBody736_257

def rawBody736_259 : StackLang.HolProg 64 :=
.seq rawBody736_205 rawBody736_258

def rawBody736_260 : StackLang.HolProg 64 :=
.seq rawBody736_204 rawBody736_259

def rawBody736_261 : StackLang.HolProg 64 :=
.seq rawBody736_203 rawBody736_260

def rawBody736_262 : StackLang.HolProg 64 :=
.seq rawBody736_202 rawBody736_261

def rawBody736_263 : StackLang.HolProg 64 :=
.seq rawBody736_201 rawBody736_262

def rawBody736_264 : StackLang.HolProg 64 :=
.seq rawBody736_128 rawBody736_263

def rawBody736_265 : StackLang.HolProg 64 :=
.seq rawBody736_105 rawBody736_264

def rawBody736_266 : StackLang.HolProg 64 :=
.seq rawBody736_104 rawBody736_265

def rawBody736_267 : StackLang.HolProg 64 :=
.seq rawBody736_39 rawBody736_266

def rawBody736_268 : StackLang.HolProg 64 :=
.seq rawBody736_24 rawBody736_267

def rawBody736_269 : StackLang.HolProg 64 :=
.seq rawBody736_23 rawBody736_268

def rawBody736_270 : StackLang.HolProg 64 :=
.seq rawBody736_22 rawBody736_269

def rawBody736_271 : StackLang.HolProg 64 :=
.seq rawBody736_21 rawBody736_270

def rawBody736_272 : StackLang.HolProg 64 :=
.seq rawBody736_20 rawBody736_271

def rawBody736_273 : StackLang.HolProg 64 :=
.seq rawBody736_19 rawBody736_272

def rawBody736_274 : StackLang.HolProg 64 :=
.seq rawBody736_18 rawBody736_273

def rawBody736_275 : StackLang.HolProg 64 :=
.seq rawBody736_17 rawBody736_274

def rawBody736_276 : StackLang.HolProg 64 :=
.seq rawBody736_16 rawBody736_275

def rawBody736_277 : StackLang.HolProg 64 :=
.seq rawBody736_15 rawBody736_276

def rawBody736_278 : StackLang.HolProg 64 :=
.seq rawBody736_14 rawBody736_277

def rawBody736_279 : StackLang.HolProg 64 :=
.seq rawBody736_13 rawBody736_278

def rawBody736_280 : StackLang.HolProg 64 :=
.seq rawBody736_12 rawBody736_279

def rawBody736_281 : StackLang.HolProg 64 :=
.seq rawBody736_11 rawBody736_280

def rawBody736_282 : StackLang.HolProg 64 :=
.seq rawBody736_10 rawBody736_281

def rawBody736_283 : StackLang.HolProg 64 :=
.seq rawBody736_9 rawBody736_282

def rawBody736_284 : StackLang.HolProg 64 :=
.seq rawBody736_8 rawBody736_283

def rawBody736_285 : StackLang.HolProg 64 :=
.seq rawBody736_7 rawBody736_284

def rawBody736_286 : StackLang.HolProg 64 :=
.seq rawBody736_6 rawBody736_285

def rawBody736_287 : StackLang.HolProg 64 :=
.seq rawBody736_5 rawBody736_286

def rawBody736_288 : StackLang.HolProg 64 :=
.seq rawBody736_4 rawBody736_287

def rawBody736_289 : StackLang.HolProg 64 :=
.seq rawBody736_3 rawBody736_288

def rawBody736_290 : StackLang.HolProg 64 :=
.seq rawBody736_2 rawBody736_289

def rawBody736_291 : StackLang.HolProg 64 :=
.seq rawBody736_1 rawBody736_290

def rawBody736_292 : StackLang.HolProg 64 :=
.seq rawBody736_0 rawBody736_291

def raw736 : StackLang.HolProg 64 := rawBody736_292
theorem raw736_eq : StackRawCall.compTop RawInfo.rawInfo (function736 (.list [])).1 = raw736 := by
  kernel_rfl
#print axioms raw736_eq
end InitECandidate.Proofs.BackendStages
