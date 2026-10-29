import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw268
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody268_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody268_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody268_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def AllocBody268_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody268_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody268_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def AllocBody268_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def AllocBody268_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 1

def AllocBody268_8 : StackLang.HolProg 64 :=
.seq AllocBody268_6 AllocBody268_7

def AllocBody268_9 : StackLang.HolProg 64 :=
.seq AllocBody268_5 AllocBody268_8

def AllocBody268_10 : StackLang.HolProg 64 :=
.seq AllocBody268_4 AllocBody268_9

def AllocBody268_11 : StackLang.HolProg 64 :=
.seq AllocBody268_3 AllocBody268_10

def AllocBody268_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody268_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 653#64)

def AllocBody268_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody268_15 : StackLang.HolProg 64 :=
.seq AllocBody268_13 AllocBody268_14

def AllocBody268_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody268_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody268_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody268_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 268 3

def AllocBody268_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody268_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody268_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody268_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody268_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody268_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody268_26 : StackLang.HolProg 64 :=
.seq AllocBody268_24 AllocBody268_25

def AllocBody268_27 : StackLang.HolProg 64 :=
.seq AllocBody268_23 AllocBody268_26

def AllocBody268_28 : StackLang.HolProg 64 :=
.seq AllocBody268_22 AllocBody268_27

def AllocBody268_29 : StackLang.HolProg 64 :=
.seq AllocBody268_21 AllocBody268_28

def AllocBody268_30 : StackLang.HolProg 64 :=
.seq AllocBody268_20 AllocBody268_29

def AllocBody268_31 : StackLang.HolProg 64 :=
.seq AllocBody268_19 AllocBody268_30

def AllocBody268_32 : StackLang.HolProg 64 :=
.seq AllocBody268_18 AllocBody268_31

def AllocBody268_33 : StackLang.HolProg 64 :=
.seq AllocBody268_17 AllocBody268_32

def AllocBody268_34 : StackLang.HolProg 64 :=
.seq AllocBody268_16 AllocBody268_33

def AllocBody268_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody268_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody268_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody268_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody268_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody268_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody268_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody268_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody268_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody268_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody268_45 : StackLang.HolProg 64 :=
.seq AllocBody268_43 AllocBody268_44

def AllocBody268_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody268_47 : StackLang.HolProg 64 :=
.seq AllocBody268_45 AllocBody268_46

def AllocBody268_48 : StackLang.HolProg 64 :=
.seq AllocBody268_42 AllocBody268_47

def AllocBody268_49 : StackLang.HolProg 64 :=
.seq AllocBody268_41 AllocBody268_48

def AllocBody268_50 : StackLang.HolProg 64 :=
.seq AllocBody268_40 AllocBody268_49

def AllocBody268_51 : StackLang.HolProg 64 :=
.seq AllocBody268_39 AllocBody268_50

def AllocBody268_52 : StackLang.HolProg 64 :=
.seq AllocBody268_38 AllocBody268_51

def AllocBody268_53 : StackLang.HolProg 64 :=
.seq AllocBody268_37 AllocBody268_52

def AllocBody268_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody268_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody268_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody268_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody268_58 : StackLang.HolProg 64 :=
.seq AllocBody268_56 AllocBody268_57

def AllocBody268_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody268_60 : StackLang.HolProg 64 :=
.seq AllocBody268_58 AllocBody268_59

def AllocBody268_61 : StackLang.HolProg 64 :=
.seq AllocBody268_55 AllocBody268_60

def AllocBody268_62 : StackLang.HolProg 64 :=
.seq AllocBody268_54 AllocBody268_61

def AllocBody268_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody268_64 : StackLang.HolProg 64 :=
.seq AllocBody268_62 AllocBody268_63

def AllocBody268_65 : StackLang.HolProg 64 :=
.call (some (AllocBody268_53, 0, 268, 2)) (Sum.inl 77) (some (AllocBody268_64, 268, 3))

