import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw589
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody589_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody589_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody589_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody589_3 : StackLang.HolProg 64 :=
.seq AllocBody589_1 AllocBody589_2

def AllocBody589_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody589_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2102#64)

def AllocBody589_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody589_7 : StackLang.HolProg 64 :=
.seq AllocBody589_5 AllocBody589_6

def AllocBody589_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody589_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody589_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody589_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 589 3

def AllocBody589_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody589_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody589_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody589_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody589_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody589_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody589_18 : StackLang.HolProg 64 :=
.seq AllocBody589_16 AllocBody589_17

def AllocBody589_19 : StackLang.HolProg 64 :=
.seq AllocBody589_15 AllocBody589_18

def AllocBody589_20 : StackLang.HolProg 64 :=
.seq AllocBody589_14 AllocBody589_19

def AllocBody589_21 : StackLang.HolProg 64 :=
.seq AllocBody589_13 AllocBody589_20

def AllocBody589_22 : StackLang.HolProg 64 :=
.seq AllocBody589_12 AllocBody589_21

def AllocBody589_23 : StackLang.HolProg 64 :=
.seq AllocBody589_11 AllocBody589_22

def AllocBody589_24 : StackLang.HolProg 64 :=
.seq AllocBody589_10 AllocBody589_23

def AllocBody589_25 : StackLang.HolProg 64 :=
.seq AllocBody589_9 AllocBody589_24

def AllocBody589_26 : StackLang.HolProg 64 :=
.seq AllocBody589_8 AllocBody589_25

def AllocBody589_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody589_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody589_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody589_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody589_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody589_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody589_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody589_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody589_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody589_36 : StackLang.HolProg 64 :=
.seq AllocBody589_34 AllocBody589_35

def AllocBody589_37 : StackLang.HolProg 64 :=
.seq AllocBody589_33 AllocBody589_36

def AllocBody589_38 : StackLang.HolProg 64 :=
.seq AllocBody589_32 AllocBody589_37

def AllocBody589_39 : StackLang.HolProg 64 :=
.seq AllocBody589_31 AllocBody589_38

def AllocBody589_40 : StackLang.HolProg 64 :=
.seq AllocBody589_30 AllocBody589_39

def AllocBody589_41 : StackLang.HolProg 64 :=
.seq AllocBody589_29 AllocBody589_40

def AllocBody589_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody589_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody589_44 : StackLang.HolProg 64 :=
.seq AllocBody589_42 AllocBody589_43

def AllocBody589_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody589_46 : StackLang.HolProg 64 :=
.seq AllocBody589_44 AllocBody589_45

def AllocBody589_47 : StackLang.HolProg 64 :=
.call (some (AllocBody589_41, 0, 589, 2)) (Sum.inl 468) (some (AllocBody589_46, 589, 3))

def AllocBody589_48 : StackLang.HolProg 64 :=
.seq AllocBody589_28 AllocBody589_47

def AllocBody589_49 : StackLang.HolProg 64 :=
.seq AllocBody589_27 AllocBody589_48

def AllocBody589_50 : StackLang.HolProg 64 :=
.seq AllocBody589_26 AllocBody589_49

def AllocBody589_51 : StackLang.HolProg 64 :=
.seq AllocBody589_7 AllocBody589_50

def AllocBody589_52 : StackLang.HolProg 64 :=
.seq AllocBody589_4 AllocBody589_51

def AllocBody589_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody589_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody589_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody589_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody589_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody589_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody589_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody589_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody589_61 : StackLang.HolProg 64 :=
.seq AllocBody589_59 AllocBody589_60

def AllocBody589_62 : StackLang.HolProg 64 :=
.seq AllocBody589_58 AllocBody589_61

def AllocBody589_63 : StackLang.HolProg 64 :=
.seq AllocBody589_57 AllocBody589_62

def AllocBody589_64 : StackLang.HolProg 64 :=
.seq AllocBody589_56 AllocBody589_63

def AllocBody589_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody589_66 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody589_64 AllocBody589_65

def AllocBody589_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody589_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody589_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody589_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody589_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody589_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody589_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody589_74 : StackLang.HolProg 64 :=
.seq AllocBody589_72 AllocBody589_73

def AllocBody589_75 : StackLang.HolProg 64 :=
.seq AllocBody589_71 AllocBody589_74

def AllocBody589_76 : StackLang.HolProg 64 :=
.seq AllocBody589_70 AllocBody589_75

def AllocBody589_77 : StackLang.HolProg 64 :=
.seq AllocBody589_69 AllocBody589_76

def AllocBody589_78 : StackLang.HolProg 64 :=
.seq AllocBody589_68 AllocBody589_77

def AllocBody589_79 : StackLang.HolProg 64 :=
.seq AllocBody589_67 AllocBody589_78

def AllocBody589_80 : StackLang.HolProg 64 :=
.seq AllocBody589_66 AllocBody589_79

def AllocBody589_81 : StackLang.HolProg 64 :=
.seq AllocBody589_55 AllocBody589_80

def AllocBody589_82 : StackLang.HolProg 64 :=
.seq AllocBody589_54 AllocBody589_81

def AllocBody589_83 : StackLang.HolProg 64 :=
.seq AllocBody589_53 AllocBody589_82

def AllocBody589_84 : StackLang.HolProg 64 :=
.seq AllocBody589_52 AllocBody589_83

def AllocBody589_85 : StackLang.HolProg 64 :=
.seq AllocBody589_3 AllocBody589_84

def AllocBody589_86 : StackLang.HolProg 64 :=
.seq AllocBody589_0 AllocBody589_85

def Alloc589 : Nat × StackLang.HolProg 64 := (589, AllocBody589_86)
theorem Alloc589_eq : StackAlloc.progComp (589, raw589) = Alloc589 := by
  kernel_rfl
#print axioms Alloc589_eq
end InitECandidate.Proofs.BackendStages
