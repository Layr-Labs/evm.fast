import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function108
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody108_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody108_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody108_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody108_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody108_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody108_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody108_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody108_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody108_8 : StackLang.HolProg 64 :=
.seq rawBody108_6 rawBody108_7

def rawBody108_9 : StackLang.HolProg 64 :=
.seq rawBody108_5 rawBody108_8

def rawBody108_10 : StackLang.HolProg 64 :=
.seq rawBody108_4 rawBody108_9

def rawBody108_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody108_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) rawBody108_10 rawBody108_11

def rawBody108_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody108_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody108_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody108_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody108_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody108_18 : StackLang.HolProg 64 :=
.seq rawBody108_16 rawBody108_17

def rawBody108_19 : StackLang.HolProg 64 :=
.seq rawBody108_15 rawBody108_18

def rawBody108_20 : StackLang.HolProg 64 :=
.seq rawBody108_14 rawBody108_19

def rawBody108_21 : StackLang.HolProg 64 :=
.seq rawBody108_13 rawBody108_20

def rawBody108_22 : StackLang.HolProg 64 :=
.seq rawBody108_12 rawBody108_21

def rawBody108_23 : StackLang.HolProg 64 :=
.seq rawBody108_3 rawBody108_22

def rawBody108_24 : StackLang.HolProg 64 :=
.seq rawBody108_2 rawBody108_23

def rawBody108_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody108_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) rawBody108_24 rawBody108_25

def rawBody108_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody108_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody108_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody108_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody108_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody108_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody108_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody108_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody108_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody108_36 : StackLang.HolProg 64 :=
.seq rawBody108_34 rawBody108_35

def rawBody108_37 : StackLang.HolProg 64 :=
.seq rawBody108_33 rawBody108_36

def rawBody108_38 : StackLang.HolProg 64 :=
.seq rawBody108_32 rawBody108_37

def rawBody108_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody108_40 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) rawBody108_38 rawBody108_39

def rawBody108_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody108_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody108_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody108_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody108_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody108_46 : StackLang.HolProg 64 :=
.seq rawBody108_44 rawBody108_45

def rawBody108_47 : StackLang.HolProg 64 :=
.seq rawBody108_43 rawBody108_46

def rawBody108_48 : StackLang.HolProg 64 :=
.seq rawBody108_42 rawBody108_47

def rawBody108_49 : StackLang.HolProg 64 :=
.seq rawBody108_41 rawBody108_48

def rawBody108_50 : StackLang.HolProg 64 :=
.seq rawBody108_40 rawBody108_49

def rawBody108_51 : StackLang.HolProg 64 :=
.seq rawBody108_31 rawBody108_50

def rawBody108_52 : StackLang.HolProg 64 :=
.seq rawBody108_30 rawBody108_51

def rawBody108_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody108_54 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) rawBody108_52 rawBody108_53

def rawBody108_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody108_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody108_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody108_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody108_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody108_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody108_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody108_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody108_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody108_64 : StackLang.HolProg 64 :=
.seq rawBody108_62 rawBody108_63

def rawBody108_65 : StackLang.HolProg 64 :=
.seq rawBody108_61 rawBody108_64

def rawBody108_66 : StackLang.HolProg 64 :=
.seq rawBody108_60 rawBody108_65

def rawBody108_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody108_68 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) rawBody108_66 rawBody108_67

def rawBody108_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody108_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody108_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody108_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody108_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody108_74 : StackLang.HolProg 64 :=
.seq rawBody108_72 rawBody108_73

def rawBody108_75 : StackLang.HolProg 64 :=
.seq rawBody108_71 rawBody108_74

def rawBody108_76 : StackLang.HolProg 64 :=
.seq rawBody108_70 rawBody108_75

def rawBody108_77 : StackLang.HolProg 64 :=
.seq rawBody108_69 rawBody108_76

def rawBody108_78 : StackLang.HolProg 64 :=
.seq rawBody108_68 rawBody108_77

def rawBody108_79 : StackLang.HolProg 64 :=
.seq rawBody108_59 rawBody108_78

def rawBody108_80 : StackLang.HolProg 64 :=
.seq rawBody108_58 rawBody108_79

def rawBody108_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody108_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) rawBody108_80 rawBody108_81

def rawBody108_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody108_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody108_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody108_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody108_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody108_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody108_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody108_90 : StackLang.HolProg 64 :=
.seq rawBody108_88 rawBody108_89

def rawBody108_91 : StackLang.HolProg 64 :=
.seq rawBody108_87 rawBody108_90

def rawBody108_92 : StackLang.HolProg 64 :=
.seq rawBody108_86 rawBody108_91

def rawBody108_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody108_94 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 9 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) rawBody108_92 rawBody108_93

def rawBody108_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody108_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody108_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody108_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody108_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody108_100 : StackLang.HolProg 64 :=
.seq rawBody108_98 rawBody108_99

def rawBody108_101 : StackLang.HolProg 64 :=
.seq rawBody108_97 rawBody108_100

def rawBody108_102 : StackLang.HolProg 64 :=
.seq rawBody108_96 rawBody108_101

def rawBody108_103 : StackLang.HolProg 64 :=
.seq rawBody108_95 rawBody108_102

def rawBody108_104 : StackLang.HolProg 64 :=
.seq rawBody108_94 rawBody108_103

def rawBody108_105 : StackLang.HolProg 64 :=
.seq rawBody108_85 rawBody108_104

def rawBody108_106 : StackLang.HolProg 64 :=
.seq rawBody108_84 rawBody108_105

def rawBody108_107 : StackLang.HolProg 64 :=
.seq rawBody108_83 rawBody108_106

def rawBody108_108 : StackLang.HolProg 64 :=
.seq rawBody108_82 rawBody108_107

def rawBody108_109 : StackLang.HolProg 64 :=
.seq rawBody108_57 rawBody108_108

def rawBody108_110 : StackLang.HolProg 64 :=
.seq rawBody108_56 rawBody108_109

def rawBody108_111 : StackLang.HolProg 64 :=
.seq rawBody108_55 rawBody108_110

def rawBody108_112 : StackLang.HolProg 64 :=
.seq rawBody108_54 rawBody108_111

def rawBody108_113 : StackLang.HolProg 64 :=
.seq rawBody108_29 rawBody108_112

def rawBody108_114 : StackLang.HolProg 64 :=
.seq rawBody108_28 rawBody108_113

def rawBody108_115 : StackLang.HolProg 64 :=
.seq rawBody108_27 rawBody108_114

def rawBody108_116 : StackLang.HolProg 64 :=
.seq rawBody108_26 rawBody108_115

def rawBody108_117 : StackLang.HolProg 64 :=
.seq rawBody108_1 rawBody108_116

def rawBody108_118 : StackLang.HolProg 64 :=
.seq rawBody108_0 rawBody108_117

def raw108 : StackLang.HolProg 64 := rawBody108_118
theorem raw108_eq : StackRawCall.compTop RawInfo.rawInfo (function108 (.list [])).1 = raw108 := by
  kernel_rfl
#print axioms raw108_eq
end InitECandidate.Proofs.BackendStages
