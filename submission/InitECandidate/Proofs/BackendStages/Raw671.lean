import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function671
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody671_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody671_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody671_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody671_3 : StackLang.HolProg 64 :=
.seq rawBody671_1 rawBody671_2

def rawBody671_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 12#64)

def rawBody671_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody671_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody671_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody671_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody671_9 : StackLang.HolProg 64 :=
.seq rawBody671_7 rawBody671_8

def rawBody671_10 : StackLang.HolProg 64 :=
.seq rawBody671_6 rawBody671_9

def rawBody671_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody671_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2786#64)

def rawBody671_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody671_14 : StackLang.HolProg 64 :=
.seq rawBody671_12 rawBody671_13

def rawBody671_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody671_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody671_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody671_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 671 3

def rawBody671_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody671_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody671_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody671_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody671_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody671_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody671_25 : StackLang.HolProg 64 :=
.seq rawBody671_23 rawBody671_24

def rawBody671_26 : StackLang.HolProg 64 :=
.seq rawBody671_22 rawBody671_25

def rawBody671_27 : StackLang.HolProg 64 :=
.seq rawBody671_21 rawBody671_26

def rawBody671_28 : StackLang.HolProg 64 :=
.seq rawBody671_20 rawBody671_27

def rawBody671_29 : StackLang.HolProg 64 :=
.seq rawBody671_19 rawBody671_28

def rawBody671_30 : StackLang.HolProg 64 :=
.seq rawBody671_18 rawBody671_29

def rawBody671_31 : StackLang.HolProg 64 :=
.seq rawBody671_17 rawBody671_30

def rawBody671_32 : StackLang.HolProg 64 :=
.seq rawBody671_16 rawBody671_31

def rawBody671_33 : StackLang.HolProg 64 :=
.seq rawBody671_15 rawBody671_32

def rawBody671_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody671_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody671_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody671_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody671_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody671_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody671_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody671_41 : StackLang.HolProg 64 :=
.seq rawBody671_39 rawBody671_40

def rawBody671_42 : StackLang.HolProg 64 :=
.seq rawBody671_38 rawBody671_41

def rawBody671_43 : StackLang.HolProg 64 :=
.seq rawBody671_37 rawBody671_42

def rawBody671_44 : StackLang.HolProg 64 :=
.seq rawBody671_36 rawBody671_43

def rawBody671_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody671_46 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody671_47 : StackLang.HolProg 64 :=
.seq rawBody671_45 rawBody671_46

def rawBody671_48 : StackLang.HolProg 64 :=
.call (some (rawBody671_44, 0, 671, 2)) (Sum.inl 669) (some (rawBody671_47, 671, 3))

def rawBody671_49 : StackLang.HolProg 64 :=
.seq rawBody671_35 rawBody671_48

def rawBody671_50 : StackLang.HolProg 64 :=
.seq rawBody671_34 rawBody671_49

def rawBody671_51 : StackLang.HolProg 64 :=
.seq rawBody671_33 rawBody671_50

def rawBody671_52 : StackLang.HolProg 64 :=
.seq rawBody671_14 rawBody671_51

def rawBody671_53 : StackLang.HolProg 64 :=
.seq rawBody671_11 rawBody671_52

def rawBody671_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody671_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody671_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody671_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody671_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody671_59 : StackLang.HolProg 64 :=
.seq rawBody671_57 rawBody671_58

def rawBody671_60 : StackLang.HolProg 64 :=
.seq rawBody671_56 rawBody671_59

def rawBody671_61 : StackLang.HolProg 64 :=
.seq rawBody671_55 rawBody671_60

def rawBody671_62 : StackLang.HolProg 64 :=
.seq rawBody671_54 rawBody671_61

def rawBody671_63 : StackLang.HolProg 64 :=
.seq rawBody671_53 rawBody671_62

def rawBody671_64 : StackLang.HolProg 64 :=
.seq rawBody671_10 rawBody671_63

def rawBody671_65 : StackLang.HolProg 64 :=
.seq rawBody671_5 rawBody671_64

def rawBody671_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody671_67 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody671_65 rawBody671_66

def rawBody671_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody671_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody671_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody671_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody671_72 : StackLang.HolProg 64 :=
.seq rawBody671_70 rawBody671_71

def rawBody671_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody671_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2787#64)

