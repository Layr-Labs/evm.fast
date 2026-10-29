import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function445
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody445_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody445_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody445_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody445_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody445_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody445_5 : StackLang.HolProg 64 :=
.seq rawBody445_3 rawBody445_4

def rawBody445_6 : StackLang.HolProg 64 :=
.seq rawBody445_2 rawBody445_5

def rawBody445_7 : StackLang.HolProg 64 :=
.seq rawBody445_1 rawBody445_6

def rawBody445_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody445_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1343#64)

def rawBody445_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody445_11 : StackLang.HolProg 64 :=
.seq rawBody445_9 rawBody445_10

def rawBody445_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody445_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody445_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody445_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 445 3

def rawBody445_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody445_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody445_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody445_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody445_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody445_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody445_22 : StackLang.HolProg 64 :=
.seq rawBody445_20 rawBody445_21

def rawBody445_23 : StackLang.HolProg 64 :=
.seq rawBody445_19 rawBody445_22

def rawBody445_24 : StackLang.HolProg 64 :=
.seq rawBody445_18 rawBody445_23

def rawBody445_25 : StackLang.HolProg 64 :=
.seq rawBody445_17 rawBody445_24

def rawBody445_26 : StackLang.HolProg 64 :=
.seq rawBody445_16 rawBody445_25

def rawBody445_27 : StackLang.HolProg 64 :=
.seq rawBody445_15 rawBody445_26

def rawBody445_28 : StackLang.HolProg 64 :=
.seq rawBody445_14 rawBody445_27

def rawBody445_29 : StackLang.HolProg 64 :=
.seq rawBody445_13 rawBody445_28

def rawBody445_30 : StackLang.HolProg 64 :=
.seq rawBody445_12 rawBody445_29

def rawBody445_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody445_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody445_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody445_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody445_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody445_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody445_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody445_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody445_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody445_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody445_41 : StackLang.HolProg 64 :=
.seq rawBody445_39 rawBody445_40

def rawBody445_42 : StackLang.HolProg 64 :=
.seq rawBody445_38 rawBody445_41

def rawBody445_43 : StackLang.HolProg 64 :=
.seq rawBody445_37 rawBody445_42

def rawBody445_44 : StackLang.HolProg 64 :=
.seq rawBody445_36 rawBody445_43

def rawBody445_45 : StackLang.HolProg 64 :=
.seq rawBody445_35 rawBody445_44

def rawBody445_46 : StackLang.HolProg 64 :=
.seq rawBody445_34 rawBody445_45

def rawBody445_47 : StackLang.HolProg 64 :=
.seq rawBody445_33 rawBody445_46

def rawBody445_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody445_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody445_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody445_51 : StackLang.HolProg 64 :=
.seq rawBody445_49 rawBody445_50

def rawBody445_52 : StackLang.HolProg 64 :=
.seq rawBody445_48 rawBody445_51

def rawBody445_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody445_54 : StackLang.HolProg 64 :=
.seq rawBody445_52 rawBody445_53

def rawBody445_55 : StackLang.HolProg 64 :=
.call (some (rawBody445_47, 0, 445, 2)) (Sum.inl 439) (some (rawBody445_54, 445, 3))

def rawBody445_56 : StackLang.HolProg 64 :=
.seq rawBody445_32 rawBody445_55

def rawBody445_57 : StackLang.HolProg 64 :=
.seq rawBody445_31 rawBody445_56

def rawBody445_58 : StackLang.HolProg 64 :=
.seq rawBody445_30 rawBody445_57

def rawBody445_59 : StackLang.HolProg 64 :=
.seq rawBody445_11 rawBody445_58

def rawBody445_60 : StackLang.HolProg 64 :=
.seq rawBody445_8 rawBody445_59

def rawBody445_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody445_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody445_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def rawBody445_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody445_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 24#64)

def rawBody445_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody445_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody445_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1344#64)

def rawBody445_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody445_70 : StackLang.HolProg 64 :=
.seq rawBody445_68 rawBody445_69

def rawBody445_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody445_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody445_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody445_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 445 5

def rawBody445_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody445_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody445_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody445_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody445_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody445_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody445_81 : StackLang.HolProg 64 :=
.seq rawBody445_79 rawBody445_80

def rawBody445_82 : StackLang.HolProg 64 :=
.seq rawBody445_78 rawBody445_81

def rawBody445_83 : StackLang.HolProg 64 :=
.seq rawBody445_77 rawBody445_82

def rawBody445_84 : StackLang.HolProg 64 :=
.seq rawBody445_76 rawBody445_83

def rawBody445_85 : StackLang.HolProg 64 :=
.seq rawBody445_75 rawBody445_84

def rawBody445_86 : StackLang.HolProg 64 :=
.seq rawBody445_74 rawBody445_85

def rawBody445_87 : StackLang.HolProg 64 :=
.seq rawBody445_73 rawBody445_86

def rawBody445_88 : StackLang.HolProg 64 :=
.seq rawBody445_72 rawBody445_87

