import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed106
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody106_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody106_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody106_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody106_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody106_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody106_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody106_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody106_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody106_8 : StackLang.HolProg 64 :=
.seq NamedBody106_6 NamedBody106_7

def NamedBody106_9 : StackLang.HolProg 64 :=
.seq NamedBody106_5 NamedBody106_8

def NamedBody106_10 : StackLang.HolProg 64 :=
.seq NamedBody106_4 NamedBody106_9

def NamedBody106_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody106_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) NamedBody106_10 NamedBody106_11

def NamedBody106_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody106_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody106_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody106_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody106_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody106_18 : StackLang.HolProg 64 :=
.seq NamedBody106_16 NamedBody106_17

def NamedBody106_19 : StackLang.HolProg 64 :=
.seq NamedBody106_15 NamedBody106_18

def NamedBody106_20 : StackLang.HolProg 64 :=
.seq NamedBody106_14 NamedBody106_19

def NamedBody106_21 : StackLang.HolProg 64 :=
.seq NamedBody106_13 NamedBody106_20

def NamedBody106_22 : StackLang.HolProg 64 :=
.seq NamedBody106_12 NamedBody106_21

def NamedBody106_23 : StackLang.HolProg 64 :=
.seq NamedBody106_3 NamedBody106_22

def NamedBody106_24 : StackLang.HolProg 64 :=
.seq NamedBody106_2 NamedBody106_23

def NamedBody106_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody106_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) NamedBody106_24 NamedBody106_25

def NamedBody106_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody106_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody106_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody106_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody106_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody106_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody106_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody106_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody106_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody106_36 : StackLang.HolProg 64 :=
.seq NamedBody106_34 NamedBody106_35

def NamedBody106_37 : StackLang.HolProg 64 :=
.seq NamedBody106_33 NamedBody106_36

def NamedBody106_38 : StackLang.HolProg 64 :=
.seq NamedBody106_32 NamedBody106_37

def NamedBody106_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody106_40 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) NamedBody106_38 NamedBody106_39

def NamedBody106_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody106_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody106_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody106_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody106_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody106_46 : StackLang.HolProg 64 :=
.seq NamedBody106_44 NamedBody106_45

def NamedBody106_47 : StackLang.HolProg 64 :=
.seq NamedBody106_43 NamedBody106_46

def NamedBody106_48 : StackLang.HolProg 64 :=
.seq NamedBody106_42 NamedBody106_47

def NamedBody106_49 : StackLang.HolProg 64 :=
.seq NamedBody106_41 NamedBody106_48

def NamedBody106_50 : StackLang.HolProg 64 :=
.seq NamedBody106_40 NamedBody106_49

def NamedBody106_51 : StackLang.HolProg 64 :=
.seq NamedBody106_31 NamedBody106_50

def NamedBody106_52 : StackLang.HolProg 64 :=
.seq NamedBody106_30 NamedBody106_51

def NamedBody106_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody106_54 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) NamedBody106_52 NamedBody106_53

def NamedBody106_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody106_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody106_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody106_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody106_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody106_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody106_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody106_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody106_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody106_64 : StackLang.HolProg 64 :=
.seq NamedBody106_62 NamedBody106_63

def NamedBody106_65 : StackLang.HolProg 64 :=
.seq NamedBody106_61 NamedBody106_64

def NamedBody106_66 : StackLang.HolProg 64 :=
.seq NamedBody106_60 NamedBody106_65

def NamedBody106_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody106_68 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) NamedBody106_66 NamedBody106_67

def NamedBody106_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody106_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody106_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody106_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody106_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody106_74 : StackLang.HolProg 64 :=
.seq NamedBody106_72 NamedBody106_73

def NamedBody106_75 : StackLang.HolProg 64 :=
.seq NamedBody106_71 NamedBody106_74

def NamedBody106_76 : StackLang.HolProg 64 :=
.seq NamedBody106_70 NamedBody106_75

def NamedBody106_77 : StackLang.HolProg 64 :=
.seq NamedBody106_69 NamedBody106_76

def NamedBody106_78 : StackLang.HolProg 64 :=
.seq NamedBody106_68 NamedBody106_77

def NamedBody106_79 : StackLang.HolProg 64 :=
.seq NamedBody106_59 NamedBody106_78

def NamedBody106_80 : StackLang.HolProg 64 :=
.seq NamedBody106_58 NamedBody106_79

def NamedBody106_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody106_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) NamedBody106_80 NamedBody106_81

def NamedBody106_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody106_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody106_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody106_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody106_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody106_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody106_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody106_90 : StackLang.HolProg 64 :=
.seq NamedBody106_88 NamedBody106_89

def NamedBody106_91 : StackLang.HolProg 64 :=
.seq NamedBody106_87 NamedBody106_90

def NamedBody106_92 : StackLang.HolProg 64 :=
.seq NamedBody106_86 NamedBody106_91

def NamedBody106_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody106_94 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 9 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) NamedBody106_92 NamedBody106_93

def NamedBody106_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody106_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody106_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody106_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody106_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody106_100 : StackLang.HolProg 64 :=
.seq NamedBody106_98 NamedBody106_99

def NamedBody106_101 : StackLang.HolProg 64 :=
.seq NamedBody106_97 NamedBody106_100

def NamedBody106_102 : StackLang.HolProg 64 :=
.seq NamedBody106_96 NamedBody106_101

def NamedBody106_103 : StackLang.HolProg 64 :=
.seq NamedBody106_95 NamedBody106_102

def NamedBody106_104 : StackLang.HolProg 64 :=
.seq NamedBody106_94 NamedBody106_103

def NamedBody106_105 : StackLang.HolProg 64 :=
.seq NamedBody106_85 NamedBody106_104

def NamedBody106_106 : StackLang.HolProg 64 :=
.seq NamedBody106_84 NamedBody106_105

def NamedBody106_107 : StackLang.HolProg 64 :=
.seq NamedBody106_83 NamedBody106_106

def NamedBody106_108 : StackLang.HolProg 64 :=
.seq NamedBody106_82 NamedBody106_107

def NamedBody106_109 : StackLang.HolProg 64 :=
.seq NamedBody106_57 NamedBody106_108

def NamedBody106_110 : StackLang.HolProg 64 :=
.seq NamedBody106_56 NamedBody106_109

def NamedBody106_111 : StackLang.HolProg 64 :=
.seq NamedBody106_55 NamedBody106_110

def NamedBody106_112 : StackLang.HolProg 64 :=
.seq NamedBody106_54 NamedBody106_111

def NamedBody106_113 : StackLang.HolProg 64 :=
.seq NamedBody106_29 NamedBody106_112

def NamedBody106_114 : StackLang.HolProg 64 :=
.seq NamedBody106_28 NamedBody106_113

def NamedBody106_115 : StackLang.HolProg 64 :=
.seq NamedBody106_27 NamedBody106_114

def NamedBody106_116 : StackLang.HolProg 64 :=
.seq NamedBody106_26 NamedBody106_115

def NamedBody106_117 : StackLang.HolProg 64 :=
.seq NamedBody106_1 NamedBody106_116

def NamedBody106_118 : StackLang.HolProg 64 :=
.seq NamedBody106_0 NamedBody106_117

def Named106 : Nat × StackLang.HolProg 64 := (106, NamedBody106_118)
theorem Named106_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed106 = Named106 := by
  kernel_rfl
#print axioms Named106_eq
end InitECandidate.Proofs.BackendStages
