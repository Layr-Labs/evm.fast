import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function842
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody842_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 14

def rawBody842_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def rawBody842_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody842_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody842_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64)))

def rawBody842_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody842_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody842_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 12

def rawBody842_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 11

def rawBody842_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 13

def rawBody842_12 : StackLang.HolProg 64 :=
.seq rawBody842_10 rawBody842_11

def rawBody842_13 : StackLang.HolProg 64 :=
.seq rawBody842_9 rawBody842_12

def rawBody842_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody842_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody842_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody842_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody842_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody842_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64)))

def rawBody842_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody842_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 20#64)

def rawBody842_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 13

def rawBody842_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody842_28 : StackLang.HolProg 64 :=
.seq rawBody842_26 rawBody842_27

def rawBody842_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 13

def rawBody842_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 11

def rawBody842_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def rawBody842_32 : StackLang.HolProg 64 :=
.seq rawBody842_30 rawBody842_31

def rawBody842_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 11

def rawBody842_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 10

def rawBody842_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 9

def rawBody842_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 7

def rawBody842_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def rawBody842_38 : StackLang.HolProg 64 :=
.seq rawBody842_36 rawBody842_37

def rawBody842_39 : StackLang.HolProg 64 :=
.seq rawBody842_35 rawBody842_38

def rawBody842_40 : StackLang.HolProg 64 :=
.seq rawBody842_34 rawBody842_39

def rawBody842_41 : StackLang.HolProg 64 :=
.seq rawBody842_33 rawBody842_40

def rawBody842_42 : StackLang.HolProg 64 :=
.seq rawBody842_32 rawBody842_41

def rawBody842_43 : StackLang.HolProg 64 :=
.seq rawBody842_29 rawBody842_42

def rawBody842_44 : StackLang.HolProg 64 :=
.seq rawBody842_28 rawBody842_43

def rawBody842_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4209#64)

def rawBody842_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody842_48 : StackLang.HolProg 64 :=
.seq rawBody842_46 rawBody842_47

def rawBody842_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody842_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody842_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody842_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 842 3

def rawBody842_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody842_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody842_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody842_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody842_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody842_59 : StackLang.HolProg 64 :=
.seq rawBody842_57 rawBody842_58

def rawBody842_60 : StackLang.HolProg 64 :=
.seq rawBody842_56 rawBody842_59

def rawBody842_61 : StackLang.HolProg 64 :=
.seq rawBody842_55 rawBody842_60

def rawBody842_62 : StackLang.HolProg 64 :=
.seq rawBody842_54 rawBody842_61

def rawBody842_63 : StackLang.HolProg 64 :=
.seq rawBody842_53 rawBody842_62

def rawBody842_64 : StackLang.HolProg 64 :=
.seq rawBody842_52 rawBody842_63

def rawBody842_65 : StackLang.HolProg 64 :=
.seq rawBody842_51 rawBody842_64

def rawBody842_66 : StackLang.HolProg 64 :=
.seq rawBody842_50 rawBody842_65

def rawBody842_67 : StackLang.HolProg 64 :=
.seq rawBody842_49 rawBody842_66

def rawBody842_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody842_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody842_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody842_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody842_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody842_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 13

def rawBody842_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 10

def rawBody842_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def rawBody842_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def rawBody842_79 : StackLang.HolProg 64 :=
.seq rawBody842_77 rawBody842_78

def rawBody842_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def rawBody842_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def rawBody842_82 : StackLang.HolProg 64 :=
.seq rawBody842_80 rawBody842_81

def rawBody842_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody842_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def rawBody842_85 : StackLang.HolProg 64 :=
.seq rawBody842_83 rawBody842_84

def rawBody842_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody842_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody842_88 : StackLang.HolProg 64 :=
.seq rawBody842_86 rawBody842_87

def rawBody842_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody842_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody842_91 : StackLang.HolProg 64 :=
.seq rawBody842_89 rawBody842_90

def rawBody842_92 : StackLang.HolProg 64 :=
.seq rawBody842_88 rawBody842_91

def rawBody842_93 : StackLang.HolProg 64 :=
.seq rawBody842_85 rawBody842_92

def rawBody842_94 : StackLang.HolProg 64 :=
.seq rawBody842_82 rawBody842_93

def rawBody842_95 : StackLang.HolProg 64 :=
.seq rawBody842_79 rawBody842_94

def rawBody842_96 : StackLang.HolProg 64 :=
.seq rawBody842_76 rawBody842_95

def rawBody842_97 : StackLang.HolProg 64 :=
.seq rawBody842_75 rawBody842_96

def rawBody842_98 : StackLang.HolProg 64 :=
.seq rawBody842_74 rawBody842_97

def rawBody842_99 : StackLang.HolProg 64 :=
.seq rawBody842_73 rawBody842_98

def rawBody842_100 : StackLang.HolProg 64 :=
.seq rawBody842_72 rawBody842_99

def rawBody842_101 : StackLang.HolProg 64 :=
.seq rawBody842_71 rawBody842_100

def rawBody842_102 : StackLang.HolProg 64 :=
.seq rawBody842_70 rawBody842_101

def rawBody842_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 13

def rawBody842_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 10

def rawBody842_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def rawBody842_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def rawBody842_107 : StackLang.HolProg 64 :=
.seq rawBody842_105 rawBody842_106

