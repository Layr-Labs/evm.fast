import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw321
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody321_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def AllocBody321_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody321_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody321_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody321_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody321_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody321_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 3#64)

def AllocBody321_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody321_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 40#64))

def AllocBody321_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody321_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody321_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody321_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def AllocBody321_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def AllocBody321_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody321_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 2

def AllocBody321_19 : StackLang.HolProg 64 :=
.seq AllocBody321_17 AllocBody321_18

def AllocBody321_20 : StackLang.HolProg 64 :=
.seq AllocBody321_16 AllocBody321_19

def AllocBody321_21 : StackLang.HolProg 64 :=
.seq AllocBody321_15 AllocBody321_20

def AllocBody321_22 : StackLang.HolProg 64 :=
.seq AllocBody321_14 AllocBody321_21

def AllocBody321_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 899#64)

def AllocBody321_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody321_26 : StackLang.HolProg 64 :=
.seq AllocBody321_24 AllocBody321_25

def AllocBody321_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody321_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody321_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody321_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 321 3

def AllocBody321_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody321_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody321_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody321_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody321_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody321_37 : StackLang.HolProg 64 :=
.seq AllocBody321_35 AllocBody321_36

def AllocBody321_38 : StackLang.HolProg 64 :=
.seq AllocBody321_34 AllocBody321_37

def AllocBody321_39 : StackLang.HolProg 64 :=
.seq AllocBody321_33 AllocBody321_38

def AllocBody321_40 : StackLang.HolProg 64 :=
.seq AllocBody321_32 AllocBody321_39

def AllocBody321_41 : StackLang.HolProg 64 :=
.seq AllocBody321_31 AllocBody321_40

def AllocBody321_42 : StackLang.HolProg 64 :=
.seq AllocBody321_30 AllocBody321_41

def AllocBody321_43 : StackLang.HolProg 64 :=
.seq AllocBody321_29 AllocBody321_42

def AllocBody321_44 : StackLang.HolProg 64 :=
.seq AllocBody321_28 AllocBody321_43

def AllocBody321_45 : StackLang.HolProg 64 :=
.seq AllocBody321_27 AllocBody321_44

def AllocBody321_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody321_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody321_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody321_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody321_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody321_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody321_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody321_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody321_56 : StackLang.HolProg 64 :=
.seq AllocBody321_54 AllocBody321_55

def AllocBody321_57 : StackLang.HolProg 64 :=
.seq AllocBody321_53 AllocBody321_56

def AllocBody321_58 : StackLang.HolProg 64 :=
.seq AllocBody321_52 AllocBody321_57

def AllocBody321_59 : StackLang.HolProg 64 :=
.seq AllocBody321_51 AllocBody321_58

def AllocBody321_60 : StackLang.HolProg 64 :=
.seq AllocBody321_50 AllocBody321_59

def AllocBody321_61 : StackLang.HolProg 64 :=
.seq AllocBody321_49 AllocBody321_60

def AllocBody321_62 : StackLang.HolProg 64 :=
.seq AllocBody321_48 AllocBody321_61

def AllocBody321_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody321_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody321_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody321_66 : StackLang.HolProg 64 :=
.seq AllocBody321_64 AllocBody321_65

def AllocBody321_67 : StackLang.HolProg 64 :=
.seq AllocBody321_63 AllocBody321_66

def AllocBody321_68 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody321_69 : StackLang.HolProg 64 :=
.seq AllocBody321_67 AllocBody321_68

def AllocBody321_70 : StackLang.HolProg 64 :=
.call (some (AllocBody321_62, 0, 321, 2)) (Sum.inl 68) (some (AllocBody321_69, 321, 3))

def AllocBody321_71 : StackLang.HolProg 64 :=
.seq AllocBody321_47 AllocBody321_70

def AllocBody321_72 : StackLang.HolProg 64 :=
.seq AllocBody321_46 AllocBody321_71

def AllocBody321_73 : StackLang.HolProg 64 :=
.seq AllocBody321_45 AllocBody321_72

def AllocBody321_74 : StackLang.HolProg 64 :=
.seq AllocBody321_26 AllocBody321_73

