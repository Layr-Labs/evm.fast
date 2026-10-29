import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function298
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody298_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody298_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody298_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 176#64)

def rawBody298_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody298_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody298_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 804#64)

def rawBody298_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody298_7 : StackLang.HolProg 64 :=
.seq rawBody298_5 rawBody298_6

def rawBody298_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody298_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody298_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody298_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 298 3

def rawBody298_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody298_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody298_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody298_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody298_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody298_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody298_18 : StackLang.HolProg 64 :=
.seq rawBody298_16 rawBody298_17

def rawBody298_19 : StackLang.HolProg 64 :=
.seq rawBody298_15 rawBody298_18

def rawBody298_20 : StackLang.HolProg 64 :=
.seq rawBody298_14 rawBody298_19

def rawBody298_21 : StackLang.HolProg 64 :=
.seq rawBody298_13 rawBody298_20

def rawBody298_22 : StackLang.HolProg 64 :=
.seq rawBody298_12 rawBody298_21

def rawBody298_23 : StackLang.HolProg 64 :=
.seq rawBody298_11 rawBody298_22

def rawBody298_24 : StackLang.HolProg 64 :=
.seq rawBody298_10 rawBody298_23

def rawBody298_25 : StackLang.HolProg 64 :=
.seq rawBody298_9 rawBody298_24

def rawBody298_26 : StackLang.HolProg 64 :=
.seq rawBody298_8 rawBody298_25

def rawBody298_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody298_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody298_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody298_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody298_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody298_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody298_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody298_34 : StackLang.HolProg 64 :=
.seq rawBody298_32 rawBody298_33

def rawBody298_35 : StackLang.HolProg 64 :=
.seq rawBody298_31 rawBody298_34

def rawBody298_36 : StackLang.HolProg 64 :=
.seq rawBody298_30 rawBody298_35

def rawBody298_37 : StackLang.HolProg 64 :=
.seq rawBody298_29 rawBody298_36

def rawBody298_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody298_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody298_40 : StackLang.HolProg 64 :=
.seq rawBody298_38 rawBody298_39

def rawBody298_41 : StackLang.HolProg 64 :=
.call (some (rawBody298_37, 0, 298, 2)) (Sum.inl 68) (some (rawBody298_40, 298, 3))

def rawBody298_42 : StackLang.HolProg 64 :=
.seq rawBody298_28 rawBody298_41

def rawBody298_43 : StackLang.HolProg 64 :=
.seq rawBody298_27 rawBody298_42

def rawBody298_44 : StackLang.HolProg 64 :=
.seq rawBody298_26 rawBody298_43

def rawBody298_45 : StackLang.HolProg 64 :=
.seq rawBody298_7 rawBody298_44

def rawBody298_46 : StackLang.HolProg 64 :=
.seq rawBody298_4 rawBody298_45

def rawBody298_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody298_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody298_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 176#64)

def rawBody298_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody298_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody298_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 805#64)

def rawBody298_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody298_54 : StackLang.HolProg 64 :=
.seq rawBody298_52 rawBody298_53

def rawBody298_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody298_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody298_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody298_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 298 5

def rawBody298_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody298_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody298_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody298_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody298_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody298_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody298_65 : StackLang.HolProg 64 :=
.seq rawBody298_63 rawBody298_64

def rawBody298_66 : StackLang.HolProg 64 :=
.seq rawBody298_62 rawBody298_65

def rawBody298_67 : StackLang.HolProg 64 :=
.seq rawBody298_61 rawBody298_66

def rawBody298_68 : StackLang.HolProg 64 :=
.seq rawBody298_60 rawBody298_67

def rawBody298_69 : StackLang.HolProg 64 :=
.seq rawBody298_59 rawBody298_68

def rawBody298_70 : StackLang.HolProg 64 :=
.seq rawBody298_58 rawBody298_69

def rawBody298_71 : StackLang.HolProg 64 :=
.seq rawBody298_57 rawBody298_70

def rawBody298_72 : StackLang.HolProg 64 :=
.seq rawBody298_56 rawBody298_71

