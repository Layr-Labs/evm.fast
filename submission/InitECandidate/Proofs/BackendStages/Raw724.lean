import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function724
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody724_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody724_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody724_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody724_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3246#64)

def rawBody724_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody724_5 : StackLang.HolProg 64 :=
.seq rawBody724_3 rawBody724_4

def rawBody724_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody724_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody724_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody724_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 724 3

def rawBody724_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody724_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody724_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody724_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody724_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody724_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody724_16 : StackLang.HolProg 64 :=
.seq rawBody724_14 rawBody724_15

def rawBody724_17 : StackLang.HolProg 64 :=
.seq rawBody724_13 rawBody724_16

def rawBody724_18 : StackLang.HolProg 64 :=
.seq rawBody724_12 rawBody724_17

def rawBody724_19 : StackLang.HolProg 64 :=
.seq rawBody724_11 rawBody724_18

def rawBody724_20 : StackLang.HolProg 64 :=
.seq rawBody724_10 rawBody724_19

def rawBody724_21 : StackLang.HolProg 64 :=
.seq rawBody724_9 rawBody724_20

def rawBody724_22 : StackLang.HolProg 64 :=
.seq rawBody724_8 rawBody724_21

def rawBody724_23 : StackLang.HolProg 64 :=
.seq rawBody724_7 rawBody724_22

def rawBody724_24 : StackLang.HolProg 64 :=
.seq rawBody724_6 rawBody724_23

def rawBody724_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody724_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody724_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody724_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody724_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody724_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody724_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody724_32 : StackLang.HolProg 64 :=
.seq rawBody724_30 rawBody724_31

def rawBody724_33 : StackLang.HolProg 64 :=
.seq rawBody724_29 rawBody724_32

def rawBody724_34 : StackLang.HolProg 64 :=
.seq rawBody724_28 rawBody724_33

def rawBody724_35 : StackLang.HolProg 64 :=
.seq rawBody724_27 rawBody724_34

def rawBody724_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody724_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody724_38 : StackLang.HolProg 64 :=
.seq rawBody724_36 rawBody724_37

def rawBody724_39 : StackLang.HolProg 64 :=
.call (some (rawBody724_35, 0, 724, 2)) (Sum.inl 717) (some (rawBody724_38, 724, 3))

def rawBody724_40 : StackLang.HolProg 64 :=
.seq rawBody724_26 rawBody724_39

def rawBody724_41 : StackLang.HolProg 64 :=
.seq rawBody724_25 rawBody724_40

def rawBody724_42 : StackLang.HolProg 64 :=
.seq rawBody724_24 rawBody724_41

def rawBody724_43 : StackLang.HolProg 64 :=
.seq rawBody724_5 rawBody724_42

def rawBody724_44 : StackLang.HolProg 64 :=
.seq rawBody724_2 rawBody724_43

def rawBody724_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody724_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody724_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody724_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody724_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody724_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody724_51 : StackLang.HolProg 64 :=
.seq rawBody724_49 rawBody724_50

def rawBody724_52 : StackLang.HolProg 64 :=
.seq rawBody724_48 rawBody724_51

def rawBody724_53 : StackLang.HolProg 64 :=
.seq rawBody724_47 rawBody724_52

def rawBody724_54 : StackLang.HolProg 64 :=
.seq rawBody724_46 rawBody724_53

def rawBody724_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 936899308823769933#64)

def rawBody724_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 2706051889235351147#64)

def rawBody724_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 12843041017062132063#64)

def rawBody724_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 12941209323636816658#64)

def rawBody724_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1105070755758604287#64)

def rawBody724_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 15924587544893707605#64)

def rawBody724_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody724_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody724_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3247#64)

def rawBody724_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody724_65 : StackLang.HolProg 64 :=
.seq rawBody724_63 rawBody724_64

def rawBody724_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody724_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody724_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody724_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 724 5

def rawBody724_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody724_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody724_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody724_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody724_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody724_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody724_76 : StackLang.HolProg 64 :=
.seq rawBody724_74 rawBody724_75

def rawBody724_77 : StackLang.HolProg 64 :=
.seq rawBody724_73 rawBody724_76

def rawBody724_78 : StackLang.HolProg 64 :=
.seq rawBody724_72 rawBody724_77

