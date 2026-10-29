import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function296
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody296_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def rawBody296_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody296_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def rawBody296_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody296_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def rawBody296_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody296_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def rawBody296_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody296_8 : StackLang.HolProg 64 :=
.seq rawBody296_6 rawBody296_7

def rawBody296_9 : StackLang.HolProg 64 :=
.seq rawBody296_5 rawBody296_8

def rawBody296_10 : StackLang.HolProg 64 :=
.seq rawBody296_4 rawBody296_9

def rawBody296_11 : StackLang.HolProg 64 :=
.seq rawBody296_3 rawBody296_10

def rawBody296_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody296_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 802#64)

def rawBody296_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody296_15 : StackLang.HolProg 64 :=
.seq rawBody296_13 rawBody296_14

def rawBody296_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody296_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody296_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody296_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 296 3

def rawBody296_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody296_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody296_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody296_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody296_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody296_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody296_26 : StackLang.HolProg 64 :=
.seq rawBody296_24 rawBody296_25

def rawBody296_27 : StackLang.HolProg 64 :=
.seq rawBody296_23 rawBody296_26

def rawBody296_28 : StackLang.HolProg 64 :=
.seq rawBody296_22 rawBody296_27

def rawBody296_29 : StackLang.HolProg 64 :=
.seq rawBody296_21 rawBody296_28

def rawBody296_30 : StackLang.HolProg 64 :=
.seq rawBody296_20 rawBody296_29

def rawBody296_31 : StackLang.HolProg 64 :=
.seq rawBody296_19 rawBody296_30

def rawBody296_32 : StackLang.HolProg 64 :=
.seq rawBody296_18 rawBody296_31

def rawBody296_33 : StackLang.HolProg 64 :=
.seq rawBody296_17 rawBody296_32

def rawBody296_34 : StackLang.HolProg 64 :=
.seq rawBody296_16 rawBody296_33

def rawBody296_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody296_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody296_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody296_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody296_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody296_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody296_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody296_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody296_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody296_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody296_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody296_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody296_47 : StackLang.HolProg 64 :=
.seq rawBody296_45 rawBody296_46

def rawBody296_48 : StackLang.HolProg 64 :=
.seq rawBody296_44 rawBody296_47

def rawBody296_49 : StackLang.HolProg 64 :=
.seq rawBody296_43 rawBody296_48

def rawBody296_50 : StackLang.HolProg 64 :=
.seq rawBody296_42 rawBody296_49

def rawBody296_51 : StackLang.HolProg 64 :=
.seq rawBody296_41 rawBody296_50

def rawBody296_52 : StackLang.HolProg 64 :=
.seq rawBody296_40 rawBody296_51

def rawBody296_53 : StackLang.HolProg 64 :=
.seq rawBody296_39 rawBody296_52

def rawBody296_54 : StackLang.HolProg 64 :=
.seq rawBody296_38 rawBody296_53

def rawBody296_55 : StackLang.HolProg 64 :=
.seq rawBody296_37 rawBody296_54

def rawBody296_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody296_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody296_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody296_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody296_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody296_61 : StackLang.HolProg 64 :=
.seq rawBody296_59 rawBody296_60

def rawBody296_62 : StackLang.HolProg 64 :=
.seq rawBody296_58 rawBody296_61

def rawBody296_63 : StackLang.HolProg 64 :=
.seq rawBody296_57 rawBody296_62

def rawBody296_64 : StackLang.HolProg 64 :=
.seq rawBody296_56 rawBody296_63

def rawBody296_65 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody296_66 : StackLang.HolProg 64 :=
.seq rawBody296_64 rawBody296_65

def rawBody296_67 : StackLang.HolProg 64 :=
.call (some (rawBody296_55, 0, 296, 2)) (Sum.inl 68) (some (rawBody296_66, 296, 3))

def rawBody296_68 : StackLang.HolProg 64 :=
.seq rawBody296_36 rawBody296_67

def rawBody296_69 : StackLang.HolProg 64 :=
.seq rawBody296_35 rawBody296_68

def rawBody296_70 : StackLang.HolProg 64 :=
.seq rawBody296_34 rawBody296_69

def rawBody296_71 : StackLang.HolProg 64 :=
.seq rawBody296_15 rawBody296_70

def rawBody296_72 : StackLang.HolProg 64 :=
.seq rawBody296_12 rawBody296_71

def rawBody296_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody296_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody296_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody296_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody296_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def rawBody296_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody296_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody296_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def rawBody296_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody296_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody296_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody296_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def rawBody296_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def rawBody296_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody296_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody296_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody296_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def rawBody296_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def rawBody296_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody296_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody296_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody296_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody296_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody296_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody296_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody296_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def rawBody296_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody296_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody296_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody296_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def rawBody296_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody296_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody296_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody296_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def rawBody296_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody296_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody296_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody296_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody296_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def rawBody296_112 : StackLang.HolProg 64 :=
.seq rawBody296_110 rawBody296_111

