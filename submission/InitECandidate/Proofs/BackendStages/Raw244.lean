import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function244
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody244_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody244_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody244_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody244_3 : StackLang.HolProg 64 :=
.seq rawBody244_1 rawBody244_2

def rawBody244_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def rawBody244_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody244_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def rawBody244_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody244_8 : StackLang.HolProg 64 :=
.seq rawBody244_6 rawBody244_7

def rawBody244_9 : StackLang.HolProg 64 :=
.seq rawBody244_5 rawBody244_8

def rawBody244_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody244_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 481#64)

def rawBody244_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody244_13 : StackLang.HolProg 64 :=
.seq rawBody244_11 rawBody244_12

def rawBody244_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody244_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody244_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody244_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 244 3

def rawBody244_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody244_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody244_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody244_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody244_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody244_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody244_24 : StackLang.HolProg 64 :=
.seq rawBody244_22 rawBody244_23

def rawBody244_25 : StackLang.HolProg 64 :=
.seq rawBody244_21 rawBody244_24

def rawBody244_26 : StackLang.HolProg 64 :=
.seq rawBody244_20 rawBody244_25

def rawBody244_27 : StackLang.HolProg 64 :=
.seq rawBody244_19 rawBody244_26

def rawBody244_28 : StackLang.HolProg 64 :=
.seq rawBody244_18 rawBody244_27

def rawBody244_29 : StackLang.HolProg 64 :=
.seq rawBody244_17 rawBody244_28

def rawBody244_30 : StackLang.HolProg 64 :=
.seq rawBody244_16 rawBody244_29

def rawBody244_31 : StackLang.HolProg 64 :=
.seq rawBody244_15 rawBody244_30

def rawBody244_32 : StackLang.HolProg 64 :=
.seq rawBody244_14 rawBody244_31

def rawBody244_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody244_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody244_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody244_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody244_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody244_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody244_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody244_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody244_41 : StackLang.HolProg 64 :=
.seq rawBody244_39 rawBody244_40

def rawBody244_42 : StackLang.HolProg 64 :=
.seq rawBody244_38 rawBody244_41

def rawBody244_43 : StackLang.HolProg 64 :=
.seq rawBody244_37 rawBody244_42

def rawBody244_44 : StackLang.HolProg 64 :=
.seq rawBody244_36 rawBody244_43

def rawBody244_45 : StackLang.HolProg 64 :=
.seq rawBody244_35 rawBody244_44

def rawBody244_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody244_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody244_48 : StackLang.HolProg 64 :=
.seq rawBody244_46 rawBody244_47

def rawBody244_49 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody244_50 : StackLang.HolProg 64 :=
.seq rawBody244_48 rawBody244_49

def rawBody244_51 : StackLang.HolProg 64 :=
.call (some (rawBody244_45, 0, 244, 2)) (Sum.inl 78) (some (rawBody244_50, 244, 3))

def rawBody244_52 : StackLang.HolProg 64 :=
.seq rawBody244_34 rawBody244_51

def rawBody244_53 : StackLang.HolProg 64 :=
.seq rawBody244_33 rawBody244_52

def rawBody244_54 : StackLang.HolProg 64 :=
.seq rawBody244_32 rawBody244_53

def rawBody244_55 : StackLang.HolProg 64 :=
.seq rawBody244_13 rawBody244_54

def rawBody244_56 : StackLang.HolProg 64 :=
.seq rawBody244_10 rawBody244_55

def rawBody244_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody244_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody244_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 8#64)

def rawBody244_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody244_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody244_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 482#64)

def rawBody244_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody244_64 : StackLang.HolProg 64 :=
.seq rawBody244_62 rawBody244_63

def rawBody244_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody244_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody244_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody244_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 244 5

def rawBody244_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody244_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody244_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody244_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody244_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody244_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody244_75 : StackLang.HolProg 64 :=
.seq rawBody244_73 rawBody244_74

def rawBody244_76 : StackLang.HolProg 64 :=
.seq rawBody244_72 rawBody244_75