def rawBody842_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def rawBody842_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def rawBody842_110 : StackLang.HolProg 64 :=
.seq rawBody842_108 rawBody842_109

def rawBody842_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody842_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def rawBody842_113 : StackLang.HolProg 64 :=
.seq rawBody842_111 rawBody842_112

def rawBody842_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody842_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody842_116 : StackLang.HolProg 64 :=
.seq rawBody842_114 rawBody842_115

def rawBody842_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody842_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody842_119 : StackLang.HolProg 64 :=
.seq rawBody842_117 rawBody842_118

def rawBody842_120 : StackLang.HolProg 64 :=
.seq rawBody842_116 rawBody842_119

def rawBody842_121 : StackLang.HolProg 64 :=
.seq rawBody842_113 rawBody842_120

def rawBody842_122 : StackLang.HolProg 64 :=
.seq rawBody842_110 rawBody842_121

def rawBody842_123 : StackLang.HolProg 64 :=
.seq rawBody842_107 rawBody842_122

def rawBody842_124 : StackLang.HolProg 64 :=
.seq rawBody842_104 rawBody842_123

def rawBody842_125 : StackLang.HolProg 64 :=
.seq rawBody842_103 rawBody842_124

def rawBody842_126 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody842_127 : StackLang.HolProg 64 :=
.seq rawBody842_125 rawBody842_126

def rawBody842_128 : StackLang.HolProg 64 :=
.call (some (rawBody842_102, 0, 842, 2)) (Sum.inl 176) (some (rawBody842_127, 842, 3))

def rawBody842_129 : StackLang.HolProg 64 :=
.seq rawBody842_69 rawBody842_128

def rawBody842_130 : StackLang.HolProg 64 :=
.seq rawBody842_68 rawBody842_129

def rawBody842_131 : StackLang.HolProg 64 :=
.seq rawBody842_67 rawBody842_130

def rawBody842_132 : StackLang.HolProg 64 :=
.seq rawBody842_48 rawBody842_131

def rawBody842_133 : StackLang.HolProg 64 :=
.seq rawBody842_45 rawBody842_132

def rawBody842_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody842_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody842_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64)))

def rawBody842_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 16#64))

def rawBody842_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def rawBody842_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody842_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 13

def rawBody842_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def rawBody842_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 5

def rawBody842_146 : StackLang.HolProg 64 :=
.seq rawBody842_144 rawBody842_145

def rawBody842_147 : StackLang.HolProg 64 :=
.seq rawBody842_143 rawBody842_146

def rawBody842_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody842_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody842_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody842_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 13

def rawBody842_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 8#64))

def rawBody842_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody842_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def rawBody842_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 13

def rawBody842_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody842_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody842_159 : StackLang.HolProg 64 :=
.seq rawBody842_157 rawBody842_158

def rawBody842_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody842_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody842_162 : StackLang.HolProg 64 :=
.seq rawBody842_160 rawBody842_161

def rawBody842_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody842_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody842_165 : StackLang.HolProg 64 :=
.seq rawBody842_163 rawBody842_164

def rawBody842_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def rawBody842_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody842_168 : StackLang.HolProg 64 :=
.seq rawBody842_166 rawBody842_167

def rawBody842_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 8

def rawBody842_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody842_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody842_172 : StackLang.HolProg 64 :=
.seq rawBody842_170 rawBody842_171

def rawBody842_173 : StackLang.HolProg 64 :=
.seq rawBody842_169 rawBody842_172

def rawBody842_174 : StackLang.HolProg 64 :=
.seq rawBody842_168 rawBody842_173

def rawBody842_175 : StackLang.HolProg 64 :=
.seq rawBody842_165 rawBody842_174

def rawBody842_176 : StackLang.HolProg 64 :=
.seq rawBody842_162 rawBody842_175

def rawBody842_177 : StackLang.HolProg 64 :=
.seq rawBody842_159 rawBody842_176

def rawBody842_178 : StackLang.HolProg 64 :=
.seq rawBody842_156 rawBody842_177

def rawBody842_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4210#64)

def rawBody842_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody842_182 : StackLang.HolProg 64 :=
.seq rawBody842_180 rawBody842_181

def rawBody842_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody842_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody842_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody842_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 842 5

def rawBody842_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody842_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody842_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody842_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody842_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody842_193 : StackLang.HolProg 64 :=
.seq rawBody842_191 rawBody842_192

def rawBody842_194 : StackLang.HolProg 64 :=
.seq rawBody842_190 rawBody842_193

def rawBody842_195 : StackLang.HolProg 64 :=
.seq rawBody842_189 rawBody842_194

def rawBody842_196 : StackLang.HolProg 64 :=
.seq rawBody842_188 rawBody842_195

def rawBody842_197 : StackLang.HolProg 64 :=
.seq rawBody842_187 rawBody842_196

def rawBody842_198 : StackLang.HolProg 64 :=
.seq rawBody842_186 rawBody842_197

def rawBody842_199 : StackLang.HolProg 64 :=
.seq rawBody842_185 rawBody842_198

def rawBody842_200 : StackLang.HolProg 64 :=
.seq rawBody842_184 rawBody842_199

def rawBody842_201 : StackLang.HolProg 64 :=
.seq rawBody842_183 rawBody842_200

def rawBody842_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody842_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody842_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody842_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody842_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody842_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody842_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def rawBody842_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody842_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def rawBody842_213 : StackLang.HolProg 64 :=
.seq rawBody842_211 rawBody842_212

