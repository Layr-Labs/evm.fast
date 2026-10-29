import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw563
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody563_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody563_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody563_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody563_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody563_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody563_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody563_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 48#64))

def AllocBody563_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody563_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 56#64))

def AllocBody563_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody563_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody563_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody563_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1928#64)

def AllocBody563_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody563_14 : StackLang.HolProg 64 :=
.seq AllocBody563_12 AllocBody563_13

def AllocBody563_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody563_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody563_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody563_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 563 3

def AllocBody563_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody563_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody563_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody563_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody563_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody563_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody563_25 : StackLang.HolProg 64 :=
.seq AllocBody563_23 AllocBody563_24

def AllocBody563_26 : StackLang.HolProg 64 :=
.seq AllocBody563_22 AllocBody563_25

def AllocBody563_27 : StackLang.HolProg 64 :=
.seq AllocBody563_21 AllocBody563_26

def AllocBody563_28 : StackLang.HolProg 64 :=
.seq AllocBody563_20 AllocBody563_27

def AllocBody563_29 : StackLang.HolProg 64 :=
.seq AllocBody563_19 AllocBody563_28

def AllocBody563_30 : StackLang.HolProg 64 :=
.seq AllocBody563_18 AllocBody563_29

def AllocBody563_31 : StackLang.HolProg 64 :=
.seq AllocBody563_17 AllocBody563_30

def AllocBody563_32 : StackLang.HolProg 64 :=
.seq AllocBody563_16 AllocBody563_31

def AllocBody563_33 : StackLang.HolProg 64 :=
.seq AllocBody563_15 AllocBody563_32

def AllocBody563_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody563_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody563_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody563_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody563_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody563_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody563_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody563_41 : StackLang.HolProg 64 :=
.seq AllocBody563_39 AllocBody563_40

def AllocBody563_42 : StackLang.HolProg 64 :=
.seq AllocBody563_38 AllocBody563_41

def AllocBody563_43 : StackLang.HolProg 64 :=
.seq AllocBody563_37 AllocBody563_42

def AllocBody563_44 : StackLang.HolProg 64 :=
.seq AllocBody563_36 AllocBody563_43

def AllocBody563_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody563_46 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody563_47 : StackLang.HolProg 64 :=
.seq AllocBody563_45 AllocBody563_46

def AllocBody563_48 : StackLang.HolProg 64 :=
.call (some (AllocBody563_44, 0, 563, 2)) (Sum.inl 560) (some (AllocBody563_47, 563, 3))

def AllocBody563_49 : StackLang.HolProg 64 :=
.seq AllocBody563_35 AllocBody563_48

def AllocBody563_50 : StackLang.HolProg 64 :=
.seq AllocBody563_34 AllocBody563_49

def AllocBody563_51 : StackLang.HolProg 64 :=
.seq AllocBody563_33 AllocBody563_50

def AllocBody563_52 : StackLang.HolProg 64 :=
.seq AllocBody563_14 AllocBody563_51

def AllocBody563_53 : StackLang.HolProg 64 :=
.seq AllocBody563_11 AllocBody563_52

def AllocBody563_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody563_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody563_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody563_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody563_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody563_59 : StackLang.HolProg 64 :=
.seq AllocBody563_57 AllocBody563_58

def AllocBody563_60 : StackLang.HolProg 64 :=
.seq AllocBody563_56 AllocBody563_59

def AllocBody563_61 : StackLang.HolProg 64 :=
.seq AllocBody563_55 AllocBody563_60

def AllocBody563_62 : StackLang.HolProg 64 :=
.seq AllocBody563_54 AllocBody563_61

def AllocBody563_63 : StackLang.HolProg 64 :=
.seq AllocBody563_53 AllocBody563_62

def AllocBody563_64 : StackLang.HolProg 64 :=
.seq AllocBody563_10 AllocBody563_63

def AllocBody563_65 : StackLang.HolProg 64 :=
.seq AllocBody563_9 AllocBody563_64

def AllocBody563_66 : StackLang.HolProg 64 :=
.seq AllocBody563_8 AllocBody563_65

def AllocBody563_67 : StackLang.HolProg 64 :=
.seq AllocBody563_7 AllocBody563_66

def AllocBody563_68 : StackLang.HolProg 64 :=
.seq AllocBody563_6 AllocBody563_67

def AllocBody563_69 : StackLang.HolProg 64 :=
.seq AllocBody563_5 AllocBody563_68

def AllocBody563_70 : StackLang.HolProg 64 :=
.seq AllocBody563_4 AllocBody563_69

def AllocBody563_71 : StackLang.HolProg 64 :=
.seq AllocBody563_3 AllocBody563_70

def AllocBody563_72 : StackLang.HolProg 64 :=
.seq AllocBody563_2 AllocBody563_71

def AllocBody563_73 : StackLang.HolProg 64 :=
.seq AllocBody563_1 AllocBody563_72

def AllocBody563_74 : StackLang.HolProg 64 :=
.seq AllocBody563_0 AllocBody563_73

def Alloc563 : Nat × StackLang.HolProg 64 := (563, AllocBody563_74)
theorem Alloc563_eq : StackAlloc.progComp (563, raw563) = Alloc563 := by
  kernel_rfl
#print axioms Alloc563_eq
end InitECandidate.Proofs.BackendStages
