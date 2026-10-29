import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw870
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody870_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody870_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody870_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody870_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4596#64)

def AllocBody870_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody870_5 : StackLang.HolProg 64 :=
.seq AllocBody870_3 AllocBody870_4

def AllocBody870_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody870_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody870_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody870_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 870 3

def AllocBody870_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody870_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody870_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody870_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody870_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody870_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody870_16 : StackLang.HolProg 64 :=
.seq AllocBody870_14 AllocBody870_15

def AllocBody870_17 : StackLang.HolProg 64 :=
.seq AllocBody870_13 AllocBody870_16

def AllocBody870_18 : StackLang.HolProg 64 :=
.seq AllocBody870_12 AllocBody870_17

def AllocBody870_19 : StackLang.HolProg 64 :=
.seq AllocBody870_11 AllocBody870_18

def AllocBody870_20 : StackLang.HolProg 64 :=
.seq AllocBody870_10 AllocBody870_19

def AllocBody870_21 : StackLang.HolProg 64 :=
.seq AllocBody870_9 AllocBody870_20

def AllocBody870_22 : StackLang.HolProg 64 :=
.seq AllocBody870_8 AllocBody870_21

def AllocBody870_23 : StackLang.HolProg 64 :=
.seq AllocBody870_7 AllocBody870_22

def AllocBody870_24 : StackLang.HolProg 64 :=
.seq AllocBody870_6 AllocBody870_23

def AllocBody870_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody870_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody870_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody870_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody870_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody870_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody870_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody870_32 : StackLang.HolProg 64 :=
.seq AllocBody870_30 AllocBody870_31

def AllocBody870_33 : StackLang.HolProg 64 :=
.seq AllocBody870_29 AllocBody870_32

def AllocBody870_34 : StackLang.HolProg 64 :=
.seq AllocBody870_28 AllocBody870_33

def AllocBody870_35 : StackLang.HolProg 64 :=
.seq AllocBody870_27 AllocBody870_34

def AllocBody870_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody870_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody870_38 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody870_39 : StackLang.HolProg 64 :=
.seq AllocBody870_37 AllocBody870_38

def AllocBody870_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody870_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5)

def AllocBody870_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody870_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2688614470#64)

def AllocBody870_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 0
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64)

def AllocBody870_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def AllocBody870_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody870_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody870_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 9#64)

def AllocBody870_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody870_50 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody870_51 : StackLang.HolProg 64 :=
.seq AllocBody870_49 AllocBody870_50

def AllocBody870_52 : StackLang.HolProg 64 :=
.seq AllocBody870_48 AllocBody870_51

def AllocBody870_53 : StackLang.HolProg 64 :=
.seq AllocBody870_47 AllocBody870_52

def AllocBody870_54 : StackLang.HolProg 64 :=
.seq AllocBody870_46 AllocBody870_53

def AllocBody870_55 : StackLang.HolProg 64 :=
.seq AllocBody870_45 AllocBody870_54

def AllocBody870_56 : StackLang.HolProg 64 :=
.seq AllocBody870_44 AllocBody870_55

def AllocBody870_57 : StackLang.HolProg 64 :=
.seq AllocBody870_43 AllocBody870_56

def AllocBody870_58 : StackLang.HolProg 64 :=
.seq AllocBody870_42 AllocBody870_57

def AllocBody870_59 : StackLang.HolProg 64 :=
.seq AllocBody870_41 AllocBody870_58

def AllocBody870_60 : StackLang.HolProg 64 :=
.seq AllocBody870_40 AllocBody870_59

def AllocBody870_61 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64) AllocBody870_39 AllocBody870_60

def AllocBody870_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody870_63 : StackLang.HolProg 64 :=
.seq AllocBody870_61 AllocBody870_62

def AllocBody870_64 : StackLang.HolProg 64 :=
.seq AllocBody870_36 AllocBody870_63

def AllocBody870_65 : StackLang.HolProg 64 :=
.call (some (AllocBody870_35, 0, 870, 2)) (Sum.inl 869) (some (AllocBody870_64, 870, 3))

def AllocBody870_66 : StackLang.HolProg 64 :=
.seq AllocBody870_26 AllocBody870_65

def AllocBody870_67 : StackLang.HolProg 64 :=
.seq AllocBody870_25 AllocBody870_66

def AllocBody870_68 : StackLang.HolProg 64 :=
.seq AllocBody870_24 AllocBody870_67

def AllocBody870_69 : StackLang.HolProg 64 :=
.seq AllocBody870_5 AllocBody870_68

def AllocBody870_70 : StackLang.HolProg 64 :=
.seq AllocBody870_2 AllocBody870_69

def AllocBody870_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody870_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody870_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody870_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody870_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody870_76 : StackLang.HolProg 64 :=
.seq AllocBody870_74 AllocBody870_75

def AllocBody870_77 : StackLang.HolProg 64 :=
.seq AllocBody870_73 AllocBody870_76

def AllocBody870_78 : StackLang.HolProg 64 :=
.seq AllocBody870_72 AllocBody870_77

def AllocBody870_79 : StackLang.HolProg 64 :=
.seq AllocBody870_71 AllocBody870_78

def AllocBody870_80 : StackLang.HolProg 64 :=
.seq AllocBody870_70 AllocBody870_79

def AllocBody870_81 : StackLang.HolProg 64 :=
.seq AllocBody870_1 AllocBody870_80

def AllocBody870_82 : StackLang.HolProg 64 :=
.seq AllocBody870_0 AllocBody870_81

def Alloc870 : Nat × StackLang.HolProg 64 := (870, AllocBody870_82)
theorem Alloc870_eq : StackAlloc.progComp (870, raw870) = Alloc870 := by
  kernel_rfl
#print axioms Alloc870_eq
end InitECandidate.Proofs.BackendStages
