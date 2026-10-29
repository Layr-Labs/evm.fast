import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function205
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody205_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def rawBody205_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody205_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def rawBody205_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def rawBody205_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def rawBody205_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583343#64)

def rawBody205_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody205_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def rawBody205_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody205_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def rawBody205_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody205_11 : StackLang.HolProg 64 :=
.seq rawBody205_9 rawBody205_10

def rawBody205_12 : StackLang.HolProg 64 :=
.seq rawBody205_8 rawBody205_11

def rawBody205_13 : StackLang.HolProg 64 :=
.seq rawBody205_7 rawBody205_12

def rawBody205_14 : StackLang.HolProg 64 :=
.seq rawBody205_6 rawBody205_13

def rawBody205_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody205_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 258#64)

def rawBody205_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody205_18 : StackLang.HolProg 64 :=
.seq rawBody205_16 rawBody205_17

def rawBody205_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody205_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody205_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody205_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 205 3

def rawBody205_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody205_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody205_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody205_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody205_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody205_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody205_29 : StackLang.HolProg 64 :=
.seq rawBody205_27 rawBody205_28

def rawBody205_30 : StackLang.HolProg 64 :=
.seq rawBody205_26 rawBody205_29

def rawBody205_31 : StackLang.HolProg 64 :=
.seq rawBody205_25 rawBody205_30

def rawBody205_32 : StackLang.HolProg 64 :=
.seq rawBody205_24 rawBody205_31

def rawBody205_33 : StackLang.HolProg 64 :=
.seq rawBody205_23 rawBody205_32

def rawBody205_34 : StackLang.HolProg 64 :=
.seq rawBody205_22 rawBody205_33

def rawBody205_35 : StackLang.HolProg 64 :=
.seq rawBody205_21 rawBody205_34

def rawBody205_36 : StackLang.HolProg 64 :=
.seq rawBody205_20 rawBody205_35

def rawBody205_37 : StackLang.HolProg 64 :=
.seq rawBody205_19 rawBody205_36

def rawBody205_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody205_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody205_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody205_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody205_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody205_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody205_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody205_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody205_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody205_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody205_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody205_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody205_50 : StackLang.HolProg 64 :=
.seq rawBody205_48 rawBody205_49

def rawBody205_51 : StackLang.HolProg 64 :=
.seq rawBody205_47 rawBody205_50

def rawBody205_52 : StackLang.HolProg 64 :=
.seq rawBody205_46 rawBody205_51

def rawBody205_53 : StackLang.HolProg 64 :=
.seq rawBody205_45 rawBody205_52

def rawBody205_54 : StackLang.HolProg 64 :=
.seq rawBody205_44 rawBody205_53

def rawBody205_55 : StackLang.HolProg 64 :=
.seq rawBody205_43 rawBody205_54

def rawBody205_56 : StackLang.HolProg 64 :=
.seq rawBody205_42 rawBody205_55

def rawBody205_57 : StackLang.HolProg 64 :=
.seq rawBody205_41 rawBody205_56

def rawBody205_58 : StackLang.HolProg 64 :=
.seq rawBody205_40 rawBody205_57

def rawBody205_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody205_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody205_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody205_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody205_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody205_64 : StackLang.HolProg 64 :=
.seq rawBody205_62 rawBody205_63

def rawBody205_65 : StackLang.HolProg 64 :=
.seq rawBody205_61 rawBody205_64

def rawBody205_66 : StackLang.HolProg 64 :=
.seq rawBody205_60 rawBody205_65

def rawBody205_67 : StackLang.HolProg 64 :=
.seq rawBody205_59 rawBody205_66

def rawBody205_68 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody205_69 : StackLang.HolProg 64 :=
.seq rawBody205_67 rawBody205_68

def rawBody205_70 : StackLang.HolProg 64 :=
.call (some (rawBody205_58, 0, 205, 2)) (Sum.inl 106) (some (rawBody205_69, 205, 3))

