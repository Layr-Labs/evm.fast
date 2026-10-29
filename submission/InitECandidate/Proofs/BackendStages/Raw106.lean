import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function106
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody106_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody106_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody106_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody106_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody106_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody106_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody106_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody106_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody106_8 : StackLang.HolProg 64 :=
.seq rawBody106_6 rawBody106_7

def rawBody106_9 : StackLang.HolProg 64 :=
.seq rawBody106_5 rawBody106_8

def rawBody106_10 : StackLang.HolProg 64 :=
.seq rawBody106_4 rawBody106_9

def rawBody106_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody106_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) rawBody106_10 rawBody106_11

def rawBody106_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody106_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody106_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody106_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody106_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody106_18 : StackLang.HolProg 64 :=
.seq rawBody106_16 rawBody106_17

def rawBody106_19 : StackLang.HolProg 64 :=
.seq rawBody106_15 rawBody106_18

def rawBody106_20 : StackLang.HolProg 64 :=
.seq rawBody106_14 rawBody106_19

def rawBody106_21 : StackLang.HolProg 64 :=
.seq rawBody106_13 rawBody106_20

def rawBody106_22 : StackLang.HolProg 64 :=
.seq rawBody106_12 rawBody106_21

def rawBody106_23 : StackLang.HolProg 64 :=
.seq rawBody106_3 rawBody106_22

def rawBody106_24 : StackLang.HolProg 64 :=
.seq rawBody106_2 rawBody106_23

def rawBody106_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody106_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) rawBody106_24 rawBody106_25

def rawBody106_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody106_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody106_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody106_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody106_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody106_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody106_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody106_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody106_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody106_36 : StackLang.HolProg 64 :=
.seq rawBody106_34 rawBody106_35

def rawBody106_37 : StackLang.HolProg 64 :=
.seq rawBody106_33 rawBody106_36

def rawBody106_38 : StackLang.HolProg 64 :=
.seq rawBody106_32 rawBody106_37

def rawBody106_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody106_40 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) rawBody106_38 rawBody106_39

def rawBody106_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody106_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody106_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody106_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody106_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody106_46 : StackLang.HolProg 64 :=
.seq rawBody106_44 rawBody106_45

def rawBody106_47 : StackLang.HolProg 64 :=
.seq rawBody106_43 rawBody106_46

def rawBody106_48 : StackLang.HolProg 64 :=
.seq rawBody106_42 rawBody106_47

def rawBody106_49 : StackLang.HolProg 64 :=
.seq rawBody106_41 rawBody106_48

def rawBody106_50 : StackLang.HolProg 64 :=
.seq rawBody106_40 rawBody106_49

def rawBody106_51 : StackLang.HolProg 64 :=
.seq rawBody106_31 rawBody106_50

def rawBody106_52 : StackLang.HolProg 64 :=
.seq rawBody106_30 rawBody106_51

def rawBody106_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody106_54 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) rawBody106_52 rawBody106_53

def rawBody106_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody106_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody106_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody106_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody106_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody106_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody106_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody106_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody106_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody106_64 : StackLang.HolProg 64 :=
.seq rawBody106_62 rawBody106_63

def rawBody106_65 : StackLang.HolProg 64 :=
.seq rawBody106_61 rawBody106_64

def rawBody106_66 : StackLang.HolProg 64 :=
.seq rawBody106_60 rawBody106_65

def rawBody106_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody106_68 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) rawBody106_66 rawBody106_67

def rawBody106_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody106_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody106_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody106_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody106_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody106_74 : StackLang.HolProg 64 :=
.seq rawBody106_72 rawBody106_73

def rawBody106_75 : StackLang.HolProg 64 :=
.seq rawBody106_71 rawBody106_74

def rawBody106_76 : StackLang.HolProg 64 :=
.seq rawBody106_70 rawBody106_75

def rawBody106_77 : StackLang.HolProg 64 :=
.seq rawBody106_69 rawBody106_76

def rawBody106_78 : StackLang.HolProg 64 :=
.seq rawBody106_68 rawBody106_77

def rawBody106_79 : StackLang.HolProg 64 :=
.seq rawBody106_59 rawBody106_78

def rawBody106_80 : StackLang.HolProg 64 :=
.seq rawBody106_58 rawBody106_79

def rawBody106_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody106_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) rawBody106_80 rawBody106_81

def rawBody106_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody106_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody106_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody106_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody106_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody106_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody106_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody106_90 : StackLang.HolProg 64 :=
.seq rawBody106_88 rawBody106_89

def rawBody106_91 : StackLang.HolProg 64 :=
.seq rawBody106_87 rawBody106_90

def rawBody106_92 : StackLang.HolProg 64 :=
.seq rawBody106_86 rawBody106_91

def rawBody106_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody106_94 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 9 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) rawBody106_92 rawBody106_93

def rawBody106_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody106_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody106_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody106_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody106_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody106_100 : StackLang.HolProg 64 :=
.seq rawBody106_98 rawBody106_99

def rawBody106_101 : StackLang.HolProg 64 :=
.seq rawBody106_97 rawBody106_100

def rawBody106_102 : StackLang.HolProg 64 :=
.seq rawBody106_96 rawBody106_101

def rawBody106_103 : StackLang.HolProg 64 :=
.seq rawBody106_95 rawBody106_102

def rawBody106_104 : StackLang.HolProg 64 :=
.seq rawBody106_94 rawBody106_103

def rawBody106_105 : StackLang.HolProg 64 :=
.seq rawBody106_85 rawBody106_104

def rawBody106_106 : StackLang.HolProg 64 :=
.seq rawBody106_84 rawBody106_105

def rawBody106_107 : StackLang.HolProg 64 :=
.seq rawBody106_83 rawBody106_106

def rawBody106_108 : StackLang.HolProg 64 :=
.seq rawBody106_82 rawBody106_107

def rawBody106_109 : StackLang.HolProg 64 :=
.seq rawBody106_57 rawBody106_108

def rawBody106_110 : StackLang.HolProg 64 :=
.seq rawBody106_56 rawBody106_109

def rawBody106_111 : StackLang.HolProg 64 :=
.seq rawBody106_55 rawBody106_110

def rawBody106_112 : StackLang.HolProg 64 :=
.seq rawBody106_54 rawBody106_111

def rawBody106_113 : StackLang.HolProg 64 :=
.seq rawBody106_29 rawBody106_112

def rawBody106_114 : StackLang.HolProg 64 :=
.seq rawBody106_28 rawBody106_113

def rawBody106_115 : StackLang.HolProg 64 :=
.seq rawBody106_27 rawBody106_114

def rawBody106_116 : StackLang.HolProg 64 :=
.seq rawBody106_26 rawBody106_115

def rawBody106_117 : StackLang.HolProg 64 :=
.seq rawBody106_1 rawBody106_116

def rawBody106_118 : StackLang.HolProg 64 :=
.seq rawBody106_0 rawBody106_117

def raw106 : StackLang.HolProg 64 := rawBody106_118
theorem raw106_eq : StackRawCall.compTop RawInfo.rawInfo (function106 (.list [])).1 = raw106 := by
  kernel_rfl
#print axioms raw106_eq
end InitECandidate.Proofs.BackendStages
