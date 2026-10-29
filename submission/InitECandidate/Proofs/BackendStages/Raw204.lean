import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function204
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody204_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def rawBody204_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody204_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def rawBody204_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody204_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def rawBody204_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody204_6 : StackLang.HolProg 64 :=
.seq rawBody204_4 rawBody204_5

def rawBody204_7 : StackLang.HolProg 64 :=
.seq rawBody204_3 rawBody204_6

def rawBody204_8 : StackLang.HolProg 64 :=
.seq rawBody204_2 rawBody204_7

def rawBody204_9 : StackLang.HolProg 64 :=
.seq rawBody204_1 rawBody204_8

def rawBody204_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody204_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 257#64)

def rawBody204_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody204_13 : StackLang.HolProg 64 :=
.seq rawBody204_11 rawBody204_12

def rawBody204_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody204_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody204_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody204_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 204 3

def rawBody204_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody204_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody204_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody204_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody204_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody204_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody204_24 : StackLang.HolProg 64 :=
.seq rawBody204_22 rawBody204_23

def rawBody204_25 : StackLang.HolProg 64 :=
.seq rawBody204_21 rawBody204_24

def rawBody204_26 : StackLang.HolProg 64 :=
.seq rawBody204_20 rawBody204_25

def rawBody204_27 : StackLang.HolProg 64 :=
.seq rawBody204_19 rawBody204_26

def rawBody204_28 : StackLang.HolProg 64 :=
.seq rawBody204_18 rawBody204_27

def rawBody204_29 : StackLang.HolProg 64 :=
.seq rawBody204_17 rawBody204_28

def rawBody204_30 : StackLang.HolProg 64 :=
.seq rawBody204_16 rawBody204_29

def rawBody204_31 : StackLang.HolProg 64 :=
.seq rawBody204_15 rawBody204_30

def rawBody204_32 : StackLang.HolProg 64 :=
.seq rawBody204_14 rawBody204_31

def rawBody204_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody204_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody204_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody204_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody204_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody204_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody204_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody204_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody204_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 4

def rawBody204_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def rawBody204_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody204_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def rawBody204_45 : StackLang.HolProg 64 :=
.seq rawBody204_43 rawBody204_44

def rawBody204_46 : StackLang.HolProg 64 :=
.seq rawBody204_42 rawBody204_45

def rawBody204_47 : StackLang.HolProg 64 :=
.seq rawBody204_41 rawBody204_46

def rawBody204_48 : StackLang.HolProg 64 :=
.seq rawBody204_40 rawBody204_47

def rawBody204_49 : StackLang.HolProg 64 :=
.seq rawBody204_39 rawBody204_48

def rawBody204_50 : StackLang.HolProg 64 :=
.seq rawBody204_38 rawBody204_49

def rawBody204_51 : StackLang.HolProg 64 :=
.seq rawBody204_37 rawBody204_50

def rawBody204_52 : StackLang.HolProg 64 :=
.seq rawBody204_36 rawBody204_51

def rawBody204_53 : StackLang.HolProg 64 :=
.seq rawBody204_35 rawBody204_52

def rawBody204_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody204_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 4

def rawBody204_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def rawBody204_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody204_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def rawBody204_59 : StackLang.HolProg 64 :=
.seq rawBody204_57 rawBody204_58

def rawBody204_60 : StackLang.HolProg 64 :=
.seq rawBody204_56 rawBody204_59

def rawBody204_61 : StackLang.HolProg 64 :=
.seq rawBody204_55 rawBody204_60

def rawBody204_62 : StackLang.HolProg 64 :=
.seq rawBody204_54 rawBody204_61

def rawBody204_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody204_64 : StackLang.HolProg 64 :=
.seq rawBody204_62 rawBody204_63

def rawBody204_65 : StackLang.HolProg 64 :=
.call (some (rawBody204_53, 0, 204, 2)) (Sum.inl 102) (some (rawBody204_64, 204, 3))

