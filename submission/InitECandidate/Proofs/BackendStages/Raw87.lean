import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function87
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody87_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody87_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody87_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody87_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody87_4 : StackLang.HolProg 64 :=
.seq rawBody87_2 rawBody87_3

def rawBody87_5 : StackLang.HolProg 64 :=
.seq rawBody87_1 rawBody87_4

def rawBody87_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody87_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 33#64)

def rawBody87_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody87_9 : StackLang.HolProg 64 :=
.seq rawBody87_7 rawBody87_8

def rawBody87_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody87_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody87_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody87_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 87 3

def rawBody87_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody87_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody87_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody87_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody87_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody87_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody87_20 : StackLang.HolProg 64 :=
.seq rawBody87_18 rawBody87_19

def rawBody87_21 : StackLang.HolProg 64 :=
.seq rawBody87_17 rawBody87_20

def rawBody87_22 : StackLang.HolProg 64 :=
.seq rawBody87_16 rawBody87_21

def rawBody87_23 : StackLang.HolProg 64 :=
.seq rawBody87_15 rawBody87_22

def rawBody87_24 : StackLang.HolProg 64 :=
.seq rawBody87_14 rawBody87_23

def rawBody87_25 : StackLang.HolProg 64 :=
.seq rawBody87_13 rawBody87_24

def rawBody87_26 : StackLang.HolProg 64 :=
.seq rawBody87_12 rawBody87_25

def rawBody87_27 : StackLang.HolProg 64 :=
.seq rawBody87_11 rawBody87_26

def rawBody87_28 : StackLang.HolProg 64 :=
.seq rawBody87_10 rawBody87_27

def rawBody87_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody87_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody87_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody87_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody87_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody87_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody87_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody87_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody87_37 : StackLang.HolProg 64 :=
.seq rawBody87_35 rawBody87_36

def rawBody87_38 : StackLang.HolProg 64 :=
.seq rawBody87_34 rawBody87_37

def rawBody87_39 : StackLang.HolProg 64 :=
.seq rawBody87_33 rawBody87_38

def rawBody87_40 : StackLang.HolProg 64 :=
.seq rawBody87_32 rawBody87_39

def rawBody87_41 : StackLang.HolProg 64 :=
.seq rawBody87_31 rawBody87_40

def rawBody87_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody87_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody87_44 : StackLang.HolProg 64 :=
.seq rawBody87_42 rawBody87_43

def rawBody87_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody87_46 : StackLang.HolProg 64 :=
.seq rawBody87_44 rawBody87_45

def rawBody87_47 : StackLang.HolProg 64 :=
.call (some (rawBody87_41, 0, 87, 2)) (Sum.inl 86) (some (rawBody87_46, 87, 3))

def rawBody87_48 : StackLang.HolProg 64 :=
.seq rawBody87_30 rawBody87_47

def rawBody87_49 : StackLang.HolProg 64 :=
.seq rawBody87_29 rawBody87_48

def rawBody87_50 : StackLang.HolProg 64 :=
.seq rawBody87_28 rawBody87_49

def rawBody87_51 : StackLang.HolProg 64 :=
.seq rawBody87_9 rawBody87_50

def rawBody87_52 : StackLang.HolProg 64 :=
.seq rawBody87_6 rawBody87_51

def rawBody87_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody87_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody87_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody87_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody87_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody87_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody87_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody87_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 34#64)

def rawBody87_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody87_62 : StackLang.HolProg 64 :=
.seq rawBody87_60 rawBody87_61

def rawBody87_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody87_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody87_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody87_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 87 5

def rawBody87_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody87_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody87_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody87_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody87_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody87_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody87_73 : StackLang.HolProg 64 :=
.seq rawBody87_71 rawBody87_72

def rawBody87_74 : StackLang.HolProg 64 :=
.seq rawBody87_70 rawBody87_73

def rawBody87_75 : StackLang.HolProg 64 :=
.seq rawBody87_69 rawBody87_74