def rawBody842_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody842_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody842_216 : StackLang.HolProg 64 :=
.seq rawBody842_214 rawBody842_215

def rawBody842_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody842_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody842_219 : StackLang.HolProg 64 :=
.seq rawBody842_217 rawBody842_218

def rawBody842_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody842_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def rawBody842_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody842_223 : StackLang.HolProg 64 :=
.seq rawBody842_221 rawBody842_222

def rawBody842_224 : StackLang.HolProg 64 :=
.seq rawBody842_220 rawBody842_223

def rawBody842_225 : StackLang.HolProg 64 :=
.seq rawBody842_219 rawBody842_224

def rawBody842_226 : StackLang.HolProg 64 :=
.seq rawBody842_216 rawBody842_225

def rawBody842_227 : StackLang.HolProg 64 :=
.seq rawBody842_213 rawBody842_226

def rawBody842_228 : StackLang.HolProg 64 :=
.seq rawBody842_210 rawBody842_227

def rawBody842_229 : StackLang.HolProg 64 :=
.seq rawBody842_209 rawBody842_228

def rawBody842_230 : StackLang.HolProg 64 :=
.seq rawBody842_208 rawBody842_229

def rawBody842_231 : StackLang.HolProg 64 :=
.seq rawBody842_207 rawBody842_230

def rawBody842_232 : StackLang.HolProg 64 :=
.seq rawBody842_206 rawBody842_231

def rawBody842_233 : StackLang.HolProg 64 :=
.seq rawBody842_205 rawBody842_232

def rawBody842_234 : StackLang.HolProg 64 :=
.seq rawBody842_204 rawBody842_233

def rawBody842_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody842_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def rawBody842_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody842_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def rawBody842_239 : StackLang.HolProg 64 :=
.seq rawBody842_237 rawBody842_238

def rawBody842_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody842_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody842_242 : StackLang.HolProg 64 :=
.seq rawBody842_240 rawBody842_241

def rawBody842_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody842_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody842_245 : StackLang.HolProg 64 :=
.seq rawBody842_243 rawBody842_244

def rawBody842_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody842_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def rawBody842_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody842_249 : StackLang.HolProg 64 :=
.seq rawBody842_247 rawBody842_248

def rawBody842_250 : StackLang.HolProg 64 :=
.seq rawBody842_246 rawBody842_249

def rawBody842_251 : StackLang.HolProg 64 :=
.seq rawBody842_245 rawBody842_250

def rawBody842_252 : StackLang.HolProg 64 :=
.seq rawBody842_242 rawBody842_251

def rawBody842_253 : StackLang.HolProg 64 :=
.seq rawBody842_239 rawBody842_252

def rawBody842_254 : StackLang.HolProg 64 :=
.seq rawBody842_236 rawBody842_253

def rawBody842_255 : StackLang.HolProg 64 :=
.seq rawBody842_235 rawBody842_254

def rawBody842_256 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody842_257 : StackLang.HolProg 64 :=
.seq rawBody842_255 rawBody842_256

def rawBody842_258 : StackLang.HolProg 64 :=
.call (some (rawBody842_234, 0, 842, 4)) (Sum.inl 176) (some (rawBody842_257, 842, 5))

def rawBody842_259 : StackLang.HolProg 64 :=
.seq rawBody842_203 rawBody842_258

def rawBody842_260 : StackLang.HolProg 64 :=
.seq rawBody842_202 rawBody842_259

def rawBody842_261 : StackLang.HolProg 64 :=
.seq rawBody842_201 rawBody842_260

def rawBody842_262 : StackLang.HolProg 64 :=
.seq rawBody842_182 rawBody842_261

def rawBody842_263 : StackLang.HolProg 64 :=
.seq rawBody842_179 rawBody842_262

def rawBody842_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody842_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody842_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody842_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 4

def rawBody842_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def rawBody842_271 : StackLang.HolProg 64 :=
.seq rawBody842_269 rawBody842_270

def rawBody842_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody842_273 : StackLang.HolProg 64 :=
.seq rawBody842_271 rawBody842_272

def rawBody842_274 : StackLang.HolProg 64 :=
.seq rawBody842_268 rawBody842_273

def rawBody842_275 : StackLang.HolProg 64 :=
.seq rawBody842_267 rawBody842_274

def rawBody842_276 : StackLang.HolProg 64 :=
.seq rawBody842_266 rawBody842_275

def rawBody842_277 : StackLang.HolProg 64 :=
.seq rawBody842_265 rawBody842_276

def rawBody842_278 : StackLang.HolProg 64 :=
.seq rawBody842_264 rawBody842_277

def rawBody842_279 : StackLang.HolProg 64 :=
.seq rawBody842_263 rawBody842_278

def rawBody842_280 : StackLang.HolProg 64 :=
.seq rawBody842_178 rawBody842_279

def rawBody842_281 : StackLang.HolProg 64 :=
.seq rawBody842_155 rawBody842_280

def rawBody842_282 : StackLang.HolProg 64 :=
.seq rawBody842_154 rawBody842_281

def rawBody842_283 : StackLang.HolProg 64 :=
.seq rawBody842_153 rawBody842_282

def rawBody842_284 : StackLang.HolProg 64 :=
.seq rawBody842_152 rawBody842_283

