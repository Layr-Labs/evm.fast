import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw445
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody445_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody445_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody445_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody445_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody445_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody445_5 : StackLang.HolProg 64 :=
.seq AllocBody445_3 AllocBody445_4

def AllocBody445_6 : StackLang.HolProg 64 :=
.seq AllocBody445_2 AllocBody445_5

def AllocBody445_7 : StackLang.HolProg 64 :=
.seq AllocBody445_1 AllocBody445_6

def AllocBody445_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody445_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1343#64)

def AllocBody445_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody445_11 : StackLang.HolProg 64 :=
.seq AllocBody445_9 AllocBody445_10

def AllocBody445_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody445_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody445_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody445_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 445 3

def AllocBody445_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody445_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody445_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody445_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody445_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody445_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody445_22 : StackLang.HolProg 64 :=
.seq AllocBody445_20 AllocBody445_21

def AllocBody445_23 : StackLang.HolProg 64 :=
.seq AllocBody445_19 AllocBody445_22

def AllocBody445_24 : StackLang.HolProg 64 :=
.seq AllocBody445_18 AllocBody445_23

def AllocBody445_25 : StackLang.HolProg 64 :=
.seq AllocBody445_17 AllocBody445_24

def AllocBody445_26 : StackLang.HolProg 64 :=
.seq AllocBody445_16 AllocBody445_25

def AllocBody445_27 : StackLang.HolProg 64 :=
.seq AllocBody445_15 AllocBody445_26

def AllocBody445_28 : StackLang.HolProg 64 :=
.seq AllocBody445_14 AllocBody445_27

def AllocBody445_29 : StackLang.HolProg 64 :=
.seq AllocBody445_13 AllocBody445_28

def AllocBody445_30 : StackLang.HolProg 64 :=
.seq AllocBody445_12 AllocBody445_29

def AllocBody445_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody445_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody445_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody445_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody445_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody445_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody445_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody445_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody445_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody445_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody445_41 : StackLang.HolProg 64 :=
.seq AllocBody445_39 AllocBody445_40

def AllocBody445_42 : StackLang.HolProg 64 :=
.seq AllocBody445_38 AllocBody445_41

def AllocBody445_43 : StackLang.HolProg 64 :=
.seq AllocBody445_37 AllocBody445_42

def AllocBody445_44 : StackLang.HolProg 64 :=
.seq AllocBody445_36 AllocBody445_43

def AllocBody445_45 : StackLang.HolProg 64 :=
.seq AllocBody445_35 AllocBody445_44

def AllocBody445_46 : StackLang.HolProg 64 :=
.seq AllocBody445_34 AllocBody445_45

def AllocBody445_47 : StackLang.HolProg 64 :=
.seq AllocBody445_33 AllocBody445_46

def AllocBody445_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody445_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody445_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody445_51 : StackLang.HolProg 64 :=
.seq AllocBody445_49 AllocBody445_50

def AllocBody445_52 : StackLang.HolProg 64 :=
.seq AllocBody445_48 AllocBody445_51

def AllocBody445_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody445_54 : StackLang.HolProg 64 :=
.seq AllocBody445_52 AllocBody445_53

def AllocBody445_55 : StackLang.HolProg 64 :=
.call (some (AllocBody445_47, 0, 445, 2)) (Sum.inl 439) (some (AllocBody445_54, 445, 3))

def AllocBody445_56 : StackLang.HolProg 64 :=
.seq AllocBody445_32 AllocBody445_55

def AllocBody445_57 : StackLang.HolProg 64 :=
.seq AllocBody445_31 AllocBody445_56

def AllocBody445_58 : StackLang.HolProg 64 :=
.seq AllocBody445_30 AllocBody445_57

def AllocBody445_59 : StackLang.HolProg 64 :=
.seq AllocBody445_11 AllocBody445_58

def AllocBody445_60 : StackLang.HolProg 64 :=
.seq AllocBody445_8 AllocBody445_59

def AllocBody445_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody445_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody445_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def AllocBody445_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody445_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 24#64)

def AllocBody445_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody445_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody445_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1344#64)

def AllocBody445_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody445_70 : StackLang.HolProg 64 :=
.seq AllocBody445_68 AllocBody445_69

def AllocBody445_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody445_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody445_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody445_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 445 5

def AllocBody445_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody445_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody445_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody445_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody445_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody445_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody445_81 : StackLang.HolProg 64 :=
.seq AllocBody445_79 AllocBody445_80

def AllocBody445_82 : StackLang.HolProg 64 :=
.seq AllocBody445_78 AllocBody445_81

def AllocBody445_83 : StackLang.HolProg 64 :=
.seq AllocBody445_77 AllocBody445_82

def AllocBody445_84 : StackLang.HolProg 64 :=
.seq AllocBody445_76 AllocBody445_83

def AllocBody445_85 : StackLang.HolProg 64 :=
.seq AllocBody445_75 AllocBody445_84

def AllocBody445_86 : StackLang.HolProg 64 :=
.seq AllocBody445_74 AllocBody445_85

def AllocBody445_87 : StackLang.HolProg 64 :=
.seq AllocBody445_73 AllocBody445_86

def AllocBody445_88 : StackLang.HolProg 64 :=
.seq AllocBody445_72 AllocBody445_87

