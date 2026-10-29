import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function407
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody407_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody407_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody407_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody407_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1211#64)

def rawBody407_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody407_5 : StackLang.HolProg 64 :=
.seq rawBody407_3 rawBody407_4

def rawBody407_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody407_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody407_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody407_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 407 3

def rawBody407_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody407_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody407_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody407_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody407_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody407_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody407_16 : StackLang.HolProg 64 :=
.seq rawBody407_14 rawBody407_15

def rawBody407_17 : StackLang.HolProg 64 :=
.seq rawBody407_13 rawBody407_16

def rawBody407_18 : StackLang.HolProg 64 :=
.seq rawBody407_12 rawBody407_17

def rawBody407_19 : StackLang.HolProg 64 :=
.seq rawBody407_11 rawBody407_18

def rawBody407_20 : StackLang.HolProg 64 :=
.seq rawBody407_10 rawBody407_19

def rawBody407_21 : StackLang.HolProg 64 :=
.seq rawBody407_9 rawBody407_20

def rawBody407_22 : StackLang.HolProg 64 :=
.seq rawBody407_8 rawBody407_21

def rawBody407_23 : StackLang.HolProg 64 :=
.seq rawBody407_7 rawBody407_22

def rawBody407_24 : StackLang.HolProg 64 :=
.seq rawBody407_6 rawBody407_23

def rawBody407_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody407_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody407_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody407_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody407_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody407_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody407_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody407_32 : StackLang.HolProg 64 :=
.seq rawBody407_30 rawBody407_31

def rawBody407_33 : StackLang.HolProg 64 :=
.seq rawBody407_29 rawBody407_32

def rawBody407_34 : StackLang.HolProg 64 :=
.seq rawBody407_28 rawBody407_33

def rawBody407_35 : StackLang.HolProg 64 :=
.seq rawBody407_27 rawBody407_34

def rawBody407_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody407_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody407_38 : StackLang.HolProg 64 :=
.seq rawBody407_36 rawBody407_37

def rawBody407_39 : StackLang.HolProg 64 :=
.call (some (rawBody407_35, 0, 407, 2)) (Sum.inl 406) (some (rawBody407_38, 407, 3))

def rawBody407_40 : StackLang.HolProg 64 :=
.seq rawBody407_26 rawBody407_39

def rawBody407_41 : StackLang.HolProg 64 :=
.seq rawBody407_25 rawBody407_40

def rawBody407_42 : StackLang.HolProg 64 :=
.seq rawBody407_24 rawBody407_41

def rawBody407_43 : StackLang.HolProg 64 :=
.seq rawBody407_5 rawBody407_42

def rawBody407_44 : StackLang.HolProg 64 :=
.seq rawBody407_2 rawBody407_43

def rawBody407_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody407_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody407_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def rawBody407_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody407_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody407_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody407_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1212#64)

def rawBody407_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody407_53 : StackLang.HolProg 64 :=
.seq rawBody407_51 rawBody407_52

def rawBody407_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody407_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody407_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody407_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 407 5

def rawBody407_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody407_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody407_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody407_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody407_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody407_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody407_64 : StackLang.HolProg 64 :=
.seq rawBody407_62 rawBody407_63

def rawBody407_65 : StackLang.HolProg 64 :=
.seq rawBody407_61 rawBody407_64

def rawBody407_66 : StackLang.HolProg 64 :=
.seq rawBody407_60 rawBody407_65

def rawBody407_67 : StackLang.HolProg 64 :=
.seq rawBody407_59 rawBody407_66

def rawBody407_68 : StackLang.HolProg 64 :=
.seq rawBody407_58 rawBody407_67

def rawBody407_69 : StackLang.HolProg 64 :=
.seq rawBody407_57 rawBody407_68

def rawBody407_70 : StackLang.HolProg 64 :=
.seq rawBody407_56 rawBody407_69

def rawBody407_71 : StackLang.HolProg 64 :=
.seq rawBody407_55 rawBody407_70

def rawBody407_72 : StackLang.HolProg 64 :=
.seq rawBody407_54 rawBody407_71

def rawBody407_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody407_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody407_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody407_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody407_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody407_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody407_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody407_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody407_81 : StackLang.HolProg 64 :=
.seq rawBody407_79 rawBody407_80

def rawBody407_82 : StackLang.HolProg 64 :=
.seq rawBody407_78 rawBody407_81

def rawBody407_83 : StackLang.HolProg 64 :=
.seq rawBody407_77 rawBody407_82

def rawBody407_84 : StackLang.HolProg 64 :=
.seq rawBody407_76 rawBody407_83

def rawBody407_85 : StackLang.HolProg 64 :=
.seq rawBody407_75 rawBody407_84

def rawBody407_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody407_87 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody407_88 : StackLang.HolProg 64 :=
.seq rawBody407_86 rawBody407_87

def rawBody407_89 : StackLang.HolProg 64 :=
.call (some (rawBody407_85, 0, 407, 4)) (Sum.inl 394) (some (rawBody407_88, 407, 5))

def rawBody407_90 : StackLang.HolProg 64 :=
.seq rawBody407_74 rawBody407_89

def rawBody407_91 : StackLang.HolProg 64 :=
.seq rawBody407_73 rawBody407_90

def rawBody407_92 : StackLang.HolProg 64 :=
.seq rawBody407_72 rawBody407_91

def rawBody407_93 : StackLang.HolProg 64 :=
.seq rawBody407_53 rawBody407_92

def rawBody407_94 : StackLang.HolProg 64 :=
.seq rawBody407_50 rawBody407_93

def rawBody407_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody407_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody407_97 : StackLang.HolProg 64 :=
.seq rawBody407_95 rawBody407_96

def rawBody407_98 : StackLang.HolProg 64 :=
.seq rawBody407_94 rawBody407_97

def rawBody407_99 : StackLang.HolProg 64 :=
.seq rawBody407_49 rawBody407_98

def rawBody407_100 : StackLang.HolProg 64 :=
.seq rawBody407_48 rawBody407_99

def rawBody407_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody407_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody407_103 : StackLang.HolProg 64 :=
.seq rawBody407_101 rawBody407_102

def rawBody407_104 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody407_100 rawBody407_103

def rawBody407_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody407_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody407_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody407_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody407_109 : StackLang.HolProg 64 :=
.seq rawBody407_107 rawBody407_108

def rawBody407_110 : StackLang.HolProg 64 :=
.seq rawBody407_106 rawBody407_109

def rawBody407_111 : StackLang.HolProg 64 :=
.seq rawBody407_105 rawBody407_110

def rawBody407_112 : StackLang.HolProg 64 :=
.seq rawBody407_104 rawBody407_111

def rawBody407_113 : StackLang.HolProg 64 :=
.seq rawBody407_47 rawBody407_112

def rawBody407_114 : StackLang.HolProg 64 :=
.seq rawBody407_46 rawBody407_113

def rawBody407_115 : StackLang.HolProg 64 :=
.seq rawBody407_45 rawBody407_114

def rawBody407_116 : StackLang.HolProg 64 :=
.seq rawBody407_44 rawBody407_115

def rawBody407_117 : StackLang.HolProg 64 :=
.seq rawBody407_1 rawBody407_116

def rawBody407_118 : StackLang.HolProg 64 :=
.seq rawBody407_0 rawBody407_117

def raw407 : StackLang.HolProg 64 := rawBody407_118
theorem raw407_eq : StackRawCall.compTop RawInfo.rawInfo (function407 (.list [])).1 = raw407 := by
  kernel_rfl
#print axioms raw407_eq
end InitECandidate.Proofs.BackendStages
