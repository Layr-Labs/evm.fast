import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function321
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody321_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def rawBody321_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody321_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody321_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody321_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def rawBody321_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody321_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 3#64)

def rawBody321_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody321_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 40#64))

def rawBody321_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody321_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def rawBody321_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody321_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def rawBody321_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def rawBody321_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody321_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 2

def rawBody321_19 : StackLang.HolProg 64 :=
.seq rawBody321_17 rawBody321_18

def rawBody321_20 : StackLang.HolProg 64 :=
.seq rawBody321_16 rawBody321_19

def rawBody321_21 : StackLang.HolProg 64 :=
.seq rawBody321_15 rawBody321_20

def rawBody321_22 : StackLang.HolProg 64 :=
.seq rawBody321_14 rawBody321_21

def rawBody321_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 899#64)

def rawBody321_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody321_26 : StackLang.HolProg 64 :=
.seq rawBody321_24 rawBody321_25

def rawBody321_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody321_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody321_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody321_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 321 3

def rawBody321_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody321_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody321_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody321_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody321_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody321_37 : StackLang.HolProg 64 :=
.seq rawBody321_35 rawBody321_36

def rawBody321_38 : StackLang.HolProg 64 :=
.seq rawBody321_34 rawBody321_37

def rawBody321_39 : StackLang.HolProg 64 :=
.seq rawBody321_33 rawBody321_38

def rawBody321_40 : StackLang.HolProg 64 :=
.seq rawBody321_32 rawBody321_39

def rawBody321_41 : StackLang.HolProg 64 :=
.seq rawBody321_31 rawBody321_40

def rawBody321_42 : StackLang.HolProg 64 :=
.seq rawBody321_30 rawBody321_41

def rawBody321_43 : StackLang.HolProg 64 :=
.seq rawBody321_29 rawBody321_42

def rawBody321_44 : StackLang.HolProg 64 :=
.seq rawBody321_28 rawBody321_43

def rawBody321_45 : StackLang.HolProg 64 :=
.seq rawBody321_27 rawBody321_44

def rawBody321_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody321_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody321_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody321_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody321_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody321_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody321_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody321_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody321_56 : StackLang.HolProg 64 :=
.seq rawBody321_54 rawBody321_55

def rawBody321_57 : StackLang.HolProg 64 :=
.seq rawBody321_53 rawBody321_56

def rawBody321_58 : StackLang.HolProg 64 :=
.seq rawBody321_52 rawBody321_57

def rawBody321_59 : StackLang.HolProg 64 :=
.seq rawBody321_51 rawBody321_58

def rawBody321_60 : StackLang.HolProg 64 :=
.seq rawBody321_50 rawBody321_59

def rawBody321_61 : StackLang.HolProg 64 :=
.seq rawBody321_49 rawBody321_60

def rawBody321_62 : StackLang.HolProg 64 :=
.seq rawBody321_48 rawBody321_61

def rawBody321_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody321_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody321_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody321_66 : StackLang.HolProg 64 :=
.seq rawBody321_64 rawBody321_65

def rawBody321_67 : StackLang.HolProg 64 :=
.seq rawBody321_63 rawBody321_66

def rawBody321_68 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody321_69 : StackLang.HolProg 64 :=
.seq rawBody321_67 rawBody321_68

def rawBody321_70 : StackLang.HolProg 64 :=
.call (some (rawBody321_62, 0, 321, 2)) (Sum.inl 68) (some (rawBody321_69, 321, 3))

def rawBody321_71 : StackLang.HolProg 64 :=
.seq rawBody321_47 rawBody321_70

def rawBody321_72 : StackLang.HolProg 64 :=
.seq rawBody321_46 rawBody321_71

def rawBody321_73 : StackLang.HolProg 64 :=
.seq rawBody321_45 rawBody321_72

def rawBody321_74 : StackLang.HolProg 64 :=
.seq rawBody321_26 rawBody321_73

