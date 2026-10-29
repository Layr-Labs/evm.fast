import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw220
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody220_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody220_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody220_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def AllocBody220_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody220_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody220_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody220_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody220_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody220_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody220_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody220_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody220_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody220_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody220_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody220_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody220_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody220_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def AllocBody220_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody220_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody220_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody220_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody220_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def AllocBody220_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody220_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody220_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 16#64))

def AllocBody220_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody220_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody220_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def AllocBody220_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody220_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def AllocBody220_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody220_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody220_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody220_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody220_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody220_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody220_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody220_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody220_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody220_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody220_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody220_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody220_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody220_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody220_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody220_45 : StackLang.HolProg 64 :=
.seq AllocBody220_43 AllocBody220_44

def AllocBody220_46 : StackLang.HolProg 64 :=
.seq AllocBody220_42 AllocBody220_45

def AllocBody220_47 : StackLang.HolProg 64 :=
.seq AllocBody220_41 AllocBody220_46

def AllocBody220_48 : StackLang.HolProg 64 :=
.seq AllocBody220_40 AllocBody220_47

def AllocBody220_49 : StackLang.HolProg 64 :=
.seq AllocBody220_39 AllocBody220_48

def AllocBody220_50 : StackLang.HolProg 64 :=
.seq AllocBody220_38 AllocBody220_49

def AllocBody220_51 : StackLang.HolProg 64 :=
.seq AllocBody220_37 AllocBody220_50

def AllocBody220_52 : StackLang.HolProg 64 :=
.seq AllocBody220_36 AllocBody220_51

def AllocBody220_53 : StackLang.HolProg 64 :=
.seq AllocBody220_35 AllocBody220_52

def AllocBody220_54 : StackLang.HolProg 64 :=
.seq AllocBody220_34 AllocBody220_53

def AllocBody220_55 : StackLang.HolProg 64 :=
.seq AllocBody220_33 AllocBody220_54

def AllocBody220_56 : StackLang.HolProg 64 :=
.seq AllocBody220_32 AllocBody220_55

def AllocBody220_57 : StackLang.HolProg 64 :=
.seq AllocBody220_31 AllocBody220_56

def AllocBody220_58 : StackLang.HolProg 64 :=
.seq AllocBody220_30 AllocBody220_57

def AllocBody220_59 : StackLang.HolProg 64 :=
.seq AllocBody220_29 AllocBody220_58

def AllocBody220_60 : StackLang.HolProg 64 :=
.seq AllocBody220_28 AllocBody220_59

def AllocBody220_61 : StackLang.HolProg 64 :=
.seq AllocBody220_27 AllocBody220_60

def AllocBody220_62 : StackLang.HolProg 64 :=
.seq AllocBody220_26 AllocBody220_61

def AllocBody220_63 : StackLang.HolProg 64 :=
.seq AllocBody220_25 AllocBody220_62

def AllocBody220_64 : StackLang.HolProg 64 :=
.seq AllocBody220_24 AllocBody220_63

def AllocBody220_65 : StackLang.HolProg 64 :=
.seq AllocBody220_23 AllocBody220_64

def AllocBody220_66 : StackLang.HolProg 64 :=
.seq AllocBody220_22 AllocBody220_65

def AllocBody220_67 : StackLang.HolProg 64 :=
.seq AllocBody220_21 AllocBody220_66

def AllocBody220_68 : StackLang.HolProg 64 :=
.seq AllocBody220_20 AllocBody220_67

def AllocBody220_69 : StackLang.HolProg 64 :=
.seq AllocBody220_19 AllocBody220_68

def AllocBody220_70 : StackLang.HolProg 64 :=
.seq AllocBody220_18 AllocBody220_69

def AllocBody220_71 : StackLang.HolProg 64 :=
.seq AllocBody220_17 AllocBody220_70

def AllocBody220_72 : StackLang.HolProg 64 :=
.seq AllocBody220_16 AllocBody220_71

def AllocBody220_73 : StackLang.HolProg 64 :=
.seq AllocBody220_15 AllocBody220_72

def AllocBody220_74 : StackLang.HolProg 64 :=
.seq AllocBody220_14 AllocBody220_73

def AllocBody220_75 : StackLang.HolProg 64 :=
.seq AllocBody220_13 AllocBody220_74

def AllocBody220_76 : StackLang.HolProg 64 :=
.seq AllocBody220_12 AllocBody220_75

def AllocBody220_77 : StackLang.HolProg 64 :=
.seq AllocBody220_11 AllocBody220_76

def AllocBody220_78 : StackLang.HolProg 64 :=
.seq AllocBody220_10 AllocBody220_77

def AllocBody220_79 : StackLang.HolProg 64 :=
.seq AllocBody220_9 AllocBody220_78

def AllocBody220_80 : StackLang.HolProg 64 :=
.seq AllocBody220_8 AllocBody220_79

def AllocBody220_81 : StackLang.HolProg 64 :=
.seq AllocBody220_7 AllocBody220_80

def AllocBody220_82 : StackLang.HolProg 64 :=
.seq AllocBody220_6 AllocBody220_81

def AllocBody220_83 : StackLang.HolProg 64 :=
.seq AllocBody220_5 AllocBody220_82

def AllocBody220_84 : StackLang.HolProg 64 :=
.seq AllocBody220_4 AllocBody220_83

def AllocBody220_85 : StackLang.HolProg 64 :=
.seq AllocBody220_3 AllocBody220_84

def AllocBody220_86 : StackLang.HolProg 64 :=
.seq AllocBody220_2 AllocBody220_85

def AllocBody220_87 : StackLang.HolProg 64 :=
.seq AllocBody220_1 AllocBody220_86

def AllocBody220_88 : StackLang.HolProg 64 :=
.seq AllocBody220_0 AllocBody220_87

def Alloc220 : Nat × StackLang.HolProg 64 := (220, AllocBody220_88)
theorem Alloc220_eq : StackAlloc.progComp (220, raw220) = Alloc220 := by
  kernel_rfl
#print axioms Alloc220_eq
end InitECandidate.Proofs.BackendStages
