import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw339
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody339_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody339_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody339_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody339_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody339_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody339_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody339_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody339_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def AllocBody339_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody339_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody339_10 : StackLang.HolProg 64 :=
.seq AllocBody339_8 AllocBody339_9

def AllocBody339_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody339_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 973#64)

def AllocBody339_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody339_14 : StackLang.HolProg 64 :=
.seq AllocBody339_12 AllocBody339_13

def AllocBody339_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody339_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody339_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody339_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 339 3

def AllocBody339_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody339_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody339_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody339_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody339_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody339_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody339_25 : StackLang.HolProg 64 :=
.seq AllocBody339_23 AllocBody339_24

def AllocBody339_26 : StackLang.HolProg 64 :=
.seq AllocBody339_22 AllocBody339_25

def AllocBody339_27 : StackLang.HolProg 64 :=
.seq AllocBody339_21 AllocBody339_26

def AllocBody339_28 : StackLang.HolProg 64 :=
.seq AllocBody339_20 AllocBody339_27

def AllocBody339_29 : StackLang.HolProg 64 :=
.seq AllocBody339_19 AllocBody339_28

def AllocBody339_30 : StackLang.HolProg 64 :=
.seq AllocBody339_18 AllocBody339_29

def AllocBody339_31 : StackLang.HolProg 64 :=
.seq AllocBody339_17 AllocBody339_30

def AllocBody339_32 : StackLang.HolProg 64 :=
.seq AllocBody339_16 AllocBody339_31

def AllocBody339_33 : StackLang.HolProg 64 :=
.seq AllocBody339_15 AllocBody339_32

def AllocBody339_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody339_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody339_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody339_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody339_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody339_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody339_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody339_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody339_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody339_43 : StackLang.HolProg 64 :=
.seq AllocBody339_41 AllocBody339_42

def AllocBody339_44 : StackLang.HolProg 64 :=
.seq AllocBody339_40 AllocBody339_43

def AllocBody339_45 : StackLang.HolProg 64 :=
.seq AllocBody339_39 AllocBody339_44

def AllocBody339_46 : StackLang.HolProg 64 :=
.seq AllocBody339_38 AllocBody339_45

def AllocBody339_47 : StackLang.HolProg 64 :=
.seq AllocBody339_37 AllocBody339_46

def AllocBody339_48 : StackLang.HolProg 64 :=
.seq AllocBody339_36 AllocBody339_47

def AllocBody339_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody339_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody339_51 : StackLang.HolProg 64 :=
.seq AllocBody339_49 AllocBody339_50

def AllocBody339_52 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody339_53 : StackLang.HolProg 64 :=
.seq AllocBody339_51 AllocBody339_52

def AllocBody339_54 : StackLang.HolProg 64 :=
.call (some (AllocBody339_48, 0, 339, 2)) (Sum.inl 161) (some (AllocBody339_53, 339, 3))

def AllocBody339_55 : StackLang.HolProg 64 :=
.seq AllocBody339_35 AllocBody339_54

def AllocBody339_56 : StackLang.HolProg 64 :=
.seq AllocBody339_34 AllocBody339_55

def AllocBody339_57 : StackLang.HolProg 64 :=
.seq AllocBody339_33 AllocBody339_56

def AllocBody339_58 : StackLang.HolProg 64 :=
.seq AllocBody339_14 AllocBody339_57

def AllocBody339_59 : StackLang.HolProg 64 :=
.seq AllocBody339_11 AllocBody339_58

def AllocBody339_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody339_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody339_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody339_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody339_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 15#64)

def AllocBody339_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody339_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody339_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def AllocBody339_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody339_69 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody339_70 : StackLang.HolProg 64 :=
.seq AllocBody339_68 AllocBody339_69

def AllocBody339_71 : StackLang.HolProg 64 :=
.seq AllocBody339_67 AllocBody339_70

def AllocBody339_72 : StackLang.HolProg 64 :=
.seq AllocBody339_66 AllocBody339_71

def AllocBody339_73 : StackLang.HolProg 64 :=
.seq AllocBody339_65 AllocBody339_72

