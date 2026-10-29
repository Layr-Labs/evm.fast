import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function756
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody756_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody756_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody756_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody756_3 : StackLang.HolProg 64 :=
.seq rawBody756_1 rawBody756_2

def rawBody756_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody756_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3372#64)

def rawBody756_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody756_7 : StackLang.HolProg 64 :=
.seq rawBody756_5 rawBody756_6

def rawBody756_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody756_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody756_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody756_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 756 3

def rawBody756_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody756_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody756_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody756_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody756_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody756_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody756_18 : StackLang.HolProg 64 :=
.seq rawBody756_16 rawBody756_17

def rawBody756_19 : StackLang.HolProg 64 :=
.seq rawBody756_15 rawBody756_18

def rawBody756_20 : StackLang.HolProg 64 :=
.seq rawBody756_14 rawBody756_19

def rawBody756_21 : StackLang.HolProg 64 :=
.seq rawBody756_13 rawBody756_20

def rawBody756_22 : StackLang.HolProg 64 :=
.seq rawBody756_12 rawBody756_21

def rawBody756_23 : StackLang.HolProg 64 :=
.seq rawBody756_11 rawBody756_22

def rawBody756_24 : StackLang.HolProg 64 :=
.seq rawBody756_10 rawBody756_23

def rawBody756_25 : StackLang.HolProg 64 :=
.seq rawBody756_9 rawBody756_24

def rawBody756_26 : StackLang.HolProg 64 :=
.seq rawBody756_8 rawBody756_25

def rawBody756_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody756_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody756_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody756_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody756_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody756_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody756_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody756_34 : StackLang.HolProg 64 :=
.seq rawBody756_32 rawBody756_33

def rawBody756_35 : StackLang.HolProg 64 :=
.seq rawBody756_31 rawBody756_34

def rawBody756_36 : StackLang.HolProg 64 :=
.seq rawBody756_30 rawBody756_35

def rawBody756_37 : StackLang.HolProg 64 :=
.seq rawBody756_29 rawBody756_36

def rawBody756_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody756_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody756_40 : StackLang.HolProg 64 :=
.seq rawBody756_38 rawBody756_39

def rawBody756_41 : StackLang.HolProg 64 :=
.call (some (rawBody756_37, 0, 756, 2)) (Sum.inl 748) (some (rawBody756_40, 756, 3))

def rawBody756_42 : StackLang.HolProg 64 :=
.seq rawBody756_28 rawBody756_41

def rawBody756_43 : StackLang.HolProg 64 :=
.seq rawBody756_27 rawBody756_42

def rawBody756_44 : StackLang.HolProg 64 :=
.seq rawBody756_26 rawBody756_43

def rawBody756_45 : StackLang.HolProg 64 :=
.seq rawBody756_7 rawBody756_44

def rawBody756_46 : StackLang.HolProg 64 :=
.seq rawBody756_4 rawBody756_45

def rawBody756_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody756_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody756_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def rawBody756_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody756_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody756_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3373#64)

def rawBody756_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody756_54 : StackLang.HolProg 64 :=
.seq rawBody756_52 rawBody756_53

def rawBody756_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody756_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody756_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody756_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 756 5

def rawBody756_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody756_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody756_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody756_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody756_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody756_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody756_65 : StackLang.HolProg 64 :=
.seq rawBody756_63 rawBody756_64

def rawBody756_66 : StackLang.HolProg 64 :=
.seq rawBody756_62 rawBody756_65

def rawBody756_67 : StackLang.HolProg 64 :=
.seq rawBody756_61 rawBody756_66

def rawBody756_68 : StackLang.HolProg 64 :=
.seq rawBody756_60 rawBody756_67

def rawBody756_69 : StackLang.HolProg 64 :=
.seq rawBody756_59 rawBody756_68

def rawBody756_70 : StackLang.HolProg 64 :=
.seq rawBody756_58 rawBody756_69

def rawBody756_71 : StackLang.HolProg 64 :=
.seq rawBody756_57 rawBody756_70

def rawBody756_72 : StackLang.HolProg 64 :=
.seq rawBody756_56 rawBody756_71

def rawBody756_73 : StackLang.HolProg 64 :=
.seq rawBody756_55 rawBody756_72

def rawBody756_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody756_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody756_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody756_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody756_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody756_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody756_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody756_81 : StackLang.HolProg 64 :=
.seq rawBody756_79 rawBody756_80

def rawBody756_82 : StackLang.HolProg 64 :=
.seq rawBody756_78 rawBody756_81

def rawBody756_83 : StackLang.HolProg 64 :=
.seq rawBody756_77 rawBody756_82

def rawBody756_84 : StackLang.HolProg 64 :=
.seq rawBody756_76 rawBody756_83

def rawBody756_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody756_86 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody756_87 : StackLang.HolProg 64 :=
.seq rawBody756_85 rawBody756_86

def rawBody756_88 : StackLang.HolProg 64 :=
.call (some (rawBody756_84, 0, 756, 4)) (Sum.inl 747) (some (rawBody756_87, 756, 5))

def rawBody756_89 : StackLang.HolProg 64 :=
.seq rawBody756_75 rawBody756_88

def rawBody756_90 : StackLang.HolProg 64 :=
.seq rawBody756_74 rawBody756_89

def rawBody756_91 : StackLang.HolProg 64 :=
.seq rawBody756_73 rawBody756_90

def rawBody756_92 : StackLang.HolProg 64 :=
.seq rawBody756_54 rawBody756_91

def rawBody756_93 : StackLang.HolProg 64 :=
.seq rawBody756_51 rawBody756_92

def rawBody756_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody756_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody756_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody756_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody756_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody756_99 : StackLang.HolProg 64 :=
.seq rawBody756_97 rawBody756_98

def rawBody756_100 : StackLang.HolProg 64 :=
.seq rawBody756_96 rawBody756_99

def rawBody756_101 : StackLang.HolProg 64 :=
.seq rawBody756_95 rawBody756_100

def rawBody756_102 : StackLang.HolProg 64 :=
.seq rawBody756_94 rawBody756_101

def rawBody756_103 : StackLang.HolProg 64 :=
.seq rawBody756_93 rawBody756_102

def rawBody756_104 : StackLang.HolProg 64 :=
.seq rawBody756_50 rawBody756_103

def rawBody756_105 : StackLang.HolProg 64 :=
.seq rawBody756_49 rawBody756_104

def rawBody756_106 : StackLang.HolProg 64 :=
.seq rawBody756_48 rawBody756_105

def rawBody756_107 : StackLang.HolProg 64 :=
.seq rawBody756_47 rawBody756_106

def rawBody756_108 : StackLang.HolProg 64 :=
.seq rawBody756_46 rawBody756_107

def rawBody756_109 : StackLang.HolProg 64 :=
.seq rawBody756_3 rawBody756_108

def rawBody756_110 : StackLang.HolProg 64 :=
.seq rawBody756_0 rawBody756_109

def raw756 : StackLang.HolProg 64 := rawBody756_110
theorem raw756_eq : StackRawCall.compTop RawInfo.rawInfo (function756 (.list [])).1 = raw756 := by
  kernel_rfl
#print axioms raw756_eq
end InitECandidate.Proofs.BackendStages
