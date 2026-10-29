import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw399
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody399_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody399_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody399_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody399_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1184#64)

def AllocBody399_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody399_5 : StackLang.HolProg 64 :=
.seq AllocBody399_3 AllocBody399_4

def AllocBody399_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody399_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody399_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody399_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 399 3

def AllocBody399_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody399_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody399_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody399_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody399_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody399_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody399_16 : StackLang.HolProg 64 :=
.seq AllocBody399_14 AllocBody399_15

def AllocBody399_17 : StackLang.HolProg 64 :=
.seq AllocBody399_13 AllocBody399_16

def AllocBody399_18 : StackLang.HolProg 64 :=
.seq AllocBody399_12 AllocBody399_17

def AllocBody399_19 : StackLang.HolProg 64 :=
.seq AllocBody399_11 AllocBody399_18

def AllocBody399_20 : StackLang.HolProg 64 :=
.seq AllocBody399_10 AllocBody399_19

def AllocBody399_21 : StackLang.HolProg 64 :=
.seq AllocBody399_9 AllocBody399_20

def AllocBody399_22 : StackLang.HolProg 64 :=
.seq AllocBody399_8 AllocBody399_21

def AllocBody399_23 : StackLang.HolProg 64 :=
.seq AllocBody399_7 AllocBody399_22

def AllocBody399_24 : StackLang.HolProg 64 :=
.seq AllocBody399_6 AllocBody399_23

def AllocBody399_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody399_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody399_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody399_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody399_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody399_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody399_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody399_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody399_33 : StackLang.HolProg 64 :=
.seq AllocBody399_31 AllocBody399_32

def AllocBody399_34 : StackLang.HolProg 64 :=
.seq AllocBody399_30 AllocBody399_33

def AllocBody399_35 : StackLang.HolProg 64 :=
.seq AllocBody399_29 AllocBody399_34

def AllocBody399_36 : StackLang.HolProg 64 :=
.seq AllocBody399_28 AllocBody399_35

def AllocBody399_37 : StackLang.HolProg 64 :=
.seq AllocBody399_27 AllocBody399_36

def AllocBody399_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody399_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody399_40 : StackLang.HolProg 64 :=
.seq AllocBody399_38 AllocBody399_39

def AllocBody399_41 : StackLang.HolProg 64 :=
.call (some (AllocBody399_37, 0, 399, 2)) (Sum.inl 398) (some (AllocBody399_40, 399, 3))

def AllocBody399_42 : StackLang.HolProg 64 :=
.seq AllocBody399_26 AllocBody399_41

def AllocBody399_43 : StackLang.HolProg 64 :=
.seq AllocBody399_25 AllocBody399_42

def AllocBody399_44 : StackLang.HolProg 64 :=
.seq AllocBody399_24 AllocBody399_43

def AllocBody399_45 : StackLang.HolProg 64 :=
.seq AllocBody399_5 AllocBody399_44

def AllocBody399_46 : StackLang.HolProg 64 :=
.seq AllocBody399_2 AllocBody399_45

def AllocBody399_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody399_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody399_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody399_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody399_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody399_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody399_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody399_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551488#64))

def AllocBody399_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody399_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody399_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody399_58 : StackLang.HolProg 64 :=
.seq AllocBody399_56 AllocBody399_57

def AllocBody399_59 : StackLang.HolProg 64 :=
.seq AllocBody399_55 AllocBody399_58

def AllocBody399_60 : StackLang.HolProg 64 :=
.seq AllocBody399_54 AllocBody399_59

def AllocBody399_61 : StackLang.HolProg 64 :=
.seq AllocBody399_53 AllocBody399_60

def AllocBody399_62 : StackLang.HolProg 64 :=
.seq AllocBody399_52 AllocBody399_61

def AllocBody399_63 : StackLang.HolProg 64 :=
.seq AllocBody399_51 AllocBody399_62

def AllocBody399_64 : StackLang.HolProg 64 :=
.seq AllocBody399_50 AllocBody399_63

def AllocBody399_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody399_66 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody399_64 AllocBody399_65

def AllocBody399_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody399_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody399_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody399_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 40#64))

def AllocBody399_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody399_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody399_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody399_74 : StackLang.HolProg 64 :=
.seq AllocBody399_72 AllocBody399_73

def AllocBody399_75 : StackLang.HolProg 64 :=
.seq AllocBody399_71 AllocBody399_74

def AllocBody399_76 : StackLang.HolProg 64 :=
.seq AllocBody399_70 AllocBody399_75

def AllocBody399_77 : StackLang.HolProg 64 :=
.seq AllocBody399_69 AllocBody399_76

def AllocBody399_78 : StackLang.HolProg 64 :=
.seq AllocBody399_68 AllocBody399_77

def AllocBody399_79 : StackLang.HolProg 64 :=
.seq AllocBody399_67 AllocBody399_78

def AllocBody399_80 : StackLang.HolProg 64 :=
.seq AllocBody399_66 AllocBody399_79

def AllocBody399_81 : StackLang.HolProg 64 :=
.seq AllocBody399_49 AllocBody399_80

def AllocBody399_82 : StackLang.HolProg 64 :=
.seq AllocBody399_48 AllocBody399_81

def AllocBody399_83 : StackLang.HolProg 64 :=
.seq AllocBody399_47 AllocBody399_82

def AllocBody399_84 : StackLang.HolProg 64 :=
.seq AllocBody399_46 AllocBody399_83

def AllocBody399_85 : StackLang.HolProg 64 :=
.seq AllocBody399_1 AllocBody399_84

def AllocBody399_86 : StackLang.HolProg 64 :=
.seq AllocBody399_0 AllocBody399_85

def Alloc399 : Nat × StackLang.HolProg 64 := (399, AllocBody399_86)
theorem Alloc399_eq : StackAlloc.progComp (399, raw399) = Alloc399 := by
  kernel_rfl
#print axioms Alloc399_eq
end InitECandidate.Proofs.BackendStages