def rawBody204_66 : StackLang.HolProg 64 :=
.seq rawBody204_34 rawBody204_65

def rawBody204_67 : StackLang.HolProg 64 :=
.seq rawBody204_33 rawBody204_66

def rawBody204_68 : StackLang.HolProg 64 :=
.seq rawBody204_32 rawBody204_67

def rawBody204_69 : StackLang.HolProg 64 :=
.seq rawBody204_13 rawBody204_68

def rawBody204_70 : StackLang.HolProg 64 :=
.seq rawBody204_10 rawBody204_69

def rawBody204_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody204_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody204_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody204_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody204_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody204_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody204_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody204_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody204_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody204_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody204_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody204_82 : StackLang.HolProg 64 :=
.seq rawBody204_80 rawBody204_81

def rawBody204_83 : StackLang.HolProg 64 :=
.seq rawBody204_79 rawBody204_82

def rawBody204_84 : StackLang.HolProg 64 :=
.seq rawBody204_78 rawBody204_83

def rawBody204_85 : StackLang.HolProg 64 :=
.seq rawBody204_77 rawBody204_84

def rawBody204_86 : StackLang.HolProg 64 :=
.seq rawBody204_76 rawBody204_85

def rawBody204_87 : StackLang.HolProg 64 :=
.seq rawBody204_75 rawBody204_86

def rawBody204_88 : StackLang.HolProg 64 :=
.seq rawBody204_74 rawBody204_87

def rawBody204_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody204_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody204_88 rawBody204_89

def rawBody204_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody204_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody204_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody204_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 18446744073709551615#64)

def rawBody204_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 18446744073709551615#64)

def rawBody204_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 18446744073709551615#64)

def rawBody204_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744069414583343#64)

def rawBody204_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody204_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody204_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody204_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def rawBody204_102 : StackLang.HolProg 64 :=
.seq rawBody204_100 rawBody204_101

def rawBody204_103 : StackLang.HolProg 64 :=
.seq rawBody204_99 rawBody204_102

def rawBody204_104 : StackLang.HolProg 64 :=
.seq rawBody204_98 rawBody204_103

def rawBody204_105 : StackLang.HolProg 64 :=
.seq rawBody204_97 rawBody204_104

def rawBody204_106 : StackLang.HolProg 64 :=
.seq rawBody204_96 rawBody204_105

def rawBody204_107 : StackLang.HolProg 64 :=
.seq rawBody204_95 rawBody204_106

def rawBody204_108 : StackLang.HolProg 64 :=
.seq rawBody204_94 rawBody204_107

def rawBody204_109 : StackLang.HolProg 64 :=
.seq rawBody204_93 rawBody204_108

def rawBody204_110 : StackLang.HolProg 64 :=
.seq rawBody204_92 rawBody204_109

def rawBody204_111 : StackLang.HolProg 64 :=
.seq rawBody204_91 rawBody204_110

def rawBody204_112 : StackLang.HolProg 64 :=
.seq rawBody204_90 rawBody204_111

def rawBody204_113 : StackLang.HolProg 64 :=
.seq rawBody204_73 rawBody204_112

def rawBody204_114 : StackLang.HolProg 64 :=
.seq rawBody204_72 rawBody204_113

def rawBody204_115 : StackLang.HolProg 64 :=
.seq rawBody204_71 rawBody204_114

def rawBody204_116 : StackLang.HolProg 64 :=
.seq rawBody204_70 rawBody204_115

def rawBody204_117 : StackLang.HolProg 64 :=
.seq rawBody204_9 rawBody204_116

def rawBody204_118 : StackLang.HolProg 64 :=
.seq rawBody204_0 rawBody204_117

def raw204 : StackLang.HolProg 64 := rawBody204_118
theorem raw204_eq : StackRawCall.compTop RawInfo.rawInfo (function204 (.list [])).1 = raw204 := by
  kernel_rfl
#print axioms raw204_eq
end InitECandidate.Proofs.BackendStages