def AllocBody268_66 : StackLang.HolProg 64 :=
.seq AllocBody268_36 AllocBody268_65

def AllocBody268_67 : StackLang.HolProg 64 :=
.seq AllocBody268_35 AllocBody268_66

def AllocBody268_68 : StackLang.HolProg 64 :=
.seq AllocBody268_34 AllocBody268_67

def AllocBody268_69 : StackLang.HolProg 64 :=
.seq AllocBody268_15 AllocBody268_68

def AllocBody268_70 : StackLang.HolProg 64 :=
.seq AllocBody268_12 AllocBody268_69

def AllocBody268_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody268_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody268_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody268_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody268_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody268_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody268_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 33#64)))

def AllocBody268_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody268_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody268_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 654#64)

def AllocBody268_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody268_82 : StackLang.HolProg 64 :=
.seq AllocBody268_80 AllocBody268_81

def AllocBody268_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody268_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody268_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody268_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 268 5

def AllocBody268_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody268_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody268_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody268_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody268_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody268_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody268_93 : StackLang.HolProg 64 :=
.seq AllocBody268_91 AllocBody268_92

def AllocBody268_94 : StackLang.HolProg 64 :=
.seq AllocBody268_90 AllocBody268_93

def AllocBody268_95 : StackLang.HolProg 64 :=
.seq AllocBody268_89 AllocBody268_94

def AllocBody268_96 : StackLang.HolProg 64 :=
.seq AllocBody268_88 AllocBody268_95

def AllocBody268_97 : StackLang.HolProg 64 :=
.seq AllocBody268_87 AllocBody268_96

def AllocBody268_98 : StackLang.HolProg 64 :=
.seq AllocBody268_86 AllocBody268_97

def AllocBody268_99 : StackLang.HolProg 64 :=
.seq AllocBody268_85 AllocBody268_98

def AllocBody268_100 : StackLang.HolProg 64 :=
.seq AllocBody268_84 AllocBody268_99

def AllocBody268_101 : StackLang.HolProg 64 :=
.seq AllocBody268_83 AllocBody268_100

def AllocBody268_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody268_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody268_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody268_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody268_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody268_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody268_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody268_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody268_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody268_111 : StackLang.HolProg 64 :=
.seq AllocBody268_109 AllocBody268_110

def AllocBody268_112 : StackLang.HolProg 64 :=
.seq AllocBody268_108 AllocBody268_111

def AllocBody268_113 : StackLang.HolProg 64 :=
.seq AllocBody268_107 AllocBody268_112

def AllocBody268_114 : StackLang.HolProg 64 :=
.seq AllocBody268_106 AllocBody268_113

def AllocBody268_115 : StackLang.HolProg 64 :=
.seq AllocBody268_105 AllocBody268_114

def AllocBody268_116 : StackLang.HolProg 64 :=
.seq AllocBody268_104 AllocBody268_115

def AllocBody268_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody268_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody268_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody268_120 : StackLang.HolProg 64 :=
.seq AllocBody268_118 AllocBody268_119

def AllocBody268_121 : StackLang.HolProg 64 :=
.seq AllocBody268_117 AllocBody268_120

def AllocBody268_122 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody268_123 : StackLang.HolProg 64 :=
.seq AllocBody268_121 AllocBody268_122

def AllocBody268_124 : StackLang.HolProg 64 :=
.call (some (AllocBody268_116, 0, 268, 4)) (Sum.inl 87) (some (AllocBody268_123, 268, 5))

def AllocBody268_125 : StackLang.HolProg 64 :=
.seq AllocBody268_103 AllocBody268_124

def AllocBody268_126 : StackLang.HolProg 64 :=
.seq AllocBody268_102 AllocBody268_125

def AllocBody268_127 : StackLang.HolProg 64 :=
.seq AllocBody268_101 AllocBody268_126

def AllocBody268_128 : StackLang.HolProg 64 :=
.seq AllocBody268_82 AllocBody268_127

