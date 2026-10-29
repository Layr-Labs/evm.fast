import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw877
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody877_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody877_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody877_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def AllocBody877_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody877_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody877_5 : StackLang.HolProg 64 :=
.seq AllocBody877_3 AllocBody877_4

def AllocBody877_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody877_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4603#64)

def AllocBody877_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody877_9 : StackLang.HolProg 64 :=
.seq AllocBody877_7 AllocBody877_8

def AllocBody877_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody877_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody877_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody877_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 877 3

def AllocBody877_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody877_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody877_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody877_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody877_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody877_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody877_20 : StackLang.HolProg 64 :=
.seq AllocBody877_18 AllocBody877_19

def AllocBody877_21 : StackLang.HolProg 64 :=
.seq AllocBody877_17 AllocBody877_20

def AllocBody877_22 : StackLang.HolProg 64 :=
.seq AllocBody877_16 AllocBody877_21

def AllocBody877_23 : StackLang.HolProg 64 :=
.seq AllocBody877_15 AllocBody877_22

def AllocBody877_24 : StackLang.HolProg 64 :=
.seq AllocBody877_14 AllocBody877_23

def AllocBody877_25 : StackLang.HolProg 64 :=
.seq AllocBody877_13 AllocBody877_24

def AllocBody877_26 : StackLang.HolProg 64 :=
.seq AllocBody877_12 AllocBody877_25

def AllocBody877_27 : StackLang.HolProg 64 :=
.seq AllocBody877_11 AllocBody877_26

def AllocBody877_28 : StackLang.HolProg 64 :=
.seq AllocBody877_10 AllocBody877_27

def AllocBody877_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody877_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody877_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody877_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody877_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody877_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody877_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody877_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody877_37 : StackLang.HolProg 64 :=
.seq AllocBody877_35 AllocBody877_36

def AllocBody877_38 : StackLang.HolProg 64 :=
.seq AllocBody877_34 AllocBody877_37

def AllocBody877_39 : StackLang.HolProg 64 :=
.seq AllocBody877_33 AllocBody877_38

def AllocBody877_40 : StackLang.HolProg 64 :=
.seq AllocBody877_32 AllocBody877_39

def AllocBody877_41 : StackLang.HolProg 64 :=
.seq AllocBody877_31 AllocBody877_40

def AllocBody877_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody877_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody877_44 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody877_45 : StackLang.HolProg 64 :=
.seq AllocBody877_43 AllocBody877_44

def AllocBody877_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody877_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5)

def AllocBody877_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody877_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody877_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody877_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def AllocBody877_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551080#64)))

def AllocBody877_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody877_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody877_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody877_56 : StackLang.HolProg 64 :=
.seq AllocBody877_54 AllocBody877_55

def AllocBody877_57 : StackLang.HolProg 64 :=
.seq AllocBody877_53 AllocBody877_56

def AllocBody877_58 : StackLang.HolProg 64 :=
.seq AllocBody877_52 AllocBody877_57

def AllocBody877_59 : StackLang.HolProg 64 :=
.seq AllocBody877_51 AllocBody877_58

def AllocBody877_60 : StackLang.HolProg 64 :=
.seq AllocBody877_50 AllocBody877_59

def AllocBody877_61 : StackLang.HolProg 64 :=
.seq AllocBody877_49 AllocBody877_60

def AllocBody877_62 : StackLang.HolProg 64 :=
.seq AllocBody877_48 AllocBody877_61

def AllocBody877_63 : StackLang.HolProg 64 :=
.seq AllocBody877_47 AllocBody877_62

def AllocBody877_64 : StackLang.HolProg 64 :=
.seq AllocBody877_46 AllocBody877_63

def AllocBody877_65 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64) AllocBody877_45 AllocBody877_64

def AllocBody877_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody877_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody877_68 : StackLang.HolProg 64 :=
.seq AllocBody877_66 AllocBody877_67

def AllocBody877_69 : StackLang.HolProg 64 :=
.seq AllocBody877_65 AllocBody877_68

def AllocBody877_70 : StackLang.HolProg 64 :=
.seq AllocBody877_42 AllocBody877_69

def AllocBody877_71 : StackLang.HolProg 64 :=
.call (some (AllocBody877_41, 0, 877, 2)) (Sum.inl 876) (some (AllocBody877_70, 877, 3))

def AllocBody877_72 : StackLang.HolProg 64 :=
.seq AllocBody877_30 AllocBody877_71

def AllocBody877_73 : StackLang.HolProg 64 :=
.seq AllocBody877_29 AllocBody877_72

def AllocBody877_74 : StackLang.HolProg 64 :=
.seq AllocBody877_28 AllocBody877_73

def AllocBody877_75 : StackLang.HolProg 64 :=
.seq AllocBody877_9 AllocBody877_74

def AllocBody877_76 : StackLang.HolProg 64 :=
.seq AllocBody877_6 AllocBody877_75

def AllocBody877_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody877_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody877_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody877_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody877_81 : StackLang.HolProg 64 :=
.seq AllocBody877_79 AllocBody877_80

def AllocBody877_82 : StackLang.HolProg 64 :=
.seq AllocBody877_78 AllocBody877_81

def AllocBody877_83 : StackLang.HolProg 64 :=
.seq AllocBody877_77 AllocBody877_82

def AllocBody877_84 : StackLang.HolProg 64 :=
.seq AllocBody877_76 AllocBody877_83

def AllocBody877_85 : StackLang.HolProg 64 :=
.seq AllocBody877_5 AllocBody877_84

def AllocBody877_86 : StackLang.HolProg 64 :=
.seq AllocBody877_2 AllocBody877_85

def AllocBody877_87 : StackLang.HolProg 64 :=
.seq AllocBody877_1 AllocBody877_86

def AllocBody877_88 : StackLang.HolProg 64 :=
.seq AllocBody877_0 AllocBody877_87

def Alloc877 : Nat × StackLang.HolProg 64 := (877, AllocBody877_88)
theorem Alloc877_eq : StackAlloc.progComp (877, raw877) = Alloc877 := by
  kernel_rfl
#print axioms Alloc877_eq
end InitECandidate.Proofs.BackendStages
