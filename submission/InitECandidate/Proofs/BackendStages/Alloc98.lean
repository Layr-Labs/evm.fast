import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw98
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody98_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody98_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody98_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody98_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody98_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody98_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551576#64))

def AllocBody98_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody98_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody98_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 640#64)

def AllocBody98_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody98_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody98_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 43#64)

def AllocBody98_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody98_13 : StackLang.HolProg 64 :=
.seq AllocBody98_11 AllocBody98_12

def AllocBody98_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody98_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody98_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody98_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 98 3

def AllocBody98_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody98_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody98_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody98_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody98_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody98_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody98_24 : StackLang.HolProg 64 :=
.seq AllocBody98_22 AllocBody98_23

def AllocBody98_25 : StackLang.HolProg 64 :=
.seq AllocBody98_21 AllocBody98_24

def AllocBody98_26 : StackLang.HolProg 64 :=
.seq AllocBody98_20 AllocBody98_25

def AllocBody98_27 : StackLang.HolProg 64 :=
.seq AllocBody98_19 AllocBody98_26

def AllocBody98_28 : StackLang.HolProg 64 :=
.seq AllocBody98_18 AllocBody98_27

def AllocBody98_29 : StackLang.HolProg 64 :=
.seq AllocBody98_17 AllocBody98_28

def AllocBody98_30 : StackLang.HolProg 64 :=
.seq AllocBody98_16 AllocBody98_29

def AllocBody98_31 : StackLang.HolProg 64 :=
.seq AllocBody98_15 AllocBody98_30

def AllocBody98_32 : StackLang.HolProg 64 :=
.seq AllocBody98_14 AllocBody98_31

def AllocBody98_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody98_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody98_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody98_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody98_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody98_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody98_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody98_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody98_41 : StackLang.HolProg 64 :=
.seq AllocBody98_39 AllocBody98_40

def AllocBody98_42 : StackLang.HolProg 64 :=
.seq AllocBody98_38 AllocBody98_41

def AllocBody98_43 : StackLang.HolProg 64 :=
.seq AllocBody98_37 AllocBody98_42

def AllocBody98_44 : StackLang.HolProg 64 :=
.seq AllocBody98_36 AllocBody98_43

def AllocBody98_45 : StackLang.HolProg 64 :=
.seq AllocBody98_35 AllocBody98_44

def AllocBody98_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody98_47 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody98_48 : StackLang.HolProg 64 :=
.seq AllocBody98_46 AllocBody98_47

def AllocBody98_49 : StackLang.HolProg 64 :=
.call (some (AllocBody98_45, 0, 98, 2)) (Sum.inl 68) (some (AllocBody98_48, 98, 3))

def AllocBody98_50 : StackLang.HolProg 64 :=
.seq AllocBody98_34 AllocBody98_49

def AllocBody98_51 : StackLang.HolProg 64 :=
.seq AllocBody98_33 AllocBody98_50

def AllocBody98_52 : StackLang.HolProg 64 :=
.seq AllocBody98_32 AllocBody98_51

def AllocBody98_53 : StackLang.HolProg 64 :=
.seq AllocBody98_13 AllocBody98_52

def AllocBody98_54 : StackLang.HolProg 64 :=
.seq AllocBody98_10 AllocBody98_53

def AllocBody98_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody98_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody98_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody98_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody98_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551576#64)))

def AllocBody98_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody98_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody98_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody98_63 : StackLang.HolProg 64 :=
.seq AllocBody98_61 AllocBody98_62

def AllocBody98_64 : StackLang.HolProg 64 :=
.seq AllocBody98_60 AllocBody98_63

def AllocBody98_65 : StackLang.HolProg 64 :=
.seq AllocBody98_59 AllocBody98_64

def AllocBody98_66 : StackLang.HolProg 64 :=
.seq AllocBody98_58 AllocBody98_65

def AllocBody98_67 : StackLang.HolProg 64 :=
.seq AllocBody98_57 AllocBody98_66

def AllocBody98_68 : StackLang.HolProg 64 :=
.seq AllocBody98_56 AllocBody98_67

def AllocBody98_69 : StackLang.HolProg 64 :=
.seq AllocBody98_55 AllocBody98_68

def AllocBody98_70 : StackLang.HolProg 64 :=
.seq AllocBody98_54 AllocBody98_69

def AllocBody98_71 : StackLang.HolProg 64 :=
.seq AllocBody98_9 AllocBody98_70

def AllocBody98_72 : StackLang.HolProg 64 :=
.seq AllocBody98_8 AllocBody98_71

def AllocBody98_73 : StackLang.HolProg 64 :=
.seq AllocBody98_7 AllocBody98_72

def AllocBody98_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody98_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody98_76 : StackLang.HolProg 64 :=
.seq AllocBody98_74 AllocBody98_75

def AllocBody98_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody98_73 AllocBody98_76

def AllocBody98_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody98_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody98_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody98_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody98_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody98_83 : StackLang.HolProg 64 :=
.seq AllocBody98_81 AllocBody98_82

def AllocBody98_84 : StackLang.HolProg 64 :=
.seq AllocBody98_80 AllocBody98_83

def AllocBody98_85 : StackLang.HolProg 64 :=
.seq AllocBody98_79 AllocBody98_84

def AllocBody98_86 : StackLang.HolProg 64 :=
.seq AllocBody98_78 AllocBody98_85

def AllocBody98_87 : StackLang.HolProg 64 :=
.seq AllocBody98_77 AllocBody98_86

def AllocBody98_88 : StackLang.HolProg 64 :=
.seq AllocBody98_6 AllocBody98_87

def AllocBody98_89 : StackLang.HolProg 64 :=
.seq AllocBody98_5 AllocBody98_88

def AllocBody98_90 : StackLang.HolProg 64 :=
.seq AllocBody98_4 AllocBody98_89

def AllocBody98_91 : StackLang.HolProg 64 :=
.seq AllocBody98_3 AllocBody98_90

def AllocBody98_92 : StackLang.HolProg 64 :=
.seq AllocBody98_2 AllocBody98_91

def AllocBody98_93 : StackLang.HolProg 64 :=
.seq AllocBody98_1 AllocBody98_92

def AllocBody98_94 : StackLang.HolProg 64 :=
.seq AllocBody98_0 AllocBody98_93

def Alloc98 : Nat × StackLang.HolProg 64 := (98, AllocBody98_94)
theorem Alloc98_eq : StackAlloc.progComp (98, raw98) = Alloc98 := by
  kernel_rfl
#print axioms Alloc98_eq
end InitECandidate.Proofs.BackendStages
