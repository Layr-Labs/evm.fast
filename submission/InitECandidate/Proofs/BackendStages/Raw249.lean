import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function249
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody249_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody249_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody249_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody249_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 506#64)

def rawBody249_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody249_5 : StackLang.HolProg 64 :=
.seq rawBody249_3 rawBody249_4

def rawBody249_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody249_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody249_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody249_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 249 3

def rawBody249_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody249_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody249_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody249_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody249_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody249_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody249_16 : StackLang.HolProg 64 :=
.seq rawBody249_14 rawBody249_15

def rawBody249_17 : StackLang.HolProg 64 :=
.seq rawBody249_13 rawBody249_16

def rawBody249_18 : StackLang.HolProg 64 :=
.seq rawBody249_12 rawBody249_17

def rawBody249_19 : StackLang.HolProg 64 :=
.seq rawBody249_11 rawBody249_18

def rawBody249_20 : StackLang.HolProg 64 :=
.seq rawBody249_10 rawBody249_19

def rawBody249_21 : StackLang.HolProg 64 :=
.seq rawBody249_9 rawBody249_20

def rawBody249_22 : StackLang.HolProg 64 :=
.seq rawBody249_8 rawBody249_21

def rawBody249_23 : StackLang.HolProg 64 :=
.seq rawBody249_7 rawBody249_22

def rawBody249_24 : StackLang.HolProg 64 :=
.seq rawBody249_6 rawBody249_23

def rawBody249_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody249_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody249_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody249_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody249_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody249_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody249_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody249_32 : StackLang.HolProg 64 :=
.seq rawBody249_30 rawBody249_31

def rawBody249_33 : StackLang.HolProg 64 :=
.seq rawBody249_29 rawBody249_32

def rawBody249_34 : StackLang.HolProg 64 :=
.seq rawBody249_28 rawBody249_33

def rawBody249_35 : StackLang.HolProg 64 :=
.seq rawBody249_27 rawBody249_34

def rawBody249_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody249_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody249_38 : StackLang.HolProg 64 :=
.seq rawBody249_36 rawBody249_37

def rawBody249_39 : StackLang.HolProg 64 :=
.call (some (rawBody249_35, 0, 249, 2)) (Sum.inl 248) (some (rawBody249_38, 249, 3))

def rawBody249_40 : StackLang.HolProg 64 :=
.seq rawBody249_26 rawBody249_39

def rawBody249_41 : StackLang.HolProg 64 :=
.seq rawBody249_25 rawBody249_40

def rawBody249_42 : StackLang.HolProg 64 :=
.seq rawBody249_24 rawBody249_41

def rawBody249_43 : StackLang.HolProg 64 :=
.seq rawBody249_5 rawBody249_42

def rawBody249_44 : StackLang.HolProg 64 :=
.seq rawBody249_2 rawBody249_43

def rawBody249_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody249_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody249_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody249_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 507#64)

def rawBody249_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody249_50 : StackLang.HolProg 64 :=
.seq rawBody249_48 rawBody249_49

def rawBody249_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody249_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody249_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody249_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 249 5

def rawBody249_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody249_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody249_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody249_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody249_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody249_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody249_61 : StackLang.HolProg 64 :=
.seq rawBody249_59 rawBody249_60

def rawBody249_62 : StackLang.HolProg 64 :=
.seq rawBody249_58 rawBody249_61

def rawBody249_63 : StackLang.HolProg 64 :=
.seq rawBody249_57 rawBody249_62

def rawBody249_64 : StackLang.HolProg 64 :=
.seq rawBody249_56 rawBody249_63

def rawBody249_65 : StackLang.HolProg 64 :=
.seq rawBody249_55 rawBody249_64

def rawBody249_66 : StackLang.HolProg 64 :=
.seq rawBody249_54 rawBody249_65

def rawBody249_67 : StackLang.HolProg 64 :=
.seq rawBody249_53 rawBody249_66

def rawBody249_68 : StackLang.HolProg 64 :=
.seq rawBody249_52 rawBody249_67

def rawBody249_69 : StackLang.HolProg 64 :=
.seq rawBody249_51 rawBody249_68

def rawBody249_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody249_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody249_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody249_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody249_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody249_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody249_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody249_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody249_78 : StackLang.HolProg 64 :=
.seq rawBody249_76 rawBody249_77

def rawBody249_79 : StackLang.HolProg 64 :=
.seq rawBody249_75 rawBody249_78

def rawBody249_80 : StackLang.HolProg 64 :=
.seq rawBody249_74 rawBody249_79

def rawBody249_81 : StackLang.HolProg 64 :=
.seq rawBody249_73 rawBody249_80

def rawBody249_82 : StackLang.HolProg 64 :=
.seq rawBody249_72 rawBody249_81

def rawBody249_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody249_84 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody249_85 : StackLang.HolProg 64 :=
.seq rawBody249_83 rawBody249_84

def rawBody249_86 : StackLang.HolProg 64 :=
.call (some (rawBody249_82, 0, 249, 4)) (Sum.inl 90) (some (rawBody249_85, 249, 5))

def rawBody249_87 : StackLang.HolProg 64 :=
.seq rawBody249_71 rawBody249_86

def rawBody249_88 : StackLang.HolProg 64 :=
.seq rawBody249_70 rawBody249_87

def rawBody249_89 : StackLang.HolProg 64 :=
.seq rawBody249_69 rawBody249_88

def rawBody249_90 : StackLang.HolProg 64 :=
.seq rawBody249_50 rawBody249_89

def rawBody249_91 : StackLang.HolProg 64 :=
.seq rawBody249_47 rawBody249_90

def rawBody249_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody249_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody249_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody249_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody249_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 15

def rawBody249_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 256

def rawBody249_98 : StackLang.HolProg 64 :=
.seq rawBody249_96 rawBody249_97

def rawBody249_99 : StackLang.HolProg 64 :=
.seq rawBody249_95 rawBody249_98

def rawBody249_100 : StackLang.HolProg 64 :=
.seq rawBody249_94 rawBody249_99

def rawBody249_101 : StackLang.HolProg 64 :=
.seq rawBody249_93 rawBody249_100

def rawBody249_102 : StackLang.HolProg 64 :=
.seq rawBody249_92 rawBody249_101

def rawBody249_103 : StackLang.HolProg 64 :=
.seq rawBody249_91 rawBody249_102

def rawBody249_104 : StackLang.HolProg 64 :=
.seq rawBody249_46 rawBody249_103

def rawBody249_105 : StackLang.HolProg 64 :=
.seq rawBody249_45 rawBody249_104

def rawBody249_106 : StackLang.HolProg 64 :=
.seq rawBody249_44 rawBody249_105

def rawBody249_107 : StackLang.HolProg 64 :=
.seq rawBody249_1 rawBody249_106

def rawBody249_108 : StackLang.HolProg 64 :=
.seq rawBody249_0 rawBody249_107

def raw249 : StackLang.HolProg 64 := rawBody249_108
theorem raw249_eq : StackRawCall.compTop RawInfo.rawInfo (function249 (.list [])).1 = raw249 := by
  kernel_rfl
#print axioms raw249_eq
end InitECandidate.Proofs.BackendStages
