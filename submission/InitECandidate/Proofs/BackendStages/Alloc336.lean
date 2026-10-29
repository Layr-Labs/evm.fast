import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw336
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody336_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody336_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody336_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody336_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 970#64)

def AllocBody336_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody336_5 : StackLang.HolProg 64 :=
.seq AllocBody336_3 AllocBody336_4

def AllocBody336_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody336_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody336_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody336_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 336 3

def AllocBody336_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody336_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody336_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody336_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody336_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody336_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody336_16 : StackLang.HolProg 64 :=
.seq AllocBody336_14 AllocBody336_15

def AllocBody336_17 : StackLang.HolProg 64 :=
.seq AllocBody336_13 AllocBody336_16

def AllocBody336_18 : StackLang.HolProg 64 :=
.seq AllocBody336_12 AllocBody336_17

def AllocBody336_19 : StackLang.HolProg 64 :=
.seq AllocBody336_11 AllocBody336_18

def AllocBody336_20 : StackLang.HolProg 64 :=
.seq AllocBody336_10 AllocBody336_19

def AllocBody336_21 : StackLang.HolProg 64 :=
.seq AllocBody336_9 AllocBody336_20

def AllocBody336_22 : StackLang.HolProg 64 :=
.seq AllocBody336_8 AllocBody336_21

def AllocBody336_23 : StackLang.HolProg 64 :=
.seq AllocBody336_7 AllocBody336_22

def AllocBody336_24 : StackLang.HolProg 64 :=
.seq AllocBody336_6 AllocBody336_23

def AllocBody336_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody336_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody336_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody336_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody336_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody336_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody336_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody336_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody336_33 : StackLang.HolProg 64 :=
.seq AllocBody336_31 AllocBody336_32

def AllocBody336_34 : StackLang.HolProg 64 :=
.seq AllocBody336_30 AllocBody336_33

def AllocBody336_35 : StackLang.HolProg 64 :=
.seq AllocBody336_29 AllocBody336_34

def AllocBody336_36 : StackLang.HolProg 64 :=
.seq AllocBody336_28 AllocBody336_35

def AllocBody336_37 : StackLang.HolProg 64 :=
.seq AllocBody336_27 AllocBody336_36

def AllocBody336_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody336_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody336_40 : StackLang.HolProg 64 :=
.seq AllocBody336_38 AllocBody336_39

def AllocBody336_41 : StackLang.HolProg 64 :=
.call (some (AllocBody336_37, 0, 336, 2)) (Sum.inl 335) (some (AllocBody336_40, 336, 3))

def AllocBody336_42 : StackLang.HolProg 64 :=
.seq AllocBody336_26 AllocBody336_41

def AllocBody336_43 : StackLang.HolProg 64 :=
.seq AllocBody336_25 AllocBody336_42

def AllocBody336_44 : StackLang.HolProg 64 :=
.seq AllocBody336_24 AllocBody336_43

def AllocBody336_45 : StackLang.HolProg 64 :=
.seq AllocBody336_5 AllocBody336_44

def AllocBody336_46 : StackLang.HolProg 64 :=
.seq AllocBody336_2 AllocBody336_45

def AllocBody336_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody336_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def AllocBody336_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody336_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody336_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 13#64)

def AllocBody336_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody336_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody336_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def AllocBody336_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody336_56 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody336_57 : StackLang.HolProg 64 :=
.seq AllocBody336_55 AllocBody336_56

def AllocBody336_58 : StackLang.HolProg 64 :=
.seq AllocBody336_54 AllocBody336_57

def AllocBody336_59 : StackLang.HolProg 64 :=
.seq AllocBody336_53 AllocBody336_58

def AllocBody336_60 : StackLang.HolProg 64 :=
.seq AllocBody336_52 AllocBody336_59

def AllocBody336_61 : StackLang.HolProg 64 :=
.seq AllocBody336_51 AllocBody336_60

def AllocBody336_62 : StackLang.HolProg 64 :=
.seq AllocBody336_50 AllocBody336_61

def AllocBody336_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody336_64 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody336_62 AllocBody336_63

def AllocBody336_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody336_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody336_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody336_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody336_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody336_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody336_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 146

def AllocBody336_72 : StackLang.HolProg 64 :=
.seq AllocBody336_70 AllocBody336_71

def AllocBody336_73 : StackLang.HolProg 64 :=
.seq AllocBody336_69 AllocBody336_72

def AllocBody336_74 : StackLang.HolProg 64 :=
.seq AllocBody336_68 AllocBody336_73

def AllocBody336_75 : StackLang.HolProg 64 :=
.seq AllocBody336_67 AllocBody336_74

def AllocBody336_76 : StackLang.HolProg 64 :=
.seq AllocBody336_66 AllocBody336_75

def AllocBody336_77 : StackLang.HolProg 64 :=
.seq AllocBody336_65 AllocBody336_76

def AllocBody336_78 : StackLang.HolProg 64 :=
.seq AllocBody336_64 AllocBody336_77

def AllocBody336_79 : StackLang.HolProg 64 :=
.seq AllocBody336_49 AllocBody336_78

def AllocBody336_80 : StackLang.HolProg 64 :=
.seq AllocBody336_48 AllocBody336_79

def AllocBody336_81 : StackLang.HolProg 64 :=
.seq AllocBody336_47 AllocBody336_80

def AllocBody336_82 : StackLang.HolProg 64 :=
.seq AllocBody336_46 AllocBody336_81

def AllocBody336_83 : StackLang.HolProg 64 :=
.seq AllocBody336_1 AllocBody336_82

def AllocBody336_84 : StackLang.HolProg 64 :=
.seq AllocBody336_0 AllocBody336_83

def Alloc336 : Nat × StackLang.HolProg 64 := (336, AllocBody336_84)
theorem Alloc336_eq : StackAlloc.progComp (336, raw336) = Alloc336 := by
  kernel_rfl
#print axioms Alloc336_eq
end InitECandidate.Proofs.BackendStages
