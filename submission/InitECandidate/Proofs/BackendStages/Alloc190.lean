import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw190
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody190_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody190_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody190_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody190_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody190_4 : StackLang.HolProg 64 :=
.seq AllocBody190_2 AllocBody190_3

def AllocBody190_5 : StackLang.HolProg 64 :=
.seq AllocBody190_1 AllocBody190_4

def AllocBody190_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody190_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 218#64)

def AllocBody190_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody190_9 : StackLang.HolProg 64 :=
.seq AllocBody190_7 AllocBody190_8

def AllocBody190_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody190_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody190_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody190_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 190 3

def AllocBody190_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody190_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody190_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody190_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody190_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody190_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody190_20 : StackLang.HolProg 64 :=
.seq AllocBody190_18 AllocBody190_19

def AllocBody190_21 : StackLang.HolProg 64 :=
.seq AllocBody190_17 AllocBody190_20

def AllocBody190_22 : StackLang.HolProg 64 :=
.seq AllocBody190_16 AllocBody190_21

def AllocBody190_23 : StackLang.HolProg 64 :=
.seq AllocBody190_15 AllocBody190_22

def AllocBody190_24 : StackLang.HolProg 64 :=
.seq AllocBody190_14 AllocBody190_23

def AllocBody190_25 : StackLang.HolProg 64 :=
.seq AllocBody190_13 AllocBody190_24

def AllocBody190_26 : StackLang.HolProg 64 :=
.seq AllocBody190_12 AllocBody190_25

def AllocBody190_27 : StackLang.HolProg 64 :=
.seq AllocBody190_11 AllocBody190_26

def AllocBody190_28 : StackLang.HolProg 64 :=
.seq AllocBody190_10 AllocBody190_27

def AllocBody190_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody190_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody190_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody190_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody190_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody190_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody190_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody190_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody190_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody190_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody190_39 : StackLang.HolProg 64 :=
.seq AllocBody190_37 AllocBody190_38

def AllocBody190_40 : StackLang.HolProg 64 :=
.seq AllocBody190_36 AllocBody190_39

def AllocBody190_41 : StackLang.HolProg 64 :=
.seq AllocBody190_35 AllocBody190_40

def AllocBody190_42 : StackLang.HolProg 64 :=
.seq AllocBody190_34 AllocBody190_41

def AllocBody190_43 : StackLang.HolProg 64 :=
.seq AllocBody190_33 AllocBody190_42

def AllocBody190_44 : StackLang.HolProg 64 :=
.seq AllocBody190_32 AllocBody190_43

def AllocBody190_45 : StackLang.HolProg 64 :=
.seq AllocBody190_31 AllocBody190_44

def AllocBody190_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody190_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody190_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody190_49 : StackLang.HolProg 64 :=
.seq AllocBody190_47 AllocBody190_48

def AllocBody190_50 : StackLang.HolProg 64 :=
.seq AllocBody190_46 AllocBody190_49

def AllocBody190_51 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody190_52 : StackLang.HolProg 64 :=
.seq AllocBody190_50 AllocBody190_51

def AllocBody190_53 : StackLang.HolProg 64 :=
.call (some (AllocBody190_45, 0, 190, 2)) (Sum.inl 188) (some (AllocBody190_52, 190, 3))

def AllocBody190_54 : StackLang.HolProg 64 :=
.seq AllocBody190_30 AllocBody190_53

def AllocBody190_55 : StackLang.HolProg 64 :=
.seq AllocBody190_29 AllocBody190_54

def AllocBody190_56 : StackLang.HolProg 64 :=
.seq AllocBody190_28 AllocBody190_55

def AllocBody190_57 : StackLang.HolProg 64 :=
.seq AllocBody190_9 AllocBody190_56

def AllocBody190_58 : StackLang.HolProg 64 :=
.seq AllocBody190_6 AllocBody190_57

def AllocBody190_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody190_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody190_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 40#64))

