import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function179
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody179_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody179_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody179_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def rawBody179_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody179_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def rawBody179_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody179_6 : StackLang.HolProg 64 :=
.seq rawBody179_4 rawBody179_5

def rawBody179_7 : StackLang.HolProg 64 :=
.seq rawBody179_3 rawBody179_6

def rawBody179_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody179_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody179_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody179_11 : StackLang.HolProg 64 :=
.seq rawBody179_9 rawBody179_10

def rawBody179_12 : StackLang.HolProg 64 :=
.seq rawBody179_8 rawBody179_11

def rawBody179_13 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody179_7 rawBody179_12

def rawBody179_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody179_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody179_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 128#64)

def rawBody179_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody179_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody179_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody179_20 : StackLang.HolProg 64 :=
.seq rawBody179_18 rawBody179_19

def rawBody179_21 : StackLang.HolProg 64 :=
.seq rawBody179_17 rawBody179_20

def rawBody179_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody179_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody179_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody179_25 : StackLang.HolProg 64 :=
.seq rawBody179_23 rawBody179_24

def rawBody179_26 : StackLang.HolProg 64 :=
.seq rawBody179_22 rawBody179_25

def rawBody179_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody179_21 rawBody179_26

def rawBody179_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody179_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody179_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody179_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody179_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody179_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody179_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody179_35 : StackLang.HolProg 64 :=
.seq rawBody179_33 rawBody179_34

def rawBody179_36 : StackLang.HolProg 64 :=
.seq rawBody179_32 rawBody179_35

def rawBody179_37 : StackLang.HolProg 64 :=
.seq rawBody179_31 rawBody179_36

def rawBody179_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody179_39 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) rawBody179_37 rawBody179_38

def rawBody179_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody179_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody179_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody179_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody179_44 : StackLang.HolProg 64 :=
.seq rawBody179_42 rawBody179_43

def rawBody179_45 : StackLang.HolProg 64 :=
.seq rawBody179_41 rawBody179_44

def rawBody179_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody179_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 201#64)

def rawBody179_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody179_49 : StackLang.HolProg 64 :=
.seq rawBody179_47 rawBody179_48

def rawBody179_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody179_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody179_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody179_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 179 3

def rawBody179_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody179_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody179_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody179_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody179_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody179_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody179_60 : StackLang.HolProg 64 :=
.seq rawBody179_58 rawBody179_59

def rawBody179_61 : StackLang.HolProg 64 :=
.seq rawBody179_57 rawBody179_60

def rawBody179_62 : StackLang.HolProg 64 :=
.seq rawBody179_56 rawBody179_61

def rawBody179_63 : StackLang.HolProg 64 :=
.seq rawBody179_55 rawBody179_62

def rawBody179_64 : StackLang.HolProg 64 :=
.seq rawBody179_54 rawBody179_63

def rawBody179_65 : StackLang.HolProg 64 :=
.seq rawBody179_53 rawBody179_64

def rawBody179_66 : StackLang.HolProg 64 :=
.seq rawBody179_52 rawBody179_65

def rawBody179_67 : StackLang.HolProg 64 :=
.seq rawBody179_51 rawBody179_66

def rawBody179_68 : StackLang.HolProg 64 :=
.seq rawBody179_50 rawBody179_67

def rawBody179_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody179_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody179_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody179_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody179_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody179_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody179_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody179_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody179_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody179_78 : StackLang.HolProg 64 :=
.seq rawBody179_76 rawBody179_77

def rawBody179_79 : StackLang.HolProg 64 :=
.seq rawBody179_75 rawBody179_78

def rawBody179_80 : StackLang.HolProg 64 :=
.seq rawBody179_74 rawBody179_79

def rawBody179_81 : StackLang.HolProg 64 :=
.seq rawBody179_73 rawBody179_80

def rawBody179_82 : StackLang.HolProg 64 :=
.seq rawBody179_72 rawBody179_81

def rawBody179_83 : StackLang.HolProg 64 :=
.seq rawBody179_71 rawBody179_82

def rawBody179_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody179_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody179_86 : StackLang.HolProg 64 :=
.seq rawBody179_84 rawBody179_85

def rawBody179_87 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody179_88 : StackLang.HolProg 64 :=
.seq rawBody179_86 rawBody179_87

def rawBody179_89 : StackLang.HolProg 64 :=
.call (some (rawBody179_83, 0, 179, 2)) (Sum.inl 175) (some (rawBody179_88, 179, 3))

def rawBody179_90 : StackLang.HolProg 64 :=
.seq rawBody179_70 rawBody179_89

def rawBody179_91 : StackLang.HolProg 64 :=
.seq rawBody179_69 rawBody179_90

def rawBody179_92 : StackLang.HolProg 64 :=
.seq rawBody179_68 rawBody179_91

def rawBody179_93 : StackLang.HolProg 64 :=
.seq rawBody179_49 rawBody179_92

def rawBody179_94 : StackLang.HolProg 64 :=
.seq rawBody179_46 rawBody179_93

def rawBody179_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody179_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody179_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody179_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody179_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody179_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody179_101 : StackLang.HolProg 64 :=
.seq rawBody179_99 rawBody179_100

def rawBody179_102 : StackLang.HolProg 64 :=
.seq rawBody179_98 rawBody179_101

def rawBody179_103 : StackLang.HolProg 64 :=
.seq rawBody179_97 rawBody179_102

def rawBody179_104 : StackLang.HolProg 64 :=
.seq rawBody179_96 rawBody179_103

def rawBody179_105 : StackLang.HolProg 64 :=
.seq rawBody179_95 rawBody179_104

def rawBody179_106 : StackLang.HolProg 64 :=
.seq rawBody179_94 rawBody179_105

def rawBody179_107 : StackLang.HolProg 64 :=
.seq rawBody179_45 rawBody179_106

def rawBody179_108 : StackLang.HolProg 64 :=
.seq rawBody179_40 rawBody179_107

def rawBody179_109 : StackLang.HolProg 64 :=
.seq rawBody179_39 rawBody179_108

def rawBody179_110 : StackLang.HolProg 64 :=
.seq rawBody179_30 rawBody179_109

def rawBody179_111 : StackLang.HolProg 64 :=
.seq rawBody179_29 rawBody179_110

def rawBody179_112 : StackLang.HolProg 64 :=
.seq rawBody179_28 rawBody179_111

def rawBody179_113 : StackLang.HolProg 64 :=
.seq rawBody179_27 rawBody179_112

def rawBody179_114 : StackLang.HolProg 64 :=
.seq rawBody179_16 rawBody179_113

def rawBody179_115 : StackLang.HolProg 64 :=
.seq rawBody179_15 rawBody179_114

def rawBody179_116 : StackLang.HolProg 64 :=
.seq rawBody179_14 rawBody179_115

def rawBody179_117 : StackLang.HolProg 64 :=
.seq rawBody179_13 rawBody179_116

def rawBody179_118 : StackLang.HolProg 64 :=
.seq rawBody179_2 rawBody179_117

def rawBody179_119 : StackLang.HolProg 64 :=
.seq rawBody179_1 rawBody179_118

def rawBody179_120 : StackLang.HolProg 64 :=
.seq rawBody179_0 rawBody179_119

def raw179 : StackLang.HolProg 64 := rawBody179_120
theorem raw179_eq : StackRawCall.compTop RawInfo.rawInfo (function179 (.list [])).1 = raw179 := by
  kernel_rfl
#print axioms raw179_eq
end InitECandidate.Proofs.BackendStages