def AllocBody321_75 : StackLang.HolProg 64 :=
.seq AllocBody321_23 AllocBody321_74

def AllocBody321_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody321_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody321_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody321_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody321_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def AllocBody321_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_83 : StackLang.HolProg 64 :=
.seq AllocBody321_81 AllocBody321_82

def AllocBody321_84 : StackLang.HolProg 64 :=
.seq AllocBody321_80 AllocBody321_83

def AllocBody321_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody321_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_87 : StackLang.HolProg 64 :=
.seq AllocBody321_85 AllocBody321_86

def AllocBody321_88 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody321_84 AllocBody321_87

def AllocBody321_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody321_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def AllocBody321_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody321_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody321_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def AllocBody321_95 : StackLang.HolProg 64 :=
.seq AllocBody321_93 AllocBody321_94

def AllocBody321_96 : StackLang.HolProg 64 :=
.seq AllocBody321_92 AllocBody321_95

def AllocBody321_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 900#64)

def AllocBody321_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody321_100 : StackLang.HolProg 64 :=
.seq AllocBody321_98 AllocBody321_99

def AllocBody321_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody321_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody321_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody321_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 321 5

def AllocBody321_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody321_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody321_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody321_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody321_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody321_111 : StackLang.HolProg 64 :=
.seq AllocBody321_109 AllocBody321_110

def AllocBody321_112 : StackLang.HolProg 64 :=
.seq AllocBody321_108 AllocBody321_111

def AllocBody321_113 : StackLang.HolProg 64 :=
.seq AllocBody321_107 AllocBody321_112

def AllocBody321_114 : StackLang.HolProg 64 :=
.seq AllocBody321_106 AllocBody321_113

def AllocBody321_115 : StackLang.HolProg 64 :=
.seq AllocBody321_105 AllocBody321_114

def AllocBody321_116 : StackLang.HolProg 64 :=
.seq AllocBody321_104 AllocBody321_115

def AllocBody321_117 : StackLang.HolProg 64 :=
.seq AllocBody321_103 AllocBody321_116

def AllocBody321_118 : StackLang.HolProg 64 :=
.seq AllocBody321_102 AllocBody321_117

def AllocBody321_119 : StackLang.HolProg 64 :=
.seq AllocBody321_101 AllocBody321_118

def AllocBody321_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody321_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody321_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody321_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody321_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody321_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody321_128 : StackLang.HolProg 64 :=
.seq AllocBody321_126 AllocBody321_127

def AllocBody321_129 : StackLang.HolProg 64 :=
.seq AllocBody321_125 AllocBody321_128

def AllocBody321_130 : StackLang.HolProg 64 :=
.seq AllocBody321_124 AllocBody321_129

def AllocBody321_131 : StackLang.HolProg 64 :=
.seq AllocBody321_123 AllocBody321_130

def AllocBody321_132 : StackLang.HolProg 64 :=
.seq AllocBody321_122 AllocBody321_131

def AllocBody321_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody321_134 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody321_135 : StackLang.HolProg 64 :=
.seq AllocBody321_133 AllocBody321_134

def AllocBody321_136 : StackLang.HolProg 64 :=
.call (some (AllocBody321_132, 0, 321, 4)) (Sum.inl 290) (some (AllocBody321_135, 321, 5))

def AllocBody321_137 : StackLang.HolProg 64 :=
.seq AllocBody321_121 AllocBody321_136

def AllocBody321_138 : StackLang.HolProg 64 :=
.seq AllocBody321_120 AllocBody321_137

def AllocBody321_139 : StackLang.HolProg 64 :=
.seq AllocBody321_119 AllocBody321_138

def AllocBody321_140 : StackLang.HolProg 64 :=
.seq AllocBody321_100 AllocBody321_139

def AllocBody321_141 : StackLang.HolProg 64 :=
.seq AllocBody321_97 AllocBody321_140

def AllocBody321_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody321_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody321_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody321_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody321_147 : StackLang.HolProg 64 :=
.seq AllocBody321_145 AllocBody321_146

def AllocBody321_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 901#64)

