import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw295
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody295_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody295_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody295_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def AllocBody295_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody295_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody295_5 : StackLang.HolProg 64 :=
.seq AllocBody295_3 AllocBody295_4

def AllocBody295_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody295_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 801#64)

def AllocBody295_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody295_9 : StackLang.HolProg 64 :=
.seq AllocBody295_7 AllocBody295_8

def AllocBody295_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody295_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody295_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody295_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 295 3

def AllocBody295_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody295_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody295_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody295_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody295_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody295_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody295_20 : StackLang.HolProg 64 :=
.seq AllocBody295_18 AllocBody295_19

def AllocBody295_21 : StackLang.HolProg 64 :=
.seq AllocBody295_17 AllocBody295_20

def AllocBody295_22 : StackLang.HolProg 64 :=
.seq AllocBody295_16 AllocBody295_21

def AllocBody295_23 : StackLang.HolProg 64 :=
.seq AllocBody295_15 AllocBody295_22

def AllocBody295_24 : StackLang.HolProg 64 :=
.seq AllocBody295_14 AllocBody295_23

def AllocBody295_25 : StackLang.HolProg 64 :=
.seq AllocBody295_13 AllocBody295_24

def AllocBody295_26 : StackLang.HolProg 64 :=
.seq AllocBody295_12 AllocBody295_25

def AllocBody295_27 : StackLang.HolProg 64 :=
.seq AllocBody295_11 AllocBody295_26

def AllocBody295_28 : StackLang.HolProg 64 :=
.seq AllocBody295_10 AllocBody295_27

def AllocBody295_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody295_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody295_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody295_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody295_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody295_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody295_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody295_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody295_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody295_38 : StackLang.HolProg 64 :=
.seq AllocBody295_36 AllocBody295_37

def AllocBody295_39 : StackLang.HolProg 64 :=
.seq AllocBody295_35 AllocBody295_38

def AllocBody295_40 : StackLang.HolProg 64 :=
.seq AllocBody295_34 AllocBody295_39

def AllocBody295_41 : StackLang.HolProg 64 :=
.seq AllocBody295_33 AllocBody295_40

def AllocBody295_42 : StackLang.HolProg 64 :=
.seq AllocBody295_32 AllocBody295_41

def AllocBody295_43 : StackLang.HolProg 64 :=
.seq AllocBody295_31 AllocBody295_42

def AllocBody295_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody295_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody295_46 : StackLang.HolProg 64 :=
.seq AllocBody295_44 AllocBody295_45

def AllocBody295_47 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody295_48 : StackLang.HolProg 64 :=
.seq AllocBody295_46 AllocBody295_47

def AllocBody295_49 : StackLang.HolProg 64 :=
.call (some (AllocBody295_43, 0, 295, 2)) (Sum.inl 68) (some (AllocBody295_48, 295, 3))

def AllocBody295_50 : StackLang.HolProg 64 :=
.seq AllocBody295_30 AllocBody295_49

def AllocBody295_51 : StackLang.HolProg 64 :=
.seq AllocBody295_29 AllocBody295_50

def AllocBody295_52 : StackLang.HolProg 64 :=
.seq AllocBody295_28 AllocBody295_51

def AllocBody295_53 : StackLang.HolProg 64 :=
.seq AllocBody295_9 AllocBody295_52

def AllocBody295_54 : StackLang.HolProg 64 :=
.seq AllocBody295_6 AllocBody295_53

def AllocBody295_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody295_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody295_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody295_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody295_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody295_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody295_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody295_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody295_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody295_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody295_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody295_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody295_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody295_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody295_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody295_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody295_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody295_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody295_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody295_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody295_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody295_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody295_77 : StackLang.HolProg 64 :=
.seq AllocBody295_75 AllocBody295_76

def AllocBody295_78 : StackLang.HolProg 64 :=
.seq AllocBody295_74 AllocBody295_77

def AllocBody295_79 : StackLang.HolProg 64 :=
.seq AllocBody295_73 AllocBody295_78

def AllocBody295_80 : StackLang.HolProg 64 :=
.seq AllocBody295_72 AllocBody295_79

def AllocBody295_81 : StackLang.HolProg 64 :=
.seq AllocBody295_71 AllocBody295_80

def AllocBody295_82 : StackLang.HolProg 64 :=
.seq AllocBody295_70 AllocBody295_81

def AllocBody295_83 : StackLang.HolProg 64 :=
.seq AllocBody295_69 AllocBody295_82

def AllocBody295_84 : StackLang.HolProg 64 :=
.seq AllocBody295_68 AllocBody295_83

def AllocBody295_85 : StackLang.HolProg 64 :=
.seq AllocBody295_67 AllocBody295_84

def AllocBody295_86 : StackLang.HolProg 64 :=
.seq AllocBody295_66 AllocBody295_85

def AllocBody295_87 : StackLang.HolProg 64 :=
.seq AllocBody295_65 AllocBody295_86

def AllocBody295_88 : StackLang.HolProg 64 :=
.seq AllocBody295_64 AllocBody295_87

def AllocBody295_89 : StackLang.HolProg 64 :=
.seq AllocBody295_63 AllocBody295_88

def AllocBody295_90 : StackLang.HolProg 64 :=
.seq AllocBody295_62 AllocBody295_89

def AllocBody295_91 : StackLang.HolProg 64 :=
.seq AllocBody295_61 AllocBody295_90

def AllocBody295_92 : StackLang.HolProg 64 :=
.seq AllocBody295_60 AllocBody295_91

def AllocBody295_93 : StackLang.HolProg 64 :=
.seq AllocBody295_59 AllocBody295_92

def AllocBody295_94 : StackLang.HolProg 64 :=
.seq AllocBody295_58 AllocBody295_93

def AllocBody295_95 : StackLang.HolProg 64 :=
.seq AllocBody295_57 AllocBody295_94

def AllocBody295_96 : StackLang.HolProg 64 :=
.seq AllocBody295_56 AllocBody295_95

def AllocBody295_97 : StackLang.HolProg 64 :=
.seq AllocBody295_55 AllocBody295_96

def AllocBody295_98 : StackLang.HolProg 64 :=
.seq AllocBody295_54 AllocBody295_97

def AllocBody295_99 : StackLang.HolProg 64 :=
.seq AllocBody295_5 AllocBody295_98

def AllocBody295_100 : StackLang.HolProg 64 :=
.seq AllocBody295_2 AllocBody295_99

def AllocBody295_101 : StackLang.HolProg 64 :=
.seq AllocBody295_1 AllocBody295_100

def AllocBody295_102 : StackLang.HolProg 64 :=
.seq AllocBody295_0 AllocBody295_101

def Alloc295 : Nat × StackLang.HolProg 64 := (295, AllocBody295_102)
theorem Alloc295_eq : StackAlloc.progComp (295, raw295) = Alloc295 := by
  kernel_rfl
#print axioms Alloc295_eq
end InitECandidate.Proofs.BackendStages
