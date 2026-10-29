import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw341
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody341_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody341_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody341_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody341_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody341_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody341_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody341_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody341_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def AllocBody341_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody341_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody341_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 975#64)

def AllocBody341_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody341_12 : StackLang.HolProg 64 :=
.seq AllocBody341_10 AllocBody341_11

def AllocBody341_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody341_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody341_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody341_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 341 3

def AllocBody341_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody341_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody341_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody341_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody341_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody341_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody341_23 : StackLang.HolProg 64 :=
.seq AllocBody341_21 AllocBody341_22

def AllocBody341_24 : StackLang.HolProg 64 :=
.seq AllocBody341_20 AllocBody341_23

def AllocBody341_25 : StackLang.HolProg 64 :=
.seq AllocBody341_19 AllocBody341_24

def AllocBody341_26 : StackLang.HolProg 64 :=
.seq AllocBody341_18 AllocBody341_25

def AllocBody341_27 : StackLang.HolProg 64 :=
.seq AllocBody341_17 AllocBody341_26

def AllocBody341_28 : StackLang.HolProg 64 :=
.seq AllocBody341_16 AllocBody341_27

def AllocBody341_29 : StackLang.HolProg 64 :=
.seq AllocBody341_15 AllocBody341_28

def AllocBody341_30 : StackLang.HolProg 64 :=
.seq AllocBody341_14 AllocBody341_29

def AllocBody341_31 : StackLang.HolProg 64 :=
.seq AllocBody341_13 AllocBody341_30

def AllocBody341_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody341_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody341_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody341_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody341_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody341_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody341_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody341_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody341_40 : StackLang.HolProg 64 :=
.seq AllocBody341_38 AllocBody341_39

def AllocBody341_41 : StackLang.HolProg 64 :=
.seq AllocBody341_37 AllocBody341_40

def AllocBody341_42 : StackLang.HolProg 64 :=
.seq AllocBody341_36 AllocBody341_41

def AllocBody341_43 : StackLang.HolProg 64 :=
.seq AllocBody341_35 AllocBody341_42

def AllocBody341_44 : StackLang.HolProg 64 :=
.seq AllocBody341_34 AllocBody341_43

def AllocBody341_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody341_46 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody341_47 : StackLang.HolProg 64 :=
.seq AllocBody341_45 AllocBody341_46

def AllocBody341_48 : StackLang.HolProg 64 :=
.call (some (AllocBody341_44, 0, 341, 2)) (Sum.inl 161) (some (AllocBody341_47, 341, 3))

def AllocBody341_49 : StackLang.HolProg 64 :=
.seq AllocBody341_33 AllocBody341_48

def AllocBody341_50 : StackLang.HolProg 64 :=
.seq AllocBody341_32 AllocBody341_49

def AllocBody341_51 : StackLang.HolProg 64 :=
.seq AllocBody341_31 AllocBody341_50

def AllocBody341_52 : StackLang.HolProg 64 :=
.seq AllocBody341_12 AllocBody341_51

def AllocBody341_53 : StackLang.HolProg 64 :=
.seq AllocBody341_9 AllocBody341_52

def AllocBody341_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody341_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody341_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody341_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody341_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 18#64)

def AllocBody341_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody341_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody341_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def AllocBody341_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody341_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody341_64 : StackLang.HolProg 64 :=
.seq AllocBody341_62 AllocBody341_63

def AllocBody341_65 : StackLang.HolProg 64 :=
.seq AllocBody341_61 AllocBody341_64

def AllocBody341_66 : StackLang.HolProg 64 :=
.seq AllocBody341_60 AllocBody341_65

def AllocBody341_67 : StackLang.HolProg 64 :=
.seq AllocBody341_59 AllocBody341_66

def AllocBody341_68 : StackLang.HolProg 64 :=
.seq AllocBody341_58 AllocBody341_67

def AllocBody341_69 : StackLang.HolProg 64 :=
.seq AllocBody341_57 AllocBody341_68

def AllocBody341_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody341_71 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody341_69 AllocBody341_70

def AllocBody341_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody341_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody341_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody341_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody341_76 : StackLang.HolProg 64 :=
.seq AllocBody341_74 AllocBody341_75

def AllocBody341_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody341_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody341_79 : StackLang.HolProg 64 :=
.seq AllocBody341_77 AllocBody341_78

def AllocBody341_80 : StackLang.HolProg 64 :=
.seq AllocBody341_76 AllocBody341_79

def AllocBody341_81 : StackLang.HolProg 64 :=
.seq AllocBody341_73 AllocBody341_80

def AllocBody341_82 : StackLang.HolProg 64 :=
.seq AllocBody341_72 AllocBody341_81

def AllocBody341_83 : StackLang.HolProg 64 :=
.seq AllocBody341_71 AllocBody341_82

def AllocBody341_84 : StackLang.HolProg 64 :=
.seq AllocBody341_56 AllocBody341_83

def AllocBody341_85 : StackLang.HolProg 64 :=
.seq AllocBody341_55 AllocBody341_84

def AllocBody341_86 : StackLang.HolProg 64 :=
.seq AllocBody341_54 AllocBody341_85

def AllocBody341_87 : StackLang.HolProg 64 :=
.seq AllocBody341_53 AllocBody341_86

def AllocBody341_88 : StackLang.HolProg 64 :=
.seq AllocBody341_8 AllocBody341_87

def AllocBody341_89 : StackLang.HolProg 64 :=
.seq AllocBody341_7 AllocBody341_88

def AllocBody341_90 : StackLang.HolProg 64 :=
.seq AllocBody341_6 AllocBody341_89

def AllocBody341_91 : StackLang.HolProg 64 :=
.seq AllocBody341_5 AllocBody341_90

def AllocBody341_92 : StackLang.HolProg 64 :=
.seq AllocBody341_4 AllocBody341_91

def AllocBody341_93 : StackLang.HolProg 64 :=
.seq AllocBody341_3 AllocBody341_92

def AllocBody341_94 : StackLang.HolProg 64 :=
.seq AllocBody341_2 AllocBody341_93

def AllocBody341_95 : StackLang.HolProg 64 :=
.seq AllocBody341_1 AllocBody341_94

def AllocBody341_96 : StackLang.HolProg 64 :=
.seq AllocBody341_0 AllocBody341_95

def Alloc341 : Nat × StackLang.HolProg 64 := (341, AllocBody341_96)
theorem Alloc341_eq : StackAlloc.progComp (341, raw341) = Alloc341 := by
  kernel_rfl
#print axioms Alloc341_eq
end InitECandidate.Proofs.BackendStages