def rawBody298_73 : StackLang.HolProg 64 :=
.seq rawBody298_55 rawBody298_72

def rawBody298_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody298_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody298_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody298_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody298_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody298_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody298_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody298_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody298_82 : StackLang.HolProg 64 :=
.seq rawBody298_80 rawBody298_81

def rawBody298_83 : StackLang.HolProg 64 :=
.seq rawBody298_79 rawBody298_82

def rawBody298_84 : StackLang.HolProg 64 :=
.seq rawBody298_78 rawBody298_83

def rawBody298_85 : StackLang.HolProg 64 :=
.seq rawBody298_77 rawBody298_84

def rawBody298_86 : StackLang.HolProg 64 :=
.seq rawBody298_76 rawBody298_85

def rawBody298_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody298_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody298_89 : StackLang.HolProg 64 :=
.seq rawBody298_87 rawBody298_88

def rawBody298_90 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody298_91 : StackLang.HolProg 64 :=
.seq rawBody298_89 rawBody298_90

def rawBody298_92 : StackLang.HolProg 64 :=
.call (some (rawBody298_86, 0, 298, 4)) (Sum.inl 78) (some (rawBody298_91, 298, 5))

def rawBody298_93 : StackLang.HolProg 64 :=
.seq rawBody298_75 rawBody298_92

def rawBody298_94 : StackLang.HolProg 64 :=
.seq rawBody298_74 rawBody298_93

def rawBody298_95 : StackLang.HolProg 64 :=
.seq rawBody298_73 rawBody298_94

def rawBody298_96 : StackLang.HolProg 64 :=
.seq rawBody298_54 rawBody298_95

def rawBody298_97 : StackLang.HolProg 64 :=
.seq rawBody298_51 rawBody298_96

def rawBody298_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody298_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody298_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def rawBody298_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody298_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody298_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody298_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody298_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody298_106 : StackLang.HolProg 64 :=
.seq rawBody298_104 rawBody298_105

def rawBody298_107 : StackLang.HolProg 64 :=
.seq rawBody298_103 rawBody298_106

def rawBody298_108 : StackLang.HolProg 64 :=
.seq rawBody298_102 rawBody298_107

def rawBody298_109 : StackLang.HolProg 64 :=
.seq rawBody298_101 rawBody298_108

def rawBody298_110 : StackLang.HolProg 64 :=
.seq rawBody298_100 rawBody298_109

def rawBody298_111 : StackLang.HolProg 64 :=
.seq rawBody298_99 rawBody298_110

def rawBody298_112 : StackLang.HolProg 64 :=
.seq rawBody298_98 rawBody298_111

def rawBody298_113 : StackLang.HolProg 64 :=
.seq rawBody298_97 rawBody298_112

def rawBody298_114 : StackLang.HolProg 64 :=
.seq rawBody298_50 rawBody298_113

def rawBody298_115 : StackLang.HolProg 64 :=
.seq rawBody298_49 rawBody298_114

def rawBody298_116 : StackLang.HolProg 64 :=
.seq rawBody298_48 rawBody298_115

def rawBody298_117 : StackLang.HolProg 64 :=
.seq rawBody298_47 rawBody298_116

def rawBody298_118 : StackLang.HolProg 64 :=
.seq rawBody298_46 rawBody298_117

def rawBody298_119 : StackLang.HolProg 64 :=
.seq rawBody298_3 rawBody298_118

def rawBody298_120 : StackLang.HolProg 64 :=
.seq rawBody298_2 rawBody298_119

def rawBody298_121 : StackLang.HolProg 64 :=
.seq rawBody298_1 rawBody298_120

def rawBody298_122 : StackLang.HolProg 64 :=
.seq rawBody298_0 rawBody298_121

def raw298 : StackLang.HolProg 64 := rawBody298_122
theorem raw298_eq : StackRawCall.compTop RawInfo.rawInfo (function298 (.list [])).1 = raw298 := by
  kernel_rfl
#print axioms raw298_eq
end InitECandidate.Proofs.BackendStages