def AllocBody321_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody321_151 : StackLang.HolProg 64 :=
.seq AllocBody321_149 AllocBody321_150

def AllocBody321_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody321_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody321_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody321_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 321 7

def AllocBody321_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody321_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody321_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody321_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody321_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody321_162 : StackLang.HolProg 64 :=
.seq AllocBody321_160 AllocBody321_161

def AllocBody321_163 : StackLang.HolProg 64 :=
.seq AllocBody321_159 AllocBody321_162

def AllocBody321_164 : StackLang.HolProg 64 :=
.seq AllocBody321_158 AllocBody321_163

def AllocBody321_165 : StackLang.HolProg 64 :=
.seq AllocBody321_157 AllocBody321_164

def AllocBody321_166 : StackLang.HolProg 64 :=
.seq AllocBody321_156 AllocBody321_165

def AllocBody321_167 : StackLang.HolProg 64 :=
.seq AllocBody321_155 AllocBody321_166

def AllocBody321_168 : StackLang.HolProg 64 :=
.seq AllocBody321_154 AllocBody321_167

def AllocBody321_169 : StackLang.HolProg 64 :=
.seq AllocBody321_153 AllocBody321_168

def AllocBody321_170 : StackLang.HolProg 64 :=
.seq AllocBody321_152 AllocBody321_169

def AllocBody321_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody321_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody321_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody321_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody321_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody321_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody321_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody321_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody321_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody321_182 : StackLang.HolProg 64 :=
.seq AllocBody321_180 AllocBody321_181

def AllocBody321_183 : StackLang.HolProg 64 :=
.seq AllocBody321_179 AllocBody321_182

def AllocBody321_184 : StackLang.HolProg 64 :=
.seq AllocBody321_178 AllocBody321_183

def AllocBody321_185 : StackLang.HolProg 64 :=
.seq AllocBody321_177 AllocBody321_184

def AllocBody321_186 : StackLang.HolProg 64 :=
.seq AllocBody321_176 AllocBody321_185

def AllocBody321_187 : StackLang.HolProg 64 :=
.seq AllocBody321_175 AllocBody321_186

def AllocBody321_188 : StackLang.HolProg 64 :=
.seq AllocBody321_174 AllocBody321_187

def AllocBody321_189 : StackLang.HolProg 64 :=
.seq AllocBody321_173 AllocBody321_188

def AllocBody321_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody321_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody321_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody321_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody321_194 : StackLang.HolProg 64 :=
.seq AllocBody321_192 AllocBody321_193

def AllocBody321_195 : StackLang.HolProg 64 :=
.seq AllocBody321_191 AllocBody321_194

def AllocBody321_196 : StackLang.HolProg 64 :=
.seq AllocBody321_190 AllocBody321_195

def AllocBody321_197 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody321_198 : StackLang.HolProg 64 :=
.seq AllocBody321_196 AllocBody321_197

def AllocBody321_199 : StackLang.HolProg 64 :=
.call (some (AllocBody321_189, 0, 321, 6)) (Sum.inl 179) (some (AllocBody321_198, 321, 7))

def AllocBody321_200 : StackLang.HolProg 64 :=
.seq AllocBody321_172 AllocBody321_199

def AllocBody321_201 : StackLang.HolProg 64 :=
.seq AllocBody321_171 AllocBody321_200

def AllocBody321_202 : StackLang.HolProg 64 :=
.seq AllocBody321_170 AllocBody321_201

def AllocBody321_203 : StackLang.HolProg 64 :=
.seq AllocBody321_151 AllocBody321_202

def AllocBody321_204 : StackLang.HolProg 64 :=
.seq AllocBody321_148 AllocBody321_203

def AllocBody321_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody321_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def AllocBody321_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody321_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody321_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 48#64))

def AllocBody321_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 56#64))

def AllocBody321_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 902#64)

def AllocBody321_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody321_217 : StackLang.HolProg 64 :=
.seq AllocBody321_215 AllocBody321_216

def AllocBody321_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody321_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody321_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody321_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 321 9

def AllocBody321_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody321_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody321_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody321_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody321_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody321_228 : StackLang.HolProg 64 :=
.seq AllocBody321_226 AllocBody321_227

