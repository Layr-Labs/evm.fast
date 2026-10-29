import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw272
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody272_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody272_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody272_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody272_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody272_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody272_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody272_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody272_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def AllocBody272_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody272_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody272_10 : StackLang.HolProg 64 :=
.seq AllocBody272_8 AllocBody272_9

def AllocBody272_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody272_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 659#64)

def AllocBody272_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody272_14 : StackLang.HolProg 64 :=
.seq AllocBody272_12 AllocBody272_13

def AllocBody272_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody272_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody272_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody272_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 272 3

def AllocBody272_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody272_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody272_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody272_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody272_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody272_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody272_25 : StackLang.HolProg 64 :=
.seq AllocBody272_23 AllocBody272_24

def AllocBody272_26 : StackLang.HolProg 64 :=
.seq AllocBody272_22 AllocBody272_25

def AllocBody272_27 : StackLang.HolProg 64 :=
.seq AllocBody272_21 AllocBody272_26

def AllocBody272_28 : StackLang.HolProg 64 :=
.seq AllocBody272_20 AllocBody272_27

def AllocBody272_29 : StackLang.HolProg 64 :=
.seq AllocBody272_19 AllocBody272_28

def AllocBody272_30 : StackLang.HolProg 64 :=
.seq AllocBody272_18 AllocBody272_29

def AllocBody272_31 : StackLang.HolProg 64 :=
.seq AllocBody272_17 AllocBody272_30

def AllocBody272_32 : StackLang.HolProg 64 :=
.seq AllocBody272_16 AllocBody272_31

def AllocBody272_33 : StackLang.HolProg 64 :=
.seq AllocBody272_15 AllocBody272_32

def AllocBody272_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody272_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody272_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody272_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody272_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody272_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody272_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody272_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody272_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody272_43 : StackLang.HolProg 64 :=
.seq AllocBody272_41 AllocBody272_42

def AllocBody272_44 : StackLang.HolProg 64 :=
.seq AllocBody272_40 AllocBody272_43

def AllocBody272_45 : StackLang.HolProg 64 :=
.seq AllocBody272_39 AllocBody272_44

def AllocBody272_46 : StackLang.HolProg 64 :=
.seq AllocBody272_38 AllocBody272_45

def AllocBody272_47 : StackLang.HolProg 64 :=
.seq AllocBody272_37 AllocBody272_46

def AllocBody272_48 : StackLang.HolProg 64 :=
.seq AllocBody272_36 AllocBody272_47

def AllocBody272_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody272_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody272_51 : StackLang.HolProg 64 :=
.seq AllocBody272_49 AllocBody272_50

def AllocBody272_52 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody272_53 : StackLang.HolProg 64 :=
.seq AllocBody272_51 AllocBody272_52

def AllocBody272_54 : StackLang.HolProg 64 :=
.call (some (AllocBody272_48, 0, 272, 2)) (Sum.inl 161) (some (AllocBody272_53, 272, 3))

def AllocBody272_55 : StackLang.HolProg 64 :=
.seq AllocBody272_35 AllocBody272_54

def AllocBody272_56 : StackLang.HolProg 64 :=
.seq AllocBody272_34 AllocBody272_55

def AllocBody272_57 : StackLang.HolProg 64 :=
.seq AllocBody272_33 AllocBody272_56

def AllocBody272_58 : StackLang.HolProg 64 :=
.seq AllocBody272_14 AllocBody272_57

def AllocBody272_59 : StackLang.HolProg 64 :=
.seq AllocBody272_11 AllocBody272_58

def AllocBody272_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody272_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody272_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody272_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody272_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def AllocBody272_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody272_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody272_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody272_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody272_69 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody272_70 : StackLang.HolProg 64 :=
.seq AllocBody272_68 AllocBody272_69

def AllocBody272_71 : StackLang.HolProg 64 :=
.seq AllocBody272_67 AllocBody272_70

def AllocBody272_72 : StackLang.HolProg 64 :=
.seq AllocBody272_66 AllocBody272_71

def AllocBody272_73 : StackLang.HolProg 64 :=
.seq AllocBody272_65 AllocBody272_72

