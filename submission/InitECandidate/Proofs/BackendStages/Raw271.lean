import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function271
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody271_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody271_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody271_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody271_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 657#64)

def rawBody271_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody271_5 : StackLang.HolProg 64 :=
.seq rawBody271_3 rawBody271_4

def rawBody271_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody271_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody271_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody271_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 271 3

def rawBody271_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody271_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody271_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody271_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody271_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody271_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody271_16 : StackLang.HolProg 64 :=
.seq rawBody271_14 rawBody271_15

def rawBody271_17 : StackLang.HolProg 64 :=
.seq rawBody271_13 rawBody271_16

def rawBody271_18 : StackLang.HolProg 64 :=
.seq rawBody271_12 rawBody271_17

def rawBody271_19 : StackLang.HolProg 64 :=
.seq rawBody271_11 rawBody271_18

def rawBody271_20 : StackLang.HolProg 64 :=
.seq rawBody271_10 rawBody271_19

def rawBody271_21 : StackLang.HolProg 64 :=
.seq rawBody271_9 rawBody271_20

def rawBody271_22 : StackLang.HolProg 64 :=
.seq rawBody271_8 rawBody271_21

def rawBody271_23 : StackLang.HolProg 64 :=
.seq rawBody271_7 rawBody271_22

def rawBody271_24 : StackLang.HolProg 64 :=
.seq rawBody271_6 rawBody271_23

def rawBody271_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody271_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody271_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody271_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody271_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody271_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody271_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody271_32 : StackLang.HolProg 64 :=
.seq rawBody271_30 rawBody271_31

def rawBody271_33 : StackLang.HolProg 64 :=
.seq rawBody271_29 rawBody271_32

def rawBody271_34 : StackLang.HolProg 64 :=
.seq rawBody271_28 rawBody271_33

def rawBody271_35 : StackLang.HolProg 64 :=
.seq rawBody271_27 rawBody271_34

def rawBody271_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody271_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody271_38 : StackLang.HolProg 64 :=
.seq rawBody271_36 rawBody271_37

def rawBody271_39 : StackLang.HolProg 64 :=
.call (some (rawBody271_35, 0, 271, 2)) (Sum.inl 269) (some (rawBody271_38, 271, 3))

def rawBody271_40 : StackLang.HolProg 64 :=
.seq rawBody271_26 rawBody271_39

def rawBody271_41 : StackLang.HolProg 64 :=
.seq rawBody271_25 rawBody271_40

def rawBody271_42 : StackLang.HolProg 64 :=
.seq rawBody271_24 rawBody271_41

def rawBody271_43 : StackLang.HolProg 64 :=
.seq rawBody271_5 rawBody271_42

def rawBody271_44 : StackLang.HolProg 64 :=
.seq rawBody271_2 rawBody271_43

def rawBody271_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody271_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 32#64)

def rawBody271_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody271_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody271_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 5#64)

def rawBody271_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody271_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def rawBody271_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def rawBody271_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody271_54 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody271_55 : StackLang.HolProg 64 :=
.seq rawBody271_53 rawBody271_54

def rawBody271_56 : StackLang.HolProg 64 :=
.seq rawBody271_52 rawBody271_55

def rawBody271_57 : StackLang.HolProg 64 :=
.seq rawBody271_51 rawBody271_56

def rawBody271_58 : StackLang.HolProg 64 :=
.seq rawBody271_50 rawBody271_57

def rawBody271_59 : StackLang.HolProg 64 :=
.seq rawBody271_49 rawBody271_58

def rawBody271_60 : StackLang.HolProg 64 :=
.seq rawBody271_48 rawBody271_59

def rawBody271_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody271_62 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody271_60 rawBody271_61

def rawBody271_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody271_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody271_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody271_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody271_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 658#64)

def rawBody271_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody271_69 : StackLang.HolProg 64 :=
.seq rawBody271_67 rawBody271_68

def rawBody271_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody271_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody271_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody271_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 271 5

def rawBody271_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody271_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody271_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody271_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody271_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody271_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody271_80 : StackLang.HolProg 64 :=
.seq rawBody271_78 rawBody271_79