def rawBody445_89 : StackLang.HolProg 64 :=
.seq rawBody445_71 rawBody445_88

def rawBody445_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody445_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody445_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody445_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody445_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody445_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody445_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody445_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody445_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody445_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody445_100 : StackLang.HolProg 64 :=
.seq rawBody445_98 rawBody445_99

def rawBody445_101 : StackLang.HolProg 64 :=
.seq rawBody445_97 rawBody445_100

def rawBody445_102 : StackLang.HolProg 64 :=
.seq rawBody445_96 rawBody445_101

def rawBody445_103 : StackLang.HolProg 64 :=
.seq rawBody445_95 rawBody445_102

def rawBody445_104 : StackLang.HolProg 64 :=
.seq rawBody445_94 rawBody445_103

def rawBody445_105 : StackLang.HolProg 64 :=
.seq rawBody445_93 rawBody445_104

def rawBody445_106 : StackLang.HolProg 64 :=
.seq rawBody445_92 rawBody445_105

def rawBody445_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody445_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody445_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody445_110 : StackLang.HolProg 64 :=
.seq rawBody445_108 rawBody445_109

def rawBody445_111 : StackLang.HolProg 64 :=
.seq rawBody445_107 rawBody445_110

def rawBody445_112 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody445_113 : StackLang.HolProg 64 :=
.seq rawBody445_111 rawBody445_112

def rawBody445_114 : StackLang.HolProg 64 :=
.call (some (rawBody445_106, 0, 445, 4)) (Sum.inl 440) (some (rawBody445_113, 445, 5))

def rawBody445_115 : StackLang.HolProg 64 :=
.seq rawBody445_91 rawBody445_114

def rawBody445_116 : StackLang.HolProg 64 :=
.seq rawBody445_90 rawBody445_115

def rawBody445_117 : StackLang.HolProg 64 :=
.seq rawBody445_89 rawBody445_116

def rawBody445_118 : StackLang.HolProg 64 :=
.seq rawBody445_70 rawBody445_117

def rawBody445_119 : StackLang.HolProg 64 :=
.seq rawBody445_67 rawBody445_118

def rawBody445_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody445_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody445_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody445_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody445_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody445_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody445_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def rawBody445_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody445_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody445_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody445_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody445_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody445_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody445_133 : StackLang.HolProg 64 :=
.seq rawBody445_131 rawBody445_132

def rawBody445_134 : StackLang.HolProg 64 :=
.seq rawBody445_130 rawBody445_133

def rawBody445_135 : StackLang.HolProg 64 :=
.seq rawBody445_129 rawBody445_134

def rawBody445_136 : StackLang.HolProg 64 :=
.seq rawBody445_128 rawBody445_135

def rawBody445_137 : StackLang.HolProg 64 :=
.seq rawBody445_127 rawBody445_136

def rawBody445_138 : StackLang.HolProg 64 :=
.seq rawBody445_126 rawBody445_137

def rawBody445_139 : StackLang.HolProg 64 :=
.seq rawBody445_125 rawBody445_138

def rawBody445_140 : StackLang.HolProg 64 :=
.seq rawBody445_124 rawBody445_139

def rawBody445_141 : StackLang.HolProg 64 :=
.seq rawBody445_123 rawBody445_140

def rawBody445_142 : StackLang.HolProg 64 :=
.seq rawBody445_122 rawBody445_141

def rawBody445_143 : StackLang.HolProg 64 :=
.seq rawBody445_121 rawBody445_142

def rawBody445_144 : StackLang.HolProg 64 :=
.seq rawBody445_120 rawBody445_143

def rawBody445_145 : StackLang.HolProg 64 :=
.seq rawBody445_119 rawBody445_144

def rawBody445_146 : StackLang.HolProg 64 :=
.seq rawBody445_66 rawBody445_145

def rawBody445_147 : StackLang.HolProg 64 :=
.seq rawBody445_65 rawBody445_146

def rawBody445_148 : StackLang.HolProg 64 :=
.seq rawBody445_64 rawBody445_147

def rawBody445_149 : StackLang.HolProg 64 :=
.seq rawBody445_63 rawBody445_148

def rawBody445_150 : StackLang.HolProg 64 :=
.seq rawBody445_62 rawBody445_149

def rawBody445_151 : StackLang.HolProg 64 :=
.seq rawBody445_61 rawBody445_150

def rawBody445_152 : StackLang.HolProg 64 :=
.seq rawBody445_60 rawBody445_151

def rawBody445_153 : StackLang.HolProg 64 :=
.seq rawBody445_7 rawBody445_152

def rawBody445_154 : StackLang.HolProg 64 :=
.seq rawBody445_0 rawBody445_153

def raw445 : StackLang.HolProg 64 := rawBody445_154
theorem raw445_eq : StackRawCall.compTop RawInfo.rawInfo (function445 (.list [])).1 = raw445 := by
  kernel_rfl
#print axioms raw445_eq
end InitECandidate.Proofs.BackendStages