def AllocBody272_74 : StackLang.HolProg 64 :=
.seq AllocBody272_64 AllocBody272_73

def AllocBody272_75 : StackLang.HolProg 64 :=
.seq AllocBody272_63 AllocBody272_74

def AllocBody272_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody272_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody272_75 AllocBody272_76

def AllocBody272_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody272_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody272_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody272_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody272_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 7#64)

def AllocBody272_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody272_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody272_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody272_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody272_87 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody272_88 : StackLang.HolProg 64 :=
.seq AllocBody272_86 AllocBody272_87

def AllocBody272_89 : StackLang.HolProg 64 :=
.seq AllocBody272_85 AllocBody272_88

def AllocBody272_90 : StackLang.HolProg 64 :=
.seq AllocBody272_84 AllocBody272_89

def AllocBody272_91 : StackLang.HolProg 64 :=
.seq AllocBody272_83 AllocBody272_90

def AllocBody272_92 : StackLang.HolProg 64 :=
.seq AllocBody272_82 AllocBody272_91

def AllocBody272_93 : StackLang.HolProg 64 :=
.seq AllocBody272_81 AllocBody272_92

def AllocBody272_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody272_95 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody272_93 AllocBody272_94

def AllocBody272_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody272_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody272_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody272_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody272_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def AllocBody272_101 : StackLang.HolProg 64 :=
.seq AllocBody272_99 AllocBody272_100

def AllocBody272_102 : StackLang.HolProg 64 :=
.seq AllocBody272_98 AllocBody272_101

def AllocBody272_103 : StackLang.HolProg 64 :=
.seq AllocBody272_97 AllocBody272_102

def AllocBody272_104 : StackLang.HolProg 64 :=
.seq AllocBody272_96 AllocBody272_103

def AllocBody272_105 : StackLang.HolProg 64 :=
.seq AllocBody272_95 AllocBody272_104

def AllocBody272_106 : StackLang.HolProg 64 :=
.seq AllocBody272_80 AllocBody272_105

def AllocBody272_107 : StackLang.HolProg 64 :=
.seq AllocBody272_79 AllocBody272_106

def AllocBody272_108 : StackLang.HolProg 64 :=
.seq AllocBody272_78 AllocBody272_107

def AllocBody272_109 : StackLang.HolProg 64 :=
.seq AllocBody272_77 AllocBody272_108

def AllocBody272_110 : StackLang.HolProg 64 :=
.seq AllocBody272_62 AllocBody272_109

def AllocBody272_111 : StackLang.HolProg 64 :=
.seq AllocBody272_61 AllocBody272_110

def AllocBody272_112 : StackLang.HolProg 64 :=
.seq AllocBody272_60 AllocBody272_111

def AllocBody272_113 : StackLang.HolProg 64 :=
.seq AllocBody272_59 AllocBody272_112

def AllocBody272_114 : StackLang.HolProg 64 :=
.seq AllocBody272_10 AllocBody272_113

def AllocBody272_115 : StackLang.HolProg 64 :=
.seq AllocBody272_7 AllocBody272_114

def AllocBody272_116 : StackLang.HolProg 64 :=
.seq AllocBody272_6 AllocBody272_115

def AllocBody272_117 : StackLang.HolProg 64 :=
.seq AllocBody272_5 AllocBody272_116

def AllocBody272_118 : StackLang.HolProg 64 :=
.seq AllocBody272_4 AllocBody272_117

def AllocBody272_119 : StackLang.HolProg 64 :=
.seq AllocBody272_3 AllocBody272_118

def AllocBody272_120 : StackLang.HolProg 64 :=
.seq AllocBody272_2 AllocBody272_119

def AllocBody272_121 : StackLang.HolProg 64 :=
.seq AllocBody272_1 AllocBody272_120

def AllocBody272_122 : StackLang.HolProg 64 :=
.seq AllocBody272_0 AllocBody272_121

def Alloc272 : Nat × StackLang.HolProg 64 := (272, AllocBody272_122)
theorem Alloc272_eq : StackAlloc.progComp (272, raw272) = Alloc272 := by
  kernel_rfl
#print axioms Alloc272_eq
end InitECandidate.Proofs.BackendStages
