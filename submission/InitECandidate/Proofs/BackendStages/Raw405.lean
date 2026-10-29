import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function405
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody405_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody405_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody405_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody405_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1206#64)

def rawBody405_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody405_5 : StackLang.HolProg 64 :=
.seq rawBody405_3 rawBody405_4

def rawBody405_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody405_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody405_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody405_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 405 3

def rawBody405_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody405_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody405_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody405_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody405_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody405_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody405_16 : StackLang.HolProg 64 :=
.seq rawBody405_14 rawBody405_15

def rawBody405_17 : StackLang.HolProg 64 :=
.seq rawBody405_13 rawBody405_16

def rawBody405_18 : StackLang.HolProg 64 :=
.seq rawBody405_12 rawBody405_17

def rawBody405_19 : StackLang.HolProg 64 :=
.seq rawBody405_11 rawBody405_18

def rawBody405_20 : StackLang.HolProg 64 :=
.seq rawBody405_10 rawBody405_19

def rawBody405_21 : StackLang.HolProg 64 :=
.seq rawBody405_9 rawBody405_20

def rawBody405_22 : StackLang.HolProg 64 :=
.seq rawBody405_8 rawBody405_21

def rawBody405_23 : StackLang.HolProg 64 :=
.seq rawBody405_7 rawBody405_22

def rawBody405_24 : StackLang.HolProg 64 :=
.seq rawBody405_6 rawBody405_23

def rawBody405_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody405_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody405_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody405_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody405_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody405_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody405_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody405_32 : StackLang.HolProg 64 :=
.seq rawBody405_30 rawBody405_31

def rawBody405_33 : StackLang.HolProg 64 :=
.seq rawBody405_29 rawBody405_32

def rawBody405_34 : StackLang.HolProg 64 :=
.seq rawBody405_28 rawBody405_33

def rawBody405_35 : StackLang.HolProg 64 :=
.seq rawBody405_27 rawBody405_34

def rawBody405_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody405_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody405_38 : StackLang.HolProg 64 :=
.seq rawBody405_36 rawBody405_37

def rawBody405_39 : StackLang.HolProg 64 :=
.call (some (rawBody405_35, 0, 405, 2)) (Sum.inl 404) (some (rawBody405_38, 405, 3))

def rawBody405_40 : StackLang.HolProg 64 :=
.seq rawBody405_26 rawBody405_39

def rawBody405_41 : StackLang.HolProg 64 :=
.seq rawBody405_25 rawBody405_40

def rawBody405_42 : StackLang.HolProg 64 :=
.seq rawBody405_24 rawBody405_41

def rawBody405_43 : StackLang.HolProg 64 :=
.seq rawBody405_5 rawBody405_42

def rawBody405_44 : StackLang.HolProg 64 :=
.seq rawBody405_2 rawBody405_43

def rawBody405_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody405_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody405_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def rawBody405_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody405_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody405_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody405_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1207#64)

def rawBody405_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody405_53 : StackLang.HolProg 64 :=
.seq rawBody405_51 rawBody405_52

def rawBody405_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody405_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody405_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody405_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 405 5

def rawBody405_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody405_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody405_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody405_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody405_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody405_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody405_64 : StackLang.HolProg 64 :=
.seq rawBody405_62 rawBody405_63

def rawBody405_65 : StackLang.HolProg 64 :=
.seq rawBody405_61 rawBody405_64

def rawBody405_66 : StackLang.HolProg 64 :=
.seq rawBody405_60 rawBody405_65

def rawBody405_67 : StackLang.HolProg 64 :=
.seq rawBody405_59 rawBody405_66

def rawBody405_68 : StackLang.HolProg 64 :=
.seq rawBody405_58 rawBody405_67

def rawBody405_69 : StackLang.HolProg 64 :=
.seq rawBody405_57 rawBody405_68

