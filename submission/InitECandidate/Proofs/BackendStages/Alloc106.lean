import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw106
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody106_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody106_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody106_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody106_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody106_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody106_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody106_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody106_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody106_8 : StackLang.HolProg 64 :=
.seq AllocBody106_6 AllocBody106_7

def AllocBody106_9 : StackLang.HolProg 64 :=
.seq AllocBody106_5 AllocBody106_8

def AllocBody106_10 : StackLang.HolProg 64 :=
.seq AllocBody106_4 AllocBody106_9

def AllocBody106_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody106_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) AllocBody106_10 AllocBody106_11

def AllocBody106_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody106_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody106_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody106_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody106_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody106_18 : StackLang.HolProg 64 :=
.seq AllocBody106_16 AllocBody106_17

def AllocBody106_19 : StackLang.HolProg 64 :=
.seq AllocBody106_15 AllocBody106_18

def AllocBody106_20 : StackLang.HolProg 64 :=
.seq AllocBody106_14 AllocBody106_19

def AllocBody106_21 : StackLang.HolProg 64 :=
.seq AllocBody106_13 AllocBody106_20

def AllocBody106_22 : StackLang.HolProg 64 :=
.seq AllocBody106_12 AllocBody106_21

def AllocBody106_23 : StackLang.HolProg 64 :=
.seq AllocBody106_3 AllocBody106_22

def AllocBody106_24 : StackLang.HolProg 64 :=
.seq AllocBody106_2 AllocBody106_23

def AllocBody106_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody106_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) AllocBody106_24 AllocBody106_25

def AllocBody106_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody106_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody106_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody106_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody106_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody106_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody106_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody106_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody106_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody106_36 : StackLang.HolProg 64 :=
.seq AllocBody106_34 AllocBody106_35

def AllocBody106_37 : StackLang.HolProg 64 :=
.seq AllocBody106_33 AllocBody106_36

def AllocBody106_38 : StackLang.HolProg 64 :=
.seq AllocBody106_32 AllocBody106_37

def AllocBody106_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody106_40 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) AllocBody106_38 AllocBody106_39

def AllocBody106_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody106_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody106_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody106_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody106_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody106_46 : StackLang.HolProg 64 :=
.seq AllocBody106_44 AllocBody106_45

def AllocBody106_47 : StackLang.HolProg 64 :=
.seq AllocBody106_43 AllocBody106_46

def AllocBody106_48 : StackLang.HolProg 64 :=
.seq AllocBody106_42 AllocBody106_47

def AllocBody106_49 : StackLang.HolProg 64 :=
.seq AllocBody106_41 AllocBody106_48

def AllocBody106_50 : StackLang.HolProg 64 :=
.seq AllocBody106_40 AllocBody106_49

def AllocBody106_51 : StackLang.HolProg 64 :=
.seq AllocBody106_31 AllocBody106_50

def AllocBody106_52 : StackLang.HolProg 64 :=
.seq AllocBody106_30 AllocBody106_51

def AllocBody106_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody106_54 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) AllocBody106_52 AllocBody106_53

def AllocBody106_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody106_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody106_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody106_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody106_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody106_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody106_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody106_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody106_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody106_64 : StackLang.HolProg 64 :=
.seq AllocBody106_62 AllocBody106_63

def AllocBody106_65 : StackLang.HolProg 64 :=
.seq AllocBody106_61 AllocBody106_64

def AllocBody106_66 : StackLang.HolProg 64 :=
.seq AllocBody106_60 AllocBody106_65

def AllocBody106_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody106_68 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) AllocBody106_66 AllocBody106_67

def AllocBody106_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody106_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody106_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody106_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody106_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody106_74 : StackLang.HolProg 64 :=
.seq AllocBody106_72 AllocBody106_73

def AllocBody106_75 : StackLang.HolProg 64 :=
.seq AllocBody106_71 AllocBody106_74

def AllocBody106_76 : StackLang.HolProg 64 :=
.seq AllocBody106_70 AllocBody106_75

def AllocBody106_77 : StackLang.HolProg 64 :=
.seq AllocBody106_69 AllocBody106_76

def AllocBody106_78 : StackLang.HolProg 64 :=
.seq AllocBody106_68 AllocBody106_77

def AllocBody106_79 : StackLang.HolProg 64 :=
.seq AllocBody106_59 AllocBody106_78

def AllocBody106_80 : StackLang.HolProg 64 :=
.seq AllocBody106_58 AllocBody106_79

def AllocBody106_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody106_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) AllocBody106_80 AllocBody106_81

def AllocBody106_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody106_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody106_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody106_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody106_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody106_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody106_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody106_90 : StackLang.HolProg 64 :=
.seq AllocBody106_88 AllocBody106_89

def AllocBody106_91 : StackLang.HolProg 64 :=
.seq AllocBody106_87 AllocBody106_90

def AllocBody106_92 : StackLang.HolProg 64 :=
.seq AllocBody106_86 AllocBody106_91

def AllocBody106_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody106_94 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 9 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) AllocBody106_92 AllocBody106_93

def AllocBody106_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody106_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody106_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody106_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody106_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody106_100 : StackLang.HolProg 64 :=
.seq AllocBody106_98 AllocBody106_99

def AllocBody106_101 : StackLang.HolProg 64 :=
.seq AllocBody106_97 AllocBody106_100

def AllocBody106_102 : StackLang.HolProg 64 :=
.seq AllocBody106_96 AllocBody106_101

def AllocBody106_103 : StackLang.HolProg 64 :=
.seq AllocBody106_95 AllocBody106_102

def AllocBody106_104 : StackLang.HolProg 64 :=
.seq AllocBody106_94 AllocBody106_103

def AllocBody106_105 : StackLang.HolProg 64 :=
.seq AllocBody106_85 AllocBody106_104

def AllocBody106_106 : StackLang.HolProg 64 :=
.seq AllocBody106_84 AllocBody106_105

def AllocBody106_107 : StackLang.HolProg 64 :=
.seq AllocBody106_83 AllocBody106_106

def AllocBody106_108 : StackLang.HolProg 64 :=
.seq AllocBody106_82 AllocBody106_107

def AllocBody106_109 : StackLang.HolProg 64 :=
.seq AllocBody106_57 AllocBody106_108

def AllocBody106_110 : StackLang.HolProg 64 :=
.seq AllocBody106_56 AllocBody106_109

def AllocBody106_111 : StackLang.HolProg 64 :=
.seq AllocBody106_55 AllocBody106_110

def AllocBody106_112 : StackLang.HolProg 64 :=
.seq AllocBody106_54 AllocBody106_111

def AllocBody106_113 : StackLang.HolProg 64 :=
.seq AllocBody106_29 AllocBody106_112

def AllocBody106_114 : StackLang.HolProg 64 :=
.seq AllocBody106_28 AllocBody106_113

def AllocBody106_115 : StackLang.HolProg 64 :=
.seq AllocBody106_27 AllocBody106_114

def AllocBody106_116 : StackLang.HolProg 64 :=
.seq AllocBody106_26 AllocBody106_115

def AllocBody106_117 : StackLang.HolProg 64 :=
.seq AllocBody106_1 AllocBody106_116

def AllocBody106_118 : StackLang.HolProg 64 :=
.seq AllocBody106_0 AllocBody106_117

def Alloc106 : Nat × StackLang.HolProg 64 := (106, AllocBody106_118)
theorem Alloc106_eq : StackAlloc.progComp (106, raw106) = Alloc106 := by
  kernel_rfl
#print axioms Alloc106_eq
end InitECandidate.Proofs.BackendStages
