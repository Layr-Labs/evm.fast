import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw464
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody464_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody464_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody464_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 31#64)))

def AllocBody464_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody464_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody464_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody464_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody464_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody464_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody464_9 : StackLang.HolProg 64 :=
.seq AllocBody464_7 AllocBody464_8

def AllocBody464_10 : StackLang.HolProg 64 :=
.seq AllocBody464_6 AllocBody464_9

def AllocBody464_11 : StackLang.HolProg 64 :=
.seq AllocBody464_5 AllocBody464_10

def AllocBody464_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody464_13 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody464_11 AllocBody464_12

def AllocBody464_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody464_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody464_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody464_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def AllocBody464_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody464_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody464_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody464_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody464_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1488#64)

def AllocBody464_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody464_24 : StackLang.HolProg 64 :=
.seq AllocBody464_22 AllocBody464_23

def AllocBody464_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody464_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody464_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody464_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 464 3

def AllocBody464_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody464_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody464_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody464_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody464_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody464_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody464_35 : StackLang.HolProg 64 :=
.seq AllocBody464_33 AllocBody464_34

def AllocBody464_36 : StackLang.HolProg 64 :=
.seq AllocBody464_32 AllocBody464_35

def AllocBody464_37 : StackLang.HolProg 64 :=
.seq AllocBody464_31 AllocBody464_36

def AllocBody464_38 : StackLang.HolProg 64 :=
.seq AllocBody464_30 AllocBody464_37

def AllocBody464_39 : StackLang.HolProg 64 :=
.seq AllocBody464_29 AllocBody464_38

def AllocBody464_40 : StackLang.HolProg 64 :=
.seq AllocBody464_28 AllocBody464_39

def AllocBody464_41 : StackLang.HolProg 64 :=
.seq AllocBody464_27 AllocBody464_40

def AllocBody464_42 : StackLang.HolProg 64 :=
.seq AllocBody464_26 AllocBody464_41

def AllocBody464_43 : StackLang.HolProg 64 :=
.seq AllocBody464_25 AllocBody464_42

def AllocBody464_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody464_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody464_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody464_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody464_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody464_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody464_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody464_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody464_52 : StackLang.HolProg 64 :=
.seq AllocBody464_50 AllocBody464_51

def AllocBody464_53 : StackLang.HolProg 64 :=
.seq AllocBody464_49 AllocBody464_52

def AllocBody464_54 : StackLang.HolProg 64 :=
.seq AllocBody464_48 AllocBody464_53

def AllocBody464_55 : StackLang.HolProg 64 :=
.seq AllocBody464_47 AllocBody464_54

def AllocBody464_56 : StackLang.HolProg 64 :=
.seq AllocBody464_46 AllocBody464_55

def AllocBody464_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody464_58 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody464_59 : StackLang.HolProg 64 :=
.seq AllocBody464_57 AllocBody464_58

def AllocBody464_60 : StackLang.HolProg 64 :=
.call (some (AllocBody464_56, 0, 464, 2)) (Sum.inl 463) (some (AllocBody464_59, 464, 3))

def AllocBody464_61 : StackLang.HolProg 64 :=
.seq AllocBody464_45 AllocBody464_60

def AllocBody464_62 : StackLang.HolProg 64 :=
.seq AllocBody464_44 AllocBody464_61

def AllocBody464_63 : StackLang.HolProg 64 :=
.seq AllocBody464_43 AllocBody464_62

def AllocBody464_64 : StackLang.HolProg 64 :=
.seq AllocBody464_24 AllocBody464_63

def AllocBody464_65 : StackLang.HolProg 64 :=
.seq AllocBody464_21 AllocBody464_64

def AllocBody464_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody464_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody464_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody464_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody464_70 : StackLang.HolProg 64 :=
.seq AllocBody464_68 AllocBody464_69

def AllocBody464_71 : StackLang.HolProg 64 :=
.seq AllocBody464_67 AllocBody464_70

def AllocBody464_72 : StackLang.HolProg 64 :=
.seq AllocBody464_66 AllocBody464_71

def AllocBody464_73 : StackLang.HolProg 64 :=
.seq AllocBody464_65 AllocBody464_72

def AllocBody464_74 : StackLang.HolProg 64 :=
.seq AllocBody464_20 AllocBody464_73

def AllocBody464_75 : StackLang.HolProg 64 :=
.seq AllocBody464_19 AllocBody464_74

def AllocBody464_76 : StackLang.HolProg 64 :=
.seq AllocBody464_18 AllocBody464_75

def AllocBody464_77 : StackLang.HolProg 64 :=
.seq AllocBody464_17 AllocBody464_76

def AllocBody464_78 : StackLang.HolProg 64 :=
.seq AllocBody464_16 AllocBody464_77

def AllocBody464_79 : StackLang.HolProg 64 :=
.seq AllocBody464_15 AllocBody464_78

def AllocBody464_80 : StackLang.HolProg 64 :=
.seq AllocBody464_14 AllocBody464_79

def AllocBody464_81 : StackLang.HolProg 64 :=
.seq AllocBody464_13 AllocBody464_80

def AllocBody464_82 : StackLang.HolProg 64 :=
.seq AllocBody464_4 AllocBody464_81

def AllocBody464_83 : StackLang.HolProg 64 :=
.seq AllocBody464_3 AllocBody464_82

def AllocBody464_84 : StackLang.HolProg 64 :=
.seq AllocBody464_2 AllocBody464_83

def AllocBody464_85 : StackLang.HolProg 64 :=
.seq AllocBody464_1 AllocBody464_84

def AllocBody464_86 : StackLang.HolProg 64 :=
.seq AllocBody464_0 AllocBody464_85

def Alloc464 : Nat × StackLang.HolProg 64 := (464, AllocBody464_86)
theorem Alloc464_eq : StackAlloc.progComp (464, raw464) = Alloc464 := by
  kernel_rfl
#print axioms Alloc464_eq
end InitECandidate.Proofs.BackendStages
