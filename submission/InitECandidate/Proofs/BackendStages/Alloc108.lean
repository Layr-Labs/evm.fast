import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw108
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody108_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody108_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody108_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody108_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody108_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody108_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody108_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody108_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody108_8 : StackLang.HolProg 64 :=
.seq AllocBody108_6 AllocBody108_7

def AllocBody108_9 : StackLang.HolProg 64 :=
.seq AllocBody108_5 AllocBody108_8

def AllocBody108_10 : StackLang.HolProg 64 :=
.seq AllocBody108_4 AllocBody108_9

def AllocBody108_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody108_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) AllocBody108_10 AllocBody108_11

def AllocBody108_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody108_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody108_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody108_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody108_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody108_18 : StackLang.HolProg 64 :=
.seq AllocBody108_16 AllocBody108_17

def AllocBody108_19 : StackLang.HolProg 64 :=
.seq AllocBody108_15 AllocBody108_18

def AllocBody108_20 : StackLang.HolProg 64 :=
.seq AllocBody108_14 AllocBody108_19

def AllocBody108_21 : StackLang.HolProg 64 :=
.seq AllocBody108_13 AllocBody108_20

def AllocBody108_22 : StackLang.HolProg 64 :=
.seq AllocBody108_12 AllocBody108_21

def AllocBody108_23 : StackLang.HolProg 64 :=
.seq AllocBody108_3 AllocBody108_22

def AllocBody108_24 : StackLang.HolProg 64 :=
.seq AllocBody108_2 AllocBody108_23

def AllocBody108_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody108_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) AllocBody108_24 AllocBody108_25

def AllocBody108_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody108_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody108_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody108_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody108_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody108_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody108_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody108_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody108_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody108_36 : StackLang.HolProg 64 :=
.seq AllocBody108_34 AllocBody108_35

def AllocBody108_37 : StackLang.HolProg 64 :=
.seq AllocBody108_33 AllocBody108_36

def AllocBody108_38 : StackLang.HolProg 64 :=
.seq AllocBody108_32 AllocBody108_37

def AllocBody108_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody108_40 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) AllocBody108_38 AllocBody108_39

def AllocBody108_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody108_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody108_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody108_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody108_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody108_46 : StackLang.HolProg 64 :=
.seq AllocBody108_44 AllocBody108_45

def AllocBody108_47 : StackLang.HolProg 64 :=
.seq AllocBody108_43 AllocBody108_46

def AllocBody108_48 : StackLang.HolProg 64 :=
.seq AllocBody108_42 AllocBody108_47

def AllocBody108_49 : StackLang.HolProg 64 :=
.seq AllocBody108_41 AllocBody108_48

def AllocBody108_50 : StackLang.HolProg 64 :=
.seq AllocBody108_40 AllocBody108_49

def AllocBody108_51 : StackLang.HolProg 64 :=
.seq AllocBody108_31 AllocBody108_50

def AllocBody108_52 : StackLang.HolProg 64 :=
.seq AllocBody108_30 AllocBody108_51

def AllocBody108_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody108_54 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) AllocBody108_52 AllocBody108_53

def AllocBody108_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody108_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody108_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody108_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody108_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody108_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody108_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody108_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody108_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody108_64 : StackLang.HolProg 64 :=
.seq AllocBody108_62 AllocBody108_63

def AllocBody108_65 : StackLang.HolProg 64 :=
.seq AllocBody108_61 AllocBody108_64

def AllocBody108_66 : StackLang.HolProg 64 :=
.seq AllocBody108_60 AllocBody108_65

def AllocBody108_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody108_68 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) AllocBody108_66 AllocBody108_67

def AllocBody108_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody108_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody108_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody108_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody108_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody108_74 : StackLang.HolProg 64 :=
.seq AllocBody108_72 AllocBody108_73

def AllocBody108_75 : StackLang.HolProg 64 :=
.seq AllocBody108_71 AllocBody108_74

def AllocBody108_76 : StackLang.HolProg 64 :=
.seq AllocBody108_70 AllocBody108_75

def AllocBody108_77 : StackLang.HolProg 64 :=
.seq AllocBody108_69 AllocBody108_76

def AllocBody108_78 : StackLang.HolProg 64 :=
.seq AllocBody108_68 AllocBody108_77

def AllocBody108_79 : StackLang.HolProg 64 :=
.seq AllocBody108_59 AllocBody108_78

def AllocBody108_80 : StackLang.HolProg 64 :=
.seq AllocBody108_58 AllocBody108_79

def AllocBody108_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody108_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) AllocBody108_80 AllocBody108_81

def AllocBody108_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody108_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody108_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody108_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody108_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody108_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody108_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody108_90 : StackLang.HolProg 64 :=
.seq AllocBody108_88 AllocBody108_89

def AllocBody108_91 : StackLang.HolProg 64 :=
.seq AllocBody108_87 AllocBody108_90

def AllocBody108_92 : StackLang.HolProg 64 :=
.seq AllocBody108_86 AllocBody108_91

def AllocBody108_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody108_94 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 9 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) AllocBody108_92 AllocBody108_93

def AllocBody108_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody108_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody108_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody108_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody108_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody108_100 : StackLang.HolProg 64 :=
.seq AllocBody108_98 AllocBody108_99

def AllocBody108_101 : StackLang.HolProg 64 :=
.seq AllocBody108_97 AllocBody108_100

def AllocBody108_102 : StackLang.HolProg 64 :=
.seq AllocBody108_96 AllocBody108_101

def AllocBody108_103 : StackLang.HolProg 64 :=
.seq AllocBody108_95 AllocBody108_102

def AllocBody108_104 : StackLang.HolProg 64 :=
.seq AllocBody108_94 AllocBody108_103

def AllocBody108_105 : StackLang.HolProg 64 :=
.seq AllocBody108_85 AllocBody108_104

def AllocBody108_106 : StackLang.HolProg 64 :=
.seq AllocBody108_84 AllocBody108_105

def AllocBody108_107 : StackLang.HolProg 64 :=
.seq AllocBody108_83 AllocBody108_106

def AllocBody108_108 : StackLang.HolProg 64 :=
.seq AllocBody108_82 AllocBody108_107

def AllocBody108_109 : StackLang.HolProg 64 :=
.seq AllocBody108_57 AllocBody108_108

def AllocBody108_110 : StackLang.HolProg 64 :=
.seq AllocBody108_56 AllocBody108_109

def AllocBody108_111 : StackLang.HolProg 64 :=
.seq AllocBody108_55 AllocBody108_110

def AllocBody108_112 : StackLang.HolProg 64 :=
.seq AllocBody108_54 AllocBody108_111

def AllocBody108_113 : StackLang.HolProg 64 :=
.seq AllocBody108_29 AllocBody108_112

def AllocBody108_114 : StackLang.HolProg 64 :=
.seq AllocBody108_28 AllocBody108_113

def AllocBody108_115 : StackLang.HolProg 64 :=
.seq AllocBody108_27 AllocBody108_114

def AllocBody108_116 : StackLang.HolProg 64 :=
.seq AllocBody108_26 AllocBody108_115

def AllocBody108_117 : StackLang.HolProg 64 :=
.seq AllocBody108_1 AllocBody108_116

def AllocBody108_118 : StackLang.HolProg 64 :=
.seq AllocBody108_0 AllocBody108_117

def Alloc108 : Nat × StackLang.HolProg 64 := (108, AllocBody108_118)
theorem Alloc108_eq : StackAlloc.progComp (108, raw108) = Alloc108 := by
  kernel_rfl
#print axioms Alloc108_eq
end InitECandidate.Proofs.BackendStages
