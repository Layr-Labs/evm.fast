import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function422
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody422_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody422_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody422_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody422_3 : StackLang.HolProg 64 :=
.seq rawBody422_1 rawBody422_2

def rawBody422_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody422_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1259#64)

def rawBody422_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody422_7 : StackLang.HolProg 64 :=
.seq rawBody422_5 rawBody422_6

def rawBody422_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody422_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody422_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody422_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 422 3

def rawBody422_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody422_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody422_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody422_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody422_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody422_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody422_18 : StackLang.HolProg 64 :=
.seq rawBody422_16 rawBody422_17

def rawBody422_19 : StackLang.HolProg 64 :=
.seq rawBody422_15 rawBody422_18

def rawBody422_20 : StackLang.HolProg 64 :=
.seq rawBody422_14 rawBody422_19

def rawBody422_21 : StackLang.HolProg 64 :=
.seq rawBody422_13 rawBody422_20

def rawBody422_22 : StackLang.HolProg 64 :=
.seq rawBody422_12 rawBody422_21

def rawBody422_23 : StackLang.HolProg 64 :=
.seq rawBody422_11 rawBody422_22

def rawBody422_24 : StackLang.HolProg 64 :=
.seq rawBody422_10 rawBody422_23

def rawBody422_25 : StackLang.HolProg 64 :=
.seq rawBody422_9 rawBody422_24

def rawBody422_26 : StackLang.HolProg 64 :=
.seq rawBody422_8 rawBody422_25

def rawBody422_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody422_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody422_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody422_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody422_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody422_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody422_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody422_34 : StackLang.HolProg 64 :=
.seq rawBody422_32 rawBody422_33

def rawBody422_35 : StackLang.HolProg 64 :=
.seq rawBody422_31 rawBody422_34

def rawBody422_36 : StackLang.HolProg 64 :=
.seq rawBody422_30 rawBody422_35

def rawBody422_37 : StackLang.HolProg 64 :=
.seq rawBody422_29 rawBody422_36

def rawBody422_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody422_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody422_40 : StackLang.HolProg 64 :=
.seq rawBody422_38 rawBody422_39

def rawBody422_41 : StackLang.HolProg 64 :=
.call (some (rawBody422_37, 0, 422, 2)) (Sum.inl 421) (some (rawBody422_40, 422, 3))

def rawBody422_42 : StackLang.HolProg 64 :=
.seq rawBody422_28 rawBody422_41

def rawBody422_43 : StackLang.HolProg 64 :=
.seq rawBody422_27 rawBody422_42

def rawBody422_44 : StackLang.HolProg 64 :=
.seq rawBody422_26 rawBody422_43

def rawBody422_45 : StackLang.HolProg 64 :=
.seq rawBody422_7 rawBody422_44

def rawBody422_46 : StackLang.HolProg 64 :=
.seq rawBody422_4 rawBody422_45

def rawBody422_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody422_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody422_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def rawBody422_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody422_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody422_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1260#64)

def rawBody422_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody422_54 : StackLang.HolProg 64 :=
.seq rawBody422_52 rawBody422_53

def rawBody422_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody422_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody422_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody422_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 422 5

def rawBody422_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody422_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody422_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody422_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody422_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody422_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody422_65 : StackLang.HolProg 64 :=
.seq rawBody422_63 rawBody422_64

def rawBody422_66 : StackLang.HolProg 64 :=
.seq rawBody422_62 rawBody422_65

def rawBody422_67 : StackLang.HolProg 64 :=
.seq rawBody422_61 rawBody422_66

def rawBody422_68 : StackLang.HolProg 64 :=
.seq rawBody422_60 rawBody422_67

def rawBody422_69 : StackLang.HolProg 64 :=
.seq rawBody422_59 rawBody422_68

def rawBody422_70 : StackLang.HolProg 64 :=
.seq rawBody422_58 rawBody422_69

def rawBody422_71 : StackLang.HolProg 64 :=
.seq rawBody422_57 rawBody422_70

def rawBody422_72 : StackLang.HolProg 64 :=
.seq rawBody422_56 rawBody422_71

def rawBody422_73 : StackLang.HolProg 64 :=
.seq rawBody422_55 rawBody422_72

def rawBody422_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody422_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody422_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody422_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody422_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody422_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody422_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody422_81 : StackLang.HolProg 64 :=
.seq rawBody422_79 rawBody422_80

def rawBody422_82 : StackLang.HolProg 64 :=
.seq rawBody422_78 rawBody422_81

def rawBody422_83 : StackLang.HolProg 64 :=
.seq rawBody422_77 rawBody422_82

def rawBody422_84 : StackLang.HolProg 64 :=
.seq rawBody422_76 rawBody422_83

def rawBody422_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody422_86 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody422_87 : StackLang.HolProg 64 :=
.seq rawBody422_85 rawBody422_86

def rawBody422_88 : StackLang.HolProg 64 :=
.call (some (rawBody422_84, 0, 422, 4)) (Sum.inl 419) (some (rawBody422_87, 422, 5))

def rawBody422_89 : StackLang.HolProg 64 :=
.seq rawBody422_75 rawBody422_88

def rawBody422_90 : StackLang.HolProg 64 :=
.seq rawBody422_74 rawBody422_89

def rawBody422_91 : StackLang.HolProg 64 :=
.seq rawBody422_73 rawBody422_90

def rawBody422_92 : StackLang.HolProg 64 :=
.seq rawBody422_54 rawBody422_91

def rawBody422_93 : StackLang.HolProg 64 :=
.seq rawBody422_51 rawBody422_92

def rawBody422_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody422_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody422_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody422_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody422_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody422_99 : StackLang.HolProg 64 :=
.seq rawBody422_97 rawBody422_98

def rawBody422_100 : StackLang.HolProg 64 :=
.seq rawBody422_96 rawBody422_99

def rawBody422_101 : StackLang.HolProg 64 :=
.seq rawBody422_95 rawBody422_100

def rawBody422_102 : StackLang.HolProg 64 :=
.seq rawBody422_94 rawBody422_101

def rawBody422_103 : StackLang.HolProg 64 :=
.seq rawBody422_93 rawBody422_102

def rawBody422_104 : StackLang.HolProg 64 :=
.seq rawBody422_50 rawBody422_103

def rawBody422_105 : StackLang.HolProg 64 :=
.seq rawBody422_49 rawBody422_104

def rawBody422_106 : StackLang.HolProg 64 :=
.seq rawBody422_48 rawBody422_105

def rawBody422_107 : StackLang.HolProg 64 :=
.seq rawBody422_47 rawBody422_106

def rawBody422_108 : StackLang.HolProg 64 :=
.seq rawBody422_46 rawBody422_107

def rawBody422_109 : StackLang.HolProg 64 :=
.seq rawBody422_3 rawBody422_108

def rawBody422_110 : StackLang.HolProg 64 :=
.seq rawBody422_0 rawBody422_109

def raw422 : StackLang.HolProg 64 := rawBody422_110
theorem raw422_eq : StackRawCall.compTop RawInfo.rawInfo (function422 (.list [])).1 = raw422 := by
  kernel_rfl
#print axioms raw422_eq
end InitECandidate.Proofs.BackendStages