def rawBody842_285 : StackLang.HolProg 64 :=
.seq rawBody842_151 rawBody842_284

def rawBody842_286 : StackLang.HolProg 64 :=
.seq rawBody842_150 rawBody842_285

def rawBody842_287 : StackLang.HolProg 64 :=
.seq rawBody842_149 rawBody842_286

def rawBody842_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody842_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody842_290 : StackLang.HolProg 64 :=
.seq rawBody842_288 rawBody842_289

def rawBody842_291 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody842_287 rawBody842_290

def rawBody842_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody842_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 12

def rawBody842_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 13

def rawBody842_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 11

def rawBody842_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 4

def rawBody842_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 10

def rawBody842_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 9

def rawBody842_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 8

def rawBody842_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 11 7

def rawBody842_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 12 6

def rawBody842_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 13 5

def rawBody842_303 : StackLang.HolProg 64 :=
.seq rawBody842_301 rawBody842_302

def rawBody842_304 : StackLang.HolProg 64 :=
.seq rawBody842_300 rawBody842_303

def rawBody842_305 : StackLang.HolProg 64 :=
.seq rawBody842_299 rawBody842_304

def rawBody842_306 : StackLang.HolProg 64 :=
.seq rawBody842_298 rawBody842_305

def rawBody842_307 : StackLang.HolProg 64 :=
.seq rawBody842_297 rawBody842_306

def rawBody842_308 : StackLang.HolProg 64 :=
.seq rawBody842_296 rawBody842_307

def rawBody842_309 : StackLang.HolProg 64 :=
.seq rawBody842_295 rawBody842_308

def rawBody842_310 : StackLang.HolProg 64 :=
.seq rawBody842_294 rawBody842_309

def rawBody842_311 : StackLang.HolProg 64 :=
.seq rawBody842_293 rawBody842_310

def rawBody842_312 : StackLang.HolProg 64 :=
.seq rawBody842_292 rawBody842_311

def rawBody842_313 : StackLang.HolProg 64 :=
.seq rawBody842_291 rawBody842_312

def rawBody842_314 : StackLang.HolProg 64 :=
.seq rawBody842_148 rawBody842_313

def rawBody842_315 : StackLang.HolProg 64 :=
.loop rawBody842_314

def rawBody842_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody842_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 5

def rawBody842_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4211#64)

def rawBody842_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody842_321 : StackLang.HolProg 64 :=
.seq rawBody842_319 rawBody842_320

def rawBody842_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody842_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody842_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody842_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 842 7

def rawBody842_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody842_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody842_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody842_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody842_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody842_332 : StackLang.HolProg 64 :=
.seq rawBody842_330 rawBody842_331

def rawBody842_333 : StackLang.HolProg 64 :=
.seq rawBody842_329 rawBody842_332

def rawBody842_334 : StackLang.HolProg 64 :=
.seq rawBody842_328 rawBody842_333

def rawBody842_335 : StackLang.HolProg 64 :=
.seq rawBody842_327 rawBody842_334

def rawBody842_336 : StackLang.HolProg 64 :=
.seq rawBody842_326 rawBody842_335

def rawBody842_337 : StackLang.HolProg 64 :=
.seq rawBody842_325 rawBody842_336

def rawBody842_338 : StackLang.HolProg 64 :=
.seq rawBody842_324 rawBody842_337

def rawBody842_339 : StackLang.HolProg 64 :=
.seq rawBody842_323 rawBody842_338

def rawBody842_340 : StackLang.HolProg 64 :=
.seq rawBody842_322 rawBody842_339

def rawBody842_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody842_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody842_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody842_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody842_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody842_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def rawBody842_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 11

def rawBody842_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 13

def rawBody842_351 : StackLang.HolProg 64 :=
.seq rawBody842_349 rawBody842_350

def rawBody842_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody842_353 : StackLang.HolProg 64 :=
.seq rawBody842_351 rawBody842_352

def rawBody842_354 : StackLang.HolProg 64 :=
.seq rawBody842_348 rawBody842_353

def rawBody842_355 : StackLang.HolProg 64 :=
.seq rawBody842_347 rawBody842_354

def rawBody842_356 : StackLang.HolProg 64 :=
.seq rawBody842_346 rawBody842_355

def rawBody842_357 : StackLang.HolProg 64 :=
.seq rawBody842_345 rawBody842_356

def rawBody842_358 : StackLang.HolProg 64 :=
.seq rawBody842_344 rawBody842_357

def rawBody842_359 : StackLang.HolProg 64 :=
.seq rawBody842_343 rawBody842_358

def rawBody842_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def rawBody842_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 11

def rawBody842_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 13

def rawBody842_363 : StackLang.HolProg 64 :=
.seq rawBody842_361 rawBody842_362

def rawBody842_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody842_365 : StackLang.HolProg 64 :=
.seq rawBody842_363 rawBody842_364

def rawBody842_366 : StackLang.HolProg 64 :=
.seq rawBody842_360 rawBody842_365

def rawBody842_367 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody842_368 : StackLang.HolProg 64 :=
.seq rawBody842_366 rawBody842_367

def rawBody842_369 : StackLang.HolProg 64 :=
.call (some (rawBody842_359, 0, 842, 6)) (Sum.inl 840) (some (rawBody842_368, 842, 7))

def rawBody842_370 : StackLang.HolProg 64 :=
.seq rawBody842_342 rawBody842_369