def AllocBody190_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody190_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody190_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody190_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody190_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody190_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody190_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody190_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody190_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody190_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody190_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody190_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody190_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody190_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody190_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody190_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody190_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody190_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody190_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody190_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody190_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody190_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody190_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody190_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody190_86 : StackLang.HolProg 64 :=
.seq AllocBody190_84 AllocBody190_85

def AllocBody190_87 : StackLang.HolProg 64 :=
.seq AllocBody190_83 AllocBody190_86

def AllocBody190_88 : StackLang.HolProg 64 :=
.seq AllocBody190_82 AllocBody190_87

def AllocBody190_89 : StackLang.HolProg 64 :=
.seq AllocBody190_81 AllocBody190_88

def AllocBody190_90 : StackLang.HolProg 64 :=
.seq AllocBody190_80 AllocBody190_89

def AllocBody190_91 : StackLang.HolProg 64 :=
.seq AllocBody190_79 AllocBody190_90

def AllocBody190_92 : StackLang.HolProg 64 :=
.seq AllocBody190_78 AllocBody190_91

def AllocBody190_93 : StackLang.HolProg 64 :=
.seq AllocBody190_77 AllocBody190_92

def AllocBody190_94 : StackLang.HolProg 64 :=
.seq AllocBody190_76 AllocBody190_93

def AllocBody190_95 : StackLang.HolProg 64 :=
.seq AllocBody190_75 AllocBody190_94

def AllocBody190_96 : StackLang.HolProg 64 :=
.seq AllocBody190_74 AllocBody190_95

def AllocBody190_97 : StackLang.HolProg 64 :=
.seq AllocBody190_73 AllocBody190_96

def AllocBody190_98 : StackLang.HolProg 64 :=
.seq AllocBody190_72 AllocBody190_97

def AllocBody190_99 : StackLang.HolProg 64 :=
.seq AllocBody190_71 AllocBody190_98

def AllocBody190_100 : StackLang.HolProg 64 :=
.seq AllocBody190_70 AllocBody190_99

def AllocBody190_101 : StackLang.HolProg 64 :=
.seq AllocBody190_69 AllocBody190_100

def AllocBody190_102 : StackLang.HolProg 64 :=
.seq AllocBody190_68 AllocBody190_101

def AllocBody190_103 : StackLang.HolProg 64 :=
.seq AllocBody190_67 AllocBody190_102

def AllocBody190_104 : StackLang.HolProg 64 :=
.seq AllocBody190_66 AllocBody190_103

def AllocBody190_105 : StackLang.HolProg 64 :=
.seq AllocBody190_65 AllocBody190_104

def AllocBody190_106 : StackLang.HolProg 64 :=
.seq AllocBody190_64 AllocBody190_105

def AllocBody190_107 : StackLang.HolProg 64 :=
.seq AllocBody190_63 AllocBody190_106

def AllocBody190_108 : StackLang.HolProg 64 :=
.seq AllocBody190_62 AllocBody190_107

def AllocBody190_109 : StackLang.HolProg 64 :=
.seq AllocBody190_61 AllocBody190_108

def AllocBody190_110 : StackLang.HolProg 64 :=
.seq AllocBody190_60 AllocBody190_109

def AllocBody190_111 : StackLang.HolProg 64 :=
.seq AllocBody190_59 AllocBody190_110

def AllocBody190_112 : StackLang.HolProg 64 :=
.seq AllocBody190_58 AllocBody190_111

def AllocBody190_113 : StackLang.HolProg 64 :=
.seq AllocBody190_5 AllocBody190_112

def AllocBody190_114 : StackLang.HolProg 64 :=
.seq AllocBody190_0 AllocBody190_113

def Alloc190 : Nat × StackLang.HolProg 64 := (190, AllocBody190_114)
theorem Alloc190_eq : StackAlloc.progComp (190, raw190) = Alloc190 := by
  kernel_rfl
#print axioms Alloc190_eq
end InitECandidate.Proofs.BackendStages