def AllocBody321_229 : StackLang.HolProg 64 :=
.seq AllocBody321_225 AllocBody321_228

def AllocBody321_230 : StackLang.HolProg 64 :=
.seq AllocBody321_224 AllocBody321_229

def AllocBody321_231 : StackLang.HolProg 64 :=
.seq AllocBody321_223 AllocBody321_230

def AllocBody321_232 : StackLang.HolProg 64 :=
.seq AllocBody321_222 AllocBody321_231

def AllocBody321_233 : StackLang.HolProg 64 :=
.seq AllocBody321_221 AllocBody321_232

def AllocBody321_234 : StackLang.HolProg 64 :=
.seq AllocBody321_220 AllocBody321_233

def AllocBody321_235 : StackLang.HolProg 64 :=
.seq AllocBody321_219 AllocBody321_234

def AllocBody321_236 : StackLang.HolProg 64 :=
.seq AllocBody321_218 AllocBody321_235

def AllocBody321_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody321_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody321_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody321_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody321_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody321_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody321_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody321_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody321_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody321_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody321_249 : StackLang.HolProg 64 :=
.seq AllocBody321_247 AllocBody321_248

def AllocBody321_250 : StackLang.HolProg 64 :=
.seq AllocBody321_246 AllocBody321_249

def AllocBody321_251 : StackLang.HolProg 64 :=
.seq AllocBody321_245 AllocBody321_250

def AllocBody321_252 : StackLang.HolProg 64 :=
.seq AllocBody321_244 AllocBody321_251

def AllocBody321_253 : StackLang.HolProg 64 :=
.seq AllocBody321_243 AllocBody321_252

def AllocBody321_254 : StackLang.HolProg 64 :=
.seq AllocBody321_242 AllocBody321_253

def AllocBody321_255 : StackLang.HolProg 64 :=
.seq AllocBody321_241 AllocBody321_254

def AllocBody321_256 : StackLang.HolProg 64 :=
.seq AllocBody321_240 AllocBody321_255

def AllocBody321_257 : StackLang.HolProg 64 :=
.seq AllocBody321_239 AllocBody321_256

def AllocBody321_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody321_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody321_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody321_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody321_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody321_263 : StackLang.HolProg 64 :=
.seq AllocBody321_261 AllocBody321_262

def AllocBody321_264 : StackLang.HolProg 64 :=
.seq AllocBody321_260 AllocBody321_263

def AllocBody321_265 : StackLang.HolProg 64 :=
.seq AllocBody321_259 AllocBody321_264

def AllocBody321_266 : StackLang.HolProg 64 :=
.seq AllocBody321_258 AllocBody321_265

def AllocBody321_267 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody321_268 : StackLang.HolProg 64 :=
.seq AllocBody321_266 AllocBody321_267

def AllocBody321_269 : StackLang.HolProg 64 :=
.call (some (AllocBody321_257, 0, 321, 8)) (Sum.inl 326) (some (AllocBody321_268, 321, 9))

def AllocBody321_270 : StackLang.HolProg 64 :=
.seq AllocBody321_238 AllocBody321_269

def AllocBody321_271 : StackLang.HolProg 64 :=
.seq AllocBody321_237 AllocBody321_270

def AllocBody321_272 : StackLang.HolProg 64 :=
.seq AllocBody321_236 AllocBody321_271

def AllocBody321_273 : StackLang.HolProg 64 :=
.seq AllocBody321_217 AllocBody321_272

def AllocBody321_274 : StackLang.HolProg 64 :=
.seq AllocBody321_214 AllocBody321_273

def AllocBody321_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody321_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody321_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_279 : StackLang.HolProg 64 :=
.seq AllocBody321_277 AllocBody321_278

def AllocBody321_280 : StackLang.HolProg 64 :=
.seq AllocBody321_276 AllocBody321_279

def AllocBody321_281 : StackLang.HolProg 64 :=
.seq AllocBody321_275 AllocBody321_280

def AllocBody321_282 : StackLang.HolProg 64 :=
.seq AllocBody321_274 AllocBody321_281

