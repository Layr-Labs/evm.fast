import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function358
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody358_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody358_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody358_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody358_3 : StackLang.HolProg 64 :=
.seq rawBody358_1 rawBody358_2

def rawBody358_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody358_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1032#64)

def rawBody358_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody358_7 : StackLang.HolProg 64 :=
.seq rawBody358_5 rawBody358_6

def rawBody358_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody358_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody358_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody358_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 358 3

def rawBody358_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody358_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody358_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody358_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody358_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody358_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody358_18 : StackLang.HolProg 64 :=
.seq rawBody358_16 rawBody358_17

def rawBody358_19 : StackLang.HolProg 64 :=
.seq rawBody358_15 rawBody358_18

def rawBody358_20 : StackLang.HolProg 64 :=
.seq rawBody358_14 rawBody358_19

def rawBody358_21 : StackLang.HolProg 64 :=
.seq rawBody358_13 rawBody358_20

def rawBody358_22 : StackLang.HolProg 64 :=
.seq rawBody358_12 rawBody358_21

def rawBody358_23 : StackLang.HolProg 64 :=
.seq rawBody358_11 rawBody358_22

def rawBody358_24 : StackLang.HolProg 64 :=
.seq rawBody358_10 rawBody358_23

def rawBody358_25 : StackLang.HolProg 64 :=
.seq rawBody358_9 rawBody358_24

def rawBody358_26 : StackLang.HolProg 64 :=
.seq rawBody358_8 rawBody358_25

def rawBody358_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody358_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody358_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody358_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody358_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody358_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody358_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody358_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody358_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody358_36 : StackLang.HolProg 64 :=
.seq rawBody358_34 rawBody358_35

def rawBody358_37 : StackLang.HolProg 64 :=
.seq rawBody358_33 rawBody358_36

def rawBody358_38 : StackLang.HolProg 64 :=
.seq rawBody358_32 rawBody358_37

def rawBody358_39 : StackLang.HolProg 64 :=
.seq rawBody358_31 rawBody358_38

def rawBody358_40 : StackLang.HolProg 64 :=
.seq rawBody358_30 rawBody358_39

def rawBody358_41 : StackLang.HolProg 64 :=
.seq rawBody358_29 rawBody358_40

def rawBody358_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody358_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody358_44 : StackLang.HolProg 64 :=
.seq rawBody358_42 rawBody358_43

def rawBody358_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody358_46 : StackLang.HolProg 64 :=
.seq rawBody358_44 rawBody358_45

def rawBody358_47 : StackLang.HolProg 64 :=
.call (some (rawBody358_41, 0, 358, 2)) (Sum.inl 139) (some (rawBody358_46, 358, 3))

def rawBody358_48 : StackLang.HolProg 64 :=
.seq rawBody358_28 rawBody358_47

def rawBody358_49 : StackLang.HolProg 64 :=
.seq rawBody358_27 rawBody358_48

def rawBody358_50 : StackLang.HolProg 64 :=
.seq rawBody358_26 rawBody358_49

def rawBody358_51 : StackLang.HolProg 64 :=
.seq rawBody358_7 rawBody358_50

def rawBody358_52 : StackLang.HolProg 64 :=
.seq rawBody358_4 rawBody358_51

def rawBody358_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody358_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody358_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody358_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody358_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody358_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody358_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody358_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody358_61 : StackLang.HolProg 64 :=
.seq rawBody358_59 rawBody358_60

def rawBody358_62 : StackLang.HolProg 64 :=
.seq rawBody358_58 rawBody358_61

def rawBody358_63 : StackLang.HolProg 64 :=
.seq rawBody358_57 rawBody358_62

def rawBody358_64 : StackLang.HolProg 64 :=
.seq rawBody358_56 rawBody358_63

def rawBody358_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody358_66 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody358_64 rawBody358_65

def rawBody358_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody358_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody358_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody358_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody358_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody358_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody358_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def rawBody358_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody358_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody358_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody358_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody358_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody358_79 : StackLang.HolProg 64 :=
.seq rawBody358_77 rawBody358_78

def rawBody358_80 : StackLang.HolProg 64 :=
.seq rawBody358_76 rawBody358_79

def rawBody358_81 : StackLang.HolProg 64 :=
.seq rawBody358_75 rawBody358_80

def rawBody358_82 : StackLang.HolProg 64 :=
.seq rawBody358_74 rawBody358_81

def rawBody358_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody358_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody358_82 rawBody358_83

def rawBody358_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody358_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody358_87 : StackLang.HolProg 64 :=
.seq rawBody358_85 rawBody358_86

def rawBody358_88 : StackLang.HolProg 64 :=
.seq rawBody358_84 rawBody358_87

def rawBody358_89 : StackLang.HolProg 64 :=
.seq rawBody358_73 rawBody358_88

def rawBody358_90 : StackLang.HolProg 64 :=
.seq rawBody358_72 rawBody358_89

def rawBody358_91 : StackLang.HolProg 64 :=
.seq rawBody358_71 rawBody358_90

def rawBody358_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody358_93 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody358_91 rawBody358_92

def rawBody358_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody358_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody358_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody358_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody358_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody358_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody358_100 : StackLang.HolProg 64 :=
.seq rawBody358_98 rawBody358_99

def rawBody358_101 : StackLang.HolProg 64 :=
.seq rawBody358_97 rawBody358_100

def rawBody358_102 : StackLang.HolProg 64 :=
.seq rawBody358_96 rawBody358_101

def rawBody358_103 : StackLang.HolProg 64 :=
.seq rawBody358_95 rawBody358_102

def rawBody358_104 : StackLang.HolProg 64 :=
.seq rawBody358_94 rawBody358_103

def rawBody358_105 : StackLang.HolProg 64 :=
.seq rawBody358_93 rawBody358_104

def rawBody358_106 : StackLang.HolProg 64 :=
.seq rawBody358_70 rawBody358_105

def rawBody358_107 : StackLang.HolProg 64 :=
.seq rawBody358_69 rawBody358_106

def rawBody358_108 : StackLang.HolProg 64 :=
.seq rawBody358_68 rawBody358_107

def rawBody358_109 : StackLang.HolProg 64 :=
.seq rawBody358_67 rawBody358_108

def rawBody358_110 : StackLang.HolProg 64 :=
.seq rawBody358_66 rawBody358_109

def rawBody358_111 : StackLang.HolProg 64 :=
.seq rawBody358_55 rawBody358_110

def rawBody358_112 : StackLang.HolProg 64 :=
.seq rawBody358_54 rawBody358_111

def rawBody358_113 : StackLang.HolProg 64 :=
.seq rawBody358_53 rawBody358_112

def rawBody358_114 : StackLang.HolProg 64 :=
.seq rawBody358_52 rawBody358_113

def rawBody358_115 : StackLang.HolProg 64 :=
.seq rawBody358_3 rawBody358_114

def rawBody358_116 : StackLang.HolProg 64 :=
.seq rawBody358_0 rawBody358_115

def raw358 : StackLang.HolProg 64 := rawBody358_116
theorem raw358_eq : StackRawCall.compTop RawInfo.rawInfo (function358 (.list [])).1 = raw358 := by
  kernel_rfl
#print axioms raw358_eq
end InitECandidate.Proofs.BackendStages