def rawBody842_371 : StackLang.HolProg 64 :=
.seq rawBody842_341 rawBody842_370

def rawBody842_372 : StackLang.HolProg 64 :=
.seq rawBody842_340 rawBody842_371

def rawBody842_373 : StackLang.HolProg 64 :=
.seq rawBody842_321 rawBody842_372

def rawBody842_374 : StackLang.HolProg 64 :=
.seq rawBody842_318 rawBody842_373

def rawBody842_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody842_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody842_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def rawBody842_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def rawBody842_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 11

def rawBody842_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4212#64)

def rawBody842_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody842_386 : StackLang.HolProg 64 :=
.seq rawBody842_384 rawBody842_385

def rawBody842_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody842_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody842_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody842_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 842 9

def rawBody842_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody842_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody842_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody842_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody842_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody842_397 : StackLang.HolProg 64 :=
.seq rawBody842_395 rawBody842_396

def rawBody842_398 : StackLang.HolProg 64 :=
.seq rawBody842_394 rawBody842_397

def rawBody842_399 : StackLang.HolProg 64 :=
.seq rawBody842_393 rawBody842_398

def rawBody842_400 : StackLang.HolProg 64 :=
.seq rawBody842_392 rawBody842_399

def rawBody842_401 : StackLang.HolProg 64 :=
.seq rawBody842_391 rawBody842_400

def rawBody842_402 : StackLang.HolProg 64 :=
.seq rawBody842_390 rawBody842_401

def rawBody842_403 : StackLang.HolProg 64 :=
.seq rawBody842_389 rawBody842_402

def rawBody842_404 : StackLang.HolProg 64 :=
.seq rawBody842_388 rawBody842_403

def rawBody842_405 : StackLang.HolProg 64 :=
.seq rawBody842_387 rawBody842_404

def rawBody842_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody842_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody842_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody842_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody842_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody842_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 11

def rawBody842_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 10

def rawBody842_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def rawBody842_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def rawBody842_417 : StackLang.HolProg 64 :=
.seq rawBody842_415 rawBody842_416

def rawBody842_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def rawBody842_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def rawBody842_420 : StackLang.HolProg 64 :=
.seq rawBody842_418 rawBody842_419

def rawBody842_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody842_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def rawBody842_423 : StackLang.HolProg 64 :=
.seq rawBody842_421 rawBody842_422

def rawBody842_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody842_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody842_426 : StackLang.HolProg 64 :=
.seq rawBody842_424 rawBody842_425

def rawBody842_427 : StackLang.HolProg 64 :=
.seq rawBody842_423 rawBody842_426

def rawBody842_428 : StackLang.HolProg 64 :=
.seq rawBody842_420 rawBody842_427

def rawBody842_429 : StackLang.HolProg 64 :=
.seq rawBody842_417 rawBody842_428

def rawBody842_430 : StackLang.HolProg 64 :=
.seq rawBody842_414 rawBody842_429

def rawBody842_431 : StackLang.HolProg 64 :=
.seq rawBody842_413 rawBody842_430

def rawBody842_432 : StackLang.HolProg 64 :=
.seq rawBody842_412 rawBody842_431

def rawBody842_433 : StackLang.HolProg 64 :=
.seq rawBody842_411 rawBody842_432

def rawBody842_434 : StackLang.HolProg 64 :=
.seq rawBody842_410 rawBody842_433

def rawBody842_435 : StackLang.HolProg 64 :=
.seq rawBody842_409 rawBody842_434

def rawBody842_436 : StackLang.HolProg 64 :=
.seq rawBody842_408 rawBody842_435

def rawBody842_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 11

def rawBody842_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 10

def rawBody842_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def rawBody842_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def rawBody842_441 : StackLang.HolProg 64 :=
.seq rawBody842_439 rawBody842_440

def rawBody842_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def rawBody842_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def rawBody842_444 : StackLang.HolProg 64 :=
.seq rawBody842_442 rawBody842_443

def rawBody842_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody842_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def rawBody842_447 : StackLang.HolProg 64 :=
.seq rawBody842_445 rawBody842_446

def rawBody842_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody842_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody842_450 : StackLang.HolProg 64 :=
.seq rawBody842_448 rawBody842_449

def rawBody842_451 : StackLang.HolProg 64 :=
.seq rawBody842_447 rawBody842_450

def rawBody842_452 : StackLang.HolProg 64 :=
.seq rawBody842_444 rawBody842_451

def rawBody842_453 : StackLang.HolProg 64 :=
.seq rawBody842_441 rawBody842_452

def rawBody842_454 : StackLang.HolProg 64 :=
.seq rawBody842_438 rawBody842_453

def rawBody842_455 : StackLang.HolProg 64 :=
.seq rawBody842_437 rawBody842_454

def rawBody842_456 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody842_457 : StackLang.HolProg 64 :=
.seq rawBody842_455 rawBody842_456

def rawBody842_458 : StackLang.HolProg 64 :=
.call (some (rawBody842_436, 0, 842, 8)) (Sum.inl 176) (some (rawBody842_457, 842, 9))

def rawBody842_459 : StackLang.HolProg 64 :=
.seq rawBody842_407 rawBody842_458

def rawBody842_460 : StackLang.HolProg 64 :=
.seq rawBody842_406 rawBody842_459

def rawBody842_461 : StackLang.HolProg 64 :=
.seq rawBody842_405 rawBody842_460

