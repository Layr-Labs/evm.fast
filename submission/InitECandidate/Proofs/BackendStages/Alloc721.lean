import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw721
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody721_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody721_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody721_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody721_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3242#64)

def AllocBody721_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody721_5 : StackLang.HolProg 64 :=
.seq AllocBody721_3 AllocBody721_4

def AllocBody721_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody721_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody721_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody721_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 721 3

def AllocBody721_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody721_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody721_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody721_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody721_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody721_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody721_16 : StackLang.HolProg 64 :=
.seq AllocBody721_14 AllocBody721_15

def AllocBody721_17 : StackLang.HolProg 64 :=
.seq AllocBody721_13 AllocBody721_16

def AllocBody721_18 : StackLang.HolProg 64 :=
.seq AllocBody721_12 AllocBody721_17

def AllocBody721_19 : StackLang.HolProg 64 :=
.seq AllocBody721_11 AllocBody721_18

def AllocBody721_20 : StackLang.HolProg 64 :=
.seq AllocBody721_10 AllocBody721_19

def AllocBody721_21 : StackLang.HolProg 64 :=
.seq AllocBody721_9 AllocBody721_20

def AllocBody721_22 : StackLang.HolProg 64 :=
.seq AllocBody721_8 AllocBody721_21

def AllocBody721_23 : StackLang.HolProg 64 :=
.seq AllocBody721_7 AllocBody721_22

def AllocBody721_24 : StackLang.HolProg 64 :=
.seq AllocBody721_6 AllocBody721_23

def AllocBody721_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody721_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody721_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody721_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody721_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody721_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody721_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody721_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody721_33 : StackLang.HolProg 64 :=
.seq AllocBody721_31 AllocBody721_32

def AllocBody721_34 : StackLang.HolProg 64 :=
.seq AllocBody721_30 AllocBody721_33

def AllocBody721_35 : StackLang.HolProg 64 :=
.seq AllocBody721_29 AllocBody721_34

def AllocBody721_36 : StackLang.HolProg 64 :=
.seq AllocBody721_28 AllocBody721_35

def AllocBody721_37 : StackLang.HolProg 64 :=
.seq AllocBody721_27 AllocBody721_36

def AllocBody721_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody721_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody721_40 : StackLang.HolProg 64 :=
.seq AllocBody721_38 AllocBody721_39

def AllocBody721_41 : StackLang.HolProg 64 :=
.call (some (AllocBody721_37, 0, 721, 2)) (Sum.inl 720) (some (AllocBody721_40, 721, 3))

def AllocBody721_42 : StackLang.HolProg 64 :=
.seq AllocBody721_26 AllocBody721_41

def AllocBody721_43 : StackLang.HolProg 64 :=
.seq AllocBody721_25 AllocBody721_42

def AllocBody721_44 : StackLang.HolProg 64 :=
.seq AllocBody721_24 AllocBody721_43

def AllocBody721_45 : StackLang.HolProg 64 :=
.seq AllocBody721_5 AllocBody721_44

def AllocBody721_46 : StackLang.HolProg 64 :=
.seq AllocBody721_2 AllocBody721_45

def AllocBody721_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody721_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody721_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 767358375875140941#64)

def AllocBody721_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 2671430854784468776#64)

def AllocBody721_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3801124253586036577#64)

def AllocBody721_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 11120290361046346205#64)

def AllocBody721_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 3557706395579559416#64)

def AllocBody721_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 17098105564519244256#64)

def AllocBody721_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody721_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody721_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody721_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 20

def AllocBody721_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 714

def AllocBody721_60 : StackLang.HolProg 64 :=
.seq AllocBody721_58 AllocBody721_59

def AllocBody721_61 : StackLang.HolProg 64 :=
.seq AllocBody721_57 AllocBody721_60

def AllocBody721_62 : StackLang.HolProg 64 :=
.seq AllocBody721_56 AllocBody721_61

def AllocBody721_63 : StackLang.HolProg 64 :=
.seq AllocBody721_55 AllocBody721_62

def AllocBody721_64 : StackLang.HolProg 64 :=
.seq AllocBody721_54 AllocBody721_63

def AllocBody721_65 : StackLang.HolProg 64 :=
.seq AllocBody721_53 AllocBody721_64

def AllocBody721_66 : StackLang.HolProg 64 :=
.seq AllocBody721_52 AllocBody721_65

def AllocBody721_67 : StackLang.HolProg 64 :=
.seq AllocBody721_51 AllocBody721_66

def AllocBody721_68 : StackLang.HolProg 64 :=
.seq AllocBody721_50 AllocBody721_67

def AllocBody721_69 : StackLang.HolProg 64 :=
.seq AllocBody721_49 AllocBody721_68

def AllocBody721_70 : StackLang.HolProg 64 :=
.seq AllocBody721_48 AllocBody721_69

def AllocBody721_71 : StackLang.HolProg 64 :=
.seq AllocBody721_47 AllocBody721_70

def AllocBody721_72 : StackLang.HolProg 64 :=
.seq AllocBody721_46 AllocBody721_71

def AllocBody721_73 : StackLang.HolProg 64 :=
.seq AllocBody721_1 AllocBody721_72

def AllocBody721_74 : StackLang.HolProg 64 :=
.seq AllocBody721_0 AllocBody721_73

def Alloc721 : Nat × StackLang.HolProg 64 := (721, AllocBody721_74)
theorem Alloc721_eq : StackAlloc.progComp (721, raw721) = Alloc721 := by
  kernel_rfl
#print axioms Alloc721_eq
end InitECandidate.Proofs.BackendStages
