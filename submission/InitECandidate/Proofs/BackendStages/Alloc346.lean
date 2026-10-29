import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw346
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody346_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody346_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody346_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody346_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1026#64)

def AllocBody346_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody346_5 : StackLang.HolProg 64 :=
.seq AllocBody346_3 AllocBody346_4

def AllocBody346_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody346_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody346_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody346_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 346 3

def AllocBody346_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody346_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody346_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody346_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody346_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody346_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody346_16 : StackLang.HolProg 64 :=
.seq AllocBody346_14 AllocBody346_15

def AllocBody346_17 : StackLang.HolProg 64 :=
.seq AllocBody346_13 AllocBody346_16

def AllocBody346_18 : StackLang.HolProg 64 :=
.seq AllocBody346_12 AllocBody346_17

def AllocBody346_19 : StackLang.HolProg 64 :=
.seq AllocBody346_11 AllocBody346_18

def AllocBody346_20 : StackLang.HolProg 64 :=
.seq AllocBody346_10 AllocBody346_19

def AllocBody346_21 : StackLang.HolProg 64 :=
.seq AllocBody346_9 AllocBody346_20

def AllocBody346_22 : StackLang.HolProg 64 :=
.seq AllocBody346_8 AllocBody346_21

def AllocBody346_23 : StackLang.HolProg 64 :=
.seq AllocBody346_7 AllocBody346_22

def AllocBody346_24 : StackLang.HolProg 64 :=
.seq AllocBody346_6 AllocBody346_23

def AllocBody346_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody346_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody346_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody346_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody346_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody346_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody346_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody346_32 : StackLang.HolProg 64 :=
.seq AllocBody346_30 AllocBody346_31

def AllocBody346_33 : StackLang.HolProg 64 :=
.seq AllocBody346_29 AllocBody346_32

def AllocBody346_34 : StackLang.HolProg 64 :=
.seq AllocBody346_28 AllocBody346_33

def AllocBody346_35 : StackLang.HolProg 64 :=
.seq AllocBody346_27 AllocBody346_34

def AllocBody346_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody346_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody346_38 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody346_39 : StackLang.HolProg 64 :=
.seq AllocBody346_37 AllocBody346_38

def AllocBody346_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody346_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5)

def AllocBody346_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody346_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 100#64)))

def AllocBody346_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody346_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody346_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def AllocBody346_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody346_48 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody346_49 : StackLang.HolProg 64 :=
.seq AllocBody346_47 AllocBody346_48

def AllocBody346_50 : StackLang.HolProg 64 :=
.seq AllocBody346_46 AllocBody346_49

def AllocBody346_51 : StackLang.HolProg 64 :=
.seq AllocBody346_45 AllocBody346_50

def AllocBody346_52 : StackLang.HolProg 64 :=
.seq AllocBody346_44 AllocBody346_51

def AllocBody346_53 : StackLang.HolProg 64 :=
.seq AllocBody346_43 AllocBody346_52

def AllocBody346_54 : StackLang.HolProg 64 :=
.seq AllocBody346_42 AllocBody346_53

def AllocBody346_55 : StackLang.HolProg 64 :=
.seq AllocBody346_41 AllocBody346_54

def AllocBody346_56 : StackLang.HolProg 64 :=
.seq AllocBody346_40 AllocBody346_55

def AllocBody346_57 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64) AllocBody346_39 AllocBody346_56

def AllocBody346_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody346_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody346_60 : StackLang.HolProg 64 :=
.seq AllocBody346_58 AllocBody346_59

def AllocBody346_61 : StackLang.HolProg 64 :=
.seq AllocBody346_57 AllocBody346_60

def AllocBody346_62 : StackLang.HolProg 64 :=
.seq AllocBody346_36 AllocBody346_61

def AllocBody346_63 : StackLang.HolProg 64 :=
.call (some (AllocBody346_35, 0, 346, 2)) (Sum.inl 345) (some (AllocBody346_62, 346, 3))

def AllocBody346_64 : StackLang.HolProg 64 :=
.seq AllocBody346_26 AllocBody346_63

def AllocBody346_65 : StackLang.HolProg 64 :=
.seq AllocBody346_25 AllocBody346_64

def AllocBody346_66 : StackLang.HolProg 64 :=
.seq AllocBody346_24 AllocBody346_65

def AllocBody346_67 : StackLang.HolProg 64 :=
.seq AllocBody346_5 AllocBody346_66

def AllocBody346_68 : StackLang.HolProg 64 :=
.seq AllocBody346_2 AllocBody346_67

def AllocBody346_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody346_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody346_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody346_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody346_73 : StackLang.HolProg 64 :=
.seq AllocBody346_71 AllocBody346_72

def AllocBody346_74 : StackLang.HolProg 64 :=
.seq AllocBody346_70 AllocBody346_73

def AllocBody346_75 : StackLang.HolProg 64 :=
.seq AllocBody346_69 AllocBody346_74

def AllocBody346_76 : StackLang.HolProg 64 :=
.seq AllocBody346_68 AllocBody346_75

def AllocBody346_77 : StackLang.HolProg 64 :=
.seq AllocBody346_1 AllocBody346_76

def AllocBody346_78 : StackLang.HolProg 64 :=
.seq AllocBody346_0 AllocBody346_77

def Alloc346 : Nat × StackLang.HolProg 64 := (346, AllocBody346_78)
theorem Alloc346_eq : StackAlloc.progComp (346, raw346) = Alloc346 := by
  kernel_rfl
#print axioms Alloc346_eq
end InitECandidate.Proofs.BackendStages
