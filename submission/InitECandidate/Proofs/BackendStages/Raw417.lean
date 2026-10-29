import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function417
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody417_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody417_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody417_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody417_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1243#64)

def rawBody417_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody417_5 : StackLang.HolProg 64 :=
.seq rawBody417_3 rawBody417_4

def rawBody417_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody417_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody417_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody417_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 417 3

def rawBody417_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody417_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody417_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody417_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody417_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody417_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody417_16 : StackLang.HolProg 64 :=
.seq rawBody417_14 rawBody417_15

def rawBody417_17 : StackLang.HolProg 64 :=
.seq rawBody417_13 rawBody417_16

def rawBody417_18 : StackLang.HolProg 64 :=
.seq rawBody417_12 rawBody417_17

def rawBody417_19 : StackLang.HolProg 64 :=
.seq rawBody417_11 rawBody417_18

def rawBody417_20 : StackLang.HolProg 64 :=
.seq rawBody417_10 rawBody417_19

def rawBody417_21 : StackLang.HolProg 64 :=
.seq rawBody417_9 rawBody417_20

def rawBody417_22 : StackLang.HolProg 64 :=
.seq rawBody417_8 rawBody417_21

def rawBody417_23 : StackLang.HolProg 64 :=
.seq rawBody417_7 rawBody417_22

def rawBody417_24 : StackLang.HolProg 64 :=
.seq rawBody417_6 rawBody417_23

def rawBody417_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody417_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody417_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody417_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody417_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody417_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody417_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody417_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody417_33 : StackLang.HolProg 64 :=
.seq rawBody417_31 rawBody417_32

def rawBody417_34 : StackLang.HolProg 64 :=
.seq rawBody417_30 rawBody417_33

def rawBody417_35 : StackLang.HolProg 64 :=
.seq rawBody417_29 rawBody417_34

def rawBody417_36 : StackLang.HolProg 64 :=
.seq rawBody417_28 rawBody417_35

def rawBody417_37 : StackLang.HolProg 64 :=
.seq rawBody417_27 rawBody417_36

def rawBody417_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody417_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody417_40 : StackLang.HolProg 64 :=
.seq rawBody417_38 rawBody417_39

def rawBody417_41 : StackLang.HolProg 64 :=
.call (some (rawBody417_37, 0, 417, 2)) (Sum.inl 406) (some (rawBody417_40, 417, 3))

def rawBody417_42 : StackLang.HolProg 64 :=
.seq rawBody417_26 rawBody417_41

def rawBody417_43 : StackLang.HolProg 64 :=
.seq rawBody417_25 rawBody417_42

def rawBody417_44 : StackLang.HolProg 64 :=
.seq rawBody417_24 rawBody417_43

def rawBody417_45 : StackLang.HolProg 64 :=
.seq rawBody417_5 rawBody417_44

def rawBody417_46 : StackLang.HolProg 64 :=
.seq rawBody417_2 rawBody417_45

def rawBody417_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody417_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody417_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody417_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody417_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody417_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody417_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody417_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody417_55 : StackLang.HolProg 64 :=
.seq rawBody417_53 rawBody417_54

def rawBody417_56 : StackLang.HolProg 64 :=
.seq rawBody417_52 rawBody417_55

def rawBody417_57 : StackLang.HolProg 64 :=
.seq rawBody417_51 rawBody417_56

def rawBody417_58 : StackLang.HolProg 64 :=
.seq rawBody417_50 rawBody417_57

def rawBody417_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody417_60 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody417_58 rawBody417_59

def rawBody417_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody417_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody417_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody417_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody417_65 : StackLang.HolProg 64 :=
.seq rawBody417_63 rawBody417_64

def rawBody417_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody417_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1244#64)

def rawBody417_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody417_69 : StackLang.HolProg 64 :=
.seq rawBody417_67 rawBody417_68

def rawBody417_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody417_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody417_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody417_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 417 5

def rawBody417_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody417_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody417_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody417_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody417_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody417_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody417_80 : StackLang.HolProg 64 :=
.seq rawBody417_78 rawBody417_79

def rawBody417_81 : StackLang.HolProg 64 :=
.seq rawBody417_77 rawBody417_80

