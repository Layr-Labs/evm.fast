import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw524
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody524_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody524_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody524_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody524_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody524_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody524_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody524_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 104#64)))

def AllocBody524_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody524_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody524_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody524_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody524_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody524_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody524_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1717#64)

def AllocBody524_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody524_15 : StackLang.HolProg 64 :=
.seq AllocBody524_13 AllocBody524_14

def AllocBody524_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody524_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody524_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody524_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 524 3

def AllocBody524_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody524_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody524_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody524_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody524_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody524_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody524_26 : StackLang.HolProg 64 :=
.seq AllocBody524_24 AllocBody524_25

def AllocBody524_27 : StackLang.HolProg 64 :=
.seq AllocBody524_23 AllocBody524_26

def AllocBody524_28 : StackLang.HolProg 64 :=
.seq AllocBody524_22 AllocBody524_27

def AllocBody524_29 : StackLang.HolProg 64 :=
.seq AllocBody524_21 AllocBody524_28

def AllocBody524_30 : StackLang.HolProg 64 :=
.seq AllocBody524_20 AllocBody524_29

def AllocBody524_31 : StackLang.HolProg 64 :=
.seq AllocBody524_19 AllocBody524_30

def AllocBody524_32 : StackLang.HolProg 64 :=
.seq AllocBody524_18 AllocBody524_31

def AllocBody524_33 : StackLang.HolProg 64 :=
.seq AllocBody524_17 AllocBody524_32

def AllocBody524_34 : StackLang.HolProg 64 :=
.seq AllocBody524_16 AllocBody524_33

def AllocBody524_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody524_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody524_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody524_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody524_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody524_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody524_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody524_42 : StackLang.HolProg 64 :=
.seq AllocBody524_40 AllocBody524_41

def AllocBody524_43 : StackLang.HolProg 64 :=
.seq AllocBody524_39 AllocBody524_42

def AllocBody524_44 : StackLang.HolProg 64 :=
.seq AllocBody524_38 AllocBody524_43

def AllocBody524_45 : StackLang.HolProg 64 :=
.seq AllocBody524_37 AllocBody524_44

def AllocBody524_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody524_47 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody524_48 : StackLang.HolProg 64 :=
.seq AllocBody524_46 AllocBody524_47

def AllocBody524_49 : StackLang.HolProg 64 :=
.call (some (AllocBody524_45, 0, 524, 2)) (Sum.inl 490) (some (AllocBody524_48, 524, 3))

def AllocBody524_50 : StackLang.HolProg 64 :=
.seq AllocBody524_36 AllocBody524_49

def AllocBody524_51 : StackLang.HolProg 64 :=
.seq AllocBody524_35 AllocBody524_50

def AllocBody524_52 : StackLang.HolProg 64 :=
.seq AllocBody524_34 AllocBody524_51

def AllocBody524_53 : StackLang.HolProg 64 :=
.seq AllocBody524_15 AllocBody524_52

def AllocBody524_54 : StackLang.HolProg 64 :=
.seq AllocBody524_12 AllocBody524_53

def AllocBody524_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody524_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody524_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody524_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody524_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody524_60 : StackLang.HolProg 64 :=
.seq AllocBody524_58 AllocBody524_59

def AllocBody524_61 : StackLang.HolProg 64 :=
.seq AllocBody524_57 AllocBody524_60

def AllocBody524_62 : StackLang.HolProg 64 :=
.seq AllocBody524_56 AllocBody524_61

def AllocBody524_63 : StackLang.HolProg 64 :=
.seq AllocBody524_55 AllocBody524_62

def AllocBody524_64 : StackLang.HolProg 64 :=
.seq AllocBody524_54 AllocBody524_63

def AllocBody524_65 : StackLang.HolProg 64 :=
.seq AllocBody524_11 AllocBody524_64

def AllocBody524_66 : StackLang.HolProg 64 :=
.seq AllocBody524_10 AllocBody524_65

def AllocBody524_67 : StackLang.HolProg 64 :=
.seq AllocBody524_9 AllocBody524_66

def AllocBody524_68 : StackLang.HolProg 64 :=
.seq AllocBody524_8 AllocBody524_67

def AllocBody524_69 : StackLang.HolProg 64 :=
.seq AllocBody524_7 AllocBody524_68

def AllocBody524_70 : StackLang.HolProg 64 :=
.seq AllocBody524_6 AllocBody524_69

def AllocBody524_71 : StackLang.HolProg 64 :=
.seq AllocBody524_5 AllocBody524_70

def AllocBody524_72 : StackLang.HolProg 64 :=
.seq AllocBody524_4 AllocBody524_71

def AllocBody524_73 : StackLang.HolProg 64 :=
.seq AllocBody524_3 AllocBody524_72

def AllocBody524_74 : StackLang.HolProg 64 :=
.seq AllocBody524_2 AllocBody524_73

def AllocBody524_75 : StackLang.HolProg 64 :=
.seq AllocBody524_1 AllocBody524_74

def AllocBody524_76 : StackLang.HolProg 64 :=
.seq AllocBody524_0 AllocBody524_75

def Alloc524 : Nat × StackLang.HolProg 64 := (524, AllocBody524_76)
theorem Alloc524_eq : StackAlloc.progComp (524, raw524) = Alloc524 := by
  kernel_rfl
#print axioms Alloc524_eq
end InitECandidate.Proofs.BackendStages