def AllocBody339_74 : StackLang.HolProg 64 :=
.seq AllocBody339_64 AllocBody339_73

def AllocBody339_75 : StackLang.HolProg 64 :=
.seq AllocBody339_63 AllocBody339_74

def AllocBody339_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody339_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody339_75 AllocBody339_76

def AllocBody339_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody339_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody339_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody339_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody339_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 16#64)

def AllocBody339_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody339_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody339_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def AllocBody339_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody339_87 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody339_88 : StackLang.HolProg 64 :=
.seq AllocBody339_86 AllocBody339_87

def AllocBody339_89 : StackLang.HolProg 64 :=
.seq AllocBody339_85 AllocBody339_88

def AllocBody339_90 : StackLang.HolProg 64 :=
.seq AllocBody339_84 AllocBody339_89

def AllocBody339_91 : StackLang.HolProg 64 :=
.seq AllocBody339_83 AllocBody339_90

def AllocBody339_92 : StackLang.HolProg 64 :=
.seq AllocBody339_82 AllocBody339_91

def AllocBody339_93 : StackLang.HolProg 64 :=
.seq AllocBody339_81 AllocBody339_92

def AllocBody339_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody339_95 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody339_93 AllocBody339_94

def AllocBody339_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody339_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody339_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody339_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody339_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def AllocBody339_101 : StackLang.HolProg 64 :=
.seq AllocBody339_99 AllocBody339_100

def AllocBody339_102 : StackLang.HolProg 64 :=
.seq AllocBody339_98 AllocBody339_101

def AllocBody339_103 : StackLang.HolProg 64 :=
.seq AllocBody339_97 AllocBody339_102

def AllocBody339_104 : StackLang.HolProg 64 :=
.seq AllocBody339_96 AllocBody339_103

def AllocBody339_105 : StackLang.HolProg 64 :=
.seq AllocBody339_95 AllocBody339_104

def AllocBody339_106 : StackLang.HolProg 64 :=
.seq AllocBody339_80 AllocBody339_105

def AllocBody339_107 : StackLang.HolProg 64 :=
.seq AllocBody339_79 AllocBody339_106

def AllocBody339_108 : StackLang.HolProg 64 :=
.seq AllocBody339_78 AllocBody339_107

def AllocBody339_109 : StackLang.HolProg 64 :=
.seq AllocBody339_77 AllocBody339_108

def AllocBody339_110 : StackLang.HolProg 64 :=
.seq AllocBody339_62 AllocBody339_109

def AllocBody339_111 : StackLang.HolProg 64 :=
.seq AllocBody339_61 AllocBody339_110

def AllocBody339_112 : StackLang.HolProg 64 :=
.seq AllocBody339_60 AllocBody339_111

def AllocBody339_113 : StackLang.HolProg 64 :=
.seq AllocBody339_59 AllocBody339_112

def AllocBody339_114 : StackLang.HolProg 64 :=
.seq AllocBody339_10 AllocBody339_113

def AllocBody339_115 : StackLang.HolProg 64 :=
.seq AllocBody339_7 AllocBody339_114

def AllocBody339_116 : StackLang.HolProg 64 :=
.seq AllocBody339_6 AllocBody339_115

def AllocBody339_117 : StackLang.HolProg 64 :=
.seq AllocBody339_5 AllocBody339_116

def AllocBody339_118 : StackLang.HolProg 64 :=
.seq AllocBody339_4 AllocBody339_117

def AllocBody339_119 : StackLang.HolProg 64 :=
.seq AllocBody339_3 AllocBody339_118

def AllocBody339_120 : StackLang.HolProg 64 :=
.seq AllocBody339_2 AllocBody339_119

def AllocBody339_121 : StackLang.HolProg 64 :=
.seq AllocBody339_1 AllocBody339_120

def AllocBody339_122 : StackLang.HolProg 64 :=
.seq AllocBody339_0 AllocBody339_121

def Alloc339 : Nat × StackLang.HolProg 64 := (339, AllocBody339_122)
theorem Alloc339_eq : StackAlloc.progComp (339, raw339) = Alloc339 := by
  kernel_rfl
#print axioms Alloc339_eq
end InitECandidate.Proofs.BackendStages