def AllocBody321_283 : StackLang.HolProg 64 :=
.seq AllocBody321_213 AllocBody321_282

def AllocBody321_284 : StackLang.HolProg 64 :=
.seq AllocBody321_212 AllocBody321_283

def AllocBody321_285 : StackLang.HolProg 64 :=
.seq AllocBody321_211 AllocBody321_284

def AllocBody321_286 : StackLang.HolProg 64 :=
.seq AllocBody321_210 AllocBody321_285

def AllocBody321_287 : StackLang.HolProg 64 :=
.seq AllocBody321_209 AllocBody321_286

def AllocBody321_288 : StackLang.HolProg 64 :=
.seq AllocBody321_208 AllocBody321_287

def AllocBody321_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody321_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody321_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 5

def AllocBody321_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody321_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody321_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody321_295 : StackLang.HolProg 64 :=
.seq AllocBody321_293 AllocBody321_294

def AllocBody321_296 : StackLang.HolProg 64 :=
.seq AllocBody321_292 AllocBody321_295

def AllocBody321_297 : StackLang.HolProg 64 :=
.seq AllocBody321_291 AllocBody321_296

def AllocBody321_298 : StackLang.HolProg 64 :=
.seq AllocBody321_290 AllocBody321_297

def AllocBody321_299 : StackLang.HolProg 64 :=
.seq AllocBody321_289 AllocBody321_298

def AllocBody321_300 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody321_288 AllocBody321_299

def AllocBody321_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody321_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_303 : StackLang.HolProg 64 :=
.seq AllocBody321_301 AllocBody321_302

def AllocBody321_304 : StackLang.HolProg 64 :=
.seq AllocBody321_300 AllocBody321_303

def AllocBody321_305 : StackLang.HolProg 64 :=
.seq AllocBody321_207 AllocBody321_304

def AllocBody321_306 : StackLang.HolProg 64 :=
.seq AllocBody321_206 AllocBody321_305

def AllocBody321_307 : StackLang.HolProg 64 :=
.seq AllocBody321_205 AllocBody321_306

def AllocBody321_308 : StackLang.HolProg 64 :=
.seq AllocBody321_204 AllocBody321_307

def AllocBody321_309 : StackLang.HolProg 64 :=
.seq AllocBody321_147 AllocBody321_308

def AllocBody321_310 : StackLang.HolProg 64 :=
.seq AllocBody321_144 AllocBody321_309

def AllocBody321_311 : StackLang.HolProg 64 :=
.seq AllocBody321_143 AllocBody321_310

def AllocBody321_312 : StackLang.HolProg 64 :=
.seq AllocBody321_142 AllocBody321_311

def AllocBody321_313 : StackLang.HolProg 64 :=
.seq AllocBody321_141 AllocBody321_312

def AllocBody321_314 : StackLang.HolProg 64 :=
.seq AllocBody321_96 AllocBody321_313

def AllocBody321_315 : StackLang.HolProg 64 :=
.seq AllocBody321_91 AllocBody321_314

def AllocBody321_316 : StackLang.HolProg 64 :=
.seq AllocBody321_90 AllocBody321_315

def AllocBody321_317 : StackLang.HolProg 64 :=
.seq AllocBody321_89 AllocBody321_316

def AllocBody321_318 : StackLang.HolProg 64 :=
.seq AllocBody321_88 AllocBody321_317

def AllocBody321_319 : StackLang.HolProg 64 :=
.seq AllocBody321_79 AllocBody321_318

def AllocBody321_320 : StackLang.HolProg 64 :=
.seq AllocBody321_78 AllocBody321_319

def AllocBody321_321 : StackLang.HolProg 64 :=
.seq AllocBody321_77 AllocBody321_320

def AllocBody321_322 : StackLang.HolProg 64 :=
.seq AllocBody321_76 AllocBody321_321

def AllocBody321_323 : StackLang.HolProg 64 :=
.seq AllocBody321_75 AllocBody321_322

def AllocBody321_324 : StackLang.HolProg 64 :=
.seq AllocBody321_22 AllocBody321_323

def AllocBody321_325 : StackLang.HolProg 64 :=
.seq AllocBody321_13 AllocBody321_324

