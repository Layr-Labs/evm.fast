import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function565
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody565_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody565_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody565_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody565_3 : StackLang.HolProg 64 :=
.seq rawBody565_1 rawBody565_2

def rawBody565_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody565_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1932#64)

def rawBody565_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody565_7 : StackLang.HolProg 64 :=
.seq rawBody565_5 rawBody565_6

def rawBody565_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody565_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody565_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody565_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 565 3

def rawBody565_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody565_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody565_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody565_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody565_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody565_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody565_18 : StackLang.HolProg 64 :=
.seq rawBody565_16 rawBody565_17

def rawBody565_19 : StackLang.HolProg 64 :=
.seq rawBody565_15 rawBody565_18

def rawBody565_20 : StackLang.HolProg 64 :=
.seq rawBody565_14 rawBody565_19

def rawBody565_21 : StackLang.HolProg 64 :=
.seq rawBody565_13 rawBody565_20

def rawBody565_22 : StackLang.HolProg 64 :=
.seq rawBody565_12 rawBody565_21

def rawBody565_23 : StackLang.HolProg 64 :=
.seq rawBody565_11 rawBody565_22

def rawBody565_24 : StackLang.HolProg 64 :=
.seq rawBody565_10 rawBody565_23

def rawBody565_25 : StackLang.HolProg 64 :=
.seq rawBody565_9 rawBody565_24

def rawBody565_26 : StackLang.HolProg 64 :=
.seq rawBody565_8 rawBody565_25

def rawBody565_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody565_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody565_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody565_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody565_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody565_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody565_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody565_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody565_35 : StackLang.HolProg 64 :=
.seq rawBody565_33 rawBody565_34

def rawBody565_36 : StackLang.HolProg 64 :=
.seq rawBody565_32 rawBody565_35

def rawBody565_37 : StackLang.HolProg 64 :=
.seq rawBody565_31 rawBody565_36

def rawBody565_38 : StackLang.HolProg 64 :=
.seq rawBody565_30 rawBody565_37

def rawBody565_39 : StackLang.HolProg 64 :=
.seq rawBody565_29 rawBody565_38

def rawBody565_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody565_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody565_42 : StackLang.HolProg 64 :=
.seq rawBody565_40 rawBody565_41

def rawBody565_43 : StackLang.HolProg 64 :=
.call (some (rawBody565_39, 0, 565, 2)) (Sum.inl 407) (some (rawBody565_42, 565, 3))

def rawBody565_44 : StackLang.HolProg 64 :=
.seq rawBody565_28 rawBody565_43

def rawBody565_45 : StackLang.HolProg 64 :=
.seq rawBody565_27 rawBody565_44

def rawBody565_46 : StackLang.HolProg 64 :=
.seq rawBody565_26 rawBody565_45

def rawBody565_47 : StackLang.HolProg 64 :=
.seq rawBody565_7 rawBody565_46

def rawBody565_48 : StackLang.HolProg 64 :=
.seq rawBody565_4 rawBody565_47

def rawBody565_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody565_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody565_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 48#64))

def rawBody565_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody565_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody565_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1933#64)

def rawBody565_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody565_56 : StackLang.HolProg 64 :=
.seq rawBody565_54 rawBody565_55

def rawBody565_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody565_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody565_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody565_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 565 5

def rawBody565_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody565_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody565_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody565_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody565_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody565_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody565_67 : StackLang.HolProg 64 :=
.seq rawBody565_65 rawBody565_66

def rawBody565_68 : StackLang.HolProg 64 :=
.seq rawBody565_64 rawBody565_67

def rawBody565_69 : StackLang.HolProg 64 :=
.seq rawBody565_63 rawBody565_68

def rawBody565_70 : StackLang.HolProg 64 :=
.seq rawBody565_62 rawBody565_69

def rawBody565_71 : StackLang.HolProg 64 :=
.seq rawBody565_61 rawBody565_70

def rawBody565_72 : StackLang.HolProg 64 :=
.seq rawBody565_60 rawBody565_71

def rawBody565_73 : StackLang.HolProg 64 :=
.seq rawBody565_59 rawBody565_72

def rawBody565_74 : StackLang.HolProg 64 :=
.seq rawBody565_58 rawBody565_73

def rawBody565_75 : StackLang.HolProg 64 :=
.seq rawBody565_57 rawBody565_74

def rawBody565_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody565_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody565_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody565_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody565_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody565_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody565_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody565_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody565_84 : StackLang.HolProg 64 :=
.seq rawBody565_82 rawBody565_83

def rawBody565_85 : StackLang.HolProg 64 :=
.seq rawBody565_81 rawBody565_84

def rawBody565_86 : StackLang.HolProg 64 :=
.seq rawBody565_80 rawBody565_85

def rawBody565_87 : StackLang.HolProg 64 :=
.seq rawBody565_79 rawBody565_86

def rawBody565_88 : StackLang.HolProg 64 :=
.seq rawBody565_78 rawBody565_87

def rawBody565_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody565_90 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody565_91 : StackLang.HolProg 64 :=
.seq rawBody565_89 rawBody565_90

def rawBody565_92 : StackLang.HolProg 64 :=
.call (some (rawBody565_88, 0, 565, 4)) (Sum.inl 408) (some (rawBody565_91, 565, 5))

def rawBody565_93 : StackLang.HolProg 64 :=
.seq rawBody565_77 rawBody565_92

def rawBody565_94 : StackLang.HolProg 64 :=
.seq rawBody565_76 rawBody565_93

def rawBody565_95 : StackLang.HolProg 64 :=
.seq rawBody565_75 rawBody565_94

def rawBody565_96 : StackLang.HolProg 64 :=
.seq rawBody565_56 rawBody565_95

def rawBody565_97 : StackLang.HolProg 64 :=
.seq rawBody565_53 rawBody565_96

def rawBody565_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody565_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody565_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody565_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody565_102 : StackLang.HolProg 64 :=
.seq rawBody565_100 rawBody565_101

def rawBody565_103 : StackLang.HolProg 64 :=
.seq rawBody565_99 rawBody565_102

def rawBody565_104 : StackLang.HolProg 64 :=
.seq rawBody565_98 rawBody565_103

def rawBody565_105 : StackLang.HolProg 64 :=
.seq rawBody565_97 rawBody565_104

def rawBody565_106 : StackLang.HolProg 64 :=
.seq rawBody565_52 rawBody565_105

def rawBody565_107 : StackLang.HolProg 64 :=
.seq rawBody565_51 rawBody565_106

def rawBody565_108 : StackLang.HolProg 64 :=
.seq rawBody565_50 rawBody565_107

def rawBody565_109 : StackLang.HolProg 64 :=
.seq rawBody565_49 rawBody565_108

def rawBody565_110 : StackLang.HolProg 64 :=
.seq rawBody565_48 rawBody565_109

def rawBody565_111 : StackLang.HolProg 64 :=
.seq rawBody565_3 rawBody565_110

def rawBody565_112 : StackLang.HolProg 64 :=
.seq rawBody565_0 rawBody565_111

def raw565 : StackLang.HolProg 64 := rawBody565_112
theorem raw565_eq : StackRawCall.compTop RawInfo.rawInfo (function565 (.list [])).1 = raw565 := by
  kernel_rfl
#print axioms raw565_eq
end InitECandidate.Proofs.BackendStages
