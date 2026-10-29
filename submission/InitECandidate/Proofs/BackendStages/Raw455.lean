import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function455
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody455_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody455_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody455_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody455_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1397#64)

def rawBody455_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody455_5 : StackLang.HolProg 64 :=
.seq rawBody455_3 rawBody455_4

def rawBody455_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody455_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody455_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody455_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 455 3

def rawBody455_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody455_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody455_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody455_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody455_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody455_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody455_16 : StackLang.HolProg 64 :=
.seq rawBody455_14 rawBody455_15

def rawBody455_17 : StackLang.HolProg 64 :=
.seq rawBody455_13 rawBody455_16

def rawBody455_18 : StackLang.HolProg 64 :=
.seq rawBody455_12 rawBody455_17

def rawBody455_19 : StackLang.HolProg 64 :=
.seq rawBody455_11 rawBody455_18

def rawBody455_20 : StackLang.HolProg 64 :=
.seq rawBody455_10 rawBody455_19

def rawBody455_21 : StackLang.HolProg 64 :=
.seq rawBody455_9 rawBody455_20

def rawBody455_22 : StackLang.HolProg 64 :=
.seq rawBody455_8 rawBody455_21

def rawBody455_23 : StackLang.HolProg 64 :=
.seq rawBody455_7 rawBody455_22

def rawBody455_24 : StackLang.HolProg 64 :=
.seq rawBody455_6 rawBody455_23

def rawBody455_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody455_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody455_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody455_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody455_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody455_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody455_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody455_32 : StackLang.HolProg 64 :=
.seq rawBody455_30 rawBody455_31

def rawBody455_33 : StackLang.HolProg 64 :=
.seq rawBody455_29 rawBody455_32

def rawBody455_34 : StackLang.HolProg 64 :=
.seq rawBody455_28 rawBody455_33

def rawBody455_35 : StackLang.HolProg 64 :=
.seq rawBody455_27 rawBody455_34

def rawBody455_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody455_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody455_38 : StackLang.HolProg 64 :=
.seq rawBody455_36 rawBody455_37

def rawBody455_39 : StackLang.HolProg 64 :=
.call (some (rawBody455_35, 0, 455, 2)) (Sum.inl 454) (some (rawBody455_38, 455, 3))

def rawBody455_40 : StackLang.HolProg 64 :=
.seq rawBody455_26 rawBody455_39

def rawBody455_41 : StackLang.HolProg 64 :=
.seq rawBody455_25 rawBody455_40

def rawBody455_42 : StackLang.HolProg 64 :=
.seq rawBody455_24 rawBody455_41

def rawBody455_43 : StackLang.HolProg 64 :=
.seq rawBody455_5 rawBody455_42

def rawBody455_44 : StackLang.HolProg 64 :=
.seq rawBody455_2 rawBody455_43

def rawBody455_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody455_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody455_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody455_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1398#64)

def rawBody455_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody455_50 : StackLang.HolProg 64 :=
.seq rawBody455_48 rawBody455_49

def rawBody455_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody455_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody455_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody455_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 455 5

def rawBody455_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody455_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody455_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody455_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody455_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody455_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody455_61 : StackLang.HolProg 64 :=
.seq rawBody455_59 rawBody455_60

def rawBody455_62 : StackLang.HolProg 64 :=
.seq rawBody455_58 rawBody455_61

def rawBody455_63 : StackLang.HolProg 64 :=
.seq rawBody455_57 rawBody455_62

def rawBody455_64 : StackLang.HolProg 64 :=
.seq rawBody455_56 rawBody455_63

def rawBody455_65 : StackLang.HolProg 64 :=
.seq rawBody455_55 rawBody455_64

def rawBody455_66 : StackLang.HolProg 64 :=
.seq rawBody455_54 rawBody455_65

def rawBody455_67 : StackLang.HolProg 64 :=
.seq rawBody455_53 rawBody455_66

def rawBody455_68 : StackLang.HolProg 64 :=
.seq rawBody455_52 rawBody455_67

def rawBody455_69 : StackLang.HolProg 64 :=
.seq rawBody455_51 rawBody455_68

def rawBody455_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody455_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody455_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody455_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody455_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody455_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody455_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody455_77 : StackLang.HolProg 64 :=
.seq rawBody455_75 rawBody455_76

def rawBody455_78 : StackLang.HolProg 64 :=
.seq rawBody455_74 rawBody455_77

def rawBody455_79 : StackLang.HolProg 64 :=
.seq rawBody455_73 rawBody455_78

def rawBody455_80 : StackLang.HolProg 64 :=
.seq rawBody455_72 rawBody455_79

def rawBody455_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody455_82 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody455_83 : StackLang.HolProg 64 :=
.seq rawBody455_81 rawBody455_82

def rawBody455_84 : StackLang.HolProg 64 :=
.call (some (rawBody455_80, 0, 455, 4)) (Sum.inl 433) (some (rawBody455_83, 455, 5))

def rawBody455_85 : StackLang.HolProg 64 :=
.seq rawBody455_71 rawBody455_84

def rawBody455_86 : StackLang.HolProg 64 :=
.seq rawBody455_70 rawBody455_85

def rawBody455_87 : StackLang.HolProg 64 :=
.seq rawBody455_69 rawBody455_86

def rawBody455_88 : StackLang.HolProg 64 :=
.seq rawBody455_50 rawBody455_87

def rawBody455_89 : StackLang.HolProg 64 :=
.seq rawBody455_47 rawBody455_88

def rawBody455_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody455_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody455_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody455_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody455_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody455_95 : StackLang.HolProg 64 :=
.seq rawBody455_93 rawBody455_94

def rawBody455_96 : StackLang.HolProg 64 :=
.seq rawBody455_92 rawBody455_95

def rawBody455_97 : StackLang.HolProg 64 :=
.seq rawBody455_91 rawBody455_96

def rawBody455_98 : StackLang.HolProg 64 :=
.seq rawBody455_90 rawBody455_97

def rawBody455_99 : StackLang.HolProg 64 :=
.seq rawBody455_89 rawBody455_98

def rawBody455_100 : StackLang.HolProg 64 :=
.seq rawBody455_46 rawBody455_99

def rawBody455_101 : StackLang.HolProg 64 :=
.seq rawBody455_45 rawBody455_100

def rawBody455_102 : StackLang.HolProg 64 :=
.seq rawBody455_44 rawBody455_101

def rawBody455_103 : StackLang.HolProg 64 :=
.seq rawBody455_1 rawBody455_102

def rawBody455_104 : StackLang.HolProg 64 :=
.seq rawBody455_0 rawBody455_103

def raw455 : StackLang.HolProg 64 := rawBody455_104
theorem raw455_eq : StackRawCall.compTop RawInfo.rawInfo (function455 (.list [])).1 = raw455 := by
  kernel_rfl
#print axioms raw455_eq
end InitECandidate.Proofs.BackendStages
