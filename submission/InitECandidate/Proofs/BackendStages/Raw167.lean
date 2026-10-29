import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function167
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody167_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def rawBody167_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody167_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody167_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody167_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody167_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody167_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody167_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def rawBody167_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody167_9 : StackLang.HolProg 64 :=
.seq rawBody167_7 rawBody167_8

def rawBody167_10 : StackLang.HolProg 64 :=
.seq rawBody167_6 rawBody167_9

def rawBody167_11 : StackLang.HolProg 64 :=
.seq rawBody167_5 rawBody167_10

def rawBody167_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody167_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody167_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody167_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody167_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody167_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody167_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def rawBody167_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody167_20 : StackLang.HolProg 64 :=
.seq rawBody167_18 rawBody167_19

def rawBody167_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def rawBody167_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody167_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def rawBody167_24 : StackLang.HolProg 64 :=
.seq rawBody167_22 rawBody167_23

def rawBody167_25 : StackLang.HolProg 64 :=
.seq rawBody167_21 rawBody167_24

def rawBody167_26 : StackLang.HolProg 64 :=
.seq rawBody167_20 rawBody167_25

def rawBody167_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody167_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 184#64)

def rawBody167_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody167_30 : StackLang.HolProg 64 :=
.seq rawBody167_28 rawBody167_29

def rawBody167_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody167_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody167_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody167_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 167 3

def rawBody167_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody167_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody167_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody167_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody167_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody167_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody167_41 : StackLang.HolProg 64 :=
.seq rawBody167_39 rawBody167_40

def rawBody167_42 : StackLang.HolProg 64 :=
.seq rawBody167_38 rawBody167_41

def rawBody167_43 : StackLang.HolProg 64 :=
.seq rawBody167_37 rawBody167_42

def rawBody167_44 : StackLang.HolProg 64 :=
.seq rawBody167_36 rawBody167_43

def rawBody167_45 : StackLang.HolProg 64 :=
.seq rawBody167_35 rawBody167_44

def rawBody167_46 : StackLang.HolProg 64 :=
.seq rawBody167_34 rawBody167_45

def rawBody167_47 : StackLang.HolProg 64 :=
.seq rawBody167_33 rawBody167_46

def rawBody167_48 : StackLang.HolProg 64 :=
.seq rawBody167_32 rawBody167_47

def rawBody167_49 : StackLang.HolProg 64 :=
.seq rawBody167_31 rawBody167_48

def rawBody167_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody167_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody167_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody167_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody167_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody167_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody167_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody167_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody167_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody167_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody167_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody167_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody167_62 : StackLang.HolProg 64 :=
.seq rawBody167_60 rawBody167_61

def rawBody167_63 : StackLang.HolProg 64 :=
.seq rawBody167_59 rawBody167_62

def rawBody167_64 : StackLang.HolProg 64 :=
.seq rawBody167_58 rawBody167_63

def rawBody167_65 : StackLang.HolProg 64 :=
.seq rawBody167_57 rawBody167_64

def rawBody167_66 : StackLang.HolProg 64 :=
.seq rawBody167_56 rawBody167_65

def rawBody167_67 : StackLang.HolProg 64 :=
.seq rawBody167_55 rawBody167_66

def rawBody167_68 : StackLang.HolProg 64 :=
.seq rawBody167_54 rawBody167_67

def rawBody167_69 : StackLang.HolProg 64 :=
.seq rawBody167_53 rawBody167_68

def rawBody167_70 : StackLang.HolProg 64 :=
.seq rawBody167_52 rawBody167_69

def rawBody167_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody167_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody167_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody167_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody167_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody167_76 : StackLang.HolProg 64 :=
.seq rawBody167_74 rawBody167_75

def rawBody167_77 : StackLang.HolProg 64 :=
.seq rawBody167_73 rawBody167_76

def rawBody167_78 : StackLang.HolProg 64 :=
.seq rawBody167_72 rawBody167_77

def rawBody167_79 : StackLang.HolProg 64 :=
.seq rawBody167_71 rawBody167_78

def rawBody167_80 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody167_81 : StackLang.HolProg 64 :=
.seq rawBody167_79 rawBody167_80

def rawBody167_82 : StackLang.HolProg 64 :=
.call (some (rawBody167_70, 0, 167, 2)) (Sum.inl 166) (some (rawBody167_81, 167, 3))

def rawBody167_83 : StackLang.HolProg 64 :=
.seq rawBody167_51 rawBody167_82

