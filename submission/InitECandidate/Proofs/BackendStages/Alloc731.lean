import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw731
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody731_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody731_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody731_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 8505329371266088957#64)

def AllocBody731_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody731_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody731_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 17002214543764226050#64)

def AllocBody731_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody731_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody731_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 6865905132761471162#64)

def AllocBody731_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody731_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody731_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 8632934651105793861#64)

def AllocBody731_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody731_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody731_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 6631298214892334189#64)

def AllocBody731_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody731_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def AllocBody731_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1582556514881692819#64)

def AllocBody731_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody731_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def AllocBody731_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody731_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def AllocBody731_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody731_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody731_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody731_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody731_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody731_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody731_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody731_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody731_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody731_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody731_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody731_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody731_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody731_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody731_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def AllocBody731_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody731_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody731_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def AllocBody731_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody731_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody731_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody731_43 : StackLang.HolProg 64 :=
.seq AllocBody731_41 AllocBody731_42

def AllocBody731_44 : StackLang.HolProg 64 :=
.seq AllocBody731_40 AllocBody731_43

def AllocBody731_45 : StackLang.HolProg 64 :=
.seq AllocBody731_39 AllocBody731_44

def AllocBody731_46 : StackLang.HolProg 64 :=
.seq AllocBody731_38 AllocBody731_45

def AllocBody731_47 : StackLang.HolProg 64 :=
.seq AllocBody731_37 AllocBody731_46

def AllocBody731_48 : StackLang.HolProg 64 :=
.seq AllocBody731_36 AllocBody731_47

def AllocBody731_49 : StackLang.HolProg 64 :=
.seq AllocBody731_35 AllocBody731_48

def AllocBody731_50 : StackLang.HolProg 64 :=
.seq AllocBody731_34 AllocBody731_49

def AllocBody731_51 : StackLang.HolProg 64 :=
.seq AllocBody731_33 AllocBody731_50

def AllocBody731_52 : StackLang.HolProg 64 :=
.seq AllocBody731_32 AllocBody731_51

def AllocBody731_53 : StackLang.HolProg 64 :=
.seq AllocBody731_31 AllocBody731_52

def AllocBody731_54 : StackLang.HolProg 64 :=
.seq AllocBody731_30 AllocBody731_53

def AllocBody731_55 : StackLang.HolProg 64 :=
.seq AllocBody731_29 AllocBody731_54

def AllocBody731_56 : StackLang.HolProg 64 :=
.seq AllocBody731_28 AllocBody731_55

def AllocBody731_57 : StackLang.HolProg 64 :=
.seq AllocBody731_27 AllocBody731_56

def AllocBody731_58 : StackLang.HolProg 64 :=
.seq AllocBody731_26 AllocBody731_57

def AllocBody731_59 : StackLang.HolProg 64 :=
.seq AllocBody731_25 AllocBody731_58

def AllocBody731_60 : StackLang.HolProg 64 :=
.seq AllocBody731_24 AllocBody731_59

def AllocBody731_61 : StackLang.HolProg 64 :=
.seq AllocBody731_23 AllocBody731_60

def AllocBody731_62 : StackLang.HolProg 64 :=
.seq AllocBody731_22 AllocBody731_61

def AllocBody731_63 : StackLang.HolProg 64 :=
.seq AllocBody731_21 AllocBody731_62

def AllocBody731_64 : StackLang.HolProg 64 :=
.seq AllocBody731_20 AllocBody731_63

def AllocBody731_65 : StackLang.HolProg 64 :=
.seq AllocBody731_19 AllocBody731_64

def AllocBody731_66 : StackLang.HolProg 64 :=
.seq AllocBody731_18 AllocBody731_65

def AllocBody731_67 : StackLang.HolProg 64 :=
.seq AllocBody731_17 AllocBody731_66

def AllocBody731_68 : StackLang.HolProg 64 :=
.seq AllocBody731_16 AllocBody731_67

def AllocBody731_69 : StackLang.HolProg 64 :=
.seq AllocBody731_15 AllocBody731_68

def AllocBody731_70 : StackLang.HolProg 64 :=
.seq AllocBody731_14 AllocBody731_69

def AllocBody731_71 : StackLang.HolProg 64 :=
.seq AllocBody731_13 AllocBody731_70

def AllocBody731_72 : StackLang.HolProg 64 :=
.seq AllocBody731_12 AllocBody731_71

def AllocBody731_73 : StackLang.HolProg 64 :=
.seq AllocBody731_11 AllocBody731_72

def AllocBody731_74 : StackLang.HolProg 64 :=
.seq AllocBody731_10 AllocBody731_73

def AllocBody731_75 : StackLang.HolProg 64 :=
.seq AllocBody731_9 AllocBody731_74

def AllocBody731_76 : StackLang.HolProg 64 :=
.seq AllocBody731_8 AllocBody731_75

def AllocBody731_77 : StackLang.HolProg 64 :=
.seq AllocBody731_7 AllocBody731_76

def AllocBody731_78 : StackLang.HolProg 64 :=
.seq AllocBody731_6 AllocBody731_77

def AllocBody731_79 : StackLang.HolProg 64 :=
.seq AllocBody731_5 AllocBody731_78

def AllocBody731_80 : StackLang.HolProg 64 :=
.seq AllocBody731_4 AllocBody731_79

def AllocBody731_81 : StackLang.HolProg 64 :=
.seq AllocBody731_3 AllocBody731_80

def AllocBody731_82 : StackLang.HolProg 64 :=
.seq AllocBody731_2 AllocBody731_81

def AllocBody731_83 : StackLang.HolProg 64 :=
.seq AllocBody731_1 AllocBody731_82

def AllocBody731_84 : StackLang.HolProg 64 :=
.seq AllocBody731_0 AllocBody731_83

def Alloc731 : Nat × StackLang.HolProg 64 := (731, AllocBody731_84)
theorem Alloc731_eq : StackAlloc.progComp (731, raw731) = Alloc731 := by
  kernel_rfl
#print axioms Alloc731_eq
end InitECandidate.Proofs.BackendStages
