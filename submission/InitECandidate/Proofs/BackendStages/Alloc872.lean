import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw872
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody872_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody872_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody872_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody872_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4598#64)

def AllocBody872_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody872_5 : StackLang.HolProg 64 :=
.seq AllocBody872_3 AllocBody872_4

def AllocBody872_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody872_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody872_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody872_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 872 3

def AllocBody872_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody872_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody872_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody872_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody872_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody872_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody872_16 : StackLang.HolProg 64 :=
.seq AllocBody872_14 AllocBody872_15

def AllocBody872_17 : StackLang.HolProg 64 :=
.seq AllocBody872_13 AllocBody872_16

def AllocBody872_18 : StackLang.HolProg 64 :=
.seq AllocBody872_12 AllocBody872_17

def AllocBody872_19 : StackLang.HolProg 64 :=
.seq AllocBody872_11 AllocBody872_18

def AllocBody872_20 : StackLang.HolProg 64 :=
.seq AllocBody872_10 AllocBody872_19

def AllocBody872_21 : StackLang.HolProg 64 :=
.seq AllocBody872_9 AllocBody872_20

def AllocBody872_22 : StackLang.HolProg 64 :=
.seq AllocBody872_8 AllocBody872_21

def AllocBody872_23 : StackLang.HolProg 64 :=
.seq AllocBody872_7 AllocBody872_22

def AllocBody872_24 : StackLang.HolProg 64 :=
.seq AllocBody872_6 AllocBody872_23

def AllocBody872_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody872_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody872_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody872_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody872_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody872_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody872_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody872_32 : StackLang.HolProg 64 :=
.seq AllocBody872_30 AllocBody872_31

def AllocBody872_33 : StackLang.HolProg 64 :=
.seq AllocBody872_29 AllocBody872_32

def AllocBody872_34 : StackLang.HolProg 64 :=
.seq AllocBody872_28 AllocBody872_33

def AllocBody872_35 : StackLang.HolProg 64 :=
.seq AllocBody872_27 AllocBody872_34

def AllocBody872_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody872_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody872_38 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody872_39 : StackLang.HolProg 64 :=
.seq AllocBody872_37 AllocBody872_38

def AllocBody872_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody872_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5)

def AllocBody872_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody872_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2688614470#64)

def AllocBody872_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 0
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64)

def AllocBody872_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 3#64)

def AllocBody872_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody872_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody872_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 9#64)

def AllocBody872_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody872_50 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody872_51 : StackLang.HolProg 64 :=
.seq AllocBody872_49 AllocBody872_50

def AllocBody872_52 : StackLang.HolProg 64 :=
.seq AllocBody872_48 AllocBody872_51

def AllocBody872_53 : StackLang.HolProg 64 :=
.seq AllocBody872_47 AllocBody872_52

def AllocBody872_54 : StackLang.HolProg 64 :=
.seq AllocBody872_46 AllocBody872_53

def AllocBody872_55 : StackLang.HolProg 64 :=
.seq AllocBody872_45 AllocBody872_54

def AllocBody872_56 : StackLang.HolProg 64 :=
.seq AllocBody872_44 AllocBody872_55

def AllocBody872_57 : StackLang.HolProg 64 :=
.seq AllocBody872_43 AllocBody872_56

def AllocBody872_58 : StackLang.HolProg 64 :=
.seq AllocBody872_42 AllocBody872_57

def AllocBody872_59 : StackLang.HolProg 64 :=
.seq AllocBody872_41 AllocBody872_58

def AllocBody872_60 : StackLang.HolProg 64 :=
.seq AllocBody872_40 AllocBody872_59

def AllocBody872_61 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64) AllocBody872_39 AllocBody872_60

def AllocBody872_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody872_63 : StackLang.HolProg 64 :=
.seq AllocBody872_61 AllocBody872_62

def AllocBody872_64 : StackLang.HolProg 64 :=
.seq AllocBody872_36 AllocBody872_63

def AllocBody872_65 : StackLang.HolProg 64 :=
.call (some (AllocBody872_35, 0, 872, 2)) (Sum.inl 871) (some (AllocBody872_64, 872, 3))

def AllocBody872_66 : StackLang.HolProg 64 :=
.seq AllocBody872_26 AllocBody872_65

def AllocBody872_67 : StackLang.HolProg 64 :=
.seq AllocBody872_25 AllocBody872_66

def AllocBody872_68 : StackLang.HolProg 64 :=
.seq AllocBody872_24 AllocBody872_67

def AllocBody872_69 : StackLang.HolProg 64 :=
.seq AllocBody872_5 AllocBody872_68

def AllocBody872_70 : StackLang.HolProg 64 :=
.seq AllocBody872_2 AllocBody872_69

def AllocBody872_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody872_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody872_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody872_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody872_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody872_76 : StackLang.HolProg 64 :=
.seq AllocBody872_74 AllocBody872_75

def AllocBody872_77 : StackLang.HolProg 64 :=
.seq AllocBody872_73 AllocBody872_76

def AllocBody872_78 : StackLang.HolProg 64 :=
.seq AllocBody872_72 AllocBody872_77

def AllocBody872_79 : StackLang.HolProg 64 :=
.seq AllocBody872_71 AllocBody872_78

def AllocBody872_80 : StackLang.HolProg 64 :=
.seq AllocBody872_70 AllocBody872_79

def AllocBody872_81 : StackLang.HolProg 64 :=
.seq AllocBody872_1 AllocBody872_80

def AllocBody872_82 : StackLang.HolProg 64 :=
.seq AllocBody872_0 AllocBody872_81

def Alloc872 : Nat × StackLang.HolProg 64 := (872, AllocBody872_82)
theorem Alloc872_eq : StackAlloc.progComp (872, raw872) = Alloc872 := by
  kernel_rfl
#print axioms Alloc872_eq
end InitECandidate.Proofs.BackendStages
