import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw175
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody175_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody175_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody175_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 55#64)

def AllocBody175_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody175_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody175_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody175_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody175_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody175_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody175_9 : StackLang.HolProg 64 :=
.seq AllocBody175_7 AllocBody175_8

def AllocBody175_10 : StackLang.HolProg 64 :=
.seq AllocBody175_6 AllocBody175_9

def AllocBody175_11 : StackLang.HolProg 64 :=
.seq AllocBody175_5 AllocBody175_10

def AllocBody175_12 : StackLang.HolProg 64 :=
.seq AllocBody175_4 AllocBody175_11

def AllocBody175_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody175_14 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody175_12 AllocBody175_13

def AllocBody175_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody175_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody175_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody175_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody175_19 : StackLang.HolProg 64 :=
.seq AllocBody175_17 AllocBody175_18

def AllocBody175_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody175_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 196#64)

def AllocBody175_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody175_23 : StackLang.HolProg 64 :=
.seq AllocBody175_21 AllocBody175_22

def AllocBody175_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody175_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody175_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody175_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 175 3

def AllocBody175_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody175_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody175_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody175_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody175_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody175_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody175_34 : StackLang.HolProg 64 :=
.seq AllocBody175_32 AllocBody175_33

def AllocBody175_35 : StackLang.HolProg 64 :=
.seq AllocBody175_31 AllocBody175_34

def AllocBody175_36 : StackLang.HolProg 64 :=
.seq AllocBody175_30 AllocBody175_35

def AllocBody175_37 : StackLang.HolProg 64 :=
.seq AllocBody175_29 AllocBody175_36

def AllocBody175_38 : StackLang.HolProg 64 :=
.seq AllocBody175_28 AllocBody175_37

def AllocBody175_39 : StackLang.HolProg 64 :=
.seq AllocBody175_27 AllocBody175_38

def AllocBody175_40 : StackLang.HolProg 64 :=
.seq AllocBody175_26 AllocBody175_39

def AllocBody175_41 : StackLang.HolProg 64 :=
.seq AllocBody175_25 AllocBody175_40

def AllocBody175_42 : StackLang.HolProg 64 :=
.seq AllocBody175_24 AllocBody175_41

def AllocBody175_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody175_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody175_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody175_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody175_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody175_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody175_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody175_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody175_51 : StackLang.HolProg 64 :=
.seq AllocBody175_49 AllocBody175_50

def AllocBody175_52 : StackLang.HolProg 64 :=
.seq AllocBody175_48 AllocBody175_51

def AllocBody175_53 : StackLang.HolProg 64 :=
.seq AllocBody175_47 AllocBody175_52

def AllocBody175_54 : StackLang.HolProg 64 :=
.seq AllocBody175_46 AllocBody175_53

def AllocBody175_55 : StackLang.HolProg 64 :=
.seq AllocBody175_45 AllocBody175_54

def AllocBody175_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody175_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody175_58 : StackLang.HolProg 64 :=
.seq AllocBody175_56 AllocBody175_57

def AllocBody175_59 : StackLang.HolProg 64 :=
.call (some (AllocBody175_55, 0, 175, 2)) (Sum.inl 172) (some (AllocBody175_58, 175, 3))

def AllocBody175_60 : StackLang.HolProg 64 :=
.seq AllocBody175_44 AllocBody175_59

def AllocBody175_61 : StackLang.HolProg 64 :=
.seq AllocBody175_43 AllocBody175_60

def AllocBody175_62 : StackLang.HolProg 64 :=
.seq AllocBody175_42 AllocBody175_61

def AllocBody175_63 : StackLang.HolProg 64 :=
.seq AllocBody175_23 AllocBody175_62

def AllocBody175_64 : StackLang.HolProg 64 :=
.seq AllocBody175_20 AllocBody175_63

def AllocBody175_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody175_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody175_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody175_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody175_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody175_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody175_71 : StackLang.HolProg 64 :=
.seq AllocBody175_69 AllocBody175_70

def AllocBody175_72 : StackLang.HolProg 64 :=
.seq AllocBody175_68 AllocBody175_71

def AllocBody175_73 : StackLang.HolProg 64 :=
.seq AllocBody175_67 AllocBody175_72

def AllocBody175_74 : StackLang.HolProg 64 :=
.seq AllocBody175_66 AllocBody175_73

def AllocBody175_75 : StackLang.HolProg 64 :=
.seq AllocBody175_65 AllocBody175_74

def AllocBody175_76 : StackLang.HolProg 64 :=
.seq AllocBody175_64 AllocBody175_75

def AllocBody175_77 : StackLang.HolProg 64 :=
.seq AllocBody175_19 AllocBody175_76

def AllocBody175_78 : StackLang.HolProg 64 :=
.seq AllocBody175_16 AllocBody175_77

def AllocBody175_79 : StackLang.HolProg 64 :=
.seq AllocBody175_15 AllocBody175_78

def AllocBody175_80 : StackLang.HolProg 64 :=
.seq AllocBody175_14 AllocBody175_79

def AllocBody175_81 : StackLang.HolProg 64 :=
.seq AllocBody175_3 AllocBody175_80

def AllocBody175_82 : StackLang.HolProg 64 :=
.seq AllocBody175_2 AllocBody175_81

def AllocBody175_83 : StackLang.HolProg 64 :=
.seq AllocBody175_1 AllocBody175_82

def AllocBody175_84 : StackLang.HolProg 64 :=
.seq AllocBody175_0 AllocBody175_83

def Alloc175 : Nat × StackLang.HolProg 64 := (175, AllocBody175_84)
theorem Alloc175_eq : StackAlloc.progComp (175, raw175) = Alloc175 := by
  kernel_rfl
#print axioms Alloc175_eq
end InitECandidate.Proofs.BackendStages