def AllocBody268_129 : StackLang.HolProg 64 :=
.seq AllocBody268_79 AllocBody268_128

def AllocBody268_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody268_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody268_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 41#64)))

def AllocBody268_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody268_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 255#64)))

def AllocBody268_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody268_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody268_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 42#64)))

def AllocBody268_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody268_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody268_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody268_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 43#64)

def AllocBody268_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody268_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody268_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody268_145 : StackLang.HolProg 64 :=
.seq AllocBody268_143 AllocBody268_144

def AllocBody268_146 : StackLang.HolProg 64 :=
.seq AllocBody268_142 AllocBody268_145

def AllocBody268_147 : StackLang.HolProg 64 :=
.seq AllocBody268_141 AllocBody268_146

def AllocBody268_148 : StackLang.HolProg 64 :=
.seq AllocBody268_140 AllocBody268_147

def AllocBody268_149 : StackLang.HolProg 64 :=
.seq AllocBody268_139 AllocBody268_148

def AllocBody268_150 : StackLang.HolProg 64 :=
.seq AllocBody268_138 AllocBody268_149

def AllocBody268_151 : StackLang.HolProg 64 :=
.seq AllocBody268_137 AllocBody268_150

def AllocBody268_152 : StackLang.HolProg 64 :=
.seq AllocBody268_136 AllocBody268_151

def AllocBody268_153 : StackLang.HolProg 64 :=
.seq AllocBody268_135 AllocBody268_152

def AllocBody268_154 : StackLang.HolProg 64 :=
.seq AllocBody268_134 AllocBody268_153

def AllocBody268_155 : StackLang.HolProg 64 :=
.seq AllocBody268_133 AllocBody268_154

def AllocBody268_156 : StackLang.HolProg 64 :=
.seq AllocBody268_132 AllocBody268_155

def AllocBody268_157 : StackLang.HolProg 64 :=
.seq AllocBody268_131 AllocBody268_156

def AllocBody268_158 : StackLang.HolProg 64 :=
.seq AllocBody268_130 AllocBody268_157

def AllocBody268_159 : StackLang.HolProg 64 :=
.seq AllocBody268_129 AllocBody268_158

def AllocBody268_160 : StackLang.HolProg 64 :=
.seq AllocBody268_78 AllocBody268_159

def AllocBody268_161 : StackLang.HolProg 64 :=
.seq AllocBody268_77 AllocBody268_160

def AllocBody268_162 : StackLang.HolProg 64 :=
.seq AllocBody268_76 AllocBody268_161

def AllocBody268_163 : StackLang.HolProg 64 :=
.seq AllocBody268_75 AllocBody268_162

def AllocBody268_164 : StackLang.HolProg 64 :=
.seq AllocBody268_74 AllocBody268_163

def AllocBody268_165 : StackLang.HolProg 64 :=
.seq AllocBody268_73 AllocBody268_164

def AllocBody268_166 : StackLang.HolProg 64 :=
.seq AllocBody268_72 AllocBody268_165

def AllocBody268_167 : StackLang.HolProg 64 :=
.seq AllocBody268_71 AllocBody268_166

def AllocBody268_168 : StackLang.HolProg 64 :=
.seq AllocBody268_70 AllocBody268_167

def AllocBody268_169 : StackLang.HolProg 64 :=
.seq AllocBody268_11 AllocBody268_168

def AllocBody268_170 : StackLang.HolProg 64 :=
.seq AllocBody268_2 AllocBody268_169

def AllocBody268_171 : StackLang.HolProg 64 :=
.seq AllocBody268_1 AllocBody268_170

def AllocBody268_172 : StackLang.HolProg 64 :=
.seq AllocBody268_0 AllocBody268_171

def Alloc268 : Nat × StackLang.HolProg 64 := (268, AllocBody268_172)
theorem Alloc268_eq : StackAlloc.progComp (268, raw268) = Alloc268 := by
  kernel_rfl
#print axioms Alloc268_eq
end InitECandidate.Proofs.BackendStages