def rawBody205_71 : StackLang.HolProg 64 :=
.seq rawBody205_39 rawBody205_70

def rawBody205_72 : StackLang.HolProg 64 :=
.seq rawBody205_38 rawBody205_71

def rawBody205_73 : StackLang.HolProg 64 :=
.seq rawBody205_37 rawBody205_72

def rawBody205_74 : StackLang.HolProg 64 :=
.seq rawBody205_18 rawBody205_73

def rawBody205_75 : StackLang.HolProg 64 :=
.seq rawBody205_15 rawBody205_74

def rawBody205_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody205_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody205_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody205_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody205_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody205_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def rawBody205_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def rawBody205_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def rawBody205_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583343#64)

def rawBody205_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody205_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody205_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody205_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def rawBody205_89 : StackLang.HolProg 64 :=
.seq rawBody205_87 rawBody205_88

def rawBody205_90 : StackLang.HolProg 64 :=
.seq rawBody205_86 rawBody205_89

def rawBody205_91 : StackLang.HolProg 64 :=
.seq rawBody205_85 rawBody205_90

def rawBody205_92 : StackLang.HolProg 64 :=
.seq rawBody205_84 rawBody205_91

def rawBody205_93 : StackLang.HolProg 64 :=
.seq rawBody205_83 rawBody205_92

def rawBody205_94 : StackLang.HolProg 64 :=
.seq rawBody205_82 rawBody205_93

def rawBody205_95 : StackLang.HolProg 64 :=
.seq rawBody205_81 rawBody205_94

def rawBody205_96 : StackLang.HolProg 64 :=
.seq rawBody205_80 rawBody205_95

def rawBody205_97 : StackLang.HolProg 64 :=
.seq rawBody205_79 rawBody205_96

def rawBody205_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody205_99 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody205_97 rawBody205_98

def rawBody205_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody205_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody205_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody205_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody205_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody205_105 : StackLang.HolProg 64 :=
.seq rawBody205_103 rawBody205_104

def rawBody205_106 : StackLang.HolProg 64 :=
.seq rawBody205_102 rawBody205_105

def rawBody205_107 : StackLang.HolProg 64 :=
.seq rawBody205_101 rawBody205_106

def rawBody205_108 : StackLang.HolProg 64 :=
.seq rawBody205_100 rawBody205_107

def rawBody205_109 : StackLang.HolProg 64 :=
.seq rawBody205_99 rawBody205_108

def rawBody205_110 : StackLang.HolProg 64 :=
.seq rawBody205_78 rawBody205_109

def rawBody205_111 : StackLang.HolProg 64 :=
.seq rawBody205_77 rawBody205_110

def rawBody205_112 : StackLang.HolProg 64 :=
.seq rawBody205_76 rawBody205_111

def rawBody205_113 : StackLang.HolProg 64 :=
.seq rawBody205_75 rawBody205_112

def rawBody205_114 : StackLang.HolProg 64 :=
.seq rawBody205_14 rawBody205_113

def rawBody205_115 : StackLang.HolProg 64 :=
.seq rawBody205_5 rawBody205_114

def rawBody205_116 : StackLang.HolProg 64 :=
.seq rawBody205_4 rawBody205_115

def rawBody205_117 : StackLang.HolProg 64 :=
.seq rawBody205_3 rawBody205_116

def rawBody205_118 : StackLang.HolProg 64 :=
.seq rawBody205_2 rawBody205_117

def rawBody205_119 : StackLang.HolProg 64 :=
.seq rawBody205_1 rawBody205_118

def rawBody205_120 : StackLang.HolProg 64 :=
.seq rawBody205_0 rawBody205_119

def raw205 : StackLang.HolProg 64 := rawBody205_120
theorem raw205_eq : StackRawCall.compTop RawInfo.rawInfo (function205 (.list [])).1 = raw205 := by
  kernel_rfl
#print axioms raw205_eq
end InitECandidate.Proofs.BackendStages