def rawBody842_462 : StackLang.HolProg 64 :=
.seq rawBody842_386 rawBody842_461

def rawBody842_463 : StackLang.HolProg 64 :=
.seq rawBody842_383 rawBody842_462

def rawBody842_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody842_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody842_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody842_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 11

def rawBody842_469 : StackLang.HolProg 64 :=
.seq rawBody842_467 rawBody842_468

def rawBody842_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4213#64)

def rawBody842_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody842_473 : StackLang.HolProg 64 :=
.seq rawBody842_471 rawBody842_472

def rawBody842_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody842_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody842_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody842_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 842 11

def rawBody842_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody842_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody842_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody842_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody842_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody842_484 : StackLang.HolProg 64 :=
.seq rawBody842_482 rawBody842_483

def rawBody842_485 : StackLang.HolProg 64 :=
.seq rawBody842_481 rawBody842_484

def rawBody842_486 : StackLang.HolProg 64 :=
.seq rawBody842_480 rawBody842_485

def rawBody842_487 : StackLang.HolProg 64 :=
.seq rawBody842_479 rawBody842_486

def rawBody842_488 : StackLang.HolProg 64 :=
.seq rawBody842_478 rawBody842_487

def rawBody842_489 : StackLang.HolProg 64 :=
.seq rawBody842_477 rawBody842_488

def rawBody842_490 : StackLang.HolProg 64 :=
.seq rawBody842_476 rawBody842_489

def rawBody842_491 : StackLang.HolProg 64 :=
.seq rawBody842_475 rawBody842_490

def rawBody842_492 : StackLang.HolProg 64 :=
.seq rawBody842_474 rawBody842_491

def rawBody842_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody842_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody842_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody842_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody842_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody842_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def rawBody842_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 11

def rawBody842_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 10

def rawBody842_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 9

def rawBody842_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 8

def rawBody842_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 7

def rawBody842_506 : StackLang.HolProg 64 :=
.seq rawBody842_504 rawBody842_505

def rawBody842_507 : StackLang.HolProg 64 :=
.seq rawBody842_503 rawBody842_506

def rawBody842_508 : StackLang.HolProg 64 :=
.seq rawBody842_502 rawBody842_507

def rawBody842_509 : StackLang.HolProg 64 :=
.seq rawBody842_501 rawBody842_508

def rawBody842_510 : StackLang.HolProg 64 :=
.seq rawBody842_500 rawBody842_509

def rawBody842_511 : StackLang.HolProg 64 :=
.seq rawBody842_499 rawBody842_510

def rawBody842_512 : StackLang.HolProg 64 :=
.seq rawBody842_498 rawBody842_511

def rawBody842_513 : StackLang.HolProg 64 :=
.seq rawBody842_497 rawBody842_512

def rawBody842_514 : StackLang.HolProg 64 :=
.seq rawBody842_496 rawBody842_513

def rawBody842_515 : StackLang.HolProg 64 :=
.seq rawBody842_495 rawBody842_514

def rawBody842_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def rawBody842_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 11

def rawBody842_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 10

def rawBody842_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 9

def rawBody842_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 8

def rawBody842_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 7

def rawBody842_522 : StackLang.HolProg 64 :=
.seq rawBody842_520 rawBody842_521

def rawBody842_523 : StackLang.HolProg 64 :=
.seq rawBody842_519 rawBody842_522

def rawBody842_524 : StackLang.HolProg 64 :=
.seq rawBody842_518 rawBody842_523

def rawBody842_525 : StackLang.HolProg 64 :=
.seq rawBody842_517 rawBody842_524

def rawBody842_526 : StackLang.HolProg 64 :=
.seq rawBody842_516 rawBody842_525

def rawBody842_527 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody842_528 : StackLang.HolProg 64 :=
.seq rawBody842_526 rawBody842_527

def rawBody842_529 : StackLang.HolProg 64 :=
.call (some (rawBody842_515, 0, 842, 10)) (Sum.inl 840) (some (rawBody842_528, 842, 11))

def rawBody842_530 : StackLang.HolProg 64 :=
.seq rawBody842_494 rawBody842_529

def rawBody842_531 : StackLang.HolProg 64 :=
.seq rawBody842_493 rawBody842_530

def rawBody842_532 : StackLang.HolProg 64 :=
.seq rawBody842_492 rawBody842_531

def rawBody842_533 : StackLang.HolProg 64 :=
.seq rawBody842_473 rawBody842_532

def rawBody842_534 : StackLang.HolProg 64 :=
.seq rawBody842_470 rawBody842_533

def rawBody842_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody842_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody842_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody842_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 11

def rawBody842_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 13

def rawBody842_542 : StackLang.HolProg 64 :=
.seq rawBody842_540 rawBody842_541

def rawBody842_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody842_544 : StackLang.HolProg 64 :=
.seq rawBody842_542 rawBody842_543

def rawBody842_545 : StackLang.HolProg 64 :=
.seq rawBody842_539 rawBody842_544

def rawBody842_546 : StackLang.HolProg 64 :=
.seq rawBody842_538 rawBody842_545

def rawBody842_547 : StackLang.HolProg 64 :=
.seq rawBody842_537 rawBody842_546

def rawBody842_548 : StackLang.HolProg 64 :=
.seq rawBody842_536 rawBody842_547

def rawBody842_549 : StackLang.HolProg 64 :=
.seq rawBody842_535 rawBody842_548

