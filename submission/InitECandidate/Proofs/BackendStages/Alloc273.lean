import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw273
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody273_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody273_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody273_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody273_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody273_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody273_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody273_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody273_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def AllocBody273_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody273_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody273_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 660#64)

def AllocBody273_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody273_12 : StackLang.HolProg 64 :=
.seq AllocBody273_10 AllocBody273_11

def AllocBody273_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody273_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody273_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody273_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 273 3

def AllocBody273_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody273_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody273_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody273_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody273_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody273_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody273_23 : StackLang.HolProg 64 :=
.seq AllocBody273_21 AllocBody273_22

def AllocBody273_24 : StackLang.HolProg 64 :=
.seq AllocBody273_20 AllocBody273_23

def AllocBody273_25 : StackLang.HolProg 64 :=
.seq AllocBody273_19 AllocBody273_24

def AllocBody273_26 : StackLang.HolProg 64 :=
.seq AllocBody273_18 AllocBody273_25

def AllocBody273_27 : StackLang.HolProg 64 :=
.seq AllocBody273_17 AllocBody273_26

def AllocBody273_28 : StackLang.HolProg 64 :=
.seq AllocBody273_16 AllocBody273_27

def AllocBody273_29 : StackLang.HolProg 64 :=
.seq AllocBody273_15 AllocBody273_28

def AllocBody273_30 : StackLang.HolProg 64 :=
.seq AllocBody273_14 AllocBody273_29

def AllocBody273_31 : StackLang.HolProg 64 :=
.seq AllocBody273_13 AllocBody273_30

def AllocBody273_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody273_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody273_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody273_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody273_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody273_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody273_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody273_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody273_40 : StackLang.HolProg 64 :=
.seq AllocBody273_38 AllocBody273_39

def AllocBody273_41 : StackLang.HolProg 64 :=
.seq AllocBody273_37 AllocBody273_40

def AllocBody273_42 : StackLang.HolProg 64 :=
.seq AllocBody273_36 AllocBody273_41

def AllocBody273_43 : StackLang.HolProg 64 :=
.seq AllocBody273_35 AllocBody273_42

def AllocBody273_44 : StackLang.HolProg 64 :=
.seq AllocBody273_34 AllocBody273_43

def AllocBody273_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody273_46 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody273_47 : StackLang.HolProg 64 :=
.seq AllocBody273_45 AllocBody273_46

def AllocBody273_48 : StackLang.HolProg 64 :=
.call (some (AllocBody273_44, 0, 273, 2)) (Sum.inl 161) (some (AllocBody273_47, 273, 3))

def AllocBody273_49 : StackLang.HolProg 64 :=
.seq AllocBody273_33 AllocBody273_48

def AllocBody273_50 : StackLang.HolProg 64 :=
.seq AllocBody273_32 AllocBody273_49

def AllocBody273_51 : StackLang.HolProg 64 :=
.seq AllocBody273_31 AllocBody273_50

def AllocBody273_52 : StackLang.HolProg 64 :=
.seq AllocBody273_12 AllocBody273_51

def AllocBody273_53 : StackLang.HolProg 64 :=
.seq AllocBody273_9 AllocBody273_52

def AllocBody273_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody273_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody273_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody273_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody273_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 8#64)

def AllocBody273_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody273_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody273_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody273_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody273_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody273_64 : StackLang.HolProg 64 :=
.seq AllocBody273_62 AllocBody273_63

def AllocBody273_65 : StackLang.HolProg 64 :=
.seq AllocBody273_61 AllocBody273_64

def AllocBody273_66 : StackLang.HolProg 64 :=
.seq AllocBody273_60 AllocBody273_65

def AllocBody273_67 : StackLang.HolProg 64 :=
.seq AllocBody273_59 AllocBody273_66

def AllocBody273_68 : StackLang.HolProg 64 :=
.seq AllocBody273_58 AllocBody273_67

def AllocBody273_69 : StackLang.HolProg 64 :=
.seq AllocBody273_57 AllocBody273_68

def AllocBody273_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody273_71 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody273_69 AllocBody273_70

def AllocBody273_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody273_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody273_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody273_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody273_76 : StackLang.HolProg 64 :=
.seq AllocBody273_74 AllocBody273_75

def AllocBody273_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody273_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody273_79 : StackLang.HolProg 64 :=
.seq AllocBody273_77 AllocBody273_78

def AllocBody273_80 : StackLang.HolProg 64 :=
.seq AllocBody273_76 AllocBody273_79

def AllocBody273_81 : StackLang.HolProg 64 :=
.seq AllocBody273_73 AllocBody273_80

def AllocBody273_82 : StackLang.HolProg 64 :=
.seq AllocBody273_72 AllocBody273_81

def AllocBody273_83 : StackLang.HolProg 64 :=
.seq AllocBody273_71 AllocBody273_82

def AllocBody273_84 : StackLang.HolProg 64 :=
.seq AllocBody273_56 AllocBody273_83

def AllocBody273_85 : StackLang.HolProg 64 :=
.seq AllocBody273_55 AllocBody273_84

def AllocBody273_86 : StackLang.HolProg 64 :=
.seq AllocBody273_54 AllocBody273_85

def AllocBody273_87 : StackLang.HolProg 64 :=
.seq AllocBody273_53 AllocBody273_86

def AllocBody273_88 : StackLang.HolProg 64 :=
.seq AllocBody273_8 AllocBody273_87

def AllocBody273_89 : StackLang.HolProg 64 :=
.seq AllocBody273_7 AllocBody273_88

def AllocBody273_90 : StackLang.HolProg 64 :=
.seq AllocBody273_6 AllocBody273_89

def AllocBody273_91 : StackLang.HolProg 64 :=
.seq AllocBody273_5 AllocBody273_90

def AllocBody273_92 : StackLang.HolProg 64 :=
.seq AllocBody273_4 AllocBody273_91

def AllocBody273_93 : StackLang.HolProg 64 :=
.seq AllocBody273_3 AllocBody273_92

def AllocBody273_94 : StackLang.HolProg 64 :=
.seq AllocBody273_2 AllocBody273_93

def AllocBody273_95 : StackLang.HolProg 64 :=
.seq AllocBody273_1 AllocBody273_94

def AllocBody273_96 : StackLang.HolProg 64 :=
.seq AllocBody273_0 AllocBody273_95

def Alloc273 : Nat × StackLang.HolProg 64 := (273, AllocBody273_96)
theorem Alloc273_eq : StackAlloc.progComp (273, raw273) = Alloc273 := by
  kernel_rfl
#print axioms Alloc273_eq
end InitECandidate.Proofs.BackendStages
