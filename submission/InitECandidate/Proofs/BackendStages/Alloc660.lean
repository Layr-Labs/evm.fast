import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw660
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody660_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody660_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody660_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody660_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody660_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody660_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody660_6 : StackLang.HolProg 64 :=
.seq AllocBody660_4 AllocBody660_5

def AllocBody660_7 : StackLang.HolProg 64 :=
.seq AllocBody660_3 AllocBody660_6

def AllocBody660_8 : StackLang.HolProg 64 :=
.seq AllocBody660_2 AllocBody660_7

def AllocBody660_9 : StackLang.HolProg 64 :=
.seq AllocBody660_1 AllocBody660_8

def AllocBody660_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody660_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2750#64)

def AllocBody660_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody660_13 : StackLang.HolProg 64 :=
.seq AllocBody660_11 AllocBody660_12

def AllocBody660_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody660_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody660_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody660_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 660 3

def AllocBody660_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody660_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody660_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody660_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody660_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody660_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody660_24 : StackLang.HolProg 64 :=
.seq AllocBody660_22 AllocBody660_23

def AllocBody660_25 : StackLang.HolProg 64 :=
.seq AllocBody660_21 AllocBody660_24

def AllocBody660_26 : StackLang.HolProg 64 :=
.seq AllocBody660_20 AllocBody660_25

def AllocBody660_27 : StackLang.HolProg 64 :=
.seq AllocBody660_19 AllocBody660_26

def AllocBody660_28 : StackLang.HolProg 64 :=
.seq AllocBody660_18 AllocBody660_27

def AllocBody660_29 : StackLang.HolProg 64 :=
.seq AllocBody660_17 AllocBody660_28

def AllocBody660_30 : StackLang.HolProg 64 :=
.seq AllocBody660_16 AllocBody660_29

def AllocBody660_31 : StackLang.HolProg 64 :=
.seq AllocBody660_15 AllocBody660_30

def AllocBody660_32 : StackLang.HolProg 64 :=
.seq AllocBody660_14 AllocBody660_31

def AllocBody660_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody660_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody660_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody660_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody660_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody660_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody660_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody660_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody660_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 4

def AllocBody660_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def AllocBody660_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody660_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody660_45 : StackLang.HolProg 64 :=
.seq AllocBody660_43 AllocBody660_44

def AllocBody660_46 : StackLang.HolProg 64 :=
.seq AllocBody660_42 AllocBody660_45

def AllocBody660_47 : StackLang.HolProg 64 :=
.seq AllocBody660_41 AllocBody660_46

def AllocBody660_48 : StackLang.HolProg 64 :=
.seq AllocBody660_40 AllocBody660_47

def AllocBody660_49 : StackLang.HolProg 64 :=
.seq AllocBody660_39 AllocBody660_48

def AllocBody660_50 : StackLang.HolProg 64 :=
.seq AllocBody660_38 AllocBody660_49

def AllocBody660_51 : StackLang.HolProg 64 :=
.seq AllocBody660_37 AllocBody660_50

def AllocBody660_52 : StackLang.HolProg 64 :=
.seq AllocBody660_36 AllocBody660_51

def AllocBody660_53 : StackLang.HolProg 64 :=
.seq AllocBody660_35 AllocBody660_52

def AllocBody660_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody660_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 4

def AllocBody660_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def AllocBody660_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody660_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody660_59 : StackLang.HolProg 64 :=
.seq AllocBody660_57 AllocBody660_58

def AllocBody660_60 : StackLang.HolProg 64 :=
.seq AllocBody660_56 AllocBody660_59

def AllocBody660_61 : StackLang.HolProg 64 :=
.seq AllocBody660_55 AllocBody660_60

def AllocBody660_62 : StackLang.HolProg 64 :=
.seq AllocBody660_54 AllocBody660_61

def AllocBody660_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody660_64 : StackLang.HolProg 64 :=
.seq AllocBody660_62 AllocBody660_63

def AllocBody660_65 : StackLang.HolProg 64 :=
.call (some (AllocBody660_53, 0, 660, 2)) (Sum.inl 102) (some (AllocBody660_64, 660, 3))

