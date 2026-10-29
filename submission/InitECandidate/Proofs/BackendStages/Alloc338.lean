import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw338
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody338_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody338_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody338_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody338_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody338_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody338_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody338_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody338_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def AllocBody338_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody338_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody338_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 972#64)

def AllocBody338_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody338_12 : StackLang.HolProg 64 :=
.seq AllocBody338_10 AllocBody338_11

def AllocBody338_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody338_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody338_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody338_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 338 3

def AllocBody338_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody338_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody338_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody338_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody338_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody338_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody338_23 : StackLang.HolProg 64 :=
.seq AllocBody338_21 AllocBody338_22

def AllocBody338_24 : StackLang.HolProg 64 :=
.seq AllocBody338_20 AllocBody338_23

def AllocBody338_25 : StackLang.HolProg 64 :=
.seq AllocBody338_19 AllocBody338_24

def AllocBody338_26 : StackLang.HolProg 64 :=
.seq AllocBody338_18 AllocBody338_25

def AllocBody338_27 : StackLang.HolProg 64 :=
.seq AllocBody338_17 AllocBody338_26

def AllocBody338_28 : StackLang.HolProg 64 :=
.seq AllocBody338_16 AllocBody338_27

def AllocBody338_29 : StackLang.HolProg 64 :=
.seq AllocBody338_15 AllocBody338_28

def AllocBody338_30 : StackLang.HolProg 64 :=
.seq AllocBody338_14 AllocBody338_29

def AllocBody338_31 : StackLang.HolProg 64 :=
.seq AllocBody338_13 AllocBody338_30

def AllocBody338_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody338_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody338_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody338_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody338_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody338_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody338_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody338_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody338_40 : StackLang.HolProg 64 :=
.seq AllocBody338_38 AllocBody338_39

def AllocBody338_41 : StackLang.HolProg 64 :=
.seq AllocBody338_37 AllocBody338_40

def AllocBody338_42 : StackLang.HolProg 64 :=
.seq AllocBody338_36 AllocBody338_41

def AllocBody338_43 : StackLang.HolProg 64 :=
.seq AllocBody338_35 AllocBody338_42

def AllocBody338_44 : StackLang.HolProg 64 :=
.seq AllocBody338_34 AllocBody338_43

def AllocBody338_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody338_46 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody338_47 : StackLang.HolProg 64 :=
.seq AllocBody338_45 AllocBody338_46

def AllocBody338_48 : StackLang.HolProg 64 :=
.call (some (AllocBody338_44, 0, 338, 2)) (Sum.inl 161) (some (AllocBody338_47, 338, 3))

def AllocBody338_49 : StackLang.HolProg 64 :=
.seq AllocBody338_33 AllocBody338_48

def AllocBody338_50 : StackLang.HolProg 64 :=
.seq AllocBody338_32 AllocBody338_49

def AllocBody338_51 : StackLang.HolProg 64 :=
.seq AllocBody338_31 AllocBody338_50

def AllocBody338_52 : StackLang.HolProg 64 :=
.seq AllocBody338_12 AllocBody338_51

def AllocBody338_53 : StackLang.HolProg 64 :=
.seq AllocBody338_9 AllocBody338_52

def AllocBody338_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody338_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody338_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody338_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody338_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 15#64)

def AllocBody338_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody338_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody338_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def AllocBody338_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody338_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody338_64 : StackLang.HolProg 64 :=
.seq AllocBody338_62 AllocBody338_63

def AllocBody338_65 : StackLang.HolProg 64 :=
.seq AllocBody338_61 AllocBody338_64

def AllocBody338_66 : StackLang.HolProg 64 :=
.seq AllocBody338_60 AllocBody338_65

def AllocBody338_67 : StackLang.HolProg 64 :=
.seq AllocBody338_59 AllocBody338_66

def AllocBody338_68 : StackLang.HolProg 64 :=
.seq AllocBody338_58 AllocBody338_67

def AllocBody338_69 : StackLang.HolProg 64 :=
.seq AllocBody338_57 AllocBody338_68

def AllocBody338_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody338_71 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody338_69 AllocBody338_70

def AllocBody338_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody338_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody338_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody338_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody338_76 : StackLang.HolProg 64 :=
.seq AllocBody338_74 AllocBody338_75

def AllocBody338_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody338_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody338_79 : StackLang.HolProg 64 :=
.seq AllocBody338_77 AllocBody338_78

def AllocBody338_80 : StackLang.HolProg 64 :=
.seq AllocBody338_76 AllocBody338_79

def AllocBody338_81 : StackLang.HolProg 64 :=
.seq AllocBody338_73 AllocBody338_80

def AllocBody338_82 : StackLang.HolProg 64 :=
.seq AllocBody338_72 AllocBody338_81

def AllocBody338_83 : StackLang.HolProg 64 :=
.seq AllocBody338_71 AllocBody338_82

def AllocBody338_84 : StackLang.HolProg 64 :=
.seq AllocBody338_56 AllocBody338_83

def AllocBody338_85 : StackLang.HolProg 64 :=
.seq AllocBody338_55 AllocBody338_84

def AllocBody338_86 : StackLang.HolProg 64 :=
.seq AllocBody338_54 AllocBody338_85

def AllocBody338_87 : StackLang.HolProg 64 :=
.seq AllocBody338_53 AllocBody338_86

def AllocBody338_88 : StackLang.HolProg 64 :=
.seq AllocBody338_8 AllocBody338_87

def AllocBody338_89 : StackLang.HolProg 64 :=
.seq AllocBody338_7 AllocBody338_88

def AllocBody338_90 : StackLang.HolProg 64 :=
.seq AllocBody338_6 AllocBody338_89

def AllocBody338_91 : StackLang.HolProg 64 :=
.seq AllocBody338_5 AllocBody338_90

def AllocBody338_92 : StackLang.HolProg 64 :=
.seq AllocBody338_4 AllocBody338_91

def AllocBody338_93 : StackLang.HolProg 64 :=
.seq AllocBody338_3 AllocBody338_92

def AllocBody338_94 : StackLang.HolProg 64 :=
.seq AllocBody338_2 AllocBody338_93

def AllocBody338_95 : StackLang.HolProg 64 :=
.seq AllocBody338_1 AllocBody338_94

def AllocBody338_96 : StackLang.HolProg 64 :=
.seq AllocBody338_0 AllocBody338_95

def Alloc338 : Nat × StackLang.HolProg 64 := (338, AllocBody338_96)
theorem Alloc338_eq : StackAlloc.progComp (338, raw338) = Alloc338 := by
  kernel_rfl
#print axioms Alloc338_eq
end InitECandidate.Proofs.BackendStages