def rawBody842_550 : StackLang.HolProg 64 :=
.seq rawBody842_534 rawBody842_549

def rawBody842_551 : StackLang.HolProg 64 :=
.seq rawBody842_469 rawBody842_550

def rawBody842_552 : StackLang.HolProg 64 :=
.seq rawBody842_466 rawBody842_551

def rawBody842_553 : StackLang.HolProg 64 :=
.seq rawBody842_465 rawBody842_552

def rawBody842_554 : StackLang.HolProg 64 :=
.seq rawBody842_464 rawBody842_553

def rawBody842_555 : StackLang.HolProg 64 :=
.seq rawBody842_463 rawBody842_554

def rawBody842_556 : StackLang.HolProg 64 :=
.seq rawBody842_382 rawBody842_555

def rawBody842_557 : StackLang.HolProg 64 :=
.seq rawBody842_381 rawBody842_556

def rawBody842_558 : StackLang.HolProg 64 :=
.seq rawBody842_380 rawBody842_557

def rawBody842_559 : StackLang.HolProg 64 :=
.seq rawBody842_379 rawBody842_558

def rawBody842_560 : StackLang.HolProg 64 :=
.seq rawBody842_378 rawBody842_559

def rawBody842_561 : StackLang.HolProg 64 :=
.seq rawBody842_377 rawBody842_560

def rawBody842_562 : StackLang.HolProg 64 :=
.seq rawBody842_376 rawBody842_561

def rawBody842_563 : StackLang.HolProg 64 :=
.seq rawBody842_375 rawBody842_562

def rawBody842_564 : StackLang.HolProg 64 :=
.seq rawBody842_374 rawBody842_563

def rawBody842_565 : StackLang.HolProg 64 :=
.seq rawBody842_317 rawBody842_564

def rawBody842_566 : StackLang.HolProg 64 :=
.seq rawBody842_316 rawBody842_565

def rawBody842_567 : StackLang.HolProg 64 :=
.seq rawBody842_315 rawBody842_566

def rawBody842_568 : StackLang.HolProg 64 :=
.seq rawBody842_147 rawBody842_567

def rawBody842_569 : StackLang.HolProg 64 :=
.seq rawBody842_142 rawBody842_568

def rawBody842_570 : StackLang.HolProg 64 :=
.seq rawBody842_141 rawBody842_569

def rawBody842_571 : StackLang.HolProg 64 :=
.seq rawBody842_140 rawBody842_570

def rawBody842_572 : StackLang.HolProg 64 :=
.seq rawBody842_139 rawBody842_571

def rawBody842_573 : StackLang.HolProg 64 :=
.seq rawBody842_138 rawBody842_572

def rawBody842_574 : StackLang.HolProg 64 :=
.seq rawBody842_137 rawBody842_573

def rawBody842_575 : StackLang.HolProg 64 :=
.seq rawBody842_136 rawBody842_574

def rawBody842_576 : StackLang.HolProg 64 :=
.seq rawBody842_135 rawBody842_575

def rawBody842_577 : StackLang.HolProg 64 :=
.seq rawBody842_134 rawBody842_576

def rawBody842_578 : StackLang.HolProg 64 :=
.seq rawBody842_133 rawBody842_577

def rawBody842_579 : StackLang.HolProg 64 :=
.seq rawBody842_44 rawBody842_578

def rawBody842_580 : StackLang.HolProg 64 :=
.seq rawBody842_25 rawBody842_579

def rawBody842_581 : StackLang.HolProg 64 :=
.seq rawBody842_24 rawBody842_580

def rawBody842_582 : StackLang.HolProg 64 :=
.seq rawBody842_23 rawBody842_581

def rawBody842_583 : StackLang.HolProg 64 :=
.seq rawBody842_22 rawBody842_582

def rawBody842_584 : StackLang.HolProg 64 :=
.seq rawBody842_21 rawBody842_583

def rawBody842_585 : StackLang.HolProg 64 :=
.seq rawBody842_20 rawBody842_584

def rawBody842_586 : StackLang.HolProg 64 :=
.seq rawBody842_19 rawBody842_585

def rawBody842_587 : StackLang.HolProg 64 :=
.seq rawBody842_18 rawBody842_586

def rawBody842_588 : StackLang.HolProg 64 :=
.seq rawBody842_17 rawBody842_587

def rawBody842_589 : StackLang.HolProg 64 :=
.seq rawBody842_16 rawBody842_588

def rawBody842_590 : StackLang.HolProg 64 :=
.seq rawBody842_15 rawBody842_589

def rawBody842_591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody842_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody842_593 : StackLang.HolProg 64 :=
.seq rawBody842_591 rawBody842_592

def rawBody842_594 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) rawBody842_590 rawBody842_593

def rawBody842_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody842_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 12

def rawBody842_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 11

def rawBody842_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 13

def rawBody842_599 : StackLang.HolProg 64 :=
.seq rawBody842_597 rawBody842_598

def rawBody842_600 : StackLang.HolProg 64 :=
.seq rawBody842_596 rawBody842_599

def rawBody842_601 : StackLang.HolProg 64 :=
.seq rawBody842_595 rawBody842_600

def rawBody842_602 : StackLang.HolProg 64 :=
.seq rawBody842_594 rawBody842_601

def rawBody842_603 : StackLang.HolProg 64 :=
.seq rawBody842_14 rawBody842_602

def rawBody842_604 : StackLang.HolProg 64 :=
.loop rawBody842_603