def rawBody724_79 : StackLang.HolProg 64 :=
.seq rawBody724_71 rawBody724_78

def rawBody724_80 : StackLang.HolProg 64 :=
.seq rawBody724_70 rawBody724_79

def rawBody724_81 : StackLang.HolProg 64 :=
.seq rawBody724_69 rawBody724_80

def rawBody724_82 : StackLang.HolProg 64 :=
.seq rawBody724_68 rawBody724_81

def rawBody724_83 : StackLang.HolProg 64 :=
.seq rawBody724_67 rawBody724_82

def rawBody724_84 : StackLang.HolProg 64 :=
.seq rawBody724_66 rawBody724_83

def rawBody724_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody724_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody724_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody724_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody724_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody724_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody724_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody724_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody724_93 : StackLang.HolProg 64 :=
.seq rawBody724_91 rawBody724_92

def rawBody724_94 : StackLang.HolProg 64 :=
.seq rawBody724_90 rawBody724_93

def rawBody724_95 : StackLang.HolProg 64 :=
.seq rawBody724_89 rawBody724_94

def rawBody724_96 : StackLang.HolProg 64 :=
.seq rawBody724_88 rawBody724_95

def rawBody724_97 : StackLang.HolProg 64 :=
.seq rawBody724_87 rawBody724_96

def rawBody724_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody724_99 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody724_100 : StackLang.HolProg 64 :=
.seq rawBody724_98 rawBody724_99

def rawBody724_101 : StackLang.HolProg 64 :=
.call (some (rawBody724_97, 0, 724, 4)) (Sum.inl 707) (some (rawBody724_100, 724, 5))

def rawBody724_102 : StackLang.HolProg 64 :=
.seq rawBody724_86 rawBody724_101

def rawBody724_103 : StackLang.HolProg 64 :=
.seq rawBody724_85 rawBody724_102

def rawBody724_104 : StackLang.HolProg 64 :=
.seq rawBody724_84 rawBody724_103

def rawBody724_105 : StackLang.HolProg 64 :=
.seq rawBody724_65 rawBody724_104

def rawBody724_106 : StackLang.HolProg 64 :=
.seq rawBody724_62 rawBody724_105

def rawBody724_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody724_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody724_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody724_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody724_111 : StackLang.HolProg 64 :=
.seq rawBody724_109 rawBody724_110

def rawBody724_112 : StackLang.HolProg 64 :=
.seq rawBody724_108 rawBody724_111

def rawBody724_113 : StackLang.HolProg 64 :=
.seq rawBody724_107 rawBody724_112

def rawBody724_114 : StackLang.HolProg 64 :=
.seq rawBody724_106 rawBody724_113

def rawBody724_115 : StackLang.HolProg 64 :=
.seq rawBody724_61 rawBody724_114

def rawBody724_116 : StackLang.HolProg 64 :=
.seq rawBody724_60 rawBody724_115

def rawBody724_117 : StackLang.HolProg 64 :=
.seq rawBody724_59 rawBody724_116

def rawBody724_118 : StackLang.HolProg 64 :=
.seq rawBody724_58 rawBody724_117

def rawBody724_119 : StackLang.HolProg 64 :=
.seq rawBody724_57 rawBody724_118

def rawBody724_120 : StackLang.HolProg 64 :=
.seq rawBody724_56 rawBody724_119

def rawBody724_121 : StackLang.HolProg 64 :=
.seq rawBody724_55 rawBody724_120

def rawBody724_122 : StackLang.HolProg 64 :=
.seq rawBody724_54 rawBody724_121

def rawBody724_123 : StackLang.HolProg 64 :=
.seq rawBody724_45 rawBody724_122

def rawBody724_124 : StackLang.HolProg 64 :=
.seq rawBody724_44 rawBody724_123

def rawBody724_125 : StackLang.HolProg 64 :=
.seq rawBody724_1 rawBody724_124

def rawBody724_126 : StackLang.HolProg 64 :=
.seq rawBody724_0 rawBody724_125

def raw724 : StackLang.HolProg 64 := rawBody724_126
theorem raw724_eq : StackRawCall.compTop RawInfo.rawInfo (function724 (.list [])).1 = raw724 := by
  kernel_rfl
#print axioms raw724_eq
end InitECandidate.Proofs.BackendStages
