import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function339
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody339_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody339_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody339_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody339_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody339_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody339_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody339_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody339_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def rawBody339_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody339_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody339_10 : StackLang.HolProg 64 :=
.seq rawBody339_8 rawBody339_9

def rawBody339_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody339_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 973#64)

def rawBody339_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody339_14 : StackLang.HolProg 64 :=
.seq rawBody339_12 rawBody339_13

def rawBody339_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody339_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody339_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody339_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 339 3

def rawBody339_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody339_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody339_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody339_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody339_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody339_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody339_25 : StackLang.HolProg 64 :=
.seq rawBody339_23 rawBody339_24

def rawBody339_26 : StackLang.HolProg 64 :=
.seq rawBody339_22 rawBody339_25

def rawBody339_27 : StackLang.HolProg 64 :=
.seq rawBody339_21 rawBody339_26

def rawBody339_28 : StackLang.HolProg 64 :=
.seq rawBody339_20 rawBody339_27

def rawBody339_29 : StackLang.HolProg 64 :=
.seq rawBody339_19 rawBody339_28

def rawBody339_30 : StackLang.HolProg 64 :=
.seq rawBody339_18 rawBody339_29

def rawBody339_31 : StackLang.HolProg 64 :=
.seq rawBody339_17 rawBody339_30

def rawBody339_32 : StackLang.HolProg 64 :=
.seq rawBody339_16 rawBody339_31

def rawBody339_33 : StackLang.HolProg 64 :=
.seq rawBody339_15 rawBody339_32

def rawBody339_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody339_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody339_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody339_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody339_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody339_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody339_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody339_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody339_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody339_43 : StackLang.HolProg 64 :=
.seq rawBody339_41 rawBody339_42

def rawBody339_44 : StackLang.HolProg 64 :=
.seq rawBody339_40 rawBody339_43

def rawBody339_45 : StackLang.HolProg 64 :=
.seq rawBody339_39 rawBody339_44

def rawBody339_46 : StackLang.HolProg 64 :=
.seq rawBody339_38 rawBody339_45

def rawBody339_47 : StackLang.HolProg 64 :=
.seq rawBody339_37 rawBody339_46

def rawBody339_48 : StackLang.HolProg 64 :=
.seq rawBody339_36 rawBody339_47

def rawBody339_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody339_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody339_51 : StackLang.HolProg 64 :=
.seq rawBody339_49 rawBody339_50

def rawBody339_52 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody339_53 : StackLang.HolProg 64 :=
.seq rawBody339_51 rawBody339_52

def rawBody339_54 : StackLang.HolProg 64 :=
.call (some (rawBody339_48, 0, 339, 2)) (Sum.inl 161) (some (rawBody339_53, 339, 3))

def rawBody339_55 : StackLang.HolProg 64 :=
.seq rawBody339_35 rawBody339_54

def rawBody339_56 : StackLang.HolProg 64 :=
.seq rawBody339_34 rawBody339_55

def rawBody339_57 : StackLang.HolProg 64 :=
.seq rawBody339_33 rawBody339_56

def rawBody339_58 : StackLang.HolProg 64 :=
.seq rawBody339_14 rawBody339_57

def rawBody339_59 : StackLang.HolProg 64 :=
.seq rawBody339_11 rawBody339_58

def rawBody339_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody339_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody339_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody339_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody339_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 15#64)

def rawBody339_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody339_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def rawBody339_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def rawBody339_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody339_69 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody339_70 : StackLang.HolProg 64 :=
.seq rawBody339_68 rawBody339_69

def rawBody339_71 : StackLang.HolProg 64 :=
.seq rawBody339_67 rawBody339_70

def rawBody339_72 : StackLang.HolProg 64 :=
.seq rawBody339_66 rawBody339_71

def rawBody339_73 : StackLang.HolProg 64 :=
.seq rawBody339_65 rawBody339_72