def rawBody321_75 : StackLang.HolProg 64 :=
.seq rawBody321_23 rawBody321_74

def rawBody321_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody321_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody321_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody321_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody321_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def rawBody321_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_83 : StackLang.HolProg 64 :=
.seq rawBody321_81 rawBody321_82

def rawBody321_84 : StackLang.HolProg 64 :=
.seq rawBody321_80 rawBody321_83

def rawBody321_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody321_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_87 : StackLang.HolProg 64 :=
.seq rawBody321_85 rawBody321_86

def rawBody321_88 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody321_84 rawBody321_87

def rawBody321_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody321_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def rawBody321_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody321_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody321_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def rawBody321_95 : StackLang.HolProg 64 :=
.seq rawBody321_93 rawBody321_94

def rawBody321_96 : StackLang.HolProg 64 :=
.seq rawBody321_92 rawBody321_95

def rawBody321_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 900#64)

def rawBody321_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody321_100 : StackLang.HolProg 64 :=
.seq rawBody321_98 rawBody321_99

def rawBody321_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody321_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody321_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody321_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 321 5

def rawBody321_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody321_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody321_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody321_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody321_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody321_111 : StackLang.HolProg 64 :=
.seq rawBody321_109 rawBody321_110

def rawBody321_112 : StackLang.HolProg 64 :=
.seq rawBody321_108 rawBody321_111

def rawBody321_113 : StackLang.HolProg 64 :=
.seq rawBody321_107 rawBody321_112

def rawBody321_114 : StackLang.HolProg 64 :=
.seq rawBody321_106 rawBody321_113

def rawBody321_115 : StackLang.HolProg 64 :=
.seq rawBody321_105 rawBody321_114

def rawBody321_116 : StackLang.HolProg 64 :=
.seq rawBody321_104 rawBody321_115

def rawBody321_117 : StackLang.HolProg 64 :=
.seq rawBody321_103 rawBody321_116

def rawBody321_118 : StackLang.HolProg 64 :=
.seq rawBody321_102 rawBody321_117

def rawBody321_119 : StackLang.HolProg 64 :=
.seq rawBody321_101 rawBody321_118

def rawBody321_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody321_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody321_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody321_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody321_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody321_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody321_128 : StackLang.HolProg 64 :=
.seq rawBody321_126 rawBody321_127

def rawBody321_129 : StackLang.HolProg 64 :=
.seq rawBody321_125 rawBody321_128

def rawBody321_130 : StackLang.HolProg 64 :=
.seq rawBody321_124 rawBody321_129

def rawBody321_131 : StackLang.HolProg 64 :=
.seq rawBody321_123 rawBody321_130

def rawBody321_132 : StackLang.HolProg 64 :=
.seq rawBody321_122 rawBody321_131

def rawBody321_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody321_134 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody321_135 : StackLang.HolProg 64 :=
.seq rawBody321_133 rawBody321_134

def rawBody321_136 : StackLang.HolProg 64 :=
.call (some (rawBody321_132, 0, 321, 4)) (Sum.inl 290) (some (rawBody321_135, 321, 5))

def rawBody321_137 : StackLang.HolProg 64 :=
.seq rawBody321_121 rawBody321_136

def rawBody321_138 : StackLang.HolProg 64 :=
.seq rawBody321_120 rawBody321_137

def rawBody321_139 : StackLang.HolProg 64 :=
.seq rawBody321_119 rawBody321_138

def rawBody321_140 : StackLang.HolProg 64 :=
.seq rawBody321_100 rawBody321_139

def rawBody321_141 : StackLang.HolProg 64 :=
.seq rawBody321_97 rawBody321_140

def rawBody321_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody321_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody321_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody321_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody321_147 : StackLang.HolProg 64 :=
.seq rawBody321_145 rawBody321_146

def rawBody321_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 901#64)