def rawBody244_77 : StackLang.HolProg 64 :=
.seq rawBody244_71 rawBody244_76

def rawBody244_78 : StackLang.HolProg 64 :=
.seq rawBody244_70 rawBody244_77

def rawBody244_79 : StackLang.HolProg 64 :=
.seq rawBody244_69 rawBody244_78

def rawBody244_80 : StackLang.HolProg 64 :=
.seq rawBody244_68 rawBody244_79

def rawBody244_81 : StackLang.HolProg 64 :=
.seq rawBody244_67 rawBody244_80

def rawBody244_82 : StackLang.HolProg 64 :=
.seq rawBody244_66 rawBody244_81

def rawBody244_83 : StackLang.HolProg 64 :=
.seq rawBody244_65 rawBody244_82

def rawBody244_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody244_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody244_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody244_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody244_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody244_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody244_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody244_91 : StackLang.HolProg 64 :=
.seq rawBody244_89 rawBody244_90

def rawBody244_92 : StackLang.HolProg 64 :=
.seq rawBody244_88 rawBody244_91

def rawBody244_93 : StackLang.HolProg 64 :=
.seq rawBody244_87 rawBody244_92

def rawBody244_94 : StackLang.HolProg 64 :=
.seq rawBody244_86 rawBody244_93

def rawBody244_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody244_96 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody244_97 : StackLang.HolProg 64 :=
.seq rawBody244_95 rawBody244_96

def rawBody244_98 : StackLang.HolProg 64 :=
.call (some (rawBody244_94, 0, 244, 4)) (Sum.inl 77) (some (rawBody244_97, 244, 5))

def rawBody244_99 : StackLang.HolProg 64 :=
.seq rawBody244_85 rawBody244_98

def rawBody244_100 : StackLang.HolProg 64 :=
.seq rawBody244_84 rawBody244_99

def rawBody244_101 : StackLang.HolProg 64 :=
.seq rawBody244_83 rawBody244_100

def rawBody244_102 : StackLang.HolProg 64 :=
.seq rawBody244_64 rawBody244_101

def rawBody244_103 : StackLang.HolProg 64 :=
.seq rawBody244_61 rawBody244_102

def rawBody244_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody244_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody244_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody244_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody244_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody244_109 : StackLang.HolProg 64 :=
.seq rawBody244_107 rawBody244_108

def rawBody244_110 : StackLang.HolProg 64 :=
.seq rawBody244_106 rawBody244_109

def rawBody244_111 : StackLang.HolProg 64 :=
.seq rawBody244_105 rawBody244_110

def rawBody244_112 : StackLang.HolProg 64 :=
.seq rawBody244_104 rawBody244_111

def rawBody244_113 : StackLang.HolProg 64 :=
.seq rawBody244_103 rawBody244_112

def rawBody244_114 : StackLang.HolProg 64 :=
.seq rawBody244_60 rawBody244_113

def rawBody244_115 : StackLang.HolProg 64 :=
.seq rawBody244_59 rawBody244_114

def rawBody244_116 : StackLang.HolProg 64 :=
.seq rawBody244_58 rawBody244_115

def rawBody244_117 : StackLang.HolProg 64 :=
.seq rawBody244_57 rawBody244_116

def rawBody244_118 : StackLang.HolProg 64 :=
.seq rawBody244_56 rawBody244_117

def rawBody244_119 : StackLang.HolProg 64 :=
.seq rawBody244_9 rawBody244_118

def rawBody244_120 : StackLang.HolProg 64 :=
.seq rawBody244_4 rawBody244_119

def rawBody244_121 : StackLang.HolProg 64 :=
.seq rawBody244_3 rawBody244_120

def rawBody244_122 : StackLang.HolProg 64 :=
.seq rawBody244_0 rawBody244_121

def raw244 : StackLang.HolProg 64 := rawBody244_122
theorem raw244_eq : StackRawCall.compTop RawInfo.rawInfo (function244 (.list [])).1 = raw244 := by
  kernel_rfl
#print axioms raw244_eq
end InitECandidate.Proofs.BackendStages
