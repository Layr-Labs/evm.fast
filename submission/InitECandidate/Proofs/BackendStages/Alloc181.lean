import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw181
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody181_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody181_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody181_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def AllocBody181_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody181_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody181_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody181_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody181_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody181_8 : StackLang.HolProg 64 :=
.seq AllocBody181_6 AllocBody181_7

def AllocBody181_9 : StackLang.HolProg 64 :=
.seq AllocBody181_5 AllocBody181_8

def AllocBody181_10 : StackLang.HolProg 64 :=
.seq AllocBody181_4 AllocBody181_9

def AllocBody181_11 : StackLang.HolProg 64 :=
.seq AllocBody181_3 AllocBody181_10

def AllocBody181_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody181_13 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody181_11 AllocBody181_12

def AllocBody181_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody181_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody181_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody181_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody181_18 : StackLang.HolProg 64 :=
.seq AllocBody181_16 AllocBody181_17

def AllocBody181_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody181_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 202#64)

def AllocBody181_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody181_22 : StackLang.HolProg 64 :=
.seq AllocBody181_20 AllocBody181_21

def AllocBody181_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody181_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody181_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody181_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 181 3

def AllocBody181_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody181_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody181_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody181_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody181_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody181_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody181_33 : StackLang.HolProg 64 :=
.seq AllocBody181_31 AllocBody181_32

def AllocBody181_34 : StackLang.HolProg 64 :=
.seq AllocBody181_30 AllocBody181_33

def AllocBody181_35 : StackLang.HolProg 64 :=
.seq AllocBody181_29 AllocBody181_34

def AllocBody181_36 : StackLang.HolProg 64 :=
.seq AllocBody181_28 AllocBody181_35

def AllocBody181_37 : StackLang.HolProg 64 :=
.seq AllocBody181_27 AllocBody181_36

def AllocBody181_38 : StackLang.HolProg 64 :=
.seq AllocBody181_26 AllocBody181_37

def AllocBody181_39 : StackLang.HolProg 64 :=
.seq AllocBody181_25 AllocBody181_38

def AllocBody181_40 : StackLang.HolProg 64 :=
.seq AllocBody181_24 AllocBody181_39

def AllocBody181_41 : StackLang.HolProg 64 :=
.seq AllocBody181_23 AllocBody181_40

def AllocBody181_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody181_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody181_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody181_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody181_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody181_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody181_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody181_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody181_50 : StackLang.HolProg 64 :=
.seq AllocBody181_48 AllocBody181_49

def AllocBody181_51 : StackLang.HolProg 64 :=
.seq AllocBody181_47 AllocBody181_50

def AllocBody181_52 : StackLang.HolProg 64 :=
.seq AllocBody181_46 AllocBody181_51

def AllocBody181_53 : StackLang.HolProg 64 :=
.seq AllocBody181_45 AllocBody181_52

def AllocBody181_54 : StackLang.HolProg 64 :=
.seq AllocBody181_44 AllocBody181_53

def AllocBody181_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody181_56 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody181_57 : StackLang.HolProg 64 :=
.seq AllocBody181_55 AllocBody181_56

def AllocBody181_58 : StackLang.HolProg 64 :=
.call (some (AllocBody181_54, 0, 181, 2)) (Sum.inl 172) (some (AllocBody181_57, 181, 3))

def AllocBody181_59 : StackLang.HolProg 64 :=
.seq AllocBody181_43 AllocBody181_58

def AllocBody181_60 : StackLang.HolProg 64 :=
.seq AllocBody181_42 AllocBody181_59

def AllocBody181_61 : StackLang.HolProg 64 :=
.seq AllocBody181_41 AllocBody181_60

def AllocBody181_62 : StackLang.HolProg 64 :=
.seq AllocBody181_22 AllocBody181_61

def AllocBody181_63 : StackLang.HolProg 64 :=
.seq AllocBody181_19 AllocBody181_62

def AllocBody181_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody181_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody181_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody181_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody181_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody181_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody181_70 : StackLang.HolProg 64 :=
.seq AllocBody181_68 AllocBody181_69

def AllocBody181_71 : StackLang.HolProg 64 :=
.seq AllocBody181_67 AllocBody181_70

def AllocBody181_72 : StackLang.HolProg 64 :=
.seq AllocBody181_66 AllocBody181_71

def AllocBody181_73 : StackLang.HolProg 64 :=
.seq AllocBody181_65 AllocBody181_72

def AllocBody181_74 : StackLang.HolProg 64 :=
.seq AllocBody181_64 AllocBody181_73

def AllocBody181_75 : StackLang.HolProg 64 :=
.seq AllocBody181_63 AllocBody181_74

def AllocBody181_76 : StackLang.HolProg 64 :=
.seq AllocBody181_18 AllocBody181_75

def AllocBody181_77 : StackLang.HolProg 64 :=
.seq AllocBody181_15 AllocBody181_76

def AllocBody181_78 : StackLang.HolProg 64 :=
.seq AllocBody181_14 AllocBody181_77

def AllocBody181_79 : StackLang.HolProg 64 :=
.seq AllocBody181_13 AllocBody181_78

def AllocBody181_80 : StackLang.HolProg 64 :=
.seq AllocBody181_2 AllocBody181_79

def AllocBody181_81 : StackLang.HolProg 64 :=
.seq AllocBody181_1 AllocBody181_80

def AllocBody181_82 : StackLang.HolProg 64 :=
.seq AllocBody181_0 AllocBody181_81

def Alloc181 : Nat × StackLang.HolProg 64 := (181, AllocBody181_82)
theorem Alloc181_eq : StackAlloc.progComp (181, raw181) = Alloc181 := by
  kernel_rfl
#print axioms Alloc181_eq
end InitECandidate.Proofs.BackendStages