def AllocBody445_89 : StackLang.HolProg 64 :=
.seq AllocBody445_71 AllocBody445_88

def AllocBody445_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody445_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody445_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody445_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody445_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody445_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody445_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody445_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody445_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody445_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody445_100 : StackLang.HolProg 64 :=
.seq AllocBody445_98 AllocBody445_99

def AllocBody445_101 : StackLang.HolProg 64 :=
.seq AllocBody445_97 AllocBody445_100

def AllocBody445_102 : StackLang.HolProg 64 :=
.seq AllocBody445_96 AllocBody445_101

def AllocBody445_103 : StackLang.HolProg 64 :=
.seq AllocBody445_95 AllocBody445_102

def AllocBody445_104 : StackLang.HolProg 64 :=
.seq AllocBody445_94 AllocBody445_103

def AllocBody445_105 : StackLang.HolProg 64 :=
.seq AllocBody445_93 AllocBody445_104

def AllocBody445_106 : StackLang.HolProg 64 :=
.seq AllocBody445_92 AllocBody445_105

def AllocBody445_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody445_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody445_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody445_110 : StackLang.HolProg 64 :=
.seq AllocBody445_108 AllocBody445_109

def AllocBody445_111 : StackLang.HolProg 64 :=
.seq AllocBody445_107 AllocBody445_110

def AllocBody445_112 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody445_113 : StackLang.HolProg 64 :=
.seq AllocBody445_111 AllocBody445_112

def AllocBody445_114 : StackLang.HolProg 64 :=
.call (some (AllocBody445_106, 0, 445, 4)) (Sum.inl 440) (some (AllocBody445_113, 445, 5))

def AllocBody445_115 : StackLang.HolProg 64 :=
.seq AllocBody445_91 AllocBody445_114

def AllocBody445_116 : StackLang.HolProg 64 :=
.seq AllocBody445_90 AllocBody445_115

def AllocBody445_117 : StackLang.HolProg 64 :=
.seq AllocBody445_89 AllocBody445_116

def AllocBody445_118 : StackLang.HolProg 64 :=
.seq AllocBody445_70 AllocBody445_117

def AllocBody445_119 : StackLang.HolProg 64 :=
.seq AllocBody445_67 AllocBody445_118

def AllocBody445_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody445_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody445_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody445_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody445_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody445_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody445_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody445_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody445_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody445_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody445_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody445_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody445_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody445_133 : StackLang.HolProg 64 :=
.seq AllocBody445_131 AllocBody445_132

def AllocBody445_134 : StackLang.HolProg 64 :=
.seq AllocBody445_130 AllocBody445_133

def AllocBody445_135 : StackLang.HolProg 64 :=
.seq AllocBody445_129 AllocBody445_134

def AllocBody445_136 : StackLang.HolProg 64 :=
.seq AllocBody445_128 AllocBody445_135

def AllocBody445_137 : StackLang.HolProg 64 :=
.seq AllocBody445_127 AllocBody445_136

def AllocBody445_138 : StackLang.HolProg 64 :=
.seq AllocBody445_126 AllocBody445_137

def AllocBody445_139 : StackLang.HolProg 64 :=
.seq AllocBody445_125 AllocBody445_138

def AllocBody445_140 : StackLang.HolProg 64 :=
.seq AllocBody445_124 AllocBody445_139

def AllocBody445_141 : StackLang.HolProg 64 :=
.seq AllocBody445_123 AllocBody445_140

def AllocBody445_142 : StackLang.HolProg 64 :=
.seq AllocBody445_122 AllocBody445_141

def AllocBody445_143 : StackLang.HolProg 64 :=
.seq AllocBody445_121 AllocBody445_142

def AllocBody445_144 : StackLang.HolProg 64 :=
.seq AllocBody445_120 AllocBody445_143

def AllocBody445_145 : StackLang.HolProg 64 :=
.seq AllocBody445_119 AllocBody445_144

def AllocBody445_146 : StackLang.HolProg 64 :=
.seq AllocBody445_66 AllocBody445_145

def AllocBody445_147 : StackLang.HolProg 64 :=
.seq AllocBody445_65 AllocBody445_146

def AllocBody445_148 : StackLang.HolProg 64 :=
.seq AllocBody445_64 AllocBody445_147

def AllocBody445_149 : StackLang.HolProg 64 :=
.seq AllocBody445_63 AllocBody445_148

def AllocBody445_150 : StackLang.HolProg 64 :=
.seq AllocBody445_62 AllocBody445_149

def AllocBody445_151 : StackLang.HolProg 64 :=
.seq AllocBody445_61 AllocBody445_150

def AllocBody445_152 : StackLang.HolProg 64 :=
.seq AllocBody445_60 AllocBody445_151

def AllocBody445_153 : StackLang.HolProg 64 :=
.seq AllocBody445_7 AllocBody445_152

def AllocBody445_154 : StackLang.HolProg 64 :=
.seq AllocBody445_0 AllocBody445_153

def Alloc445 : Nat × StackLang.HolProg 64 := (445, AllocBody445_154)
theorem Alloc445_eq : StackAlloc.progComp (445, raw445) = Alloc445 := by
  kernel_rfl
#print axioms Alloc445_eq
end InitECandidate.Proofs.BackendStages
