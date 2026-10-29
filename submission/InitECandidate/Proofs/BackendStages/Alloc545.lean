import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw545
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody545_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody545_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody545_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 88#64))

def AllocBody545_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 8#64)

def AllocBody545_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody545_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody545_6 : StackLang.HolProg 64 :=
.seq AllocBody545_4 AllocBody545_5

def AllocBody545_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody545_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1805#64)

def AllocBody545_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody545_10 : StackLang.HolProg 64 :=
.seq AllocBody545_8 AllocBody545_9

def AllocBody545_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody545_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody545_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody545_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 545 3

def AllocBody545_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody545_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody545_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody545_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody545_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody545_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody545_21 : StackLang.HolProg 64 :=
.seq AllocBody545_19 AllocBody545_20

def AllocBody545_22 : StackLang.HolProg 64 :=
.seq AllocBody545_18 AllocBody545_21

def AllocBody545_23 : StackLang.HolProg 64 :=
.seq AllocBody545_17 AllocBody545_22

def AllocBody545_24 : StackLang.HolProg 64 :=
.seq AllocBody545_16 AllocBody545_23

def AllocBody545_25 : StackLang.HolProg 64 :=
.seq AllocBody545_15 AllocBody545_24

def AllocBody545_26 : StackLang.HolProg 64 :=
.seq AllocBody545_14 AllocBody545_25

def AllocBody545_27 : StackLang.HolProg 64 :=
.seq AllocBody545_13 AllocBody545_26

def AllocBody545_28 : StackLang.HolProg 64 :=
.seq AllocBody545_12 AllocBody545_27

def AllocBody545_29 : StackLang.HolProg 64 :=
.seq AllocBody545_11 AllocBody545_28

def AllocBody545_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody545_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody545_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody545_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody545_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody545_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody545_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody545_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody545_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody545_39 : StackLang.HolProg 64 :=
.seq AllocBody545_37 AllocBody545_38

def AllocBody545_40 : StackLang.HolProg 64 :=
.seq AllocBody545_36 AllocBody545_39

def AllocBody545_41 : StackLang.HolProg 64 :=
.seq AllocBody545_35 AllocBody545_40

def AllocBody545_42 : StackLang.HolProg 64 :=
.seq AllocBody545_34 AllocBody545_41

def AllocBody545_43 : StackLang.HolProg 64 :=
.seq AllocBody545_33 AllocBody545_42

def AllocBody545_44 : StackLang.HolProg 64 :=
.seq AllocBody545_32 AllocBody545_43

def AllocBody545_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody545_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody545_47 : StackLang.HolProg 64 :=
.seq AllocBody545_45 AllocBody545_46

def AllocBody545_48 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody545_49 : StackLang.HolProg 64 :=
.seq AllocBody545_47 AllocBody545_48

def AllocBody545_50 : StackLang.HolProg 64 :=
.call (some (AllocBody545_44, 0, 545, 2)) (Sum.inl 437) (some (AllocBody545_49, 545, 3))

def AllocBody545_51 : StackLang.HolProg 64 :=
.seq AllocBody545_31 AllocBody545_50

def AllocBody545_52 : StackLang.HolProg 64 :=
.seq AllocBody545_30 AllocBody545_51

def AllocBody545_53 : StackLang.HolProg 64 :=
.seq AllocBody545_29 AllocBody545_52

def AllocBody545_54 : StackLang.HolProg 64 :=
.seq AllocBody545_10 AllocBody545_53

def AllocBody545_55 : StackLang.HolProg 64 :=
.seq AllocBody545_7 AllocBody545_54

def AllocBody545_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody545_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody545_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody545_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody545_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody545_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody545_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody545_63 : StackLang.HolProg 64 :=
.seq AllocBody545_61 AllocBody545_62

def AllocBody545_64 : StackLang.HolProg 64 :=
.seq AllocBody545_60 AllocBody545_63

def AllocBody545_65 : StackLang.HolProg 64 :=
.seq AllocBody545_59 AllocBody545_64

def AllocBody545_66 : StackLang.HolProg 64 :=
.seq AllocBody545_58 AllocBody545_65

def AllocBody545_67 : StackLang.HolProg 64 :=
.seq AllocBody545_57 AllocBody545_66

def AllocBody545_68 : StackLang.HolProg 64 :=
.seq AllocBody545_56 AllocBody545_67

def AllocBody545_69 : StackLang.HolProg 64 :=
.seq AllocBody545_55 AllocBody545_68

def AllocBody545_70 : StackLang.HolProg 64 :=
.seq AllocBody545_6 AllocBody545_69

def AllocBody545_71 : StackLang.HolProg 64 :=
.seq AllocBody545_3 AllocBody545_70

def AllocBody545_72 : StackLang.HolProg 64 :=
.seq AllocBody545_2 AllocBody545_71

def AllocBody545_73 : StackLang.HolProg 64 :=
.seq AllocBody545_1 AllocBody545_72

def AllocBody545_74 : StackLang.HolProg 64 :=
.seq AllocBody545_0 AllocBody545_73

def Alloc545 : Nat × StackLang.HolProg 64 := (545, AllocBody545_74)
theorem Alloc545_eq : StackAlloc.progComp (545, raw545) = Alloc545 := by
  kernel_rfl
#print axioms Alloc545_eq
end InitECandidate.Proofs.BackendStages
