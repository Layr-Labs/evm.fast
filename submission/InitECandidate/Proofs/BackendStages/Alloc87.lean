import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw87
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody87_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody87_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody87_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody87_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody87_4 : StackLang.HolProg 64 :=
.seq AllocBody87_2 AllocBody87_3

def AllocBody87_5 : StackLang.HolProg 64 :=
.seq AllocBody87_1 AllocBody87_4

def AllocBody87_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody87_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 33#64)

def AllocBody87_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody87_9 : StackLang.HolProg 64 :=
.seq AllocBody87_7 AllocBody87_8

def AllocBody87_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody87_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody87_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody87_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 87 3

def AllocBody87_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody87_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody87_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody87_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody87_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody87_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody87_20 : StackLang.HolProg 64 :=
.seq AllocBody87_18 AllocBody87_19

def AllocBody87_21 : StackLang.HolProg 64 :=
.seq AllocBody87_17 AllocBody87_20

def AllocBody87_22 : StackLang.HolProg 64 :=
.seq AllocBody87_16 AllocBody87_21

def AllocBody87_23 : StackLang.HolProg 64 :=
.seq AllocBody87_15 AllocBody87_22

def AllocBody87_24 : StackLang.HolProg 64 :=
.seq AllocBody87_14 AllocBody87_23

def AllocBody87_25 : StackLang.HolProg 64 :=
.seq AllocBody87_13 AllocBody87_24

def AllocBody87_26 : StackLang.HolProg 64 :=
.seq AllocBody87_12 AllocBody87_25

def AllocBody87_27 : StackLang.HolProg 64 :=
.seq AllocBody87_11 AllocBody87_26

def AllocBody87_28 : StackLang.HolProg 64 :=
.seq AllocBody87_10 AllocBody87_27

def AllocBody87_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody87_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody87_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody87_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody87_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody87_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody87_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody87_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody87_37 : StackLang.HolProg 64 :=
.seq AllocBody87_35 AllocBody87_36

def AllocBody87_38 : StackLang.HolProg 64 :=
.seq AllocBody87_34 AllocBody87_37

def AllocBody87_39 : StackLang.HolProg 64 :=
.seq AllocBody87_33 AllocBody87_38

def AllocBody87_40 : StackLang.HolProg 64 :=
.seq AllocBody87_32 AllocBody87_39

def AllocBody87_41 : StackLang.HolProg 64 :=
.seq AllocBody87_31 AllocBody87_40

def AllocBody87_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody87_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody87_44 : StackLang.HolProg 64 :=
.seq AllocBody87_42 AllocBody87_43

def AllocBody87_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody87_46 : StackLang.HolProg 64 :=
.seq AllocBody87_44 AllocBody87_45

def AllocBody87_47 : StackLang.HolProg 64 :=
.call (some (AllocBody87_41, 0, 87, 2)) (Sum.inl 86) (some (AllocBody87_46, 87, 3))

def AllocBody87_48 : StackLang.HolProg 64 :=
.seq AllocBody87_30 AllocBody87_47

def AllocBody87_49 : StackLang.HolProg 64 :=
.seq AllocBody87_29 AllocBody87_48

def AllocBody87_50 : StackLang.HolProg 64 :=
.seq AllocBody87_28 AllocBody87_49

def AllocBody87_51 : StackLang.HolProg 64 :=
.seq AllocBody87_9 AllocBody87_50

def AllocBody87_52 : StackLang.HolProg 64 :=
.seq AllocBody87_6 AllocBody87_51

def AllocBody87_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody87_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody87_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody87_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody87_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody87_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody87_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody87_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 34#64)

def AllocBody87_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody87_62 : StackLang.HolProg 64 :=
.seq AllocBody87_60 AllocBody87_61

def AllocBody87_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody87_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody87_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody87_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 87 5

def AllocBody87_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody87_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody87_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody87_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody87_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody87_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody87_73 : StackLang.HolProg 64 :=
.seq AllocBody87_71 AllocBody87_72

def AllocBody87_74 : StackLang.HolProg 64 :=
.seq AllocBody87_70 AllocBody87_73

def AllocBody87_75 : StackLang.HolProg 64 :=
.seq AllocBody87_69 AllocBody87_74

