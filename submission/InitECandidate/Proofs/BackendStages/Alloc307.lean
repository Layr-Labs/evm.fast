import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw307
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody307_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody307_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody307_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody307_3 : StackLang.HolProg 64 :=
.seq AllocBody307_1 AllocBody307_2

def AllocBody307_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody307_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody307_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def AllocBody307_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551472#64))

def AllocBody307_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def AllocBody307_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody307_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def AllocBody307_11 : StackLang.HolProg 64 :=
.seq AllocBody307_9 AllocBody307_10

def AllocBody307_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody307_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 848#64)

def AllocBody307_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody307_15 : StackLang.HolProg 64 :=
.seq AllocBody307_13 AllocBody307_14

def AllocBody307_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody307_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody307_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody307_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 307 3

def AllocBody307_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody307_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody307_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody307_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody307_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody307_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody307_26 : StackLang.HolProg 64 :=
.seq AllocBody307_24 AllocBody307_25

def AllocBody307_27 : StackLang.HolProg 64 :=
.seq AllocBody307_23 AllocBody307_26

def AllocBody307_28 : StackLang.HolProg 64 :=
.seq AllocBody307_22 AllocBody307_27

def AllocBody307_29 : StackLang.HolProg 64 :=
.seq AllocBody307_21 AllocBody307_28

def AllocBody307_30 : StackLang.HolProg 64 :=
.seq AllocBody307_20 AllocBody307_29

def AllocBody307_31 : StackLang.HolProg 64 :=
.seq AllocBody307_19 AllocBody307_30

def AllocBody307_32 : StackLang.HolProg 64 :=
.seq AllocBody307_18 AllocBody307_31

def AllocBody307_33 : StackLang.HolProg 64 :=
.seq AllocBody307_17 AllocBody307_32

def AllocBody307_34 : StackLang.HolProg 64 :=
.seq AllocBody307_16 AllocBody307_33

def AllocBody307_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody307_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody307_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody307_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody307_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody307_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody307_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody307_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody307_43 : StackLang.HolProg 64 :=
.seq AllocBody307_41 AllocBody307_42

def AllocBody307_44 : StackLang.HolProg 64 :=
.seq AllocBody307_40 AllocBody307_43

def AllocBody307_45 : StackLang.HolProg 64 :=
.seq AllocBody307_39 AllocBody307_44

def AllocBody307_46 : StackLang.HolProg 64 :=
.seq AllocBody307_38 AllocBody307_45

def AllocBody307_47 : StackLang.HolProg 64 :=
.seq AllocBody307_37 AllocBody307_46

def AllocBody307_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody307_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody307_50 : StackLang.HolProg 64 :=
.seq AllocBody307_48 AllocBody307_49

def AllocBody307_51 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody307_52 : StackLang.HolProg 64 :=
.seq AllocBody307_50 AllocBody307_51

def AllocBody307_53 : StackLang.HolProg 64 :=
.call (some (AllocBody307_47, 0, 307, 2)) (Sum.inl 288) (some (AllocBody307_52, 307, 3))

def AllocBody307_54 : StackLang.HolProg 64 :=
.seq AllocBody307_36 AllocBody307_53

def AllocBody307_55 : StackLang.HolProg 64 :=
.seq AllocBody307_35 AllocBody307_54

def AllocBody307_56 : StackLang.HolProg 64 :=
.seq AllocBody307_34 AllocBody307_55

def AllocBody307_57 : StackLang.HolProg 64 :=
.seq AllocBody307_15 AllocBody307_56

def AllocBody307_58 : StackLang.HolProg 64 :=
.seq AllocBody307_12 AllocBody307_57

def AllocBody307_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody307_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody307_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody307_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody307_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def AllocBody307_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551472#64))

def AllocBody307_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 64#64)

def AllocBody307_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody307_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody307_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody307_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody307_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 306

def AllocBody307_71 : StackLang.HolProg 64 :=
.seq AllocBody307_69 AllocBody307_70

def AllocBody307_72 : StackLang.HolProg 64 :=
.seq AllocBody307_68 AllocBody307_71

def AllocBody307_73 : StackLang.HolProg 64 :=
.seq AllocBody307_67 AllocBody307_72

def AllocBody307_74 : StackLang.HolProg 64 :=
.seq AllocBody307_66 AllocBody307_73

def AllocBody307_75 : StackLang.HolProg 64 :=
.seq AllocBody307_65 AllocBody307_74

def AllocBody307_76 : StackLang.HolProg 64 :=
.seq AllocBody307_64 AllocBody307_75

def AllocBody307_77 : StackLang.HolProg 64 :=
.seq AllocBody307_63 AllocBody307_76

def AllocBody307_78 : StackLang.HolProg 64 :=
.seq AllocBody307_62 AllocBody307_77

def AllocBody307_79 : StackLang.HolProg 64 :=
.seq AllocBody307_61 AllocBody307_78

def AllocBody307_80 : StackLang.HolProg 64 :=
.seq AllocBody307_60 AllocBody307_79

def AllocBody307_81 : StackLang.HolProg 64 :=
.seq AllocBody307_59 AllocBody307_80

def AllocBody307_82 : StackLang.HolProg 64 :=
.seq AllocBody307_58 AllocBody307_81

def AllocBody307_83 : StackLang.HolProg 64 :=
.seq AllocBody307_11 AllocBody307_82

def AllocBody307_84 : StackLang.HolProg 64 :=
.seq AllocBody307_8 AllocBody307_83

def AllocBody307_85 : StackLang.HolProg 64 :=
.seq AllocBody307_7 AllocBody307_84

def AllocBody307_86 : StackLang.HolProg 64 :=
.seq AllocBody307_6 AllocBody307_85

def AllocBody307_87 : StackLang.HolProg 64 :=
.seq AllocBody307_5 AllocBody307_86

def AllocBody307_88 : StackLang.HolProg 64 :=
.seq AllocBody307_4 AllocBody307_87

def AllocBody307_89 : StackLang.HolProg 64 :=
.seq AllocBody307_3 AllocBody307_88

def AllocBody307_90 : StackLang.HolProg 64 :=
.seq AllocBody307_0 AllocBody307_89

def Alloc307 : Nat × StackLang.HolProg 64 := (307, AllocBody307_90)
theorem Alloc307_eq : StackAlloc.progComp (307, raw307) = Alloc307 := by
  kernel_rfl
#print axioms Alloc307_eq
end InitECandidate.Proofs.BackendStages
