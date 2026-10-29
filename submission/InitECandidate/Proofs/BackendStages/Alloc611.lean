import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw611
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody611_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody611_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody611_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 168#64))

def AllocBody611_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody611_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 264#64))

def AllocBody611_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody611_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody611_7 : StackLang.HolProg 64 :=
.seq AllocBody611_5 AllocBody611_6

def AllocBody611_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody611_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2348#64)

def AllocBody611_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody611_11 : StackLang.HolProg 64 :=
.seq AllocBody611_9 AllocBody611_10

def AllocBody611_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody611_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody611_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody611_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 611 3

def AllocBody611_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody611_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody611_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody611_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody611_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody611_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody611_22 : StackLang.HolProg 64 :=
.seq AllocBody611_20 AllocBody611_21

def AllocBody611_23 : StackLang.HolProg 64 :=
.seq AllocBody611_19 AllocBody611_22

def AllocBody611_24 : StackLang.HolProg 64 :=
.seq AllocBody611_18 AllocBody611_23

def AllocBody611_25 : StackLang.HolProg 64 :=
.seq AllocBody611_17 AllocBody611_24

def AllocBody611_26 : StackLang.HolProg 64 :=
.seq AllocBody611_16 AllocBody611_25

def AllocBody611_27 : StackLang.HolProg 64 :=
.seq AllocBody611_15 AllocBody611_26

def AllocBody611_28 : StackLang.HolProg 64 :=
.seq AllocBody611_14 AllocBody611_27

def AllocBody611_29 : StackLang.HolProg 64 :=
.seq AllocBody611_13 AllocBody611_28

def AllocBody611_30 : StackLang.HolProg 64 :=
.seq AllocBody611_12 AllocBody611_29

def AllocBody611_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody611_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody611_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody611_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody611_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody611_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody611_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody611_38 : StackLang.HolProg 64 :=
.seq AllocBody611_36 AllocBody611_37

def AllocBody611_39 : StackLang.HolProg 64 :=
.seq AllocBody611_35 AllocBody611_38

def AllocBody611_40 : StackLang.HolProg 64 :=
.seq AllocBody611_34 AllocBody611_39

def AllocBody611_41 : StackLang.HolProg 64 :=
.seq AllocBody611_33 AllocBody611_40

def AllocBody611_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody611_43 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody611_44 : StackLang.HolProg 64 :=
.seq AllocBody611_42 AllocBody611_43

def AllocBody611_45 : StackLang.HolProg 64 :=
.call (some (AllocBody611_41, 0, 611, 2)) (Sum.inl 194) (some (AllocBody611_44, 611, 3))

def AllocBody611_46 : StackLang.HolProg 64 :=
.seq AllocBody611_32 AllocBody611_45

def AllocBody611_47 : StackLang.HolProg 64 :=
.seq AllocBody611_31 AllocBody611_46

def AllocBody611_48 : StackLang.HolProg 64 :=
.seq AllocBody611_30 AllocBody611_47

def AllocBody611_49 : StackLang.HolProg 64 :=
.seq AllocBody611_11 AllocBody611_48

def AllocBody611_50 : StackLang.HolProg 64 :=
.seq AllocBody611_8 AllocBody611_49

def AllocBody611_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody611_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody611_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 176#64))

def AllocBody611_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody611_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 272#64))

def AllocBody611_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody611_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody611_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2349#64)

def AllocBody611_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody611_60 : StackLang.HolProg 64 :=
.seq AllocBody611_58 AllocBody611_59

def AllocBody611_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody611_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody611_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody611_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 611 5

def AllocBody611_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody611_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody611_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody611_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody611_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody611_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody611_71 : StackLang.HolProg 64 :=
.seq AllocBody611_69 AllocBody611_70

def AllocBody611_72 : StackLang.HolProg 64 :=
.seq AllocBody611_68 AllocBody611_71

def AllocBody611_73 : StackLang.HolProg 64 :=
.seq AllocBody611_67 AllocBody611_72

def AllocBody611_74 : StackLang.HolProg 64 :=
.seq AllocBody611_66 AllocBody611_73

def AllocBody611_75 : StackLang.HolProg 64 :=
.seq AllocBody611_65 AllocBody611_74

def AllocBody611_76 : StackLang.HolProg 64 :=
.seq AllocBody611_64 AllocBody611_75

