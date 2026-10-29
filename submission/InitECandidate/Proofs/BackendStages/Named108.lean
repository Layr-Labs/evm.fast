import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed108
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody108_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody108_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody108_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody108_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody108_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody108_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody108_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody108_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody108_8 : StackLang.HolProg 64 :=
.seq NamedBody108_6 NamedBody108_7

def NamedBody108_9 : StackLang.HolProg 64 :=
.seq NamedBody108_5 NamedBody108_8

def NamedBody108_10 : StackLang.HolProg 64 :=
.seq NamedBody108_4 NamedBody108_9

def NamedBody108_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody108_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) NamedBody108_10 NamedBody108_11

def NamedBody108_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody108_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody108_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody108_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody108_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody108_18 : StackLang.HolProg 64 :=
.seq NamedBody108_16 NamedBody108_17

def NamedBody108_19 : StackLang.HolProg 64 :=
.seq NamedBody108_15 NamedBody108_18

def NamedBody108_20 : StackLang.HolProg 64 :=
.seq NamedBody108_14 NamedBody108_19

def NamedBody108_21 : StackLang.HolProg 64 :=
.seq NamedBody108_13 NamedBody108_20

def NamedBody108_22 : StackLang.HolProg 64 :=
.seq NamedBody108_12 NamedBody108_21

def NamedBody108_23 : StackLang.HolProg 64 :=
.seq NamedBody108_3 NamedBody108_22

def NamedBody108_24 : StackLang.HolProg 64 :=
.seq NamedBody108_2 NamedBody108_23

def NamedBody108_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody108_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) NamedBody108_24 NamedBody108_25

def NamedBody108_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody108_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody108_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody108_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody108_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody108_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody108_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody108_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody108_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody108_36 : StackLang.HolProg 64 :=
.seq NamedBody108_34 NamedBody108_35

def NamedBody108_37 : StackLang.HolProg 64 :=
.seq NamedBody108_33 NamedBody108_36

def NamedBody108_38 : StackLang.HolProg 64 :=
.seq NamedBody108_32 NamedBody108_37

def NamedBody108_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody108_40 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) NamedBody108_38 NamedBody108_39

def NamedBody108_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody108_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody108_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody108_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody108_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody108_46 : StackLang.HolProg 64 :=
.seq NamedBody108_44 NamedBody108_45

def NamedBody108_47 : StackLang.HolProg 64 :=
.seq NamedBody108_43 NamedBody108_46

def NamedBody108_48 : StackLang.HolProg 64 :=
.seq NamedBody108_42 NamedBody108_47

def NamedBody108_49 : StackLang.HolProg 64 :=
.seq NamedBody108_41 NamedBody108_48

def NamedBody108_50 : StackLang.HolProg 64 :=
.seq NamedBody108_40 NamedBody108_49

def NamedBody108_51 : StackLang.HolProg 64 :=
.seq NamedBody108_31 NamedBody108_50

def NamedBody108_52 : StackLang.HolProg 64 :=
.seq NamedBody108_30 NamedBody108_51

def NamedBody108_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody108_54 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) NamedBody108_52 NamedBody108_53

def NamedBody108_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody108_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody108_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody108_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody108_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody108_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody108_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody108_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody108_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody108_64 : StackLang.HolProg 64 :=
.seq NamedBody108_62 NamedBody108_63

def NamedBody108_65 : StackLang.HolProg 64 :=
.seq NamedBody108_61 NamedBody108_64

def NamedBody108_66 : StackLang.HolProg 64 :=
.seq NamedBody108_60 NamedBody108_65

def NamedBody108_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody108_68 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) NamedBody108_66 NamedBody108_67

def NamedBody108_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody108_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody108_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody108_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody108_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody108_74 : StackLang.HolProg 64 :=
.seq NamedBody108_72 NamedBody108_73

def NamedBody108_75 : StackLang.HolProg 64 :=
.seq NamedBody108_71 NamedBody108_74

def NamedBody108_76 : StackLang.HolProg 64 :=
.seq NamedBody108_70 NamedBody108_75

def NamedBody108_77 : StackLang.HolProg 64 :=
.seq NamedBody108_69 NamedBody108_76

def NamedBody108_78 : StackLang.HolProg 64 :=
.seq NamedBody108_68 NamedBody108_77

def NamedBody108_79 : StackLang.HolProg 64 :=
.seq NamedBody108_59 NamedBody108_78

def NamedBody108_80 : StackLang.HolProg 64 :=
.seq NamedBody108_58 NamedBody108_79

def NamedBody108_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody108_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) NamedBody108_80 NamedBody108_81

def NamedBody108_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody108_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody108_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody108_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody108_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody108_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody108_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody108_90 : StackLang.HolProg 64 :=
.seq NamedBody108_88 NamedBody108_89

def NamedBody108_91 : StackLang.HolProg 64 :=
.seq NamedBody108_87 NamedBody108_90

def NamedBody108_92 : StackLang.HolProg 64 :=
.seq NamedBody108_86 NamedBody108_91

def NamedBody108_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody108_94 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 9 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) NamedBody108_92 NamedBody108_93

def NamedBody108_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody108_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody108_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody108_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody108_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody108_100 : StackLang.HolProg 64 :=
.seq NamedBody108_98 NamedBody108_99

def NamedBody108_101 : StackLang.HolProg 64 :=
.seq NamedBody108_97 NamedBody108_100

def NamedBody108_102 : StackLang.HolProg 64 :=
.seq NamedBody108_96 NamedBody108_101

def NamedBody108_103 : StackLang.HolProg 64 :=
.seq NamedBody108_95 NamedBody108_102

def NamedBody108_104 : StackLang.HolProg 64 :=
.seq NamedBody108_94 NamedBody108_103

def NamedBody108_105 : StackLang.HolProg 64 :=
.seq NamedBody108_85 NamedBody108_104

def NamedBody108_106 : StackLang.HolProg 64 :=
.seq NamedBody108_84 NamedBody108_105

def NamedBody108_107 : StackLang.HolProg 64 :=
.seq NamedBody108_83 NamedBody108_106

def NamedBody108_108 : StackLang.HolProg 64 :=
.seq NamedBody108_82 NamedBody108_107

def NamedBody108_109 : StackLang.HolProg 64 :=
.seq NamedBody108_57 NamedBody108_108

def NamedBody108_110 : StackLang.HolProg 64 :=
.seq NamedBody108_56 NamedBody108_109

def NamedBody108_111 : StackLang.HolProg 64 :=
.seq NamedBody108_55 NamedBody108_110

def NamedBody108_112 : StackLang.HolProg 64 :=
.seq NamedBody108_54 NamedBody108_111

def NamedBody108_113 : StackLang.HolProg 64 :=
.seq NamedBody108_29 NamedBody108_112

def NamedBody108_114 : StackLang.HolProg 64 :=
.seq NamedBody108_28 NamedBody108_113

def NamedBody108_115 : StackLang.HolProg 64 :=
.seq NamedBody108_27 NamedBody108_114

def NamedBody108_116 : StackLang.HolProg 64 :=
.seq NamedBody108_26 NamedBody108_115

def NamedBody108_117 : StackLang.HolProg 64 :=
.seq NamedBody108_1 NamedBody108_116

def NamedBody108_118 : StackLang.HolProg 64 :=
.seq NamedBody108_0 NamedBody108_117

def Named108 : Nat × StackLang.HolProg 64 := (108, NamedBody108_118)
theorem Named108_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed108 = Named108 := by
  kernel_rfl
#print axioms Named108_eq
end InitECandidate.Proofs.BackendStages