def rawBody296_113 : StackLang.HolProg 64 :=
.seq rawBody296_109 rawBody296_112

def rawBody296_114 : StackLang.HolProg 64 :=
.seq rawBody296_108 rawBody296_113

def rawBody296_115 : StackLang.HolProg 64 :=
.seq rawBody296_107 rawBody296_114

def rawBody296_116 : StackLang.HolProg 64 :=
.seq rawBody296_106 rawBody296_115

def rawBody296_117 : StackLang.HolProg 64 :=
.seq rawBody296_105 rawBody296_116

def rawBody296_118 : StackLang.HolProg 64 :=
.seq rawBody296_104 rawBody296_117

def rawBody296_119 : StackLang.HolProg 64 :=
.seq rawBody296_103 rawBody296_118

def rawBody296_120 : StackLang.HolProg 64 :=
.seq rawBody296_102 rawBody296_119

def rawBody296_121 : StackLang.HolProg 64 :=
.seq rawBody296_101 rawBody296_120

def rawBody296_122 : StackLang.HolProg 64 :=
.seq rawBody296_100 rawBody296_121

def rawBody296_123 : StackLang.HolProg 64 :=
.seq rawBody296_99 rawBody296_122

def rawBody296_124 : StackLang.HolProg 64 :=
.seq rawBody296_98 rawBody296_123

def rawBody296_125 : StackLang.HolProg 64 :=
.seq rawBody296_97 rawBody296_124

def rawBody296_126 : StackLang.HolProg 64 :=
.seq rawBody296_96 rawBody296_125

def rawBody296_127 : StackLang.HolProg 64 :=
.seq rawBody296_95 rawBody296_126

def rawBody296_128 : StackLang.HolProg 64 :=
.seq rawBody296_94 rawBody296_127

def rawBody296_129 : StackLang.HolProg 64 :=
.seq rawBody296_93 rawBody296_128

def rawBody296_130 : StackLang.HolProg 64 :=
.seq rawBody296_92 rawBody296_129

def rawBody296_131 : StackLang.HolProg 64 :=
.seq rawBody296_91 rawBody296_130

def rawBody296_132 : StackLang.HolProg 64 :=
.seq rawBody296_90 rawBody296_131

def rawBody296_133 : StackLang.HolProg 64 :=
.seq rawBody296_89 rawBody296_132

def rawBody296_134 : StackLang.HolProg 64 :=
.seq rawBody296_88 rawBody296_133

def rawBody296_135 : StackLang.HolProg 64 :=
.seq rawBody296_87 rawBody296_134

def rawBody296_136 : StackLang.HolProg 64 :=
.seq rawBody296_86 rawBody296_135

def rawBody296_137 : StackLang.HolProg 64 :=
.seq rawBody296_85 rawBody296_136

def rawBody296_138 : StackLang.HolProg 64 :=
.seq rawBody296_84 rawBody296_137

def rawBody296_139 : StackLang.HolProg 64 :=
.seq rawBody296_83 rawBody296_138

def rawBody296_140 : StackLang.HolProg 64 :=
.seq rawBody296_82 rawBody296_139

def rawBody296_141 : StackLang.HolProg 64 :=
.seq rawBody296_81 rawBody296_140

def rawBody296_142 : StackLang.HolProg 64 :=
.seq rawBody296_80 rawBody296_141

def rawBody296_143 : StackLang.HolProg 64 :=
.seq rawBody296_79 rawBody296_142

def rawBody296_144 : StackLang.HolProg 64 :=
.seq rawBody296_78 rawBody296_143

def rawBody296_145 : StackLang.HolProg 64 :=
.seq rawBody296_77 rawBody296_144

def rawBody296_146 : StackLang.HolProg 64 :=
.seq rawBody296_76 rawBody296_145

def rawBody296_147 : StackLang.HolProg 64 :=
.seq rawBody296_75 rawBody296_146

def rawBody296_148 : StackLang.HolProg 64 :=
.seq rawBody296_74 rawBody296_147

def rawBody296_149 : StackLang.HolProg 64 :=
.seq rawBody296_73 rawBody296_148

def rawBody296_150 : StackLang.HolProg 64 :=
.seq rawBody296_72 rawBody296_149

def rawBody296_151 : StackLang.HolProg 64 :=
.seq rawBody296_11 rawBody296_150

def rawBody296_152 : StackLang.HolProg 64 :=
.seq rawBody296_2 rawBody296_151

def rawBody296_153 : StackLang.HolProg 64 :=
.seq rawBody296_1 rawBody296_152

def rawBody296_154 : StackLang.HolProg 64 :=
.seq rawBody296_0 rawBody296_153

def raw296 : StackLang.HolProg 64 := rawBody296_154
theorem raw296_eq : StackRawCall.compTop RawInfo.rawInfo (function296 (.list [])).1 = raw296 := by
  kernel_rfl
#print axioms raw296_eq
end InitECandidate.Proofs.BackendStages
