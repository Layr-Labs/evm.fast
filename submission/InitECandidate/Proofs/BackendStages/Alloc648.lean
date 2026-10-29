import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw648
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody648_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody648_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody648_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def AllocBody648_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody648_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody648_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody648_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody648_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody648_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody648_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody648_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody648_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody648_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody648_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody648_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody648_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody648_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def AllocBody648_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody648_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody648_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody648_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody648_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def AllocBody648_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody648_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody648_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 16#64))

def AllocBody648_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody648_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody648_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def AllocBody648_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody648_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def AllocBody648_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody648_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody648_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody648_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody648_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody648_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody648_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody648_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody648_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody648_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody648_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody648_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody648_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody648_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody648_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody648_45 : StackLang.HolProg 64 :=
.seq AllocBody648_43 AllocBody648_44

def AllocBody648_46 : StackLang.HolProg 64 :=
.seq AllocBody648_42 AllocBody648_45

def AllocBody648_47 : StackLang.HolProg 64 :=
.seq AllocBody648_41 AllocBody648_46

def AllocBody648_48 : StackLang.HolProg 64 :=
.seq AllocBody648_40 AllocBody648_47

def AllocBody648_49 : StackLang.HolProg 64 :=
.seq AllocBody648_39 AllocBody648_48

def AllocBody648_50 : StackLang.HolProg 64 :=
.seq AllocBody648_38 AllocBody648_49

def AllocBody648_51 : StackLang.HolProg 64 :=
.seq AllocBody648_37 AllocBody648_50

def AllocBody648_52 : StackLang.HolProg 64 :=
.seq AllocBody648_36 AllocBody648_51

def AllocBody648_53 : StackLang.HolProg 64 :=
.seq AllocBody648_35 AllocBody648_52

def AllocBody648_54 : StackLang.HolProg 64 :=
.seq AllocBody648_34 AllocBody648_53

def AllocBody648_55 : StackLang.HolProg 64 :=
.seq AllocBody648_33 AllocBody648_54

def AllocBody648_56 : StackLang.HolProg 64 :=
.seq AllocBody648_32 AllocBody648_55

def AllocBody648_57 : StackLang.HolProg 64 :=
.seq AllocBody648_31 AllocBody648_56

def AllocBody648_58 : StackLang.HolProg 64 :=
.seq AllocBody648_30 AllocBody648_57

def AllocBody648_59 : StackLang.HolProg 64 :=
.seq AllocBody648_29 AllocBody648_58

def AllocBody648_60 : StackLang.HolProg 64 :=
.seq AllocBody648_28 AllocBody648_59

def AllocBody648_61 : StackLang.HolProg 64 :=
.seq AllocBody648_27 AllocBody648_60

def AllocBody648_62 : StackLang.HolProg 64 :=
.seq AllocBody648_26 AllocBody648_61

def AllocBody648_63 : StackLang.HolProg 64 :=
.seq AllocBody648_25 AllocBody648_62

def AllocBody648_64 : StackLang.HolProg 64 :=
.seq AllocBody648_24 AllocBody648_63

def AllocBody648_65 : StackLang.HolProg 64 :=
.seq AllocBody648_23 AllocBody648_64

def AllocBody648_66 : StackLang.HolProg 64 :=
.seq AllocBody648_22 AllocBody648_65

def AllocBody648_67 : StackLang.HolProg 64 :=
.seq AllocBody648_21 AllocBody648_66

def AllocBody648_68 : StackLang.HolProg 64 :=
.seq AllocBody648_20 AllocBody648_67

def AllocBody648_69 : StackLang.HolProg 64 :=
.seq AllocBody648_19 AllocBody648_68

def AllocBody648_70 : StackLang.HolProg 64 :=
.seq AllocBody648_18 AllocBody648_69

def AllocBody648_71 : StackLang.HolProg 64 :=
.seq AllocBody648_17 AllocBody648_70

def AllocBody648_72 : StackLang.HolProg 64 :=
.seq AllocBody648_16 AllocBody648_71

def AllocBody648_73 : StackLang.HolProg 64 :=
.seq AllocBody648_15 AllocBody648_72

def AllocBody648_74 : StackLang.HolProg 64 :=
.seq AllocBody648_14 AllocBody648_73

def AllocBody648_75 : StackLang.HolProg 64 :=
.seq AllocBody648_13 AllocBody648_74

def AllocBody648_76 : StackLang.HolProg 64 :=
.seq AllocBody648_12 AllocBody648_75

def AllocBody648_77 : StackLang.HolProg 64 :=
.seq AllocBody648_11 AllocBody648_76

def AllocBody648_78 : StackLang.HolProg 64 :=
.seq AllocBody648_10 AllocBody648_77

def AllocBody648_79 : StackLang.HolProg 64 :=
.seq AllocBody648_9 AllocBody648_78

def AllocBody648_80 : StackLang.HolProg 64 :=
.seq AllocBody648_8 AllocBody648_79

def AllocBody648_81 : StackLang.HolProg 64 :=
.seq AllocBody648_7 AllocBody648_80

def AllocBody648_82 : StackLang.HolProg 64 :=
.seq AllocBody648_6 AllocBody648_81

def AllocBody648_83 : StackLang.HolProg 64 :=
.seq AllocBody648_5 AllocBody648_82

def AllocBody648_84 : StackLang.HolProg 64 :=
.seq AllocBody648_4 AllocBody648_83

def AllocBody648_85 : StackLang.HolProg 64 :=
.seq AllocBody648_3 AllocBody648_84

def AllocBody648_86 : StackLang.HolProg 64 :=
.seq AllocBody648_2 AllocBody648_85

def AllocBody648_87 : StackLang.HolProg 64 :=
.seq AllocBody648_1 AllocBody648_86

def AllocBody648_88 : StackLang.HolProg 64 :=
.seq AllocBody648_0 AllocBody648_87

def Alloc648 : Nat × StackLang.HolProg 64 := (648, AllocBody648_88)
theorem Alloc648_eq : StackAlloc.progComp (648, raw648) = Alloc648 := by
  kernel_rfl
#print axioms Alloc648_eq
end InitECandidate.Proofs.BackendStages