def AllocBody660_66 : StackLang.HolProg 64 :=
.seq AllocBody660_34 AllocBody660_65

def AllocBody660_67 : StackLang.HolProg 64 :=
.seq AllocBody660_33 AllocBody660_66

def AllocBody660_68 : StackLang.HolProg 64 :=
.seq AllocBody660_32 AllocBody660_67

def AllocBody660_69 : StackLang.HolProg 64 :=
.seq AllocBody660_13 AllocBody660_68

def AllocBody660_70 : StackLang.HolProg 64 :=
.seq AllocBody660_10 AllocBody660_69

def AllocBody660_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody660_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody660_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody660_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody660_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody660_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody660_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody660_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody660_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody660_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody660_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody660_82 : StackLang.HolProg 64 :=
.seq AllocBody660_80 AllocBody660_81

def AllocBody660_83 : StackLang.HolProg 64 :=
.seq AllocBody660_79 AllocBody660_82

def AllocBody660_84 : StackLang.HolProg 64 :=
.seq AllocBody660_78 AllocBody660_83

def AllocBody660_85 : StackLang.HolProg 64 :=
.seq AllocBody660_77 AllocBody660_84

def AllocBody660_86 : StackLang.HolProg 64 :=
.seq AllocBody660_76 AllocBody660_85

def AllocBody660_87 : StackLang.HolProg 64 :=
.seq AllocBody660_75 AllocBody660_86

def AllocBody660_88 : StackLang.HolProg 64 :=
.seq AllocBody660_74 AllocBody660_87

def AllocBody660_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody660_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody660_88 AllocBody660_89

def AllocBody660_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody660_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody660_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody660_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 3486998266802970665#64)

def AllocBody660_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 13281191951274694749#64)

def AllocBody660_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 10917124144477883021#64)

def AllocBody660_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4332616871279656263#64)

def AllocBody660_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody660_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody660_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody660_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def AllocBody660_102 : StackLang.HolProg 64 :=
.seq AllocBody660_100 AllocBody660_101

def AllocBody660_103 : StackLang.HolProg 64 :=
.seq AllocBody660_99 AllocBody660_102

def AllocBody660_104 : StackLang.HolProg 64 :=
.seq AllocBody660_98 AllocBody660_103

def AllocBody660_105 : StackLang.HolProg 64 :=
.seq AllocBody660_97 AllocBody660_104

def AllocBody660_106 : StackLang.HolProg 64 :=
.seq AllocBody660_96 AllocBody660_105

def AllocBody660_107 : StackLang.HolProg 64 :=
.seq AllocBody660_95 AllocBody660_106

def AllocBody660_108 : StackLang.HolProg 64 :=
.seq AllocBody660_94 AllocBody660_107

def AllocBody660_109 : StackLang.HolProg 64 :=
.seq AllocBody660_93 AllocBody660_108

def AllocBody660_110 : StackLang.HolProg 64 :=
.seq AllocBody660_92 AllocBody660_109

def AllocBody660_111 : StackLang.HolProg 64 :=
.seq AllocBody660_91 AllocBody660_110

def AllocBody660_112 : StackLang.HolProg 64 :=
.seq AllocBody660_90 AllocBody660_111

def AllocBody660_113 : StackLang.HolProg 64 :=
.seq AllocBody660_73 AllocBody660_112

def AllocBody660_114 : StackLang.HolProg 64 :=
.seq AllocBody660_72 AllocBody660_113

def AllocBody660_115 : StackLang.HolProg 64 :=
.seq AllocBody660_71 AllocBody660_114

def AllocBody660_116 : StackLang.HolProg 64 :=
.seq AllocBody660_70 AllocBody660_115

def AllocBody660_117 : StackLang.HolProg 64 :=
.seq AllocBody660_9 AllocBody660_116

def AllocBody660_118 : StackLang.HolProg 64 :=
.seq AllocBody660_0 AllocBody660_117

def Alloc660 : Nat × StackLang.HolProg 64 := (660, AllocBody660_118)
theorem Alloc660_eq : StackAlloc.progComp (660, raw660) = Alloc660 := by
  kernel_rfl
#print axioms Alloc660_eq
end InitECandidate.Proofs.BackendStages