def rawBody842_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody842_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 13

def rawBody842_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 12

def rawBody842_608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 13

def rawBody842_609 : StackLang.HolProg 64 :=
.seq rawBody842_607 rawBody842_608

def rawBody842_610 : StackLang.HolProg 64 :=
.seq rawBody842_606 rawBody842_609

def rawBody842_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4214#64)

def rawBody842_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody842_614 : StackLang.HolProg 64 :=
.seq rawBody842_612 rawBody842_613

def rawBody842_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody842_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody842_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody842_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 842 13

def rawBody842_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody842_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody842_621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody842_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody842_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody842_625 : StackLang.HolProg 64 :=
.seq rawBody842_623 rawBody842_624

def rawBody842_626 : StackLang.HolProg 64 :=
.seq rawBody842_622 rawBody842_625

def rawBody842_627 : StackLang.HolProg 64 :=
.seq rawBody842_621 rawBody842_626

def rawBody842_628 : StackLang.HolProg 64 :=
.seq rawBody842_620 rawBody842_627

def rawBody842_629 : StackLang.HolProg 64 :=
.seq rawBody842_619 rawBody842_628

def rawBody842_630 : StackLang.HolProg 64 :=
.seq rawBody842_618 rawBody842_629

def rawBody842_631 : StackLang.HolProg 64 :=
.seq rawBody842_617 rawBody842_630

def rawBody842_632 : StackLang.HolProg 64 :=
.seq rawBody842_616 rawBody842_631

def rawBody842_633 : StackLang.HolProg 64 :=
.seq rawBody842_615 rawBody842_632

def rawBody842_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody842_635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody842_637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody842_638 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody842_639 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody842_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody842_641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def rawBody842_642 : StackLang.HolProg 64 :=
.seq rawBody842_640 rawBody842_641

def rawBody842_643 : StackLang.HolProg 64 :=
.seq rawBody842_639 rawBody842_642

def rawBody842_644 : StackLang.HolProg 64 :=
.seq rawBody842_638 rawBody842_643

def rawBody842_645 : StackLang.HolProg 64 :=
.seq rawBody842_637 rawBody842_644

def rawBody842_646 : StackLang.HolProg 64 :=
.seq rawBody842_636 rawBody842_645

def rawBody842_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def rawBody842_648 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody842_649 : StackLang.HolProg 64 :=
.seq rawBody842_647 rawBody842_648

def rawBody842_650 : StackLang.HolProg 64 :=
.call (some (rawBody842_646, 0, 842, 12)) (Sum.inl 840) (some (rawBody842_649, 842, 13))

def rawBody842_651 : StackLang.HolProg 64 :=
.seq rawBody842_635 rawBody842_650

def rawBody842_652 : StackLang.HolProg 64 :=
.seq rawBody842_634 rawBody842_651

def rawBody842_653 : StackLang.HolProg 64 :=
.seq rawBody842_633 rawBody842_652

def rawBody842_654 : StackLang.HolProg 64 :=
.seq rawBody842_614 rawBody842_653

def rawBody842_655 : StackLang.HolProg 64 :=
.seq rawBody842_611 rawBody842_654

def rawBody842_656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody842_657 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody842_658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 14

def rawBody842_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody842_660 : StackLang.HolProg 64 :=
.seq rawBody842_658 rawBody842_659

def rawBody842_661 : StackLang.HolProg 64 :=
.seq rawBody842_657 rawBody842_660

def rawBody842_662 : StackLang.HolProg 64 :=
.seq rawBody842_656 rawBody842_661

def rawBody842_663 : StackLang.HolProg 64 :=
.seq rawBody842_655 rawBody842_662

def rawBody842_664 : StackLang.HolProg 64 :=
.seq rawBody842_610 rawBody842_663

def rawBody842_665 : StackLang.HolProg 64 :=
.seq rawBody842_605 rawBody842_664

def rawBody842_666 : StackLang.HolProg 64 :=
.seq rawBody842_604 rawBody842_665

def rawBody842_667 : StackLang.HolProg 64 :=
.seq rawBody842_13 rawBody842_666

def rawBody842_668 : StackLang.HolProg 64 :=
.seq rawBody842_8 rawBody842_667

def rawBody842_669 : StackLang.HolProg 64 :=
.seq rawBody842_7 rawBody842_668

def rawBody842_670 : StackLang.HolProg 64 :=
.seq rawBody842_6 rawBody842_669

def rawBody842_671 : StackLang.HolProg 64 :=
.seq rawBody842_5 rawBody842_670

def rawBody842_672 : StackLang.HolProg 64 :=
.seq rawBody842_4 rawBody842_671

def rawBody842_673 : StackLang.HolProg 64 :=
.seq rawBody842_3 rawBody842_672

def rawBody842_674 : StackLang.HolProg 64 :=
.seq rawBody842_2 rawBody842_673

def rawBody842_675 : StackLang.HolProg 64 :=
.seq rawBody842_1 rawBody842_674

def rawBody842_676 : StackLang.HolProg 64 :=
.seq rawBody842_0 rawBody842_675

def raw842 : StackLang.HolProg 64 := rawBody842_676
theorem raw842_eq : StackRawCall.compTop RawInfo.rawInfo (function842 (.list [])).1 = raw842 := by
  kernel_rfl
#print axioms raw842_eq
end InitECandidate.Proofs.BackendStages