def rawBody671_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody671_76 : StackLang.HolProg 64 :=
.seq rawBody671_74 rawBody671_75

def rawBody671_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody671_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody671_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody671_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 671 5

def rawBody671_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody671_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody671_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody671_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody671_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody671_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody671_87 : StackLang.HolProg 64 :=
.seq rawBody671_85 rawBody671_86

def rawBody671_88 : StackLang.HolProg 64 :=
.seq rawBody671_84 rawBody671_87

def rawBody671_89 : StackLang.HolProg 64 :=
.seq rawBody671_83 rawBody671_88

def rawBody671_90 : StackLang.HolProg 64 :=
.seq rawBody671_82 rawBody671_89

def rawBody671_91 : StackLang.HolProg 64 :=
.seq rawBody671_81 rawBody671_90

def rawBody671_92 : StackLang.HolProg 64 :=
.seq rawBody671_80 rawBody671_91

def rawBody671_93 : StackLang.HolProg 64 :=
.seq rawBody671_79 rawBody671_92

def rawBody671_94 : StackLang.HolProg 64 :=
.seq rawBody671_78 rawBody671_93

def rawBody671_95 : StackLang.HolProg 64 :=
.seq rawBody671_77 rawBody671_94

def rawBody671_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody671_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody671_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody671_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody671_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody671_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody671_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody671_103 : StackLang.HolProg 64 :=
.seq rawBody671_101 rawBody671_102

def rawBody671_104 : StackLang.HolProg 64 :=
.seq rawBody671_100 rawBody671_103

def rawBody671_105 : StackLang.HolProg 64 :=
.seq rawBody671_99 rawBody671_104

def rawBody671_106 : StackLang.HolProg 64 :=
.seq rawBody671_98 rawBody671_105

def rawBody671_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody671_108 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody671_109 : StackLang.HolProg 64 :=
.seq rawBody671_107 rawBody671_108

def rawBody671_110 : StackLang.HolProg 64 :=
.call (some (rawBody671_106, 0, 671, 4)) (Sum.inl 670) (some (rawBody671_109, 671, 5))

def rawBody671_111 : StackLang.HolProg 64 :=
.seq rawBody671_97 rawBody671_110

def rawBody671_112 : StackLang.HolProg 64 :=
.seq rawBody671_96 rawBody671_111

def rawBody671_113 : StackLang.HolProg 64 :=
.seq rawBody671_95 rawBody671_112

def rawBody671_114 : StackLang.HolProg 64 :=
.seq rawBody671_76 rawBody671_113

def rawBody671_115 : StackLang.HolProg 64 :=
.seq rawBody671_73 rawBody671_114

def rawBody671_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody671_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody671_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody671_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody671_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody671_121 : StackLang.HolProg 64 :=
.seq rawBody671_119 rawBody671_120

def rawBody671_122 : StackLang.HolProg 64 :=
.seq rawBody671_118 rawBody671_121

def rawBody671_123 : StackLang.HolProg 64 :=
.seq rawBody671_117 rawBody671_122

def rawBody671_124 : StackLang.HolProg 64 :=
.seq rawBody671_116 rawBody671_123

def rawBody671_125 : StackLang.HolProg 64 :=
.seq rawBody671_115 rawBody671_124

def rawBody671_126 : StackLang.HolProg 64 :=
.seq rawBody671_72 rawBody671_125

def rawBody671_127 : StackLang.HolProg 64 :=
.seq rawBody671_69 rawBody671_126

def rawBody671_128 : StackLang.HolProg 64 :=
.seq rawBody671_68 rawBody671_127

def rawBody671_129 : StackLang.HolProg 64 :=
.seq rawBody671_67 rawBody671_128

def rawBody671_130 : StackLang.HolProg 64 :=
.seq rawBody671_4 rawBody671_129

def rawBody671_131 : StackLang.HolProg 64 :=
.seq rawBody671_3 rawBody671_130

def rawBody671_132 : StackLang.HolProg 64 :=
.seq rawBody671_0 rawBody671_131

def raw671 : StackLang.HolProg 64 := rawBody671_132
theorem raw671_eq : StackRawCall.compTop RawInfo.rawInfo (function671 (.list [])).1 = raw671 := by
  kernel_rfl
#print axioms raw671_eq
end InitECandidate.Proofs.BackendStages
