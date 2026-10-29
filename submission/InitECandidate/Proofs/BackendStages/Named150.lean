import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed150
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody150_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody150_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody150_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1779033703#64)

def NamedBody150_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody150_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody150_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody150_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody150_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 3144134277#64)

def NamedBody150_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody150_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody150_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody150_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody150_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1013904242#64)

def NamedBody150_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody150_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody150_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody150_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody150_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 2773480762#64)

def NamedBody150_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody150_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody150_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody150_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody150_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1359893119#64)

def NamedBody150_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody150_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody150_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody150_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody150_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 2600822924#64)

def NamedBody150_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody150_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody150_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody150_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody150_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 528734635#64)

def NamedBody150_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody150_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody150_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody150_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody150_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1541459225#64)

def NamedBody150_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody150_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody150_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody150_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody150_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody150_43 : StackLang.HolProg 64 :=
.seq NamedBody150_41 NamedBody150_42

def NamedBody150_44 : StackLang.HolProg 64 :=
.seq NamedBody150_40 NamedBody150_43

def NamedBody150_45 : StackLang.HolProg 64 :=
.seq NamedBody150_39 NamedBody150_44

def NamedBody150_46 : StackLang.HolProg 64 :=
.seq NamedBody150_38 NamedBody150_45

def NamedBody150_47 : StackLang.HolProg 64 :=
.seq NamedBody150_37 NamedBody150_46

def NamedBody150_48 : StackLang.HolProg 64 :=
.seq NamedBody150_36 NamedBody150_47

def NamedBody150_49 : StackLang.HolProg 64 :=
.seq NamedBody150_35 NamedBody150_48

def NamedBody150_50 : StackLang.HolProg 64 :=
.seq NamedBody150_34 NamedBody150_49

def NamedBody150_51 : StackLang.HolProg 64 :=
.seq NamedBody150_33 NamedBody150_50

def NamedBody150_52 : StackLang.HolProg 64 :=
.seq NamedBody150_32 NamedBody150_51

def NamedBody150_53 : StackLang.HolProg 64 :=
.seq NamedBody150_31 NamedBody150_52

def NamedBody150_54 : StackLang.HolProg 64 :=
.seq NamedBody150_30 NamedBody150_53

def NamedBody150_55 : StackLang.HolProg 64 :=
.seq NamedBody150_29 NamedBody150_54

def NamedBody150_56 : StackLang.HolProg 64 :=
.seq NamedBody150_28 NamedBody150_55

def NamedBody150_57 : StackLang.HolProg 64 :=
.seq NamedBody150_27 NamedBody150_56

def NamedBody150_58 : StackLang.HolProg 64 :=
.seq NamedBody150_26 NamedBody150_57

def NamedBody150_59 : StackLang.HolProg 64 :=
.seq NamedBody150_25 NamedBody150_58

def NamedBody150_60 : StackLang.HolProg 64 :=
.seq NamedBody150_24 NamedBody150_59

def NamedBody150_61 : StackLang.HolProg 64 :=
.seq NamedBody150_23 NamedBody150_60

def NamedBody150_62 : StackLang.HolProg 64 :=
.seq NamedBody150_22 NamedBody150_61

def NamedBody150_63 : StackLang.HolProg 64 :=
.seq NamedBody150_21 NamedBody150_62

def NamedBody150_64 : StackLang.HolProg 64 :=
.seq NamedBody150_20 NamedBody150_63

def NamedBody150_65 : StackLang.HolProg 64 :=
.seq NamedBody150_19 NamedBody150_64

def NamedBody150_66 : StackLang.HolProg 64 :=
.seq NamedBody150_18 NamedBody150_65

def NamedBody150_67 : StackLang.HolProg 64 :=
.seq NamedBody150_17 NamedBody150_66

def NamedBody150_68 : StackLang.HolProg 64 :=
.seq NamedBody150_16 NamedBody150_67

def NamedBody150_69 : StackLang.HolProg 64 :=
.seq NamedBody150_15 NamedBody150_68

def NamedBody150_70 : StackLang.HolProg 64 :=
.seq NamedBody150_14 NamedBody150_69

def NamedBody150_71 : StackLang.HolProg 64 :=
.seq NamedBody150_13 NamedBody150_70

def NamedBody150_72 : StackLang.HolProg 64 :=
.seq NamedBody150_12 NamedBody150_71

def NamedBody150_73 : StackLang.HolProg 64 :=
.seq NamedBody150_11 NamedBody150_72

def NamedBody150_74 : StackLang.HolProg 64 :=
.seq NamedBody150_10 NamedBody150_73

def NamedBody150_75 : StackLang.HolProg 64 :=
.seq NamedBody150_9 NamedBody150_74

def NamedBody150_76 : StackLang.HolProg 64 :=
.seq NamedBody150_8 NamedBody150_75

def NamedBody150_77 : StackLang.HolProg 64 :=
.seq NamedBody150_7 NamedBody150_76

def NamedBody150_78 : StackLang.HolProg 64 :=
.seq NamedBody150_6 NamedBody150_77

def NamedBody150_79 : StackLang.HolProg 64 :=
.seq NamedBody150_5 NamedBody150_78

def NamedBody150_80 : StackLang.HolProg 64 :=
.seq NamedBody150_4 NamedBody150_79

def NamedBody150_81 : StackLang.HolProg 64 :=
.seq NamedBody150_3 NamedBody150_80

def NamedBody150_82 : StackLang.HolProg 64 :=
.seq NamedBody150_2 NamedBody150_81

def NamedBody150_83 : StackLang.HolProg 64 :=
.seq NamedBody150_1 NamedBody150_82

def NamedBody150_84 : StackLang.HolProg 64 :=
.seq NamedBody150_0 NamedBody150_83

def Named150 : Nat × StackLang.HolProg 64 := (150, NamedBody150_84)
theorem Named150_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed150 = Named150 := by
  kernel_rfl
#print axioms Named150_eq
end InitECandidate.Proofs.BackendStages
