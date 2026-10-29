import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw600
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody600_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody600_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody600_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody600_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody600_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody600_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody600_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 160#64))

def AllocBody600_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody600_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody600_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody600_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551328#64))

def AllocBody600_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody600_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody600_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody600_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2275#64)

def AllocBody600_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody600_16 : StackLang.HolProg 64 :=
.seq AllocBody600_14 AllocBody600_15

def AllocBody600_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody600_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody600_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody600_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 600 3

def AllocBody600_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody600_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody600_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody600_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody600_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody600_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody600_27 : StackLang.HolProg 64 :=
.seq AllocBody600_25 AllocBody600_26

def AllocBody600_28 : StackLang.HolProg 64 :=
.seq AllocBody600_24 AllocBody600_27

def AllocBody600_29 : StackLang.HolProg 64 :=
.seq AllocBody600_23 AllocBody600_28

def AllocBody600_30 : StackLang.HolProg 64 :=
.seq AllocBody600_22 AllocBody600_29

def AllocBody600_31 : StackLang.HolProg 64 :=
.seq AllocBody600_21 AllocBody600_30

def AllocBody600_32 : StackLang.HolProg 64 :=
.seq AllocBody600_20 AllocBody600_31

def AllocBody600_33 : StackLang.HolProg 64 :=
.seq AllocBody600_19 AllocBody600_32

def AllocBody600_34 : StackLang.HolProg 64 :=
.seq AllocBody600_18 AllocBody600_33

def AllocBody600_35 : StackLang.HolProg 64 :=
.seq AllocBody600_17 AllocBody600_34

def AllocBody600_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody600_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody600_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody600_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody600_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody600_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody600_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody600_43 : StackLang.HolProg 64 :=
.seq AllocBody600_41 AllocBody600_42

def AllocBody600_44 : StackLang.HolProg 64 :=
.seq AllocBody600_40 AllocBody600_43

def AllocBody600_45 : StackLang.HolProg 64 :=
.seq AllocBody600_39 AllocBody600_44

def AllocBody600_46 : StackLang.HolProg 64 :=
.seq AllocBody600_38 AllocBody600_45

def AllocBody600_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody600_48 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody600_49 : StackLang.HolProg 64 :=
.seq AllocBody600_47 AllocBody600_48

def AllocBody600_50 : StackLang.HolProg 64 :=
.call (some (AllocBody600_46, 0, 600, 2)) (Sum.inl 391) (some (AllocBody600_49, 600, 3))

def AllocBody600_51 : StackLang.HolProg 64 :=
.seq AllocBody600_37 AllocBody600_50

def AllocBody600_52 : StackLang.HolProg 64 :=
.seq AllocBody600_36 AllocBody600_51

def AllocBody600_53 : StackLang.HolProg 64 :=
.seq AllocBody600_35 AllocBody600_52

def AllocBody600_54 : StackLang.HolProg 64 :=
.seq AllocBody600_16 AllocBody600_53

def AllocBody600_55 : StackLang.HolProg 64 :=
.seq AllocBody600_13 AllocBody600_54

def AllocBody600_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody600_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody600_58 : StackLang.HolProg 64 :=
.seq AllocBody600_56 AllocBody600_57

def AllocBody600_59 : StackLang.HolProg 64 :=
.seq AllocBody600_55 AllocBody600_58

def AllocBody600_60 : StackLang.HolProg 64 :=
.seq AllocBody600_12 AllocBody600_59

def AllocBody600_61 : StackLang.HolProg 64 :=
.seq AllocBody600_11 AllocBody600_60

def AllocBody600_62 : StackLang.HolProg 64 :=
.seq AllocBody600_10 AllocBody600_61

def AllocBody600_63 : StackLang.HolProg 64 :=
.seq AllocBody600_9 AllocBody600_62

def AllocBody600_64 : StackLang.HolProg 64 :=
.seq AllocBody600_8 AllocBody600_63

def AllocBody600_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody600_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody600_67 : StackLang.HolProg 64 :=
.seq AllocBody600_65 AllocBody600_66

def AllocBody600_68 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody600_64 AllocBody600_67

def AllocBody600_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody600_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody600_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody600_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody600_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody600_74 : StackLang.HolProg 64 :=
.seq AllocBody600_72 AllocBody600_73

def AllocBody600_75 : StackLang.HolProg 64 :=
.seq AllocBody600_71 AllocBody600_74

def AllocBody600_76 : StackLang.HolProg 64 :=
.seq AllocBody600_70 AllocBody600_75

def AllocBody600_77 : StackLang.HolProg 64 :=
.seq AllocBody600_69 AllocBody600_76

def AllocBody600_78 : StackLang.HolProg 64 :=
.seq AllocBody600_68 AllocBody600_77

def AllocBody600_79 : StackLang.HolProg 64 :=
.seq AllocBody600_7 AllocBody600_78

def AllocBody600_80 : StackLang.HolProg 64 :=
.seq AllocBody600_6 AllocBody600_79

def AllocBody600_81 : StackLang.HolProg 64 :=
.seq AllocBody600_5 AllocBody600_80

def AllocBody600_82 : StackLang.HolProg 64 :=
.seq AllocBody600_4 AllocBody600_81

def AllocBody600_83 : StackLang.HolProg 64 :=
.seq AllocBody600_3 AllocBody600_82

def AllocBody600_84 : StackLang.HolProg 64 :=
.seq AllocBody600_2 AllocBody600_83

def AllocBody600_85 : StackLang.HolProg 64 :=
.seq AllocBody600_1 AllocBody600_84

def AllocBody600_86 : StackLang.HolProg 64 :=
.seq AllocBody600_0 AllocBody600_85

def Alloc600 : Nat × StackLang.HolProg 64 := (600, AllocBody600_86)
theorem Alloc600_eq : StackAlloc.progComp (600, raw600) = Alloc600 := by
  kernel_rfl
#print axioms Alloc600_eq
end InitECandidate.Proofs.BackendStages
