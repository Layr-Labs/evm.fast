import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function859
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody859_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody859_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody859_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 200#64)

def rawBody859_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody859_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody859_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4364#64)

def rawBody859_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody859_7 : StackLang.HolProg 64 :=
.seq rawBody859_5 rawBody859_6

def rawBody859_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody859_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody859_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody859_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 859 3

def rawBody859_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody859_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody859_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody859_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody859_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody859_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody859_18 : StackLang.HolProg 64 :=
.seq rawBody859_16 rawBody859_17

def rawBody859_19 : StackLang.HolProg 64 :=
.seq rawBody859_15 rawBody859_18

def rawBody859_20 : StackLang.HolProg 64 :=
.seq rawBody859_14 rawBody859_19

def rawBody859_21 : StackLang.HolProg 64 :=
.seq rawBody859_13 rawBody859_20

def rawBody859_22 : StackLang.HolProg 64 :=
.seq rawBody859_12 rawBody859_21

def rawBody859_23 : StackLang.HolProg 64 :=
.seq rawBody859_11 rawBody859_22

def rawBody859_24 : StackLang.HolProg 64 :=
.seq rawBody859_10 rawBody859_23

def rawBody859_25 : StackLang.HolProg 64 :=
.seq rawBody859_9 rawBody859_24

def rawBody859_26 : StackLang.HolProg 64 :=
.seq rawBody859_8 rawBody859_25

def rawBody859_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody859_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody859_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody859_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody859_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody859_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody859_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody859_34 : StackLang.HolProg 64 :=
.seq rawBody859_32 rawBody859_33

def rawBody859_35 : StackLang.HolProg 64 :=
.seq rawBody859_31 rawBody859_34

def rawBody859_36 : StackLang.HolProg 64 :=
.seq rawBody859_30 rawBody859_35

def rawBody859_37 : StackLang.HolProg 64 :=
.seq rawBody859_29 rawBody859_36

def rawBody859_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody859_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody859_40 : StackLang.HolProg 64 :=
.seq rawBody859_38 rawBody859_39

def rawBody859_41 : StackLang.HolProg 64 :=
.call (some (rawBody859_37, 0, 859, 2)) (Sum.inl 68) (some (rawBody859_40, 859, 3))

def rawBody859_42 : StackLang.HolProg 64 :=
.seq rawBody859_28 rawBody859_41

def rawBody859_43 : StackLang.HolProg 64 :=
.seq rawBody859_27 rawBody859_42

def rawBody859_44 : StackLang.HolProg 64 :=
.seq rawBody859_26 rawBody859_43

def rawBody859_45 : StackLang.HolProg 64 :=
.seq rawBody859_7 rawBody859_44

def rawBody859_46 : StackLang.HolProg 64 :=
.seq rawBody859_4 rawBody859_45

def rawBody859_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody859_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody859_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 200#64)

def rawBody859_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody859_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody859_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4365#64)

def rawBody859_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody859_54 : StackLang.HolProg 64 :=
.seq rawBody859_52 rawBody859_53

def rawBody859_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody859_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody859_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody859_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 859 5

def rawBody859_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody859_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody859_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody859_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody859_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody859_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody859_65 : StackLang.HolProg 64 :=
.seq rawBody859_63 rawBody859_64

def rawBody859_66 : StackLang.HolProg 64 :=
.seq rawBody859_62 rawBody859_65

def rawBody859_67 : StackLang.HolProg 64 :=
.seq rawBody859_61 rawBody859_66

def rawBody859_68 : StackLang.HolProg 64 :=
.seq rawBody859_60 rawBody859_67

def rawBody859_69 : StackLang.HolProg 64 :=
.seq rawBody859_59 rawBody859_68

def rawBody859_70 : StackLang.HolProg 64 :=
.seq rawBody859_58 rawBody859_69

def rawBody859_71 : StackLang.HolProg 64 :=
.seq rawBody859_57 rawBody859_70

def rawBody859_72 : StackLang.HolProg 64 :=
.seq rawBody859_56 rawBody859_71

def rawBody859_73 : StackLang.HolProg 64 :=
.seq rawBody859_55 rawBody859_72

def rawBody859_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody859_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody859_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody859_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody859_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody859_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody859_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody859_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody859_82 : StackLang.HolProg 64 :=
.seq rawBody859_80 rawBody859_81

def rawBody859_83 : StackLang.HolProg 64 :=
.seq rawBody859_79 rawBody859_82

def rawBody859_84 : StackLang.HolProg 64 :=
.seq rawBody859_78 rawBody859_83

def rawBody859_85 : StackLang.HolProg 64 :=
.seq rawBody859_77 rawBody859_84

def rawBody859_86 : StackLang.HolProg 64 :=
.seq rawBody859_76 rawBody859_85

def rawBody859_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody859_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody859_89 : StackLang.HolProg 64 :=
.seq rawBody859_87 rawBody859_88

def rawBody859_90 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody859_91 : StackLang.HolProg 64 :=
.seq rawBody859_89 rawBody859_90

def rawBody859_92 : StackLang.HolProg 64 :=
.call (some (rawBody859_86, 0, 859, 4)) (Sum.inl 78) (some (rawBody859_91, 859, 5))

def rawBody859_93 : StackLang.HolProg 64 :=
.seq rawBody859_75 rawBody859_92

def rawBody859_94 : StackLang.HolProg 64 :=
.seq rawBody859_74 rawBody859_93

def rawBody859_95 : StackLang.HolProg 64 :=
.seq rawBody859_73 rawBody859_94

def rawBody859_96 : StackLang.HolProg 64 :=
.seq rawBody859_54 rawBody859_95

def rawBody859_97 : StackLang.HolProg 64 :=
.seq rawBody859_51 rawBody859_96

def rawBody859_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody859_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody859_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody859_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody859_102 : StackLang.HolProg 64 :=
.seq rawBody859_100 rawBody859_101

def rawBody859_103 : StackLang.HolProg 64 :=
.seq rawBody859_99 rawBody859_102

def rawBody859_104 : StackLang.HolProg 64 :=
.seq rawBody859_98 rawBody859_103

def rawBody859_105 : StackLang.HolProg 64 :=
.seq rawBody859_97 rawBody859_104

def rawBody859_106 : StackLang.HolProg 64 :=
.seq rawBody859_50 rawBody859_105

def rawBody859_107 : StackLang.HolProg 64 :=
.seq rawBody859_49 rawBody859_106

def rawBody859_108 : StackLang.HolProg 64 :=
.seq rawBody859_48 rawBody859_107

def rawBody859_109 : StackLang.HolProg 64 :=
.seq rawBody859_47 rawBody859_108

def rawBody859_110 : StackLang.HolProg 64 :=
.seq rawBody859_46 rawBody859_109

def rawBody859_111 : StackLang.HolProg 64 :=
.seq rawBody859_3 rawBody859_110

def rawBody859_112 : StackLang.HolProg 64 :=
.seq rawBody859_2 rawBody859_111

def rawBody859_113 : StackLang.HolProg 64 :=
.seq rawBody859_1 rawBody859_112

def rawBody859_114 : StackLang.HolProg 64 :=
.seq rawBody859_0 rawBody859_113

def raw859 : StackLang.HolProg 64 := rawBody859_114
theorem raw859_eq : StackRawCall.compTop RawInfo.rawInfo (function859 (.list [])).1 = raw859 := by
  kernel_rfl
#print axioms raw859_eq
end InitECandidate.Proofs.BackendStages
