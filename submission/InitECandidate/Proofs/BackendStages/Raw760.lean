import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function760
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody760_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody760_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody760_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody760_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody760_4 : StackLang.HolProg 64 :=
.seq rawBody760_2 rawBody760_3

def rawBody760_5 : StackLang.HolProg 64 :=
.seq rawBody760_1 rawBody760_4

def rawBody760_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody760_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3391#64)

def rawBody760_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody760_9 : StackLang.HolProg 64 :=
.seq rawBody760_7 rawBody760_8

def rawBody760_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody760_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody760_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody760_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 760 3

def rawBody760_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody760_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody760_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody760_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody760_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody760_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody760_20 : StackLang.HolProg 64 :=
.seq rawBody760_18 rawBody760_19

def rawBody760_21 : StackLang.HolProg 64 :=
.seq rawBody760_17 rawBody760_20

def rawBody760_22 : StackLang.HolProg 64 :=
.seq rawBody760_16 rawBody760_21

def rawBody760_23 : StackLang.HolProg 64 :=
.seq rawBody760_15 rawBody760_22

def rawBody760_24 : StackLang.HolProg 64 :=
.seq rawBody760_14 rawBody760_23

def rawBody760_25 : StackLang.HolProg 64 :=
.seq rawBody760_13 rawBody760_24

def rawBody760_26 : StackLang.HolProg 64 :=
.seq rawBody760_12 rawBody760_25

def rawBody760_27 : StackLang.HolProg 64 :=
.seq rawBody760_11 rawBody760_26

def rawBody760_28 : StackLang.HolProg 64 :=
.seq rawBody760_10 rawBody760_27

def rawBody760_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody760_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody760_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody760_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody760_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody760_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody760_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody760_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody760_37 : StackLang.HolProg 64 :=
.seq rawBody760_35 rawBody760_36

def rawBody760_38 : StackLang.HolProg 64 :=
.seq rawBody760_34 rawBody760_37

def rawBody760_39 : StackLang.HolProg 64 :=
.seq rawBody760_33 rawBody760_38

def rawBody760_40 : StackLang.HolProg 64 :=
.seq rawBody760_32 rawBody760_39

def rawBody760_41 : StackLang.HolProg 64 :=
.seq rawBody760_31 rawBody760_40

def rawBody760_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody760_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody760_44 : StackLang.HolProg 64 :=
.seq rawBody760_42 rawBody760_43

def rawBody760_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody760_46 : StackLang.HolProg 64 :=
.seq rawBody760_44 rawBody760_45

def rawBody760_47 : StackLang.HolProg 64 :=
.call (some (rawBody760_41, 0, 760, 2)) (Sum.inl 746) (some (rawBody760_46, 760, 3))

def rawBody760_48 : StackLang.HolProg 64 :=
.seq rawBody760_30 rawBody760_47

def rawBody760_49 : StackLang.HolProg 64 :=
.seq rawBody760_29 rawBody760_48

def rawBody760_50 : StackLang.HolProg 64 :=
.seq rawBody760_28 rawBody760_49

def rawBody760_51 : StackLang.HolProg 64 :=
.seq rawBody760_9 rawBody760_50

def rawBody760_52 : StackLang.HolProg 64 :=
.seq rawBody760_6 rawBody760_51

def rawBody760_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody760_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody760_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def rawBody760_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody760_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 288#64)))

def rawBody760_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody760_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody760_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3392#64)

def rawBody760_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody760_62 : StackLang.HolProg 64 :=
.seq rawBody760_60 rawBody760_61

def rawBody760_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody760_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody760_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody760_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 760 5

def rawBody760_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody760_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody760_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody760_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody760_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody760_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody760_73 : StackLang.HolProg 64 :=
.seq rawBody760_71 rawBody760_72

def rawBody760_74 : StackLang.HolProg 64 :=
.seq rawBody760_70 rawBody760_73

def rawBody760_75 : StackLang.HolProg 64 :=
.seq rawBody760_69 rawBody760_74