def rawBody405_70 : StackLang.HolProg 64 :=
.seq rawBody405_56 rawBody405_69

def rawBody405_71 : StackLang.HolProg 64 :=
.seq rawBody405_55 rawBody405_70

def rawBody405_72 : StackLang.HolProg 64 :=
.seq rawBody405_54 rawBody405_71

def rawBody405_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody405_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody405_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody405_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody405_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody405_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody405_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody405_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody405_81 : StackLang.HolProg 64 :=
.seq rawBody405_79 rawBody405_80

def rawBody405_82 : StackLang.HolProg 64 :=
.seq rawBody405_78 rawBody405_81

def rawBody405_83 : StackLang.HolProg 64 :=
.seq rawBody405_77 rawBody405_82

def rawBody405_84 : StackLang.HolProg 64 :=
.seq rawBody405_76 rawBody405_83

def rawBody405_85 : StackLang.HolProg 64 :=
.seq rawBody405_75 rawBody405_84

def rawBody405_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody405_87 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody405_88 : StackLang.HolProg 64 :=
.seq rawBody405_86 rawBody405_87

def rawBody405_89 : StackLang.HolProg 64 :=
.call (some (rawBody405_85, 0, 405, 4)) (Sum.inl 394) (some (rawBody405_88, 405, 5))

def rawBody405_90 : StackLang.HolProg 64 :=
.seq rawBody405_74 rawBody405_89

def rawBody405_91 : StackLang.HolProg 64 :=
.seq rawBody405_73 rawBody405_90

def rawBody405_92 : StackLang.HolProg 64 :=
.seq rawBody405_72 rawBody405_91

def rawBody405_93 : StackLang.HolProg 64 :=
.seq rawBody405_53 rawBody405_92

def rawBody405_94 : StackLang.HolProg 64 :=
.seq rawBody405_50 rawBody405_93

def rawBody405_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody405_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody405_97 : StackLang.HolProg 64 :=
.seq rawBody405_95 rawBody405_96

def rawBody405_98 : StackLang.HolProg 64 :=
.seq rawBody405_94 rawBody405_97

def rawBody405_99 : StackLang.HolProg 64 :=
.seq rawBody405_49 rawBody405_98

def rawBody405_100 : StackLang.HolProg 64 :=
.seq rawBody405_48 rawBody405_99

def rawBody405_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody405_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody405_103 : StackLang.HolProg 64 :=
.seq rawBody405_101 rawBody405_102

def rawBody405_104 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody405_100 rawBody405_103

def rawBody405_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody405_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody405_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody405_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody405_109 : StackLang.HolProg 64 :=
.seq rawBody405_107 rawBody405_108

def rawBody405_110 : StackLang.HolProg 64 :=
.seq rawBody405_106 rawBody405_109

def rawBody405_111 : StackLang.HolProg 64 :=
.seq rawBody405_105 rawBody405_110

def rawBody405_112 : StackLang.HolProg 64 :=
.seq rawBody405_104 rawBody405_111

def rawBody405_113 : StackLang.HolProg 64 :=
.seq rawBody405_47 rawBody405_112

def rawBody405_114 : StackLang.HolProg 64 :=
.seq rawBody405_46 rawBody405_113

def rawBody405_115 : StackLang.HolProg 64 :=
.seq rawBody405_45 rawBody405_114

def rawBody405_116 : StackLang.HolProg 64 :=
.seq rawBody405_44 rawBody405_115

def rawBody405_117 : StackLang.HolProg 64 :=
.seq rawBody405_1 rawBody405_116

def rawBody405_118 : StackLang.HolProg 64 :=
.seq rawBody405_0 rawBody405_117

def raw405 : StackLang.HolProg 64 := rawBody405_118
theorem raw405_eq : StackRawCall.compTop RawInfo.rawInfo (function405 (.list [])).1 = raw405 := by
  kernel_rfl
#print axioms raw405_eq
end InitECandidate.Proofs.BackendStages
