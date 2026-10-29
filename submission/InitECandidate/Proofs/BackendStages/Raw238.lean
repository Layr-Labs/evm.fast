import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function238
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody238_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody238_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody238_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody238_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody238_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def rawBody238_5 : StackLang.HolProg 64 :=
.seq rawBody238_3 rawBody238_4

def rawBody238_6 : StackLang.HolProg 64 :=
.seq rawBody238_2 rawBody238_5

def rawBody238_7 : StackLang.HolProg 64 :=
.seq rawBody238_1 rawBody238_6

def rawBody238_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody238_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 455#64)

def rawBody238_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody238_11 : StackLang.HolProg 64 :=
.seq rawBody238_9 rawBody238_10

def rawBody238_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody238_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody238_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody238_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 238 3

def rawBody238_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody238_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody238_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody238_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody238_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody238_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody238_22 : StackLang.HolProg 64 :=
.seq rawBody238_20 rawBody238_21

def rawBody238_23 : StackLang.HolProg 64 :=
.seq rawBody238_19 rawBody238_22

def rawBody238_24 : StackLang.HolProg 64 :=
.seq rawBody238_18 rawBody238_23

def rawBody238_25 : StackLang.HolProg 64 :=
.seq rawBody238_17 rawBody238_24

def rawBody238_26 : StackLang.HolProg 64 :=
.seq rawBody238_16 rawBody238_25

def rawBody238_27 : StackLang.HolProg 64 :=
.seq rawBody238_15 rawBody238_26

def rawBody238_28 : StackLang.HolProg 64 :=
.seq rawBody238_14 rawBody238_27

def rawBody238_29 : StackLang.HolProg 64 :=
.seq rawBody238_13 rawBody238_28

def rawBody238_30 : StackLang.HolProg 64 :=
.seq rawBody238_12 rawBody238_29

def rawBody238_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody238_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody238_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody238_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody238_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody238_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody238_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody238_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody238_39 : StackLang.HolProg 64 :=
.seq rawBody238_37 rawBody238_38

def rawBody238_40 : StackLang.HolProg 64 :=
.seq rawBody238_36 rawBody238_39

def rawBody238_41 : StackLang.HolProg 64 :=
.seq rawBody238_35 rawBody238_40

def rawBody238_42 : StackLang.HolProg 64 :=
.seq rawBody238_34 rawBody238_41

def rawBody238_43 : StackLang.HolProg 64 :=
.seq rawBody238_33 rawBody238_42

def rawBody238_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody238_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody238_46 : StackLang.HolProg 64 :=
.seq rawBody238_44 rawBody238_45

def rawBody238_47 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody238_48 : StackLang.HolProg 64 :=
.seq rawBody238_46 rawBody238_47

def rawBody238_49 : StackLang.HolProg 64 :=
.call (some (rawBody238_43, 0, 238, 2)) (Sum.inl 237) (some (rawBody238_48, 238, 3))

def rawBody238_50 : StackLang.HolProg 64 :=
.seq rawBody238_32 rawBody238_49

def rawBody238_51 : StackLang.HolProg 64 :=
.seq rawBody238_31 rawBody238_50

def rawBody238_52 : StackLang.HolProg 64 :=
.seq rawBody238_30 rawBody238_51

def rawBody238_53 : StackLang.HolProg 64 :=
.seq rawBody238_11 rawBody238_52

def rawBody238_54 : StackLang.HolProg 64 :=
.seq rawBody238_8 rawBody238_53

def rawBody238_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody238_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody238_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody238_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 456#64)

def rawBody238_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody238_60 : StackLang.HolProg 64 :=
.seq rawBody238_58 rawBody238_59

def rawBody238_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody238_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody238_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody238_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 238 5

def rawBody238_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody238_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody238_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody238_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody238_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody238_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody238_71 : StackLang.HolProg 64 :=
.seq rawBody238_69 rawBody238_70

def rawBody238_72 : StackLang.HolProg 64 :=
.seq rawBody238_68 rawBody238_71

def rawBody238_73 : StackLang.HolProg 64 :=
.seq rawBody238_67 rawBody238_72

def rawBody238_74 : StackLang.HolProg 64 :=
.seq rawBody238_66 rawBody238_73

def rawBody238_75 : StackLang.HolProg 64 :=
.seq rawBody238_65 rawBody238_74

def rawBody238_76 : StackLang.HolProg 64 :=
.seq rawBody238_64 rawBody238_75

def rawBody238_77 : StackLang.HolProg 64 :=
.seq rawBody238_63 rawBody238_76

def rawBody238_78 : StackLang.HolProg 64 :=
.seq rawBody238_62 rawBody238_77

def rawBody238_79 : StackLang.HolProg 64 :=
.seq rawBody238_61 rawBody238_78

def rawBody238_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody238_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody238_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody238_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody238_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody238_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody238_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody238_87 : StackLang.HolProg 64 :=
.seq rawBody238_85 rawBody238_86

def rawBody238_88 : StackLang.HolProg 64 :=
.seq rawBody238_84 rawBody238_87

def rawBody238_89 : StackLang.HolProg 64 :=
.seq rawBody238_83 rawBody238_88

def rawBody238_90 : StackLang.HolProg 64 :=
.seq rawBody238_82 rawBody238_89

def rawBody238_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody238_92 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody238_93 : StackLang.HolProg 64 :=
.seq rawBody238_91 rawBody238_92

def rawBody238_94 : StackLang.HolProg 64 :=
.call (some (rawBody238_90, 0, 238, 4)) (Sum.inl 236) (some (rawBody238_93, 238, 5))

def rawBody238_95 : StackLang.HolProg 64 :=
.seq rawBody238_81 rawBody238_94

def rawBody238_96 : StackLang.HolProg 64 :=
.seq rawBody238_80 rawBody238_95

def rawBody238_97 : StackLang.HolProg 64 :=
.seq rawBody238_79 rawBody238_96

def rawBody238_98 : StackLang.HolProg 64 :=
.seq rawBody238_60 rawBody238_97

def rawBody238_99 : StackLang.HolProg 64 :=
.seq rawBody238_57 rawBody238_98

def rawBody238_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody238_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody238_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody238_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody238_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody238_105 : StackLang.HolProg 64 :=
.seq rawBody238_103 rawBody238_104

def rawBody238_106 : StackLang.HolProg 64 :=
.seq rawBody238_102 rawBody238_105

def rawBody238_107 : StackLang.HolProg 64 :=
.seq rawBody238_101 rawBody238_106

def rawBody238_108 : StackLang.HolProg 64 :=
.seq rawBody238_100 rawBody238_107

def rawBody238_109 : StackLang.HolProg 64 :=
.seq rawBody238_99 rawBody238_108

def rawBody238_110 : StackLang.HolProg 64 :=
.seq rawBody238_56 rawBody238_109

def rawBody238_111 : StackLang.HolProg 64 :=
.seq rawBody238_55 rawBody238_110

def rawBody238_112 : StackLang.HolProg 64 :=
.seq rawBody238_54 rawBody238_111

def rawBody238_113 : StackLang.HolProg 64 :=
.seq rawBody238_7 rawBody238_112

def rawBody238_114 : StackLang.HolProg 64 :=
.seq rawBody238_0 rawBody238_113

def raw238 : StackLang.HolProg 64 := rawBody238_114
theorem raw238_eq : StackRawCall.compTop RawInfo.rawInfo (function238 (.list [])).1 = raw238 := by
  kernel_rfl
#print axioms raw238_eq
end InitECandidate.Proofs.BackendStages