def AllocBody611_77 : StackLang.HolProg 64 :=
.seq AllocBody611_63 AllocBody611_76

def AllocBody611_78 : StackLang.HolProg 64 :=
.seq AllocBody611_62 AllocBody611_77

def AllocBody611_79 : StackLang.HolProg 64 :=
.seq AllocBody611_61 AllocBody611_78

def AllocBody611_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody611_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody611_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody611_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody611_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody611_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody611_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody611_87 : StackLang.HolProg 64 :=
.seq AllocBody611_85 AllocBody611_86

def AllocBody611_88 : StackLang.HolProg 64 :=
.seq AllocBody611_84 AllocBody611_87

def AllocBody611_89 : StackLang.HolProg 64 :=
.seq AllocBody611_83 AllocBody611_88

def AllocBody611_90 : StackLang.HolProg 64 :=
.seq AllocBody611_82 AllocBody611_89

def AllocBody611_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody611_92 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody611_93 : StackLang.HolProg 64 :=
.seq AllocBody611_91 AllocBody611_92

def AllocBody611_94 : StackLang.HolProg 64 :=
.call (some (AllocBody611_90, 0, 611, 4)) (Sum.inl 194) (some (AllocBody611_93, 611, 5))

def AllocBody611_95 : StackLang.HolProg 64 :=
.seq AllocBody611_81 AllocBody611_94

def AllocBody611_96 : StackLang.HolProg 64 :=
.seq AllocBody611_80 AllocBody611_95

def AllocBody611_97 : StackLang.HolProg 64 :=
.seq AllocBody611_79 AllocBody611_96

def AllocBody611_98 : StackLang.HolProg 64 :=
.seq AllocBody611_60 AllocBody611_97

def AllocBody611_99 : StackLang.HolProg 64 :=
.seq AllocBody611_57 AllocBody611_98

def AllocBody611_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody611_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody611_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody611_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody611_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody611_105 : StackLang.HolProg 64 :=
.seq AllocBody611_103 AllocBody611_104

def AllocBody611_106 : StackLang.HolProg 64 :=
.seq AllocBody611_102 AllocBody611_105

def AllocBody611_107 : StackLang.HolProg 64 :=
.seq AllocBody611_101 AllocBody611_106

def AllocBody611_108 : StackLang.HolProg 64 :=
.seq AllocBody611_100 AllocBody611_107

def AllocBody611_109 : StackLang.HolProg 64 :=
.seq AllocBody611_99 AllocBody611_108

def AllocBody611_110 : StackLang.HolProg 64 :=
.seq AllocBody611_56 AllocBody611_109

def AllocBody611_111 : StackLang.HolProg 64 :=
.seq AllocBody611_55 AllocBody611_110

def AllocBody611_112 : StackLang.HolProg 64 :=
.seq AllocBody611_54 AllocBody611_111

def AllocBody611_113 : StackLang.HolProg 64 :=
.seq AllocBody611_53 AllocBody611_112

def AllocBody611_114 : StackLang.HolProg 64 :=
.seq AllocBody611_52 AllocBody611_113

def AllocBody611_115 : StackLang.HolProg 64 :=
.seq AllocBody611_51 AllocBody611_114

def AllocBody611_116 : StackLang.HolProg 64 :=
.seq AllocBody611_50 AllocBody611_115

def AllocBody611_117 : StackLang.HolProg 64 :=
.seq AllocBody611_7 AllocBody611_116

def AllocBody611_118 : StackLang.HolProg 64 :=
.seq AllocBody611_4 AllocBody611_117

def AllocBody611_119 : StackLang.HolProg 64 :=
.seq AllocBody611_3 AllocBody611_118

def AllocBody611_120 : StackLang.HolProg 64 :=
.seq AllocBody611_2 AllocBody611_119

def AllocBody611_121 : StackLang.HolProg 64 :=
.seq AllocBody611_1 AllocBody611_120

def AllocBody611_122 : StackLang.HolProg 64 :=
.seq AllocBody611_0 AllocBody611_121

def Alloc611 : Nat × StackLang.HolProg 64 := (611, AllocBody611_122)
theorem Alloc611_eq : StackAlloc.progComp (611, raw611) = Alloc611 := by
  kernel_rfl
#print axioms Alloc611_eq
end InitECandidate.Proofs.BackendStages