def AllocBody87_76 : StackLang.HolProg 64 :=
.seq AllocBody87_68 AllocBody87_75

def AllocBody87_77 : StackLang.HolProg 64 :=
.seq AllocBody87_67 AllocBody87_76

def AllocBody87_78 : StackLang.HolProg 64 :=
.seq AllocBody87_66 AllocBody87_77

def AllocBody87_79 : StackLang.HolProg 64 :=
.seq AllocBody87_65 AllocBody87_78

def AllocBody87_80 : StackLang.HolProg 64 :=
.seq AllocBody87_64 AllocBody87_79

def AllocBody87_81 : StackLang.HolProg 64 :=
.seq AllocBody87_63 AllocBody87_80

def AllocBody87_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody87_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody87_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody87_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody87_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody87_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody87_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody87_89 : StackLang.HolProg 64 :=
.seq AllocBody87_87 AllocBody87_88

def AllocBody87_90 : StackLang.HolProg 64 :=
.seq AllocBody87_86 AllocBody87_89

def AllocBody87_91 : StackLang.HolProg 64 :=
.seq AllocBody87_85 AllocBody87_90

def AllocBody87_92 : StackLang.HolProg 64 :=
.seq AllocBody87_84 AllocBody87_91

def AllocBody87_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody87_94 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody87_95 : StackLang.HolProg 64 :=
.seq AllocBody87_93 AllocBody87_94

def AllocBody87_96 : StackLang.HolProg 64 :=
.call (some (AllocBody87_92, 0, 87, 4)) (Sum.inl 86) (some (AllocBody87_95, 87, 5))

def AllocBody87_97 : StackLang.HolProg 64 :=
.seq AllocBody87_83 AllocBody87_96

def AllocBody87_98 : StackLang.HolProg 64 :=
.seq AllocBody87_82 AllocBody87_97

def AllocBody87_99 : StackLang.HolProg 64 :=
.seq AllocBody87_81 AllocBody87_98

def AllocBody87_100 : StackLang.HolProg 64 :=
.seq AllocBody87_62 AllocBody87_99

def AllocBody87_101 : StackLang.HolProg 64 :=
.seq AllocBody87_59 AllocBody87_100

def AllocBody87_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody87_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody87_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody87_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody87_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody87_107 : StackLang.HolProg 64 :=
.seq AllocBody87_105 AllocBody87_106

def AllocBody87_108 : StackLang.HolProg 64 :=
.seq AllocBody87_104 AllocBody87_107

def AllocBody87_109 : StackLang.HolProg 64 :=
.seq AllocBody87_103 AllocBody87_108

def AllocBody87_110 : StackLang.HolProg 64 :=
.seq AllocBody87_102 AllocBody87_109

def AllocBody87_111 : StackLang.HolProg 64 :=
.seq AllocBody87_101 AllocBody87_110

def AllocBody87_112 : StackLang.HolProg 64 :=
.seq AllocBody87_58 AllocBody87_111

def AllocBody87_113 : StackLang.HolProg 64 :=
.seq AllocBody87_57 AllocBody87_112

def AllocBody87_114 : StackLang.HolProg 64 :=
.seq AllocBody87_56 AllocBody87_113

def AllocBody87_115 : StackLang.HolProg 64 :=
.seq AllocBody87_55 AllocBody87_114

def AllocBody87_116 : StackLang.HolProg 64 :=
.seq AllocBody87_54 AllocBody87_115

def AllocBody87_117 : StackLang.HolProg 64 :=
.seq AllocBody87_53 AllocBody87_116

def AllocBody87_118 : StackLang.HolProg 64 :=
.seq AllocBody87_52 AllocBody87_117

def AllocBody87_119 : StackLang.HolProg 64 :=
.seq AllocBody87_5 AllocBody87_118

def AllocBody87_120 : StackLang.HolProg 64 :=
.seq AllocBody87_0 AllocBody87_119

def Alloc87 : Nat × StackLang.HolProg 64 := (87, AllocBody87_120)
theorem Alloc87_eq : StackAlloc.progComp (87, raw87) = Alloc87 := by
  kernel_rfl
#print axioms Alloc87_eq
end InitECandidate.Proofs.BackendStages