def rawBody417_82 : StackLang.HolProg 64 :=
.seq rawBody417_76 rawBody417_81

def rawBody417_83 : StackLang.HolProg 64 :=
.seq rawBody417_75 rawBody417_82

def rawBody417_84 : StackLang.HolProg 64 :=
.seq rawBody417_74 rawBody417_83

def rawBody417_85 : StackLang.HolProg 64 :=
.seq rawBody417_73 rawBody417_84

def rawBody417_86 : StackLang.HolProg 64 :=
.seq rawBody417_72 rawBody417_85

def rawBody417_87 : StackLang.HolProg 64 :=
.seq rawBody417_71 rawBody417_86

def rawBody417_88 : StackLang.HolProg 64 :=
.seq rawBody417_70 rawBody417_87

def rawBody417_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody417_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody417_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody417_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody417_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody417_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody417_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody417_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody417_97 : StackLang.HolProg 64 :=
.seq rawBody417_95 rawBody417_96

def rawBody417_98 : StackLang.HolProg 64 :=
.seq rawBody417_94 rawBody417_97

def rawBody417_99 : StackLang.HolProg 64 :=
.seq rawBody417_93 rawBody417_98

def rawBody417_100 : StackLang.HolProg 64 :=
.seq rawBody417_92 rawBody417_99

def rawBody417_101 : StackLang.HolProg 64 :=
.seq rawBody417_91 rawBody417_100

def rawBody417_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody417_103 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody417_104 : StackLang.HolProg 64 :=
.seq rawBody417_102 rawBody417_103

def rawBody417_105 : StackLang.HolProg 64 :=
.call (some (rawBody417_101, 0, 417, 4)) (Sum.inl 416) (some (rawBody417_104, 417, 5))

def rawBody417_106 : StackLang.HolProg 64 :=
.seq rawBody417_90 rawBody417_105

def rawBody417_107 : StackLang.HolProg 64 :=
.seq rawBody417_89 rawBody417_106

def rawBody417_108 : StackLang.HolProg 64 :=
.seq rawBody417_88 rawBody417_107

def rawBody417_109 : StackLang.HolProg 64 :=
.seq rawBody417_69 rawBody417_108

def rawBody417_110 : StackLang.HolProg 64 :=
.seq rawBody417_66 rawBody417_109

def rawBody417_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody417_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody417_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody417_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody417_115 : StackLang.HolProg 64 :=
.seq rawBody417_113 rawBody417_114

def rawBody417_116 : StackLang.HolProg 64 :=
.seq rawBody417_112 rawBody417_115

def rawBody417_117 : StackLang.HolProg 64 :=
.seq rawBody417_111 rawBody417_116

def rawBody417_118 : StackLang.HolProg 64 :=
.seq rawBody417_110 rawBody417_117

def rawBody417_119 : StackLang.HolProg 64 :=
.seq rawBody417_65 rawBody417_118

def rawBody417_120 : StackLang.HolProg 64 :=
.seq rawBody417_62 rawBody417_119

def rawBody417_121 : StackLang.HolProg 64 :=
.seq rawBody417_61 rawBody417_120

def rawBody417_122 : StackLang.HolProg 64 :=
.seq rawBody417_60 rawBody417_121

def rawBody417_123 : StackLang.HolProg 64 :=
.seq rawBody417_49 rawBody417_122

def rawBody417_124 : StackLang.HolProg 64 :=
.seq rawBody417_48 rawBody417_123

def rawBody417_125 : StackLang.HolProg 64 :=
.seq rawBody417_47 rawBody417_124

def rawBody417_126 : StackLang.HolProg 64 :=
.seq rawBody417_46 rawBody417_125

def rawBody417_127 : StackLang.HolProg 64 :=
.seq rawBody417_1 rawBody417_126

def rawBody417_128 : StackLang.HolProg 64 :=
.seq rawBody417_0 rawBody417_127

def raw417 : StackLang.HolProg 64 := rawBody417_128
theorem raw417_eq : StackRawCall.compTop RawInfo.rawInfo (function417 (.list [])).1 = raw417 := by
  kernel_rfl
#print axioms raw417_eq
end InitECandidate.Proofs.BackendStages