def rawBody321_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody321_151 : StackLang.HolProg 64 :=
.seq rawBody321_149 rawBody321_150

def rawBody321_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody321_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody321_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody321_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 321 7

def rawBody321_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody321_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody321_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody321_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody321_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody321_162 : StackLang.HolProg 64 :=
.seq rawBody321_160 rawBody321_161

def rawBody321_163 : StackLang.HolProg 64 :=
.seq rawBody321_159 rawBody321_162

def rawBody321_164 : StackLang.HolProg 64 :=
.seq rawBody321_158 rawBody321_163

def rawBody321_165 : StackLang.HolProg 64 :=
.seq rawBody321_157 rawBody321_164

def rawBody321_166 : StackLang.HolProg 64 :=
.seq rawBody321_156 rawBody321_165

def rawBody321_167 : StackLang.HolProg 64 :=
.seq rawBody321_155 rawBody321_166

def rawBody321_168 : StackLang.HolProg 64 :=
.seq rawBody321_154 rawBody321_167

def rawBody321_169 : StackLang.HolProg 64 :=
.seq rawBody321_153 rawBody321_168

def rawBody321_170 : StackLang.HolProg 64 :=
.seq rawBody321_152 rawBody321_169

def rawBody321_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody321_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody321_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody321_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody321_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody321_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody321_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody321_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody321_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody321_182 : StackLang.HolProg 64 :=
.seq rawBody321_180 rawBody321_181

def rawBody321_183 : StackLang.HolProg 64 :=
.seq rawBody321_179 rawBody321_182

def rawBody321_184 : StackLang.HolProg 64 :=
.seq rawBody321_178 rawBody321_183

def rawBody321_185 : StackLang.HolProg 64 :=
.seq rawBody321_177 rawBody321_184

def rawBody321_186 : StackLang.HolProg 64 :=
.seq rawBody321_176 rawBody321_185

def rawBody321_187 : StackLang.HolProg 64 :=
.seq rawBody321_175 rawBody321_186

def rawBody321_188 : StackLang.HolProg 64 :=
.seq rawBody321_174 rawBody321_187

def rawBody321_189 : StackLang.HolProg 64 :=
.seq rawBody321_173 rawBody321_188

def rawBody321_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody321_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody321_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody321_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody321_194 : StackLang.HolProg 64 :=
.seq rawBody321_192 rawBody321_193

def rawBody321_195 : StackLang.HolProg 64 :=
.seq rawBody321_191 rawBody321_194

def rawBody321_196 : StackLang.HolProg 64 :=
.seq rawBody321_190 rawBody321_195

def rawBody321_197 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody321_198 : StackLang.HolProg 64 :=
.seq rawBody321_196 rawBody321_197

def rawBody321_199 : StackLang.HolProg 64 :=
.call (some (rawBody321_189, 0, 321, 6)) (Sum.inl 179) (some (rawBody321_198, 321, 7))

def rawBody321_200 : StackLang.HolProg 64 :=
.seq rawBody321_172 rawBody321_199

def rawBody321_201 : StackLang.HolProg 64 :=
.seq rawBody321_171 rawBody321_200

def rawBody321_202 : StackLang.HolProg 64 :=
.seq rawBody321_170 rawBody321_201

def rawBody321_203 : StackLang.HolProg 64 :=
.seq rawBody321_151 rawBody321_202

def rawBody321_204 : StackLang.HolProg 64 :=
.seq rawBody321_148 rawBody321_203

def rawBody321_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody321_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def rawBody321_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody321_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody321_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 48#64))

def rawBody321_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 56#64))

def rawBody321_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 902#64)

def rawBody321_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody321_217 : StackLang.HolProg 64 :=
.seq rawBody321_215 rawBody321_216

def rawBody321_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody321_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody321_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody321_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 321 9

def rawBody321_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody321_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody321_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody321_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody321_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody321_228 : StackLang.HolProg 64 :=
.seq rawBody321_226 rawBody321_227

