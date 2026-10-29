import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function487
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody487_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody487_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody487_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 176#64)

def rawBody487_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody487_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody487_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1525#64)

def rawBody487_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody487_7 : StackLang.HolProg 64 :=
.seq rawBody487_5 rawBody487_6

def rawBody487_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody487_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody487_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody487_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 487 3

def rawBody487_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody487_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody487_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody487_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody487_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody487_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody487_18 : StackLang.HolProg 64 :=
.seq rawBody487_16 rawBody487_17

def rawBody487_19 : StackLang.HolProg 64 :=
.seq rawBody487_15 rawBody487_18

def rawBody487_20 : StackLang.HolProg 64 :=
.seq rawBody487_14 rawBody487_19

def rawBody487_21 : StackLang.HolProg 64 :=
.seq rawBody487_13 rawBody487_20

def rawBody487_22 : StackLang.HolProg 64 :=
.seq rawBody487_12 rawBody487_21

def rawBody487_23 : StackLang.HolProg 64 :=
.seq rawBody487_11 rawBody487_22

def rawBody487_24 : StackLang.HolProg 64 :=
.seq rawBody487_10 rawBody487_23

def rawBody487_25 : StackLang.HolProg 64 :=
.seq rawBody487_9 rawBody487_24

def rawBody487_26 : StackLang.HolProg 64 :=
.seq rawBody487_8 rawBody487_25

def rawBody487_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody487_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody487_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody487_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody487_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody487_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody487_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody487_34 : StackLang.HolProg 64 :=
.seq rawBody487_32 rawBody487_33

def rawBody487_35 : StackLang.HolProg 64 :=
.seq rawBody487_31 rawBody487_34

def rawBody487_36 : StackLang.HolProg 64 :=
.seq rawBody487_30 rawBody487_35

def rawBody487_37 : StackLang.HolProg 64 :=
.seq rawBody487_29 rawBody487_36

def rawBody487_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody487_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody487_40 : StackLang.HolProg 64 :=
.seq rawBody487_38 rawBody487_39

def rawBody487_41 : StackLang.HolProg 64 :=
.call (some (rawBody487_37, 0, 487, 2)) (Sum.inl 68) (some (rawBody487_40, 487, 3))

def rawBody487_42 : StackLang.HolProg 64 :=
.seq rawBody487_28 rawBody487_41

def rawBody487_43 : StackLang.HolProg 64 :=
.seq rawBody487_27 rawBody487_42

def rawBody487_44 : StackLang.HolProg 64 :=
.seq rawBody487_26 rawBody487_43

def rawBody487_45 : StackLang.HolProg 64 :=
.seq rawBody487_7 rawBody487_44

def rawBody487_46 : StackLang.HolProg 64 :=
.seq rawBody487_4 rawBody487_45

def rawBody487_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody487_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody487_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 176#64)

def rawBody487_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody487_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody487_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1526#64)

def rawBody487_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody487_54 : StackLang.HolProg 64 :=
.seq rawBody487_52 rawBody487_53

def rawBody487_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody487_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody487_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody487_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 487 5

def rawBody487_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody487_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody487_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody487_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody487_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody487_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody487_65 : StackLang.HolProg 64 :=
.seq rawBody487_63 rawBody487_64

def rawBody487_66 : StackLang.HolProg 64 :=
.seq rawBody487_62 rawBody487_65

def rawBody487_67 : StackLang.HolProg 64 :=
.seq rawBody487_61 rawBody487_66

def rawBody487_68 : StackLang.HolProg 64 :=
.seq rawBody487_60 rawBody487_67

def rawBody487_69 : StackLang.HolProg 64 :=
.seq rawBody487_59 rawBody487_68

def rawBody487_70 : StackLang.HolProg 64 :=
.seq rawBody487_58 rawBody487_69

def rawBody487_71 : StackLang.HolProg 64 :=
.seq rawBody487_57 rawBody487_70

def rawBody487_72 : StackLang.HolProg 64 :=
.seq rawBody487_56 rawBody487_71

def rawBody487_73 : StackLang.HolProg 64 :=
.seq rawBody487_55 rawBody487_72

def rawBody487_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody487_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody487_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody487_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody487_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody487_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody487_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody487_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody487_82 : StackLang.HolProg 64 :=
.seq rawBody487_80 rawBody487_81

def rawBody487_83 : StackLang.HolProg 64 :=
.seq rawBody487_79 rawBody487_82

def rawBody487_84 : StackLang.HolProg 64 :=
.seq rawBody487_78 rawBody487_83

def rawBody487_85 : StackLang.HolProg 64 :=
.seq rawBody487_77 rawBody487_84

def rawBody487_86 : StackLang.HolProg 64 :=
.seq rawBody487_76 rawBody487_85

def rawBody487_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody487_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody487_89 : StackLang.HolProg 64 :=
.seq rawBody487_87 rawBody487_88

def rawBody487_90 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody487_91 : StackLang.HolProg 64 :=
.seq rawBody487_89 rawBody487_90

def rawBody487_92 : StackLang.HolProg 64 :=
.call (some (rawBody487_86, 0, 487, 4)) (Sum.inl 78) (some (rawBody487_91, 487, 5))

def rawBody487_93 : StackLang.HolProg 64 :=
.seq rawBody487_75 rawBody487_92

def rawBody487_94 : StackLang.HolProg 64 :=
.seq rawBody487_74 rawBody487_93

def rawBody487_95 : StackLang.HolProg 64 :=
.seq rawBody487_73 rawBody487_94

def rawBody487_96 : StackLang.HolProg 64 :=
.seq rawBody487_54 rawBody487_95

def rawBody487_97 : StackLang.HolProg 64 :=
.seq rawBody487_51 rawBody487_96

def rawBody487_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody487_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody487_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody487_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody487_102 : StackLang.HolProg 64 :=
.seq rawBody487_100 rawBody487_101

def rawBody487_103 : StackLang.HolProg 64 :=
.seq rawBody487_99 rawBody487_102

def rawBody487_104 : StackLang.HolProg 64 :=
.seq rawBody487_98 rawBody487_103

def rawBody487_105 : StackLang.HolProg 64 :=
.seq rawBody487_97 rawBody487_104

def rawBody487_106 : StackLang.HolProg 64 :=
.seq rawBody487_50 rawBody487_105

def rawBody487_107 : StackLang.HolProg 64 :=
.seq rawBody487_49 rawBody487_106

def rawBody487_108 : StackLang.HolProg 64 :=
.seq rawBody487_48 rawBody487_107

def rawBody487_109 : StackLang.HolProg 64 :=
.seq rawBody487_47 rawBody487_108

def rawBody487_110 : StackLang.HolProg 64 :=
.seq rawBody487_46 rawBody487_109

def rawBody487_111 : StackLang.HolProg 64 :=
.seq rawBody487_3 rawBody487_110

def rawBody487_112 : StackLang.HolProg 64 :=
.seq rawBody487_2 rawBody487_111

def rawBody487_113 : StackLang.HolProg 64 :=
.seq rawBody487_1 rawBody487_112

def rawBody487_114 : StackLang.HolProg 64 :=
.seq rawBody487_0 rawBody487_113

def raw487 : StackLang.HolProg 64 := rawBody487_114
theorem raw487_eq : StackRawCall.compTop RawInfo.rawInfo (function487 (.list [])).1 = raw487 := by
  kernel_rfl
#print axioms raw487_eq
end InitECandidate.Proofs.BackendStages