def rawBody760_76 : StackLang.HolProg 64 :=
.seq rawBody760_68 rawBody760_75

def rawBody760_77 : StackLang.HolProg 64 :=
.seq rawBody760_67 rawBody760_76

def rawBody760_78 : StackLang.HolProg 64 :=
.seq rawBody760_66 rawBody760_77

def rawBody760_79 : StackLang.HolProg 64 :=
.seq rawBody760_65 rawBody760_78

def rawBody760_80 : StackLang.HolProg 64 :=
.seq rawBody760_64 rawBody760_79

def rawBody760_81 : StackLang.HolProg 64 :=
.seq rawBody760_63 rawBody760_80

def rawBody760_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody760_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody760_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody760_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody760_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody760_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody760_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody760_89 : StackLang.HolProg 64 :=
.seq rawBody760_87 rawBody760_88

def rawBody760_90 : StackLang.HolProg 64 :=
.seq rawBody760_86 rawBody760_89

def rawBody760_91 : StackLang.HolProg 64 :=
.seq rawBody760_85 rawBody760_90

def rawBody760_92 : StackLang.HolProg 64 :=
.seq rawBody760_84 rawBody760_91

def rawBody760_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody760_94 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody760_95 : StackLang.HolProg 64 :=
.seq rawBody760_93 rawBody760_94

def rawBody760_96 : StackLang.HolProg 64 :=
.call (some (rawBody760_92, 0, 760, 4)) (Sum.inl 751) (some (rawBody760_95, 760, 5))

def rawBody760_97 : StackLang.HolProg 64 :=
.seq rawBody760_83 rawBody760_96

def rawBody760_98 : StackLang.HolProg 64 :=
.seq rawBody760_82 rawBody760_97

def rawBody760_99 : StackLang.HolProg 64 :=
.seq rawBody760_81 rawBody760_98

def rawBody760_100 : StackLang.HolProg 64 :=
.seq rawBody760_62 rawBody760_99

def rawBody760_101 : StackLang.HolProg 64 :=
.seq rawBody760_59 rawBody760_100

def rawBody760_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody760_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody760_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody760_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody760_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody760_107 : StackLang.HolProg 64 :=
.seq rawBody760_105 rawBody760_106

def rawBody760_108 : StackLang.HolProg 64 :=
.seq rawBody760_104 rawBody760_107

def rawBody760_109 : StackLang.HolProg 64 :=
.seq rawBody760_103 rawBody760_108

def rawBody760_110 : StackLang.HolProg 64 :=
.seq rawBody760_102 rawBody760_109

def rawBody760_111 : StackLang.HolProg 64 :=
.seq rawBody760_101 rawBody760_110

def rawBody760_112 : StackLang.HolProg 64 :=
.seq rawBody760_58 rawBody760_111

def rawBody760_113 : StackLang.HolProg 64 :=
.seq rawBody760_57 rawBody760_112

def rawBody760_114 : StackLang.HolProg 64 :=
.seq rawBody760_56 rawBody760_113

def rawBody760_115 : StackLang.HolProg 64 :=
.seq rawBody760_55 rawBody760_114

def rawBody760_116 : StackLang.HolProg 64 :=
.seq rawBody760_54 rawBody760_115

def rawBody760_117 : StackLang.HolProg 64 :=
.seq rawBody760_53 rawBody760_116

def rawBody760_118 : StackLang.HolProg 64 :=
.seq rawBody760_52 rawBody760_117

def rawBody760_119 : StackLang.HolProg 64 :=
.seq rawBody760_5 rawBody760_118

def rawBody760_120 : StackLang.HolProg 64 :=
.seq rawBody760_0 rawBody760_119

def raw760 : StackLang.HolProg 64 := rawBody760_120
theorem raw760_eq : StackRawCall.compTop RawInfo.rawInfo (function760 (.list [])).1 = raw760 := by
  kernel_rfl
#print axioms raw760_eq
end InitECandidate.Proofs.BackendStages