def rawBody321_229 : StackLang.HolProg 64 :=
.seq rawBody321_225 rawBody321_228

def rawBody321_230 : StackLang.HolProg 64 :=
.seq rawBody321_224 rawBody321_229

def rawBody321_231 : StackLang.HolProg 64 :=
.seq rawBody321_223 rawBody321_230

def rawBody321_232 : StackLang.HolProg 64 :=
.seq rawBody321_222 rawBody321_231

def rawBody321_233 : StackLang.HolProg 64 :=
.seq rawBody321_221 rawBody321_232

def rawBody321_234 : StackLang.HolProg 64 :=
.seq rawBody321_220 rawBody321_233

def rawBody321_235 : StackLang.HolProg 64 :=
.seq rawBody321_219 rawBody321_234

def rawBody321_236 : StackLang.HolProg 64 :=
.seq rawBody321_218 rawBody321_235

def rawBody321_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody321_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody321_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody321_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody321_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody321_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody321_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody321_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody321_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody321_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody321_249 : StackLang.HolProg 64 :=
.seq rawBody321_247 rawBody321_248

def rawBody321_250 : StackLang.HolProg 64 :=
.seq rawBody321_246 rawBody321_249

def rawBody321_251 : StackLang.HolProg 64 :=
.seq rawBody321_245 rawBody321_250

def rawBody321_252 : StackLang.HolProg 64 :=
.seq rawBody321_244 rawBody321_251

def rawBody321_253 : StackLang.HolProg 64 :=
.seq rawBody321_243 rawBody321_252

def rawBody321_254 : StackLang.HolProg 64 :=
.seq rawBody321_242 rawBody321_253

def rawBody321_255 : StackLang.HolProg 64 :=
.seq rawBody321_241 rawBody321_254

def rawBody321_256 : StackLang.HolProg 64 :=
.seq rawBody321_240 rawBody321_255

def rawBody321_257 : StackLang.HolProg 64 :=
.seq rawBody321_239 rawBody321_256

def rawBody321_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody321_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody321_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody321_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody321_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody321_263 : StackLang.HolProg 64 :=
.seq rawBody321_261 rawBody321_262

def rawBody321_264 : StackLang.HolProg 64 :=
.seq rawBody321_260 rawBody321_263

def rawBody321_265 : StackLang.HolProg 64 :=
.seq rawBody321_259 rawBody321_264

def rawBody321_266 : StackLang.HolProg 64 :=
.seq rawBody321_258 rawBody321_265

def rawBody321_267 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody321_268 : StackLang.HolProg 64 :=
.seq rawBody321_266 rawBody321_267

def rawBody321_269 : StackLang.HolProg 64 :=
.call (some (rawBody321_257, 0, 321, 8)) (Sum.inl 326) (some (rawBody321_268, 321, 9))

def rawBody321_270 : StackLang.HolProg 64 :=
.seq rawBody321_238 rawBody321_269

def rawBody321_271 : StackLang.HolProg 64 :=
.seq rawBody321_237 rawBody321_270

def rawBody321_272 : StackLang.HolProg 64 :=
.seq rawBody321_236 rawBody321_271

def rawBody321_273 : StackLang.HolProg 64 :=
.seq rawBody321_217 rawBody321_272

def rawBody321_274 : StackLang.HolProg 64 :=
.seq rawBody321_214 rawBody321_273

def rawBody321_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody321_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody321_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_279 : StackLang.HolProg 64 :=
.seq rawBody321_277 rawBody321_278

def rawBody321_280 : StackLang.HolProg 64 :=
.seq rawBody321_276 rawBody321_279

def rawBody321_281 : StackLang.HolProg 64 :=
.seq rawBody321_275 rawBody321_280

def rawBody321_282 : StackLang.HolProg 64 :=
.seq rawBody321_274 rawBody321_281

