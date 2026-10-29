import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw369
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody369_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody369_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody369_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody369_3 : StackLang.HolProg 64 :=
.seq AllocBody369_1 AllocBody369_2

def AllocBody369_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 384#64))

def AllocBody369_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody369_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 392#64))

def AllocBody369_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody369_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody369_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1084#64)

def AllocBody369_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody369_11 : StackLang.HolProg 64 :=
.seq AllocBody369_9 AllocBody369_10

def AllocBody369_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody369_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody369_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody369_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 369 3

def AllocBody369_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody369_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody369_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody369_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody369_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody369_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody369_22 : StackLang.HolProg 64 :=
.seq AllocBody369_20 AllocBody369_21

def AllocBody369_23 : StackLang.HolProg 64 :=
.seq AllocBody369_19 AllocBody369_22

def AllocBody369_24 : StackLang.HolProg 64 :=
.seq AllocBody369_18 AllocBody369_23

def AllocBody369_25 : StackLang.HolProg 64 :=
.seq AllocBody369_17 AllocBody369_24

def AllocBody369_26 : StackLang.HolProg 64 :=
.seq AllocBody369_16 AllocBody369_25

def AllocBody369_27 : StackLang.HolProg 64 :=
.seq AllocBody369_15 AllocBody369_26

def AllocBody369_28 : StackLang.HolProg 64 :=
.seq AllocBody369_14 AllocBody369_27

def AllocBody369_29 : StackLang.HolProg 64 :=
.seq AllocBody369_13 AllocBody369_28

def AllocBody369_30 : StackLang.HolProg 64 :=
.seq AllocBody369_12 AllocBody369_29

def AllocBody369_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody369_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody369_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody369_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody369_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody369_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody369_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody369_38 : StackLang.HolProg 64 :=
.seq AllocBody369_36 AllocBody369_37

def AllocBody369_39 : StackLang.HolProg 64 :=
.seq AllocBody369_35 AllocBody369_38

def AllocBody369_40 : StackLang.HolProg 64 :=
.seq AllocBody369_34 AllocBody369_39

def AllocBody369_41 : StackLang.HolProg 64 :=
.seq AllocBody369_33 AllocBody369_40

def AllocBody369_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody369_43 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody369_44 : StackLang.HolProg 64 :=
.seq AllocBody369_42 AllocBody369_43

def AllocBody369_45 : StackLang.HolProg 64 :=
.call (some (AllocBody369_41, 0, 369, 2)) (Sum.inl 158) (some (AllocBody369_44, 369, 3))

def AllocBody369_46 : StackLang.HolProg 64 :=
.seq AllocBody369_32 AllocBody369_45

def AllocBody369_47 : StackLang.HolProg 64 :=
.seq AllocBody369_31 AllocBody369_46

def AllocBody369_48 : StackLang.HolProg 64 :=
.seq AllocBody369_30 AllocBody369_47

def AllocBody369_49 : StackLang.HolProg 64 :=
.seq AllocBody369_11 AllocBody369_48

def AllocBody369_50 : StackLang.HolProg 64 :=
.seq AllocBody369_8 AllocBody369_49

def AllocBody369_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody369_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody369_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody369_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody369_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody369_56 : StackLang.HolProg 64 :=
.seq AllocBody369_54 AllocBody369_55

def AllocBody369_57 : StackLang.HolProg 64 :=
.seq AllocBody369_53 AllocBody369_56

def AllocBody369_58 : StackLang.HolProg 64 :=
.seq AllocBody369_52 AllocBody369_57

def AllocBody369_59 : StackLang.HolProg 64 :=
.seq AllocBody369_51 AllocBody369_58

def AllocBody369_60 : StackLang.HolProg 64 :=
.seq AllocBody369_50 AllocBody369_59

def AllocBody369_61 : StackLang.HolProg 64 :=
.seq AllocBody369_7 AllocBody369_60

def AllocBody369_62 : StackLang.HolProg 64 :=
.seq AllocBody369_6 AllocBody369_61

def AllocBody369_63 : StackLang.HolProg 64 :=
.seq AllocBody369_5 AllocBody369_62

def AllocBody369_64 : StackLang.HolProg 64 :=
.seq AllocBody369_4 AllocBody369_63

def AllocBody369_65 : StackLang.HolProg 64 :=
.seq AllocBody369_3 AllocBody369_64

def AllocBody369_66 : StackLang.HolProg 64 :=
.seq AllocBody369_0 AllocBody369_65

def Alloc369 : Nat × StackLang.HolProg 64 := (369, AllocBody369_66)
theorem Alloc369_eq : StackAlloc.progComp (369, raw369) = Alloc369 := by
  kernel_rfl
#print axioms Alloc369_eq
end InitECandidate.Proofs.BackendStages
