import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function488
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody488_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody488_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody488_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 176#64)

def rawBody488_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody488_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody488_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1527#64)

def rawBody488_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody488_7 : StackLang.HolProg 64 :=
.seq rawBody488_5 rawBody488_6

def rawBody488_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody488_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody488_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody488_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 488 3

def rawBody488_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody488_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody488_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody488_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody488_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody488_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody488_18 : StackLang.HolProg 64 :=
.seq rawBody488_16 rawBody488_17

def rawBody488_19 : StackLang.HolProg 64 :=
.seq rawBody488_15 rawBody488_18

def rawBody488_20 : StackLang.HolProg 64 :=
.seq rawBody488_14 rawBody488_19

def rawBody488_21 : StackLang.HolProg 64 :=
.seq rawBody488_13 rawBody488_20

def rawBody488_22 : StackLang.HolProg 64 :=
.seq rawBody488_12 rawBody488_21

def rawBody488_23 : StackLang.HolProg 64 :=
.seq rawBody488_11 rawBody488_22

def rawBody488_24 : StackLang.HolProg 64 :=
.seq rawBody488_10 rawBody488_23

def rawBody488_25 : StackLang.HolProg 64 :=
.seq rawBody488_9 rawBody488_24

def rawBody488_26 : StackLang.HolProg 64 :=
.seq rawBody488_8 rawBody488_25

def rawBody488_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody488_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody488_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody488_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody488_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody488_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody488_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody488_34 : StackLang.HolProg 64 :=
.seq rawBody488_32 rawBody488_33

def rawBody488_35 : StackLang.HolProg 64 :=
.seq rawBody488_31 rawBody488_34

def rawBody488_36 : StackLang.HolProg 64 :=
.seq rawBody488_30 rawBody488_35

def rawBody488_37 : StackLang.HolProg 64 :=
.seq rawBody488_29 rawBody488_36

def rawBody488_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody488_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody488_40 : StackLang.HolProg 64 :=
.seq rawBody488_38 rawBody488_39

def rawBody488_41 : StackLang.HolProg 64 :=
.call (some (rawBody488_37, 0, 488, 2)) (Sum.inl 74) (some (rawBody488_40, 488, 3))

def rawBody488_42 : StackLang.HolProg 64 :=
.seq rawBody488_28 rawBody488_41

def rawBody488_43 : StackLang.HolProg 64 :=
.seq rawBody488_27 rawBody488_42

def rawBody488_44 : StackLang.HolProg 64 :=
.seq rawBody488_26 rawBody488_43

def rawBody488_45 : StackLang.HolProg 64 :=
.seq rawBody488_7 rawBody488_44

def rawBody488_46 : StackLang.HolProg 64 :=
.seq rawBody488_4 rawBody488_45

def rawBody488_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody488_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody488_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 176#64)

def rawBody488_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody488_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody488_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1528#64)

def rawBody488_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody488_54 : StackLang.HolProg 64 :=
.seq rawBody488_52 rawBody488_53

def rawBody488_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody488_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody488_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody488_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 488 5

def rawBody488_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody488_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody488_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody488_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody488_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody488_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody488_65 : StackLang.HolProg 64 :=
.seq rawBody488_63 rawBody488_64

def rawBody488_66 : StackLang.HolProg 64 :=
.seq rawBody488_62 rawBody488_65

def rawBody488_67 : StackLang.HolProg 64 :=
.seq rawBody488_61 rawBody488_66

def rawBody488_68 : StackLang.HolProg 64 :=
.seq rawBody488_60 rawBody488_67

def rawBody488_69 : StackLang.HolProg 64 :=
.seq rawBody488_59 rawBody488_68

def rawBody488_70 : StackLang.HolProg 64 :=
.seq rawBody488_58 rawBody488_69

def rawBody488_71 : StackLang.HolProg 64 :=
.seq rawBody488_57 rawBody488_70

def rawBody488_72 : StackLang.HolProg 64 :=
.seq rawBody488_56 rawBody488_71

def rawBody488_73 : StackLang.HolProg 64 :=
.seq rawBody488_55 rawBody488_72

def rawBody488_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody488_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody488_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody488_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody488_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody488_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody488_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody488_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody488_82 : StackLang.HolProg 64 :=
.seq rawBody488_80 rawBody488_81

def rawBody488_83 : StackLang.HolProg 64 :=
.seq rawBody488_79 rawBody488_82

def rawBody488_84 : StackLang.HolProg 64 :=
.seq rawBody488_78 rawBody488_83

def rawBody488_85 : StackLang.HolProg 64 :=
.seq rawBody488_77 rawBody488_84

def rawBody488_86 : StackLang.HolProg 64 :=
.seq rawBody488_76 rawBody488_85

def rawBody488_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody488_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody488_89 : StackLang.HolProg 64 :=
.seq rawBody488_87 rawBody488_88

def rawBody488_90 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody488_91 : StackLang.HolProg 64 :=
.seq rawBody488_89 rawBody488_90

def rawBody488_92 : StackLang.HolProg 64 :=
.call (some (rawBody488_86, 0, 488, 4)) (Sum.inl 78) (some (rawBody488_91, 488, 5))

def rawBody488_93 : StackLang.HolProg 64 :=
.seq rawBody488_75 rawBody488_92

def rawBody488_94 : StackLang.HolProg 64 :=
.seq rawBody488_74 rawBody488_93

def rawBody488_95 : StackLang.HolProg 64 :=
.seq rawBody488_73 rawBody488_94

def rawBody488_96 : StackLang.HolProg 64 :=
.seq rawBody488_54 rawBody488_95

def rawBody488_97 : StackLang.HolProg 64 :=
.seq rawBody488_51 rawBody488_96

def rawBody488_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody488_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody488_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody488_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody488_102 : StackLang.HolProg 64 :=
.seq rawBody488_100 rawBody488_101

def rawBody488_103 : StackLang.HolProg 64 :=
.seq rawBody488_99 rawBody488_102

def rawBody488_104 : StackLang.HolProg 64 :=
.seq rawBody488_98 rawBody488_103

def rawBody488_105 : StackLang.HolProg 64 :=
.seq rawBody488_97 rawBody488_104

def rawBody488_106 : StackLang.HolProg 64 :=
.seq rawBody488_50 rawBody488_105

def rawBody488_107 : StackLang.HolProg 64 :=
.seq rawBody488_49 rawBody488_106

def rawBody488_108 : StackLang.HolProg 64 :=
.seq rawBody488_48 rawBody488_107

def rawBody488_109 : StackLang.HolProg 64 :=
.seq rawBody488_47 rawBody488_108

def rawBody488_110 : StackLang.HolProg 64 :=
.seq rawBody488_46 rawBody488_109

def rawBody488_111 : StackLang.HolProg 64 :=
.seq rawBody488_3 rawBody488_110

def rawBody488_112 : StackLang.HolProg 64 :=
.seq rawBody488_2 rawBody488_111

def rawBody488_113 : StackLang.HolProg 64 :=
.seq rawBody488_1 rawBody488_112

def rawBody488_114 : StackLang.HolProg 64 :=
.seq rawBody488_0 rawBody488_113

def raw488 : StackLang.HolProg 64 := rawBody488_114
theorem raw488_eq : StackRawCall.compTop RawInfo.rawInfo (function488 (.list [])).1 = raw488 := by
  kernel_rfl
#print axioms raw488_eq
end InitECandidate.Proofs.BackendStages