def rawBody321_283 : StackLang.HolProg 64 :=
.seq rawBody321_213 rawBody321_282

def rawBody321_284 : StackLang.HolProg 64 :=
.seq rawBody321_212 rawBody321_283

def rawBody321_285 : StackLang.HolProg 64 :=
.seq rawBody321_211 rawBody321_284

def rawBody321_286 : StackLang.HolProg 64 :=
.seq rawBody321_210 rawBody321_285

def rawBody321_287 : StackLang.HolProg 64 :=
.seq rawBody321_209 rawBody321_286

def rawBody321_288 : StackLang.HolProg 64 :=
.seq rawBody321_208 rawBody321_287

def rawBody321_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody321_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody321_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 5

def rawBody321_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody321_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody321_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody321_295 : StackLang.HolProg 64 :=
.seq rawBody321_293 rawBody321_294

def rawBody321_296 : StackLang.HolProg 64 :=
.seq rawBody321_292 rawBody321_295

def rawBody321_297 : StackLang.HolProg 64 :=
.seq rawBody321_291 rawBody321_296

def rawBody321_298 : StackLang.HolProg 64 :=
.seq rawBody321_290 rawBody321_297

def rawBody321_299 : StackLang.HolProg 64 :=
.seq rawBody321_289 rawBody321_298

def rawBody321_300 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody321_288 rawBody321_299

def rawBody321_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody321_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_303 : StackLang.HolProg 64 :=
.seq rawBody321_301 rawBody321_302

def rawBody321_304 : StackLang.HolProg 64 :=
.seq rawBody321_300 rawBody321_303

def rawBody321_305 : StackLang.HolProg 64 :=
.seq rawBody321_207 rawBody321_304

def rawBody321_306 : StackLang.HolProg 64 :=
.seq rawBody321_206 rawBody321_305

def rawBody321_307 : StackLang.HolProg 64 :=
.seq rawBody321_205 rawBody321_306

def rawBody321_308 : StackLang.HolProg 64 :=
.seq rawBody321_204 rawBody321_307

def rawBody321_309 : StackLang.HolProg 64 :=
.seq rawBody321_147 rawBody321_308

def rawBody321_310 : StackLang.HolProg 64 :=
.seq rawBody321_144 rawBody321_309

def rawBody321_311 : StackLang.HolProg 64 :=
.seq rawBody321_143 rawBody321_310

def rawBody321_312 : StackLang.HolProg 64 :=
.seq rawBody321_142 rawBody321_311

def rawBody321_313 : StackLang.HolProg 64 :=
.seq rawBody321_141 rawBody321_312

def rawBody321_314 : StackLang.HolProg 64 :=
.seq rawBody321_96 rawBody321_313

def rawBody321_315 : StackLang.HolProg 64 :=
.seq rawBody321_91 rawBody321_314

def rawBody321_316 : StackLang.HolProg 64 :=
.seq rawBody321_90 rawBody321_315

def rawBody321_317 : StackLang.HolProg 64 :=
.seq rawBody321_89 rawBody321_316

def rawBody321_318 : StackLang.HolProg 64 :=
.seq rawBody321_88 rawBody321_317

def rawBody321_319 : StackLang.HolProg 64 :=
.seq rawBody321_79 rawBody321_318

def rawBody321_320 : StackLang.HolProg 64 :=
.seq rawBody321_78 rawBody321_319

def rawBody321_321 : StackLang.HolProg 64 :=
.seq rawBody321_77 rawBody321_320

def rawBody321_322 : StackLang.HolProg 64 :=
.seq rawBody321_76 rawBody321_321

def rawBody321_323 : StackLang.HolProg 64 :=
.seq rawBody321_75 rawBody321_322

def rawBody321_324 : StackLang.HolProg 64 :=
.seq rawBody321_22 rawBody321_323

def rawBody321_325 : StackLang.HolProg 64 :=
.seq rawBody321_13 rawBody321_324

