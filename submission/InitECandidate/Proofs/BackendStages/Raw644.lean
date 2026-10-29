import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function644
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody644_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def rawBody644_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody644_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744069414584321#64)

def rawBody644_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def rawBody644_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 4294967295#64)

def rawBody644_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744073709551615#64)

def rawBody644_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody644_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def rawBody644_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody644_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def rawBody644_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody644_11 : StackLang.HolProg 64 :=
.seq rawBody644_9 rawBody644_10

def rawBody644_12 : StackLang.HolProg 64 :=
.seq rawBody644_8 rawBody644_11

def rawBody644_13 : StackLang.HolProg 64 :=
.seq rawBody644_7 rawBody644_12

def rawBody644_14 : StackLang.HolProg 64 :=
.seq rawBody644_6 rawBody644_13

def rawBody644_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody644_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2624#64)

def rawBody644_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody644_18 : StackLang.HolProg 64 :=
.seq rawBody644_16 rawBody644_17

def rawBody644_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody644_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody644_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody644_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 644 3

def rawBody644_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody644_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody644_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody644_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody644_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody644_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody644_29 : StackLang.HolProg 64 :=
.seq rawBody644_27 rawBody644_28

def rawBody644_30 : StackLang.HolProg 64 :=
.seq rawBody644_26 rawBody644_29

def rawBody644_31 : StackLang.HolProg 64 :=
.seq rawBody644_25 rawBody644_30

def rawBody644_32 : StackLang.HolProg 64 :=
.seq rawBody644_24 rawBody644_31

def rawBody644_33 : StackLang.HolProg 64 :=
.seq rawBody644_23 rawBody644_32

def rawBody644_34 : StackLang.HolProg 64 :=
.seq rawBody644_22 rawBody644_33

def rawBody644_35 : StackLang.HolProg 64 :=
.seq rawBody644_21 rawBody644_34

def rawBody644_36 : StackLang.HolProg 64 :=
.seq rawBody644_20 rawBody644_35

def rawBody644_37 : StackLang.HolProg 64 :=
.seq rawBody644_19 rawBody644_36

def rawBody644_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody644_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody644_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody644_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody644_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody644_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody644_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody644_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody644_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody644_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody644_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody644_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody644_50 : StackLang.HolProg 64 :=
.seq rawBody644_48 rawBody644_49

def rawBody644_51 : StackLang.HolProg 64 :=
.seq rawBody644_47 rawBody644_50

def rawBody644_52 : StackLang.HolProg 64 :=
.seq rawBody644_46 rawBody644_51

def rawBody644_53 : StackLang.HolProg 64 :=
.seq rawBody644_45 rawBody644_52

def rawBody644_54 : StackLang.HolProg 64 :=
.seq rawBody644_44 rawBody644_53

def rawBody644_55 : StackLang.HolProg 64 :=
.seq rawBody644_43 rawBody644_54

def rawBody644_56 : StackLang.HolProg 64 :=
.seq rawBody644_42 rawBody644_55

def rawBody644_57 : StackLang.HolProg 64 :=
.seq rawBody644_41 rawBody644_56

def rawBody644_58 : StackLang.HolProg 64 :=
.seq rawBody644_40 rawBody644_57

def rawBody644_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody644_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody644_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody644_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody644_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody644_64 : StackLang.HolProg 64 :=
.seq rawBody644_62 rawBody644_63

def rawBody644_65 : StackLang.HolProg 64 :=
.seq rawBody644_61 rawBody644_64

def rawBody644_66 : StackLang.HolProg 64 :=
.seq rawBody644_60 rawBody644_65

def rawBody644_67 : StackLang.HolProg 64 :=
.seq rawBody644_59 rawBody644_66

def rawBody644_68 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody644_69 : StackLang.HolProg 64 :=
.seq rawBody644_67 rawBody644_68

def rawBody644_70 : StackLang.HolProg 64 :=
.call (some (rawBody644_58, 0, 644, 2)) (Sum.inl 106) (some (rawBody644_69, 644, 3))

