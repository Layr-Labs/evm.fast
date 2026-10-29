import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw150
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody150_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody150_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody150_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1779033703#64)

def AllocBody150_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody150_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody150_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody150_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody150_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 3144134277#64)

def AllocBody150_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody150_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody150_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody150_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody150_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1013904242#64)

def AllocBody150_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody150_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody150_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody150_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody150_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 2773480762#64)

def AllocBody150_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody150_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody150_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody150_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody150_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1359893119#64)

def AllocBody150_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody150_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody150_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody150_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def AllocBody150_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 2600822924#64)

def AllocBody150_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody150_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody150_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody150_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def AllocBody150_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 528734635#64)

def AllocBody150_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody150_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody150_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody150_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def AllocBody150_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1541459225#64)

def AllocBody150_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody150_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody150_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody150_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody150_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody150_43 : StackLang.HolProg 64 :=
.seq AllocBody150_41 AllocBody150_42

def AllocBody150_44 : StackLang.HolProg 64 :=
.seq AllocBody150_40 AllocBody150_43

def AllocBody150_45 : StackLang.HolProg 64 :=
.seq AllocBody150_39 AllocBody150_44

def AllocBody150_46 : StackLang.HolProg 64 :=
.seq AllocBody150_38 AllocBody150_45

def AllocBody150_47 : StackLang.HolProg 64 :=
.seq AllocBody150_37 AllocBody150_46

def AllocBody150_48 : StackLang.HolProg 64 :=
.seq AllocBody150_36 AllocBody150_47

def AllocBody150_49 : StackLang.HolProg 64 :=
.seq AllocBody150_35 AllocBody150_48

def AllocBody150_50 : StackLang.HolProg 64 :=
.seq AllocBody150_34 AllocBody150_49

def AllocBody150_51 : StackLang.HolProg 64 :=
.seq AllocBody150_33 AllocBody150_50

def AllocBody150_52 : StackLang.HolProg 64 :=
.seq AllocBody150_32 AllocBody150_51

def AllocBody150_53 : StackLang.HolProg 64 :=
.seq AllocBody150_31 AllocBody150_52

def AllocBody150_54 : StackLang.HolProg 64 :=
.seq AllocBody150_30 AllocBody150_53

def AllocBody150_55 : StackLang.HolProg 64 :=
.seq AllocBody150_29 AllocBody150_54

def AllocBody150_56 : StackLang.HolProg 64 :=
.seq AllocBody150_28 AllocBody150_55

def AllocBody150_57 : StackLang.HolProg 64 :=
.seq AllocBody150_27 AllocBody150_56

def AllocBody150_58 : StackLang.HolProg 64 :=
.seq AllocBody150_26 AllocBody150_57

def AllocBody150_59 : StackLang.HolProg 64 :=
.seq AllocBody150_25 AllocBody150_58

def AllocBody150_60 : StackLang.HolProg 64 :=
.seq AllocBody150_24 AllocBody150_59

def AllocBody150_61 : StackLang.HolProg 64 :=
.seq AllocBody150_23 AllocBody150_60

def AllocBody150_62 : StackLang.HolProg 64 :=
.seq AllocBody150_22 AllocBody150_61

def AllocBody150_63 : StackLang.HolProg 64 :=
.seq AllocBody150_21 AllocBody150_62

def AllocBody150_64 : StackLang.HolProg 64 :=
.seq AllocBody150_20 AllocBody150_63

def AllocBody150_65 : StackLang.HolProg 64 :=
.seq AllocBody150_19 AllocBody150_64

def AllocBody150_66 : StackLang.HolProg 64 :=
.seq AllocBody150_18 AllocBody150_65

def AllocBody150_67 : StackLang.HolProg 64 :=
.seq AllocBody150_17 AllocBody150_66

def AllocBody150_68 : StackLang.HolProg 64 :=
.seq AllocBody150_16 AllocBody150_67

def AllocBody150_69 : StackLang.HolProg 64 :=
.seq AllocBody150_15 AllocBody150_68

def AllocBody150_70 : StackLang.HolProg 64 :=
.seq AllocBody150_14 AllocBody150_69

def AllocBody150_71 : StackLang.HolProg 64 :=
.seq AllocBody150_13 AllocBody150_70

def AllocBody150_72 : StackLang.HolProg 64 :=
.seq AllocBody150_12 AllocBody150_71

def AllocBody150_73 : StackLang.HolProg 64 :=
.seq AllocBody150_11 AllocBody150_72

def AllocBody150_74 : StackLang.HolProg 64 :=
.seq AllocBody150_10 AllocBody150_73

def AllocBody150_75 : StackLang.HolProg 64 :=
.seq AllocBody150_9 AllocBody150_74

def AllocBody150_76 : StackLang.HolProg 64 :=
.seq AllocBody150_8 AllocBody150_75

def AllocBody150_77 : StackLang.HolProg 64 :=
.seq AllocBody150_7 AllocBody150_76

def AllocBody150_78 : StackLang.HolProg 64 :=
.seq AllocBody150_6 AllocBody150_77

def AllocBody150_79 : StackLang.HolProg 64 :=
.seq AllocBody150_5 AllocBody150_78

def AllocBody150_80 : StackLang.HolProg 64 :=
.seq AllocBody150_4 AllocBody150_79

def AllocBody150_81 : StackLang.HolProg 64 :=
.seq AllocBody150_3 AllocBody150_80

def AllocBody150_82 : StackLang.HolProg 64 :=
.seq AllocBody150_2 AllocBody150_81

def AllocBody150_83 : StackLang.HolProg 64 :=
.seq AllocBody150_1 AllocBody150_82

def AllocBody150_84 : StackLang.HolProg 64 :=
.seq AllocBody150_0 AllocBody150_83

def Alloc150 : Nat × StackLang.HolProg 64 := (150, AllocBody150_84)
theorem Alloc150_eq : StackAlloc.progComp (150, raw150) = Alloc150 := by
  kernel_rfl
#print axioms Alloc150_eq
end InitECandidate.Proofs.BackendStages
