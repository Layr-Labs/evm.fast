import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw221
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody221_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody221_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody221_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody221_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody221_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody221_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody221_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody221_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody221_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody221_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody221_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody221_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody221_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody221_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody221_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def AllocBody221_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody221_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 16#64))

def AllocBody221_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody221_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def AllocBody221_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody221_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def AllocBody221_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def AllocBody221_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody221_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody221_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody221_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody221_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody221_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody221_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody221_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody221_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody221_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody221_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody221_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody221_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody221_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody221_36 : StackLang.HolProg 64 :=
.seq AllocBody221_34 AllocBody221_35

def AllocBody221_37 : StackLang.HolProg 64 :=
.seq AllocBody221_33 AllocBody221_36

def AllocBody221_38 : StackLang.HolProg 64 :=
.seq AllocBody221_32 AllocBody221_37

def AllocBody221_39 : StackLang.HolProg 64 :=
.seq AllocBody221_31 AllocBody221_38

def AllocBody221_40 : StackLang.HolProg 64 :=
.seq AllocBody221_30 AllocBody221_39

def AllocBody221_41 : StackLang.HolProg 64 :=
.seq AllocBody221_29 AllocBody221_40

def AllocBody221_42 : StackLang.HolProg 64 :=
.seq AllocBody221_28 AllocBody221_41

def AllocBody221_43 : StackLang.HolProg 64 :=
.seq AllocBody221_27 AllocBody221_42

def AllocBody221_44 : StackLang.HolProg 64 :=
.seq AllocBody221_26 AllocBody221_43

def AllocBody221_45 : StackLang.HolProg 64 :=
.seq AllocBody221_25 AllocBody221_44

def AllocBody221_46 : StackLang.HolProg 64 :=
.seq AllocBody221_24 AllocBody221_45

def AllocBody221_47 : StackLang.HolProg 64 :=
.seq AllocBody221_23 AllocBody221_46

def AllocBody221_48 : StackLang.HolProg 64 :=
.seq AllocBody221_22 AllocBody221_47

def AllocBody221_49 : StackLang.HolProg 64 :=
.seq AllocBody221_21 AllocBody221_48

def AllocBody221_50 : StackLang.HolProg 64 :=
.seq AllocBody221_20 AllocBody221_49

def AllocBody221_51 : StackLang.HolProg 64 :=
.seq AllocBody221_19 AllocBody221_50

def AllocBody221_52 : StackLang.HolProg 64 :=
.seq AllocBody221_18 AllocBody221_51

def AllocBody221_53 : StackLang.HolProg 64 :=
.seq AllocBody221_17 AllocBody221_52

def AllocBody221_54 : StackLang.HolProg 64 :=
.seq AllocBody221_16 AllocBody221_53

def AllocBody221_55 : StackLang.HolProg 64 :=
.seq AllocBody221_15 AllocBody221_54

def AllocBody221_56 : StackLang.HolProg 64 :=
.seq AllocBody221_14 AllocBody221_55

def AllocBody221_57 : StackLang.HolProg 64 :=
.seq AllocBody221_13 AllocBody221_56

def AllocBody221_58 : StackLang.HolProg 64 :=
.seq AllocBody221_12 AllocBody221_57

def AllocBody221_59 : StackLang.HolProg 64 :=
.seq AllocBody221_11 AllocBody221_58

def AllocBody221_60 : StackLang.HolProg 64 :=
.seq AllocBody221_10 AllocBody221_59

def AllocBody221_61 : StackLang.HolProg 64 :=
.seq AllocBody221_9 AllocBody221_60

def AllocBody221_62 : StackLang.HolProg 64 :=
.seq AllocBody221_8 AllocBody221_61

def AllocBody221_63 : StackLang.HolProg 64 :=
.seq AllocBody221_7 AllocBody221_62

def AllocBody221_64 : StackLang.HolProg 64 :=
.seq AllocBody221_6 AllocBody221_63

def AllocBody221_65 : StackLang.HolProg 64 :=
.seq AllocBody221_5 AllocBody221_64

def AllocBody221_66 : StackLang.HolProg 64 :=
.seq AllocBody221_4 AllocBody221_65

def AllocBody221_67 : StackLang.HolProg 64 :=
.seq AllocBody221_3 AllocBody221_66

def AllocBody221_68 : StackLang.HolProg 64 :=
.seq AllocBody221_2 AllocBody221_67

def AllocBody221_69 : StackLang.HolProg 64 :=
.seq AllocBody221_1 AllocBody221_68

def AllocBody221_70 : StackLang.HolProg 64 :=
.seq AllocBody221_0 AllocBody221_69

def Alloc221 : Nat × StackLang.HolProg 64 := (221, AllocBody221_70)
theorem Alloc221_eq : StackAlloc.progComp (221, raw221) = Alloc221 := by
  kernel_rfl
#print axioms Alloc221_eq
end InitECandidate.Proofs.BackendStages