def rawBody321_326 : StackLang.HolProg 64 :=
.seq rawBody321_12 rawBody321_325

def rawBody321_327 : StackLang.HolProg 64 :=
.seq rawBody321_11 rawBody321_326

def rawBody321_328 : StackLang.HolProg 64 :=
.seq rawBody321_10 rawBody321_327

def rawBody321_329 : StackLang.HolProg 64 :=
.seq rawBody321_9 rawBody321_328

def rawBody321_330 : StackLang.HolProg 64 :=
.seq rawBody321_8 rawBody321_329

def rawBody321_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody321_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_333 : StackLang.HolProg 64 :=
.seq rawBody321_331 rawBody321_332

def rawBody321_334 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) rawBody321_330 rawBody321_333

def rawBody321_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody321_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def rawBody321_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody321_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody321_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody321_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def rawBody321_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody321_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody321_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody321_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def rawBody321_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody321_352 : StackLang.HolProg 64 :=
.seq rawBody321_350 rawBody321_351

def rawBody321_353 : StackLang.HolProg 64 :=
.seq rawBody321_349 rawBody321_352

def rawBody321_354 : StackLang.HolProg 64 :=
.seq rawBody321_348 rawBody321_353

def rawBody321_355 : StackLang.HolProg 64 :=
.seq rawBody321_347 rawBody321_354

def rawBody321_356 : StackLang.HolProg 64 :=
.seq rawBody321_346 rawBody321_355

def rawBody321_357 : StackLang.HolProg 64 :=
.seq rawBody321_345 rawBody321_356

def rawBody321_358 : StackLang.HolProg 64 :=
.seq rawBody321_344 rawBody321_357

def rawBody321_359 : StackLang.HolProg 64 :=
.seq rawBody321_343 rawBody321_358

def rawBody321_360 : StackLang.HolProg 64 :=
.seq rawBody321_342 rawBody321_359

def rawBody321_361 : StackLang.HolProg 64 :=
.seq rawBody321_341 rawBody321_360

def rawBody321_362 : StackLang.HolProg 64 :=
.seq rawBody321_340 rawBody321_361

def rawBody321_363 : StackLang.HolProg 64 :=
.seq rawBody321_339 rawBody321_362

def rawBody321_364 : StackLang.HolProg 64 :=
.seq rawBody321_338 rawBody321_363

def rawBody321_365 : StackLang.HolProg 64 :=
.seq rawBody321_337 rawBody321_364

def rawBody321_366 : StackLang.HolProg 64 :=
.seq rawBody321_336 rawBody321_365

def rawBody321_367 : StackLang.HolProg 64 :=
.seq rawBody321_335 rawBody321_366

def rawBody321_368 : StackLang.HolProg 64 :=
.seq rawBody321_334 rawBody321_367

def rawBody321_369 : StackLang.HolProg 64 :=
.seq rawBody321_7 rawBody321_368

def rawBody321_370 : StackLang.HolProg 64 :=
.seq rawBody321_6 rawBody321_369

def rawBody321_371 : StackLang.HolProg 64 :=
.seq rawBody321_5 rawBody321_370

def rawBody321_372 : StackLang.HolProg 64 :=
.seq rawBody321_4 rawBody321_371

def rawBody321_373 : StackLang.HolProg 64 :=
.seq rawBody321_3 rawBody321_372

def rawBody321_374 : StackLang.HolProg 64 :=
.seq rawBody321_2 rawBody321_373

def rawBody321_375 : StackLang.HolProg 64 :=
.seq rawBody321_1 rawBody321_374

def rawBody321_376 : StackLang.HolProg 64 :=
.seq rawBody321_0 rawBody321_375

def raw321 : StackLang.HolProg 64 := rawBody321_376
theorem raw321_eq : StackRawCall.compTop RawInfo.rawInfo (function321 (.list [])).1 = raw321 := by
  kernel_rfl
#print axioms raw321_eq
end InitECandidate.Proofs.BackendStages
