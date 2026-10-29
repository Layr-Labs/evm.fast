import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function660
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody660_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def rawBody660_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody660_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def rawBody660_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody660_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def rawBody660_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody660_6 : StackLang.HolProg 64 :=
.seq rawBody660_4 rawBody660_5

def rawBody660_7 : StackLang.HolProg 64 :=
.seq rawBody660_3 rawBody660_6

def rawBody660_8 : StackLang.HolProg 64 :=
.seq rawBody660_2 rawBody660_7

def rawBody660_9 : StackLang.HolProg 64 :=
.seq rawBody660_1 rawBody660_8

def rawBody660_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody660_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2750#64)

def rawBody660_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody660_13 : StackLang.HolProg 64 :=
.seq rawBody660_11 rawBody660_12

def rawBody660_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody660_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody660_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody660_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 660 3

def rawBody660_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody660_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody660_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody660_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody660_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody660_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody660_24 : StackLang.HolProg 64 :=
.seq rawBody660_22 rawBody660_23

def rawBody660_25 : StackLang.HolProg 64 :=
.seq rawBody660_21 rawBody660_24

def rawBody660_26 : StackLang.HolProg 64 :=
.seq rawBody660_20 rawBody660_25

def rawBody660_27 : StackLang.HolProg 64 :=
.seq rawBody660_19 rawBody660_26

def rawBody660_28 : StackLang.HolProg 64 :=
.seq rawBody660_18 rawBody660_27

def rawBody660_29 : StackLang.HolProg 64 :=
.seq rawBody660_17 rawBody660_28

def rawBody660_30 : StackLang.HolProg 64 :=
.seq rawBody660_16 rawBody660_29

def rawBody660_31 : StackLang.HolProg 64 :=
.seq rawBody660_15 rawBody660_30

def rawBody660_32 : StackLang.HolProg 64 :=
.seq rawBody660_14 rawBody660_31

def rawBody660_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody660_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody660_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody660_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody660_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody660_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody660_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody660_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody660_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 4

def rawBody660_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def rawBody660_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody660_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def rawBody660_45 : StackLang.HolProg 64 :=
.seq rawBody660_43 rawBody660_44

def rawBody660_46 : StackLang.HolProg 64 :=
.seq rawBody660_42 rawBody660_45

def rawBody660_47 : StackLang.HolProg 64 :=
.seq rawBody660_41 rawBody660_46

def rawBody660_48 : StackLang.HolProg 64 :=
.seq rawBody660_40 rawBody660_47

def rawBody660_49 : StackLang.HolProg 64 :=
.seq rawBody660_39 rawBody660_48

def rawBody660_50 : StackLang.HolProg 64 :=
.seq rawBody660_38 rawBody660_49

def rawBody660_51 : StackLang.HolProg 64 :=
.seq rawBody660_37 rawBody660_50

def rawBody660_52 : StackLang.HolProg 64 :=
.seq rawBody660_36 rawBody660_51

def rawBody660_53 : StackLang.HolProg 64 :=
.seq rawBody660_35 rawBody660_52

def rawBody660_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody660_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 4

def rawBody660_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def rawBody660_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody660_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def rawBody660_59 : StackLang.HolProg 64 :=
.seq rawBody660_57 rawBody660_58

def rawBody660_60 : StackLang.HolProg 64 :=
.seq rawBody660_56 rawBody660_59

def rawBody660_61 : StackLang.HolProg 64 :=
.seq rawBody660_55 rawBody660_60

def rawBody660_62 : StackLang.HolProg 64 :=
.seq rawBody660_54 rawBody660_61

def rawBody660_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody660_64 : StackLang.HolProg 64 :=
.seq rawBody660_62 rawBody660_63

def rawBody660_65 : StackLang.HolProg 64 :=
.call (some (rawBody660_53, 0, 660, 2)) (Sum.inl 102) (some (rawBody660_64, 660, 3))

