import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function764
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody764_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody764_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody764_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody764_3 : StackLang.HolProg 64 :=
.seq rawBody764_1 rawBody764_2

def rawBody764_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody764_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3424#64)

def rawBody764_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody764_7 : StackLang.HolProg 64 :=
.seq rawBody764_5 rawBody764_6

def rawBody764_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody764_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody764_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody764_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 764 3

def rawBody764_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody764_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody764_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody764_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody764_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody764_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody764_18 : StackLang.HolProg 64 :=
.seq rawBody764_16 rawBody764_17

def rawBody764_19 : StackLang.HolProg 64 :=
.seq rawBody764_15 rawBody764_18

def rawBody764_20 : StackLang.HolProg 64 :=
.seq rawBody764_14 rawBody764_19

def rawBody764_21 : StackLang.HolProg 64 :=
.seq rawBody764_13 rawBody764_20

def rawBody764_22 : StackLang.HolProg 64 :=
.seq rawBody764_12 rawBody764_21

def rawBody764_23 : StackLang.HolProg 64 :=
.seq rawBody764_11 rawBody764_22

def rawBody764_24 : StackLang.HolProg 64 :=
.seq rawBody764_10 rawBody764_23

def rawBody764_25 : StackLang.HolProg 64 :=
.seq rawBody764_9 rawBody764_24

def rawBody764_26 : StackLang.HolProg 64 :=
.seq rawBody764_8 rawBody764_25

def rawBody764_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody764_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody764_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody764_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody764_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody764_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody764_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody764_34 : StackLang.HolProg 64 :=
.seq rawBody764_32 rawBody764_33

def rawBody764_35 : StackLang.HolProg 64 :=
.seq rawBody764_31 rawBody764_34

def rawBody764_36 : StackLang.HolProg 64 :=
.seq rawBody764_30 rawBody764_35

def rawBody764_37 : StackLang.HolProg 64 :=
.seq rawBody764_29 rawBody764_36

def rawBody764_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody764_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody764_40 : StackLang.HolProg 64 :=
.seq rawBody764_38 rawBody764_39

def rawBody764_41 : StackLang.HolProg 64 :=
.call (some (rawBody764_37, 0, 764, 2)) (Sum.inl 763) (some (rawBody764_40, 764, 3))

def rawBody764_42 : StackLang.HolProg 64 :=
.seq rawBody764_28 rawBody764_41

def rawBody764_43 : StackLang.HolProg 64 :=
.seq rawBody764_27 rawBody764_42

def rawBody764_44 : StackLang.HolProg 64 :=
.seq rawBody764_26 rawBody764_43

def rawBody764_45 : StackLang.HolProg 64 :=
.seq rawBody764_7 rawBody764_44

def rawBody764_46 : StackLang.HolProg 64 :=
.seq rawBody764_4 rawBody764_45

def rawBody764_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody764_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody764_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody764_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3425#64)

def rawBody764_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody764_52 : StackLang.HolProg 64 :=
.seq rawBody764_50 rawBody764_51

def rawBody764_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody764_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody764_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody764_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 764 5

def rawBody764_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody764_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody764_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody764_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody764_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody764_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody764_63 : StackLang.HolProg 64 :=
.seq rawBody764_61 rawBody764_62

def rawBody764_64 : StackLang.HolProg 64 :=
.seq rawBody764_60 rawBody764_63

def rawBody764_65 : StackLang.HolProg 64 :=
.seq rawBody764_59 rawBody764_64

def rawBody764_66 : StackLang.HolProg 64 :=
.seq rawBody764_58 rawBody764_65

def rawBody764_67 : StackLang.HolProg 64 :=
.seq rawBody764_57 rawBody764_66

def rawBody764_68 : StackLang.HolProg 64 :=
.seq rawBody764_56 rawBody764_67

def rawBody764_69 : StackLang.HolProg 64 :=
.seq rawBody764_55 rawBody764_68

def rawBody764_70 : StackLang.HolProg 64 :=
.seq rawBody764_54 rawBody764_69

def rawBody764_71 : StackLang.HolProg 64 :=
.seq rawBody764_53 rawBody764_70

def rawBody764_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody764_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody764_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody764_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody764_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody764_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody764_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody764_79 : StackLang.HolProg 64 :=
.seq rawBody764_77 rawBody764_78

def rawBody764_80 : StackLang.HolProg 64 :=
.seq rawBody764_76 rawBody764_79

def rawBody764_81 : StackLang.HolProg 64 :=
.seq rawBody764_75 rawBody764_80

def rawBody764_82 : StackLang.HolProg 64 :=
.seq rawBody764_74 rawBody764_81

def rawBody764_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody764_84 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody764_85 : StackLang.HolProg 64 :=
.seq rawBody764_83 rawBody764_84

def rawBody764_86 : StackLang.HolProg 64 :=
.call (some (rawBody764_82, 0, 764, 4)) (Sum.inl 760) (some (rawBody764_85, 764, 5))

def rawBody764_87 : StackLang.HolProg 64 :=
.seq rawBody764_73 rawBody764_86

def rawBody764_88 : StackLang.HolProg 64 :=
.seq rawBody764_72 rawBody764_87

def rawBody764_89 : StackLang.HolProg 64 :=
.seq rawBody764_71 rawBody764_88

def rawBody764_90 : StackLang.HolProg 64 :=
.seq rawBody764_52 rawBody764_89

def rawBody764_91 : StackLang.HolProg 64 :=
.seq rawBody764_49 rawBody764_90

def rawBody764_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody764_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody764_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody764_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody764_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody764_97 : StackLang.HolProg 64 :=
.seq rawBody764_95 rawBody764_96

def rawBody764_98 : StackLang.HolProg 64 :=
.seq rawBody764_94 rawBody764_97

def rawBody764_99 : StackLang.HolProg 64 :=
.seq rawBody764_93 rawBody764_98

def rawBody764_100 : StackLang.HolProg 64 :=
.seq rawBody764_92 rawBody764_99

def rawBody764_101 : StackLang.HolProg 64 :=
.seq rawBody764_91 rawBody764_100

def rawBody764_102 : StackLang.HolProg 64 :=
.seq rawBody764_48 rawBody764_101

def rawBody764_103 : StackLang.HolProg 64 :=
.seq rawBody764_47 rawBody764_102

def rawBody764_104 : StackLang.HolProg 64 :=
.seq rawBody764_46 rawBody764_103

def rawBody764_105 : StackLang.HolProg 64 :=
.seq rawBody764_3 rawBody764_104

def rawBody764_106 : StackLang.HolProg 64 :=
.seq rawBody764_0 rawBody764_105

def raw764 : StackLang.HolProg 64 := rawBody764_106
theorem raw764_eq : StackRawCall.compTop RawInfo.rawInfo (function764 (.list [])).1 = raw764 := by
  kernel_rfl
#print axioms raw764_eq
end InitECandidate.Proofs.BackendStages
