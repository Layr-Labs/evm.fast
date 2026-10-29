import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw294
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody294_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody294_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody294_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody294_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 800#64)

def AllocBody294_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody294_5 : StackLang.HolProg 64 :=
.seq AllocBody294_3 AllocBody294_4

def AllocBody294_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody294_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody294_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody294_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 294 3

def AllocBody294_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody294_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody294_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody294_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody294_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody294_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody294_16 : StackLang.HolProg 64 :=
.seq AllocBody294_14 AllocBody294_15

def AllocBody294_17 : StackLang.HolProg 64 :=
.seq AllocBody294_13 AllocBody294_16

def AllocBody294_18 : StackLang.HolProg 64 :=
.seq AllocBody294_12 AllocBody294_17

def AllocBody294_19 : StackLang.HolProg 64 :=
.seq AllocBody294_11 AllocBody294_18

def AllocBody294_20 : StackLang.HolProg 64 :=
.seq AllocBody294_10 AllocBody294_19

def AllocBody294_21 : StackLang.HolProg 64 :=
.seq AllocBody294_9 AllocBody294_20

def AllocBody294_22 : StackLang.HolProg 64 :=
.seq AllocBody294_8 AllocBody294_21

def AllocBody294_23 : StackLang.HolProg 64 :=
.seq AllocBody294_7 AllocBody294_22

def AllocBody294_24 : StackLang.HolProg 64 :=
.seq AllocBody294_6 AllocBody294_23

def AllocBody294_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody294_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody294_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody294_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody294_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody294_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody294_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody294_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody294_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody294_34 : StackLang.HolProg 64 :=
.seq AllocBody294_32 AllocBody294_33

def AllocBody294_35 : StackLang.HolProg 64 :=
.seq AllocBody294_31 AllocBody294_34

def AllocBody294_36 : StackLang.HolProg 64 :=
.seq AllocBody294_30 AllocBody294_35

def AllocBody294_37 : StackLang.HolProg 64 :=
.seq AllocBody294_29 AllocBody294_36

def AllocBody294_38 : StackLang.HolProg 64 :=
.seq AllocBody294_28 AllocBody294_37

def AllocBody294_39 : StackLang.HolProg 64 :=
.seq AllocBody294_27 AllocBody294_38

def AllocBody294_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody294_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody294_42 : StackLang.HolProg 64 :=
.seq AllocBody294_40 AllocBody294_41

def AllocBody294_43 : StackLang.HolProg 64 :=
.call (some (AllocBody294_39, 0, 294, 2)) (Sum.inl 186) (some (AllocBody294_42, 294, 3))

def AllocBody294_44 : StackLang.HolProg 64 :=
.seq AllocBody294_26 AllocBody294_43

def AllocBody294_45 : StackLang.HolProg 64 :=
.seq AllocBody294_25 AllocBody294_44

def AllocBody294_46 : StackLang.HolProg 64 :=
.seq AllocBody294_24 AllocBody294_45

def AllocBody294_47 : StackLang.HolProg 64 :=
.seq AllocBody294_5 AllocBody294_46

def AllocBody294_48 : StackLang.HolProg 64 :=
.seq AllocBody294_2 AllocBody294_47

def AllocBody294_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody294_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody294_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody294_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody294_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody294_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody294_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody294_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody294_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody294_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody294_59 : StackLang.HolProg 64 :=
.seq AllocBody294_57 AllocBody294_58

def AllocBody294_60 : StackLang.HolProg 64 :=
.seq AllocBody294_56 AllocBody294_59

def AllocBody294_61 : StackLang.HolProg 64 :=
.seq AllocBody294_55 AllocBody294_60

def AllocBody294_62 : StackLang.HolProg 64 :=
.seq AllocBody294_54 AllocBody294_61

def AllocBody294_63 : StackLang.HolProg 64 :=
.seq AllocBody294_53 AllocBody294_62

def AllocBody294_64 : StackLang.HolProg 64 :=
.seq AllocBody294_52 AllocBody294_63

def AllocBody294_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody294_66 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody294_64 AllocBody294_65

def AllocBody294_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody294_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody294_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody294_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody294_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody294_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody294_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def AllocBody294_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody294_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody294_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody294_77 : StackLang.HolProg 64 :=
.seq AllocBody294_75 AllocBody294_76

def AllocBody294_78 : StackLang.HolProg 64 :=
.seq AllocBody294_74 AllocBody294_77

def AllocBody294_79 : StackLang.HolProg 64 :=
.seq AllocBody294_73 AllocBody294_78

def AllocBody294_80 : StackLang.HolProg 64 :=
.seq AllocBody294_72 AllocBody294_79

def AllocBody294_81 : StackLang.HolProg 64 :=
.seq AllocBody294_71 AllocBody294_80

def AllocBody294_82 : StackLang.HolProg 64 :=
.seq AllocBody294_70 AllocBody294_81

def AllocBody294_83 : StackLang.HolProg 64 :=
.seq AllocBody294_69 AllocBody294_82

def AllocBody294_84 : StackLang.HolProg 64 :=
.seq AllocBody294_68 AllocBody294_83

def AllocBody294_85 : StackLang.HolProg 64 :=
.seq AllocBody294_67 AllocBody294_84

def AllocBody294_86 : StackLang.HolProg 64 :=
.seq AllocBody294_66 AllocBody294_85

def AllocBody294_87 : StackLang.HolProg 64 :=
.seq AllocBody294_51 AllocBody294_86

def AllocBody294_88 : StackLang.HolProg 64 :=
.seq AllocBody294_50 AllocBody294_87

def AllocBody294_89 : StackLang.HolProg 64 :=
.seq AllocBody294_49 AllocBody294_88

def AllocBody294_90 : StackLang.HolProg 64 :=
.seq AllocBody294_48 AllocBody294_89

def AllocBody294_91 : StackLang.HolProg 64 :=
.seq AllocBody294_1 AllocBody294_90

def AllocBody294_92 : StackLang.HolProg 64 :=
.seq AllocBody294_0 AllocBody294_91

def Alloc294 : Nat × StackLang.HolProg 64 := (294, AllocBody294_92)
theorem Alloc294_eq : StackAlloc.progComp (294, raw294) = Alloc294 := by
  kernel_rfl
#print axioms Alloc294_eq
end InitECandidate.Proofs.BackendStages
