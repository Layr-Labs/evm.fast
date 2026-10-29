import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw875
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody875_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody875_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody875_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody875_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4601#64)

def AllocBody875_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody875_5 : StackLang.HolProg 64 :=
.seq AllocBody875_3 AllocBody875_4

def AllocBody875_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody875_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody875_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody875_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 875 3

def AllocBody875_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody875_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody875_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody875_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody875_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody875_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody875_16 : StackLang.HolProg 64 :=
.seq AllocBody875_14 AllocBody875_15

def AllocBody875_17 : StackLang.HolProg 64 :=
.seq AllocBody875_13 AllocBody875_16

def AllocBody875_18 : StackLang.HolProg 64 :=
.seq AllocBody875_12 AllocBody875_17

def AllocBody875_19 : StackLang.HolProg 64 :=
.seq AllocBody875_11 AllocBody875_18

def AllocBody875_20 : StackLang.HolProg 64 :=
.seq AllocBody875_10 AllocBody875_19

def AllocBody875_21 : StackLang.HolProg 64 :=
.seq AllocBody875_9 AllocBody875_20

def AllocBody875_22 : StackLang.HolProg 64 :=
.seq AllocBody875_8 AllocBody875_21

def AllocBody875_23 : StackLang.HolProg 64 :=
.seq AllocBody875_7 AllocBody875_22

def AllocBody875_24 : StackLang.HolProg 64 :=
.seq AllocBody875_6 AllocBody875_23

def AllocBody875_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody875_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody875_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody875_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody875_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody875_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody875_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody875_32 : StackLang.HolProg 64 :=
.seq AllocBody875_30 AllocBody875_31

def AllocBody875_33 : StackLang.HolProg 64 :=
.seq AllocBody875_29 AllocBody875_32

def AllocBody875_34 : StackLang.HolProg 64 :=
.seq AllocBody875_28 AllocBody875_33

def AllocBody875_35 : StackLang.HolProg 64 :=
.seq AllocBody875_27 AllocBody875_34

def AllocBody875_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody875_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody875_38 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody875_39 : StackLang.HolProg 64 :=
.seq AllocBody875_37 AllocBody875_38

def AllocBody875_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody875_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5)

def AllocBody875_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody875_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2688614470#64)

def AllocBody875_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 0
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64)

def AllocBody875_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 6#64)

def AllocBody875_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody875_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody875_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 9#64)

def AllocBody875_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody875_50 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody875_51 : StackLang.HolProg 64 :=
.seq AllocBody875_49 AllocBody875_50

def AllocBody875_52 : StackLang.HolProg 64 :=
.seq AllocBody875_48 AllocBody875_51

def AllocBody875_53 : StackLang.HolProg 64 :=
.seq AllocBody875_47 AllocBody875_52

def AllocBody875_54 : StackLang.HolProg 64 :=
.seq AllocBody875_46 AllocBody875_53

def AllocBody875_55 : StackLang.HolProg 64 :=
.seq AllocBody875_45 AllocBody875_54

def AllocBody875_56 : StackLang.HolProg 64 :=
.seq AllocBody875_44 AllocBody875_55

def AllocBody875_57 : StackLang.HolProg 64 :=
.seq AllocBody875_43 AllocBody875_56

def AllocBody875_58 : StackLang.HolProg 64 :=
.seq AllocBody875_42 AllocBody875_57

def AllocBody875_59 : StackLang.HolProg 64 :=
.seq AllocBody875_41 AllocBody875_58

def AllocBody875_60 : StackLang.HolProg 64 :=
.seq AllocBody875_40 AllocBody875_59

def AllocBody875_61 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64) AllocBody875_39 AllocBody875_60

def AllocBody875_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody875_63 : StackLang.HolProg 64 :=
.seq AllocBody875_61 AllocBody875_62

def AllocBody875_64 : StackLang.HolProg 64 :=
.seq AllocBody875_36 AllocBody875_63

def AllocBody875_65 : StackLang.HolProg 64 :=
.call (some (AllocBody875_35, 0, 875, 2)) (Sum.inl 874) (some (AllocBody875_64, 875, 3))

def AllocBody875_66 : StackLang.HolProg 64 :=
.seq AllocBody875_26 AllocBody875_65

def AllocBody875_67 : StackLang.HolProg 64 :=
.seq AllocBody875_25 AllocBody875_66

def AllocBody875_68 : StackLang.HolProg 64 :=
.seq AllocBody875_24 AllocBody875_67

def AllocBody875_69 : StackLang.HolProg 64 :=
.seq AllocBody875_5 AllocBody875_68

def AllocBody875_70 : StackLang.HolProg 64 :=
.seq AllocBody875_2 AllocBody875_69

def AllocBody875_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody875_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody875_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody875_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody875_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody875_76 : StackLang.HolProg 64 :=
.seq AllocBody875_74 AllocBody875_75

def AllocBody875_77 : StackLang.HolProg 64 :=
.seq AllocBody875_73 AllocBody875_76

def AllocBody875_78 : StackLang.HolProg 64 :=
.seq AllocBody875_72 AllocBody875_77

def AllocBody875_79 : StackLang.HolProg 64 :=
.seq AllocBody875_71 AllocBody875_78

def AllocBody875_80 : StackLang.HolProg 64 :=
.seq AllocBody875_70 AllocBody875_79

def AllocBody875_81 : StackLang.HolProg 64 :=
.seq AllocBody875_1 AllocBody875_80

def AllocBody875_82 : StackLang.HolProg 64 :=
.seq AllocBody875_0 AllocBody875_81

def Alloc875 : Nat × StackLang.HolProg 64 := (875, AllocBody875_82)
theorem Alloc875_eq : StackAlloc.progComp (875, raw875) = Alloc875 := by
  kernel_rfl
#print axioms Alloc875_eq
end InitECandidate.Proofs.BackendStages