def rawBody644_71 : StackLang.HolProg 64 :=
.seq rawBody644_39 rawBody644_70

def rawBody644_72 : StackLang.HolProg 64 :=
.seq rawBody644_38 rawBody644_71

def rawBody644_73 : StackLang.HolProg 64 :=
.seq rawBody644_37 rawBody644_72

def rawBody644_74 : StackLang.HolProg 64 :=
.seq rawBody644_18 rawBody644_73

def rawBody644_75 : StackLang.HolProg 64 :=
.seq rawBody644_15 rawBody644_74

def rawBody644_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody644_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody644_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody644_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody644_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody644_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744069414584321#64)

def rawBody644_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def rawBody644_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 4294967295#64)

def rawBody644_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744073709551615#64)

def rawBody644_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody644_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody644_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody644_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def rawBody644_89 : StackLang.HolProg 64 :=
.seq rawBody644_87 rawBody644_88

def rawBody644_90 : StackLang.HolProg 64 :=
.seq rawBody644_86 rawBody644_89

def rawBody644_91 : StackLang.HolProg 64 :=
.seq rawBody644_85 rawBody644_90

def rawBody644_92 : StackLang.HolProg 64 :=
.seq rawBody644_84 rawBody644_91

def rawBody644_93 : StackLang.HolProg 64 :=
.seq rawBody644_83 rawBody644_92

def rawBody644_94 : StackLang.HolProg 64 :=
.seq rawBody644_82 rawBody644_93

def rawBody644_95 : StackLang.HolProg 64 :=
.seq rawBody644_81 rawBody644_94

def rawBody644_96 : StackLang.HolProg 64 :=
.seq rawBody644_80 rawBody644_95

def rawBody644_97 : StackLang.HolProg 64 :=
.seq rawBody644_79 rawBody644_96

def rawBody644_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody644_99 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody644_97 rawBody644_98

def rawBody644_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody644_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody644_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody644_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody644_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody644_105 : StackLang.HolProg 64 :=
.seq rawBody644_103 rawBody644_104

def rawBody644_106 : StackLang.HolProg 64 :=
.seq rawBody644_102 rawBody644_105

def rawBody644_107 : StackLang.HolProg 64 :=
.seq rawBody644_101 rawBody644_106

def rawBody644_108 : StackLang.HolProg 64 :=
.seq rawBody644_100 rawBody644_107

def rawBody644_109 : StackLang.HolProg 64 :=
.seq rawBody644_99 rawBody644_108

def rawBody644_110 : StackLang.HolProg 64 :=
.seq rawBody644_78 rawBody644_109

def rawBody644_111 : StackLang.HolProg 64 :=
.seq rawBody644_77 rawBody644_110

def rawBody644_112 : StackLang.HolProg 64 :=
.seq rawBody644_76 rawBody644_111

def rawBody644_113 : StackLang.HolProg 64 :=
.seq rawBody644_75 rawBody644_112

def rawBody644_114 : StackLang.HolProg 64 :=
.seq rawBody644_14 rawBody644_113

def rawBody644_115 : StackLang.HolProg 64 :=
.seq rawBody644_5 rawBody644_114

def rawBody644_116 : StackLang.HolProg 64 :=
.seq rawBody644_4 rawBody644_115

def rawBody644_117 : StackLang.HolProg 64 :=
.seq rawBody644_3 rawBody644_116

def rawBody644_118 : StackLang.HolProg 64 :=
.seq rawBody644_2 rawBody644_117

def rawBody644_119 : StackLang.HolProg 64 :=
.seq rawBody644_1 rawBody644_118

def rawBody644_120 : StackLang.HolProg 64 :=
.seq rawBody644_0 rawBody644_119

def raw644 : StackLang.HolProg 64 := rawBody644_120
theorem raw644_eq : StackRawCall.compTop RawInfo.rawInfo (function644 (.list [])).1 = raw644 := by
  kernel_rfl
#print axioms raw644_eq
end InitECandidate.Proofs.BackendStages
