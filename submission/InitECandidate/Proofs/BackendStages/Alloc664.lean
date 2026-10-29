import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw664
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody664_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody664_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody664_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 3486998266802970665#64)

def AllocBody664_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 13281191951274694749#64)

def AllocBody664_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 10917124144477883021#64)

def AllocBody664_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 4332616871279656263#64)

def AllocBody664_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody664_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody664_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2752#64)

def AllocBody664_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody664_10 : StackLang.HolProg 64 :=
.seq AllocBody664_8 AllocBody664_9

def AllocBody664_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody664_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody664_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody664_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 664 3

def AllocBody664_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody664_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody664_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody664_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody664_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody664_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody664_21 : StackLang.HolProg 64 :=
.seq AllocBody664_19 AllocBody664_20

def AllocBody664_22 : StackLang.HolProg 64 :=
.seq AllocBody664_18 AllocBody664_21

def AllocBody664_23 : StackLang.HolProg 64 :=
.seq AllocBody664_17 AllocBody664_22

def AllocBody664_24 : StackLang.HolProg 64 :=
.seq AllocBody664_16 AllocBody664_23

def AllocBody664_25 : StackLang.HolProg 64 :=
.seq AllocBody664_15 AllocBody664_24

def AllocBody664_26 : StackLang.HolProg 64 :=
.seq AllocBody664_14 AllocBody664_25

def AllocBody664_27 : StackLang.HolProg 64 :=
.seq AllocBody664_13 AllocBody664_26

def AllocBody664_28 : StackLang.HolProg 64 :=
.seq AllocBody664_12 AllocBody664_27

def AllocBody664_29 : StackLang.HolProg 64 :=
.seq AllocBody664_11 AllocBody664_28

def AllocBody664_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody664_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody664_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody664_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody664_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody664_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody664_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody664_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody664_38 : StackLang.HolProg 64 :=
.seq AllocBody664_36 AllocBody664_37

def AllocBody664_39 : StackLang.HolProg 64 :=
.seq AllocBody664_35 AllocBody664_38

def AllocBody664_40 : StackLang.HolProg 64 :=
.seq AllocBody664_34 AllocBody664_39

def AllocBody664_41 : StackLang.HolProg 64 :=
.seq AllocBody664_33 AllocBody664_40

def AllocBody664_42 : StackLang.HolProg 64 :=
.seq AllocBody664_32 AllocBody664_41

def AllocBody664_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody664_44 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody664_45 : StackLang.HolProg 64 :=
.seq AllocBody664_43 AllocBody664_44

def AllocBody664_46 : StackLang.HolProg 64 :=
.call (some (AllocBody664_42, 0, 664, 2)) (Sum.inl 210) (some (AllocBody664_45, 664, 3))

def AllocBody664_47 : StackLang.HolProg 64 :=
.seq AllocBody664_31 AllocBody664_46

def AllocBody664_48 : StackLang.HolProg 64 :=
.seq AllocBody664_30 AllocBody664_47

def AllocBody664_49 : StackLang.HolProg 64 :=
.seq AllocBody664_29 AllocBody664_48

def AllocBody664_50 : StackLang.HolProg 64 :=
.seq AllocBody664_10 AllocBody664_49

def AllocBody664_51 : StackLang.HolProg 64 :=
.seq AllocBody664_7 AllocBody664_50

def AllocBody664_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody664_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody664_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 2377177743836652868#64)

def AllocBody664_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 17257524443456604923#64)

def AllocBody664_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 7129779742913871286#64)

def AllocBody664_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 12812017116984455391#64)

def AllocBody664_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody664_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody664_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody664_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def AllocBody664_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 661

def AllocBody664_63 : StackLang.HolProg 64 :=
.seq AllocBody664_61 AllocBody664_62

def AllocBody664_64 : StackLang.HolProg 64 :=
.seq AllocBody664_60 AllocBody664_63

def AllocBody664_65 : StackLang.HolProg 64 :=
.seq AllocBody664_59 AllocBody664_64

def AllocBody664_66 : StackLang.HolProg 64 :=
.seq AllocBody664_58 AllocBody664_65

def AllocBody664_67 : StackLang.HolProg 64 :=
.seq AllocBody664_57 AllocBody664_66

def AllocBody664_68 : StackLang.HolProg 64 :=
.seq AllocBody664_56 AllocBody664_67

def AllocBody664_69 : StackLang.HolProg 64 :=
.seq AllocBody664_55 AllocBody664_68

def AllocBody664_70 : StackLang.HolProg 64 :=
.seq AllocBody664_54 AllocBody664_69

def AllocBody664_71 : StackLang.HolProg 64 :=
.seq AllocBody664_53 AllocBody664_70

def AllocBody664_72 : StackLang.HolProg 64 :=
.seq AllocBody664_52 AllocBody664_71

def AllocBody664_73 : StackLang.HolProg 64 :=
.seq AllocBody664_51 AllocBody664_72

def AllocBody664_74 : StackLang.HolProg 64 :=
.seq AllocBody664_6 AllocBody664_73

def AllocBody664_75 : StackLang.HolProg 64 :=
.seq AllocBody664_5 AllocBody664_74

def AllocBody664_76 : StackLang.HolProg 64 :=
.seq AllocBody664_4 AllocBody664_75

def AllocBody664_77 : StackLang.HolProg 64 :=
.seq AllocBody664_3 AllocBody664_76

def AllocBody664_78 : StackLang.HolProg 64 :=
.seq AllocBody664_2 AllocBody664_77

def AllocBody664_79 : StackLang.HolProg 64 :=
.seq AllocBody664_1 AllocBody664_78

def AllocBody664_80 : StackLang.HolProg 64 :=
.seq AllocBody664_0 AllocBody664_79

def Alloc664 : Nat × StackLang.HolProg 64 := (664, AllocBody664_80)
theorem Alloc664_eq : StackAlloc.progComp (664, raw664) = Alloc664 := by
  kernel_rfl
#print axioms Alloc664_eq
end InitECandidate.Proofs.BackendStages