def rawBody271_81 : StackLang.HolProg 64 :=
.seq rawBody271_77 rawBody271_80

def rawBody271_82 : StackLang.HolProg 64 :=
.seq rawBody271_76 rawBody271_81

def rawBody271_83 : StackLang.HolProg 64 :=
.seq rawBody271_75 rawBody271_82

def rawBody271_84 : StackLang.HolProg 64 :=
.seq rawBody271_74 rawBody271_83

def rawBody271_85 : StackLang.HolProg 64 :=
.seq rawBody271_73 rawBody271_84

def rawBody271_86 : StackLang.HolProg 64 :=
.seq rawBody271_72 rawBody271_85

def rawBody271_87 : StackLang.HolProg 64 :=
.seq rawBody271_71 rawBody271_86

def rawBody271_88 : StackLang.HolProg 64 :=
.seq rawBody271_70 rawBody271_87

def rawBody271_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody271_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody271_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody271_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody271_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody271_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody271_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody271_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody271_97 : StackLang.HolProg 64 :=
.seq rawBody271_95 rawBody271_96

def rawBody271_98 : StackLang.HolProg 64 :=
.seq rawBody271_94 rawBody271_97

def rawBody271_99 : StackLang.HolProg 64 :=
.seq rawBody271_93 rawBody271_98

def rawBody271_100 : StackLang.HolProg 64 :=
.seq rawBody271_92 rawBody271_99

def rawBody271_101 : StackLang.HolProg 64 :=
.seq rawBody271_91 rawBody271_100

def rawBody271_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody271_103 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody271_104 : StackLang.HolProg 64 :=
.seq rawBody271_102 rawBody271_103

def rawBody271_105 : StackLang.HolProg 64 :=
.call (some (rawBody271_101, 0, 271, 4)) (Sum.inl 146) (some (rawBody271_104, 271, 5))

def rawBody271_106 : StackLang.HolProg 64 :=
.seq rawBody271_90 rawBody271_105

def rawBody271_107 : StackLang.HolProg 64 :=
.seq rawBody271_89 rawBody271_106

def rawBody271_108 : StackLang.HolProg 64 :=
.seq rawBody271_88 rawBody271_107

def rawBody271_109 : StackLang.HolProg 64 :=
.seq rawBody271_69 rawBody271_108

def rawBody271_110 : StackLang.HolProg 64 :=
.seq rawBody271_66 rawBody271_109

def rawBody271_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody271_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody271_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody271_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody271_115 : StackLang.HolProg 64 :=
.seq rawBody271_113 rawBody271_114

def rawBody271_116 : StackLang.HolProg 64 :=
.seq rawBody271_112 rawBody271_115

def rawBody271_117 : StackLang.HolProg 64 :=
.seq rawBody271_111 rawBody271_116

def rawBody271_118 : StackLang.HolProg 64 :=
.seq rawBody271_110 rawBody271_117

def rawBody271_119 : StackLang.HolProg 64 :=
.seq rawBody271_65 rawBody271_118

def rawBody271_120 : StackLang.HolProg 64 :=
.seq rawBody271_64 rawBody271_119

def rawBody271_121 : StackLang.HolProg 64 :=
.seq rawBody271_63 rawBody271_120

def rawBody271_122 : StackLang.HolProg 64 :=
.seq rawBody271_62 rawBody271_121

def rawBody271_123 : StackLang.HolProg 64 :=
.seq rawBody271_47 rawBody271_122

def rawBody271_124 : StackLang.HolProg 64 :=
.seq rawBody271_46 rawBody271_123

def rawBody271_125 : StackLang.HolProg 64 :=
.seq rawBody271_45 rawBody271_124

def rawBody271_126 : StackLang.HolProg 64 :=
.seq rawBody271_44 rawBody271_125

def rawBody271_127 : StackLang.HolProg 64 :=
.seq rawBody271_1 rawBody271_126

def rawBody271_128 : StackLang.HolProg 64 :=
.seq rawBody271_0 rawBody271_127

def raw271 : StackLang.HolProg 64 := rawBody271_128
theorem raw271_eq : StackRawCall.compTop RawInfo.rawInfo (function271 (.list [])).1 = raw271 := by
  kernel_rfl
#print axioms raw271_eq
end InitECandidate.Proofs.BackendStages