def rawBody660_66 : StackLang.HolProg 64 :=
.seq rawBody660_34 rawBody660_65

def rawBody660_67 : StackLang.HolProg 64 :=
.seq rawBody660_33 rawBody660_66

def rawBody660_68 : StackLang.HolProg 64 :=
.seq rawBody660_32 rawBody660_67

def rawBody660_69 : StackLang.HolProg 64 :=
.seq rawBody660_13 rawBody660_68

def rawBody660_70 : StackLang.HolProg 64 :=
.seq rawBody660_10 rawBody660_69

def rawBody660_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody660_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody660_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody660_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody660_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody660_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody660_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody660_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody660_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody660_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody660_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody660_82 : StackLang.HolProg 64 :=
.seq rawBody660_80 rawBody660_81

def rawBody660_83 : StackLang.HolProg 64 :=
.seq rawBody660_79 rawBody660_82

def rawBody660_84 : StackLang.HolProg 64 :=
.seq rawBody660_78 rawBody660_83

def rawBody660_85 : StackLang.HolProg 64 :=
.seq rawBody660_77 rawBody660_84

def rawBody660_86 : StackLang.HolProg 64 :=
.seq rawBody660_76 rawBody660_85

def rawBody660_87 : StackLang.HolProg 64 :=
.seq rawBody660_75 rawBody660_86

def rawBody660_88 : StackLang.HolProg 64 :=
.seq rawBody660_74 rawBody660_87

def rawBody660_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody660_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody660_88 rawBody660_89

def rawBody660_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody660_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody660_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody660_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 3486998266802970665#64)

def rawBody660_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 13281191951274694749#64)

def rawBody660_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 10917124144477883021#64)

def rawBody660_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4332616871279656263#64)

def rawBody660_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody660_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody660_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody660_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def rawBody660_102 : StackLang.HolProg 64 :=
.seq rawBody660_100 rawBody660_101

def rawBody660_103 : StackLang.HolProg 64 :=
.seq rawBody660_99 rawBody660_102

def rawBody660_104 : StackLang.HolProg 64 :=
.seq rawBody660_98 rawBody660_103

def rawBody660_105 : StackLang.HolProg 64 :=
.seq rawBody660_97 rawBody660_104

def rawBody660_106 : StackLang.HolProg 64 :=
.seq rawBody660_96 rawBody660_105

def rawBody660_107 : StackLang.HolProg 64 :=
.seq rawBody660_95 rawBody660_106

def rawBody660_108 : StackLang.HolProg 64 :=
.seq rawBody660_94 rawBody660_107

def rawBody660_109 : StackLang.HolProg 64 :=
.seq rawBody660_93 rawBody660_108

def rawBody660_110 : StackLang.HolProg 64 :=
.seq rawBody660_92 rawBody660_109

def rawBody660_111 : StackLang.HolProg 64 :=
.seq rawBody660_91 rawBody660_110

def rawBody660_112 : StackLang.HolProg 64 :=
.seq rawBody660_90 rawBody660_111

def rawBody660_113 : StackLang.HolProg 64 :=
.seq rawBody660_73 rawBody660_112

def rawBody660_114 : StackLang.HolProg 64 :=
.seq rawBody660_72 rawBody660_113

def rawBody660_115 : StackLang.HolProg 64 :=
.seq rawBody660_71 rawBody660_114

def rawBody660_116 : StackLang.HolProg 64 :=
.seq rawBody660_70 rawBody660_115

def rawBody660_117 : StackLang.HolProg 64 :=
.seq rawBody660_9 rawBody660_116

def rawBody660_118 : StackLang.HolProg 64 :=
.seq rawBody660_0 rawBody660_117

def raw660 : StackLang.HolProg 64 := rawBody660_118
theorem raw660_eq : StackRawCall.compTop RawInfo.rawInfo (function660 (.list [])).1 = raw660 := by
  kernel_rfl
#print axioms raw660_eq
end InitECandidate.Proofs.BackendStages