def AllocBody321_326 : StackLang.HolProg 64 :=
.seq AllocBody321_12 AllocBody321_325

def AllocBody321_327 : StackLang.HolProg 64 :=
.seq AllocBody321_11 AllocBody321_326

def AllocBody321_328 : StackLang.HolProg 64 :=
.seq AllocBody321_10 AllocBody321_327

def AllocBody321_329 : StackLang.HolProg 64 :=
.seq AllocBody321_9 AllocBody321_328

def AllocBody321_330 : StackLang.HolProg 64 :=
.seq AllocBody321_8 AllocBody321_329

def AllocBody321_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody321_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_333 : StackLang.HolProg 64 :=
.seq AllocBody321_331 AllocBody321_332

def AllocBody321_334 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) AllocBody321_330 AllocBody321_333

def AllocBody321_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody321_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody321_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody321_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody321_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody321_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def AllocBody321_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody321_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody321_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody321_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody321_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody321_352 : StackLang.HolProg 64 :=
.seq AllocBody321_350 AllocBody321_351

def AllocBody321_353 : StackLang.HolProg 64 :=
.seq AllocBody321_349 AllocBody321_352

def AllocBody321_354 : StackLang.HolProg 64 :=
.seq AllocBody321_348 AllocBody321_353

def AllocBody321_355 : StackLang.HolProg 64 :=
.seq AllocBody321_347 AllocBody321_354

def AllocBody321_356 : StackLang.HolProg 64 :=
.seq AllocBody321_346 AllocBody321_355

def AllocBody321_357 : StackLang.HolProg 64 :=
.seq AllocBody321_345 AllocBody321_356

def AllocBody321_358 : StackLang.HolProg 64 :=
.seq AllocBody321_344 AllocBody321_357

def AllocBody321_359 : StackLang.HolProg 64 :=
.seq AllocBody321_343 AllocBody321_358

def AllocBody321_360 : StackLang.HolProg 64 :=
.seq AllocBody321_342 AllocBody321_359

def AllocBody321_361 : StackLang.HolProg 64 :=
.seq AllocBody321_341 AllocBody321_360

def AllocBody321_362 : StackLang.HolProg 64 :=
.seq AllocBody321_340 AllocBody321_361

def AllocBody321_363 : StackLang.HolProg 64 :=
.seq AllocBody321_339 AllocBody321_362

def AllocBody321_364 : StackLang.HolProg 64 :=
.seq AllocBody321_338 AllocBody321_363

def AllocBody321_365 : StackLang.HolProg 64 :=
.seq AllocBody321_337 AllocBody321_364

def AllocBody321_366 : StackLang.HolProg 64 :=
.seq AllocBody321_336 AllocBody321_365

def AllocBody321_367 : StackLang.HolProg 64 :=
.seq AllocBody321_335 AllocBody321_366

def AllocBody321_368 : StackLang.HolProg 64 :=
.seq AllocBody321_334 AllocBody321_367

def AllocBody321_369 : StackLang.HolProg 64 :=
.seq AllocBody321_7 AllocBody321_368

def AllocBody321_370 : StackLang.HolProg 64 :=
.seq AllocBody321_6 AllocBody321_369

def AllocBody321_371 : StackLang.HolProg 64 :=
.seq AllocBody321_5 AllocBody321_370

def AllocBody321_372 : StackLang.HolProg 64 :=
.seq AllocBody321_4 AllocBody321_371

def AllocBody321_373 : StackLang.HolProg 64 :=
.seq AllocBody321_3 AllocBody321_372

def AllocBody321_374 : StackLang.HolProg 64 :=
.seq AllocBody321_2 AllocBody321_373

def AllocBody321_375 : StackLang.HolProg 64 :=
.seq AllocBody321_1 AllocBody321_374

def AllocBody321_376 : StackLang.HolProg 64 :=
.seq AllocBody321_0 AllocBody321_375

def Alloc321 : Nat × StackLang.HolProg 64 := (321, AllocBody321_376)
theorem Alloc321_eq : StackAlloc.progComp (321, raw321) = Alloc321 := by
  kernel_rfl
#print axioms Alloc321_eq
end InitECandidate.Proofs.BackendStages