def rawBody167_84 : StackLang.HolProg 64 :=
.seq rawBody167_50 rawBody167_83

def rawBody167_85 : StackLang.HolProg 64 :=
.seq rawBody167_49 rawBody167_84

def rawBody167_86 : StackLang.HolProg 64 :=
.seq rawBody167_30 rawBody167_85

def rawBody167_87 : StackLang.HolProg 64 :=
.seq rawBody167_27 rawBody167_86

def rawBody167_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody167_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody167_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody167_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody167_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody167_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def rawBody167_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def rawBody167_95 : StackLang.HolProg 64 :=
.seq rawBody167_93 rawBody167_94

def rawBody167_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody167_97 : StackLang.HolProg 64 :=
.seq rawBody167_95 rawBody167_96

def rawBody167_98 : StackLang.HolProg 64 :=
.seq rawBody167_92 rawBody167_97

def rawBody167_99 : StackLang.HolProg 64 :=
.seq rawBody167_91 rawBody167_98

def rawBody167_100 : StackLang.HolProg 64 :=
.seq rawBody167_90 rawBody167_99

def rawBody167_101 : StackLang.HolProg 64 :=
.seq rawBody167_89 rawBody167_100

def rawBody167_102 : StackLang.HolProg 64 :=
.seq rawBody167_88 rawBody167_101

def rawBody167_103 : StackLang.HolProg 64 :=
.seq rawBody167_87 rawBody167_102

def rawBody167_104 : StackLang.HolProg 64 :=
.seq rawBody167_26 rawBody167_103

def rawBody167_105 : StackLang.HolProg 64 :=
.seq rawBody167_17 rawBody167_104

def rawBody167_106 : StackLang.HolProg 64 :=
.seq rawBody167_16 rawBody167_105

def rawBody167_107 : StackLang.HolProg 64 :=
.seq rawBody167_15 rawBody167_106

def rawBody167_108 : StackLang.HolProg 64 :=
.seq rawBody167_14 rawBody167_107

def rawBody167_109 : StackLang.HolProg 64 :=
.seq rawBody167_13 rawBody167_108

def rawBody167_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody167_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody167_112 : StackLang.HolProg 64 :=
.seq rawBody167_110 rawBody167_111

def rawBody167_113 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody167_109 rawBody167_112

def rawBody167_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody167_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 5

def rawBody167_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def rawBody167_117 : StackLang.HolProg 64 :=
.seq rawBody167_115 rawBody167_116

def rawBody167_118 : StackLang.HolProg 64 :=
.seq rawBody167_114 rawBody167_117

def rawBody167_119 : StackLang.HolProg 64 :=
.seq rawBody167_113 rawBody167_118

def rawBody167_120 : StackLang.HolProg 64 :=
.seq rawBody167_12 rawBody167_119

def rawBody167_121 : StackLang.HolProg 64 :=
.loop rawBody167_120

def rawBody167_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody167_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 4

def rawBody167_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody167_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody167_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def rawBody167_127 : StackLang.HolProg 64 :=
.seq rawBody167_125 rawBody167_126

def rawBody167_128 : StackLang.HolProg 64 :=
.seq rawBody167_124 rawBody167_127

def rawBody167_129 : StackLang.HolProg 64 :=
.seq rawBody167_123 rawBody167_128

def rawBody167_130 : StackLang.HolProg 64 :=
.seq rawBody167_122 rawBody167_129

def rawBody167_131 : StackLang.HolProg 64 :=
.seq rawBody167_121 rawBody167_130

def rawBody167_132 : StackLang.HolProg 64 :=
.seq rawBody167_11 rawBody167_131

def rawBody167_133 : StackLang.HolProg 64 :=
.seq rawBody167_4 rawBody167_132

def rawBody167_134 : StackLang.HolProg 64 :=
.seq rawBody167_3 rawBody167_133

def rawBody167_135 : StackLang.HolProg 64 :=
.seq rawBody167_2 rawBody167_134

def rawBody167_136 : StackLang.HolProg 64 :=
.seq rawBody167_1 rawBody167_135

def rawBody167_137 : StackLang.HolProg 64 :=
.seq rawBody167_0 rawBody167_136

def raw167 : StackLang.HolProg 64 := rawBody167_137
theorem raw167_eq : StackRawCall.compTop RawInfo.rawInfo (function167 (.list [])).1 = raw167 := by
  kernel_rfl
#print axioms raw167_eq
end InitECandidate.Proofs.BackendStages