def rawBody87_76 : StackLang.HolProg 64 :=
.seq rawBody87_68 rawBody87_75

def rawBody87_77 : StackLang.HolProg 64 :=
.seq rawBody87_67 rawBody87_76

def rawBody87_78 : StackLang.HolProg 64 :=
.seq rawBody87_66 rawBody87_77

def rawBody87_79 : StackLang.HolProg 64 :=
.seq rawBody87_65 rawBody87_78

def rawBody87_80 : StackLang.HolProg 64 :=
.seq rawBody87_64 rawBody87_79

def rawBody87_81 : StackLang.HolProg 64 :=
.seq rawBody87_63 rawBody87_80

def rawBody87_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody87_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody87_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody87_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody87_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody87_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody87_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody87_89 : StackLang.HolProg 64 :=
.seq rawBody87_87 rawBody87_88

def rawBody87_90 : StackLang.HolProg 64 :=
.seq rawBody87_86 rawBody87_89

def rawBody87_91 : StackLang.HolProg 64 :=
.seq rawBody87_85 rawBody87_90

def rawBody87_92 : StackLang.HolProg 64 :=
.seq rawBody87_84 rawBody87_91

def rawBody87_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody87_94 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody87_95 : StackLang.HolProg 64 :=
.seq rawBody87_93 rawBody87_94

def rawBody87_96 : StackLang.HolProg 64 :=
.call (some (rawBody87_92, 0, 87, 4)) (Sum.inl 86) (some (rawBody87_95, 87, 5))

def rawBody87_97 : StackLang.HolProg 64 :=
.seq rawBody87_83 rawBody87_96

def rawBody87_98 : StackLang.HolProg 64 :=
.seq rawBody87_82 rawBody87_97

def rawBody87_99 : StackLang.HolProg 64 :=
.seq rawBody87_81 rawBody87_98

def rawBody87_100 : StackLang.HolProg 64 :=
.seq rawBody87_62 rawBody87_99

def rawBody87_101 : StackLang.HolProg 64 :=
.seq rawBody87_59 rawBody87_100

def rawBody87_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody87_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody87_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody87_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody87_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody87_107 : StackLang.HolProg 64 :=
.seq rawBody87_105 rawBody87_106

def rawBody87_108 : StackLang.HolProg 64 :=
.seq rawBody87_104 rawBody87_107

def rawBody87_109 : StackLang.HolProg 64 :=
.seq rawBody87_103 rawBody87_108

def rawBody87_110 : StackLang.HolProg 64 :=
.seq rawBody87_102 rawBody87_109

def rawBody87_111 : StackLang.HolProg 64 :=
.seq rawBody87_101 rawBody87_110

def rawBody87_112 : StackLang.HolProg 64 :=
.seq rawBody87_58 rawBody87_111

def rawBody87_113 : StackLang.HolProg 64 :=
.seq rawBody87_57 rawBody87_112

def rawBody87_114 : StackLang.HolProg 64 :=
.seq rawBody87_56 rawBody87_113

def rawBody87_115 : StackLang.HolProg 64 :=
.seq rawBody87_55 rawBody87_114

def rawBody87_116 : StackLang.HolProg 64 :=
.seq rawBody87_54 rawBody87_115

def rawBody87_117 : StackLang.HolProg 64 :=
.seq rawBody87_53 rawBody87_116

def rawBody87_118 : StackLang.HolProg 64 :=
.seq rawBody87_52 rawBody87_117

def rawBody87_119 : StackLang.HolProg 64 :=
.seq rawBody87_5 rawBody87_118

def rawBody87_120 : StackLang.HolProg 64 :=
.seq rawBody87_0 rawBody87_119

def raw87 : StackLang.HolProg 64 := rawBody87_120
theorem raw87_eq : StackRawCall.compTop RawInfo.rawInfo (function87 (.list [])).1 = raw87 := by
  kernel_rfl
#print axioms raw87_eq
end InitECandidate.Proofs.BackendStages