def rawBody339_74 : StackLang.HolProg 64 :=
.seq rawBody339_64 rawBody339_73

def rawBody339_75 : StackLang.HolProg 64 :=
.seq rawBody339_63 rawBody339_74

def rawBody339_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody339_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody339_75 rawBody339_76

def rawBody339_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody339_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody339_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody339_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody339_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 16#64)

def rawBody339_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody339_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def rawBody339_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def rawBody339_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody339_87 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody339_88 : StackLang.HolProg 64 :=
.seq rawBody339_86 rawBody339_87

def rawBody339_89 : StackLang.HolProg 64 :=
.seq rawBody339_85 rawBody339_88

def rawBody339_90 : StackLang.HolProg 64 :=
.seq rawBody339_84 rawBody339_89

def rawBody339_91 : StackLang.HolProg 64 :=
.seq rawBody339_83 rawBody339_90

def rawBody339_92 : StackLang.HolProg 64 :=
.seq rawBody339_82 rawBody339_91

def rawBody339_93 : StackLang.HolProg 64 :=
.seq rawBody339_81 rawBody339_92

def rawBody339_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody339_95 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody339_93 rawBody339_94

def rawBody339_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody339_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody339_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody339_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody339_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def rawBody339_101 : StackLang.HolProg 64 :=
.seq rawBody339_99 rawBody339_100

def rawBody339_102 : StackLang.HolProg 64 :=
.seq rawBody339_98 rawBody339_101

def rawBody339_103 : StackLang.HolProg 64 :=
.seq rawBody339_97 rawBody339_102

def rawBody339_104 : StackLang.HolProg 64 :=
.seq rawBody339_96 rawBody339_103

def rawBody339_105 : StackLang.HolProg 64 :=
.seq rawBody339_95 rawBody339_104

def rawBody339_106 : StackLang.HolProg 64 :=
.seq rawBody339_80 rawBody339_105

def rawBody339_107 : StackLang.HolProg 64 :=
.seq rawBody339_79 rawBody339_106

def rawBody339_108 : StackLang.HolProg 64 :=
.seq rawBody339_78 rawBody339_107

def rawBody339_109 : StackLang.HolProg 64 :=
.seq rawBody339_77 rawBody339_108

def rawBody339_110 : StackLang.HolProg 64 :=
.seq rawBody339_62 rawBody339_109

def rawBody339_111 : StackLang.HolProg 64 :=
.seq rawBody339_61 rawBody339_110

def rawBody339_112 : StackLang.HolProg 64 :=
.seq rawBody339_60 rawBody339_111

def rawBody339_113 : StackLang.HolProg 64 :=
.seq rawBody339_59 rawBody339_112

def rawBody339_114 : StackLang.HolProg 64 :=
.seq rawBody339_10 rawBody339_113

def rawBody339_115 : StackLang.HolProg 64 :=
.seq rawBody339_7 rawBody339_114

def rawBody339_116 : StackLang.HolProg 64 :=
.seq rawBody339_6 rawBody339_115

def rawBody339_117 : StackLang.HolProg 64 :=
.seq rawBody339_5 rawBody339_116

def rawBody339_118 : StackLang.HolProg 64 :=
.seq rawBody339_4 rawBody339_117

def rawBody339_119 : StackLang.HolProg 64 :=
.seq rawBody339_3 rawBody339_118

def rawBody339_120 : StackLang.HolProg 64 :=
.seq rawBody339_2 rawBody339_119

def rawBody339_121 : StackLang.HolProg 64 :=
.seq rawBody339_1 rawBody339_120

def rawBody339_122 : StackLang.HolProg 64 :=
.seq rawBody339_0 rawBody339_121

def raw339 : StackLang.HolProg 64 := rawBody339_122
theorem raw339_eq : StackRawCall.compTop RawInfo.rawInfo (function339 (.list [])).1 = raw339 := by
  kernel_rfl
#print axioms raw339_eq
end InitECandidate.Proofs.BackendStages
