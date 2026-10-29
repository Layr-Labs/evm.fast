import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw308
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody308_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody308_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody308_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 16#64)

def AllocBody308_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody308_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody308_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody308_6 : StackLang.HolProg 64 :=
.seq AllocBody308_4 AllocBody308_5

def AllocBody308_7 : StackLang.HolProg 64 :=
.seq AllocBody308_3 AllocBody308_6

def AllocBody308_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody308_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 849#64)

def AllocBody308_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody308_11 : StackLang.HolProg 64 :=
.seq AllocBody308_9 AllocBody308_10

def AllocBody308_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody308_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody308_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody308_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 308 3

def AllocBody308_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody308_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody308_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody308_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody308_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody308_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody308_22 : StackLang.HolProg 64 :=
.seq AllocBody308_20 AllocBody308_21

def AllocBody308_23 : StackLang.HolProg 64 :=
.seq AllocBody308_19 AllocBody308_22

def AllocBody308_24 : StackLang.HolProg 64 :=
.seq AllocBody308_18 AllocBody308_23

def AllocBody308_25 : StackLang.HolProg 64 :=
.seq AllocBody308_17 AllocBody308_24

def AllocBody308_26 : StackLang.HolProg 64 :=
.seq AllocBody308_16 AllocBody308_25

def AllocBody308_27 : StackLang.HolProg 64 :=
.seq AllocBody308_15 AllocBody308_26

def AllocBody308_28 : StackLang.HolProg 64 :=
.seq AllocBody308_14 AllocBody308_27

def AllocBody308_29 : StackLang.HolProg 64 :=
.seq AllocBody308_13 AllocBody308_28

def AllocBody308_30 : StackLang.HolProg 64 :=
.seq AllocBody308_12 AllocBody308_29

def AllocBody308_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody308_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody308_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody308_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody308_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody308_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody308_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody308_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody308_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody308_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody308_41 : StackLang.HolProg 64 :=
.seq AllocBody308_39 AllocBody308_40

def AllocBody308_42 : StackLang.HolProg 64 :=
.seq AllocBody308_38 AllocBody308_41

def AllocBody308_43 : StackLang.HolProg 64 :=
.seq AllocBody308_37 AllocBody308_42

def AllocBody308_44 : StackLang.HolProg 64 :=
.seq AllocBody308_36 AllocBody308_43

def AllocBody308_45 : StackLang.HolProg 64 :=
.seq AllocBody308_35 AllocBody308_44

def AllocBody308_46 : StackLang.HolProg 64 :=
.seq AllocBody308_34 AllocBody308_45

def AllocBody308_47 : StackLang.HolProg 64 :=
.seq AllocBody308_33 AllocBody308_46

def AllocBody308_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody308_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody308_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody308_51 : StackLang.HolProg 64 :=
.seq AllocBody308_49 AllocBody308_50

def AllocBody308_52 : StackLang.HolProg 64 :=
.seq AllocBody308_48 AllocBody308_51

def AllocBody308_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody308_54 : StackLang.HolProg 64 :=
.seq AllocBody308_52 AllocBody308_53

def AllocBody308_55 : StackLang.HolProg 64 :=
.call (some (AllocBody308_47, 0, 308, 2)) (Sum.inl 68) (some (AllocBody308_54, 308, 3))

def AllocBody308_56 : StackLang.HolProg 64 :=
.seq AllocBody308_32 AllocBody308_55

def AllocBody308_57 : StackLang.HolProg 64 :=
.seq AllocBody308_31 AllocBody308_56

def AllocBody308_58 : StackLang.HolProg 64 :=
.seq AllocBody308_30 AllocBody308_57

def AllocBody308_59 : StackLang.HolProg 64 :=
.seq AllocBody308_11 AllocBody308_58

def AllocBody308_60 : StackLang.HolProg 64 :=
.seq AllocBody308_8 AllocBody308_59

def AllocBody308_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody308_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody308_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody308_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody308_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody308_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody308_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody308_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody308_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody308_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody308_71 : StackLang.HolProg 64 :=
.seq AllocBody308_69 AllocBody308_70

def AllocBody308_72 : StackLang.HolProg 64 :=
.seq AllocBody308_68 AllocBody308_71

def AllocBody308_73 : StackLang.HolProg 64 :=
.seq AllocBody308_67 AllocBody308_72

def AllocBody308_74 : StackLang.HolProg 64 :=
.seq AllocBody308_66 AllocBody308_73

def AllocBody308_75 : StackLang.HolProg 64 :=
.seq AllocBody308_65 AllocBody308_74

def AllocBody308_76 : StackLang.HolProg 64 :=
.seq AllocBody308_64 AllocBody308_75

def AllocBody308_77 : StackLang.HolProg 64 :=
.seq AllocBody308_63 AllocBody308_76

def AllocBody308_78 : StackLang.HolProg 64 :=
.seq AllocBody308_62 AllocBody308_77

def AllocBody308_79 : StackLang.HolProg 64 :=
.seq AllocBody308_61 AllocBody308_78

def AllocBody308_80 : StackLang.HolProg 64 :=
.seq AllocBody308_60 AllocBody308_79

def AllocBody308_81 : StackLang.HolProg 64 :=
.seq AllocBody308_7 AllocBody308_80

def AllocBody308_82 : StackLang.HolProg 64 :=
.seq AllocBody308_2 AllocBody308_81

def AllocBody308_83 : StackLang.HolProg 64 :=
.seq AllocBody308_1 AllocBody308_82

def AllocBody308_84 : StackLang.HolProg 64 :=
.seq AllocBody308_0 AllocBody308_83

def Alloc308 : Nat × StackLang.HolProg 64 := (308, AllocBody308_84)
theorem Alloc308_eq : StackAlloc.progComp (308, raw308) = Alloc308 := by
  kernel_rfl
#print axioms Alloc308_eq
end InitECandidate.Proofs.BackendStages
