import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed648
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody648_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody648_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody648_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1#64)

def NamedBody648_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody648_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody648_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody648_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody648_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody648_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody648_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody648_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody648_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody648_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody648_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody648_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody648_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody648_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1#64)

def NamedBody648_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody648_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody648_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody648_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody648_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 8#64))

def NamedBody648_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody648_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody648_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 16#64))

def NamedBody648_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody648_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody648_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 24#64))

def NamedBody648_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody648_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody648_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody648_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody648_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody648_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody648_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody648_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody648_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody648_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody648_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody648_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody648_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody648_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody648_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody648_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody648_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody648_45 : StackLang.HolProg 64 :=
.seq NamedBody648_43 NamedBody648_44

def NamedBody648_46 : StackLang.HolProg 64 :=
.seq NamedBody648_42 NamedBody648_45

def NamedBody648_47 : StackLang.HolProg 64 :=
.seq NamedBody648_41 NamedBody648_46

def NamedBody648_48 : StackLang.HolProg 64 :=
.seq NamedBody648_40 NamedBody648_47

def NamedBody648_49 : StackLang.HolProg 64 :=
.seq NamedBody648_39 NamedBody648_48

def NamedBody648_50 : StackLang.HolProg 64 :=
.seq NamedBody648_38 NamedBody648_49

def NamedBody648_51 : StackLang.HolProg 64 :=
.seq NamedBody648_37 NamedBody648_50

def NamedBody648_52 : StackLang.HolProg 64 :=
.seq NamedBody648_36 NamedBody648_51

def NamedBody648_53 : StackLang.HolProg 64 :=
.seq NamedBody648_35 NamedBody648_52

def NamedBody648_54 : StackLang.HolProg 64 :=
.seq NamedBody648_34 NamedBody648_53

def NamedBody648_55 : StackLang.HolProg 64 :=
.seq NamedBody648_33 NamedBody648_54

def NamedBody648_56 : StackLang.HolProg 64 :=
.seq NamedBody648_32 NamedBody648_55

def NamedBody648_57 : StackLang.HolProg 64 :=
.seq NamedBody648_31 NamedBody648_56

def NamedBody648_58 : StackLang.HolProg 64 :=
.seq NamedBody648_30 NamedBody648_57

def NamedBody648_59 : StackLang.HolProg 64 :=
.seq NamedBody648_29 NamedBody648_58

def NamedBody648_60 : StackLang.HolProg 64 :=
.seq NamedBody648_28 NamedBody648_59

def NamedBody648_61 : StackLang.HolProg 64 :=
.seq NamedBody648_27 NamedBody648_60

def NamedBody648_62 : StackLang.HolProg 64 :=
.seq NamedBody648_26 NamedBody648_61

def NamedBody648_63 : StackLang.HolProg 64 :=
.seq NamedBody648_25 NamedBody648_62

def NamedBody648_64 : StackLang.HolProg 64 :=
.seq NamedBody648_24 NamedBody648_63

def NamedBody648_65 : StackLang.HolProg 64 :=
.seq NamedBody648_23 NamedBody648_64

def NamedBody648_66 : StackLang.HolProg 64 :=
.seq NamedBody648_22 NamedBody648_65

def NamedBody648_67 : StackLang.HolProg 64 :=
.seq NamedBody648_21 NamedBody648_66

def NamedBody648_68 : StackLang.HolProg 64 :=
.seq NamedBody648_20 NamedBody648_67

def NamedBody648_69 : StackLang.HolProg 64 :=
.seq NamedBody648_19 NamedBody648_68

def NamedBody648_70 : StackLang.HolProg 64 :=
.seq NamedBody648_18 NamedBody648_69

def NamedBody648_71 : StackLang.HolProg 64 :=
.seq NamedBody648_17 NamedBody648_70

def NamedBody648_72 : StackLang.HolProg 64 :=
.seq NamedBody648_16 NamedBody648_71

def NamedBody648_73 : StackLang.HolProg 64 :=
.seq NamedBody648_15 NamedBody648_72

def NamedBody648_74 : StackLang.HolProg 64 :=
.seq NamedBody648_14 NamedBody648_73

def NamedBody648_75 : StackLang.HolProg 64 :=
.seq NamedBody648_13 NamedBody648_74

def NamedBody648_76 : StackLang.HolProg 64 :=
.seq NamedBody648_12 NamedBody648_75

def NamedBody648_77 : StackLang.HolProg 64 :=
.seq NamedBody648_11 NamedBody648_76

def NamedBody648_78 : StackLang.HolProg 64 :=
.seq NamedBody648_10 NamedBody648_77

def NamedBody648_79 : StackLang.HolProg 64 :=
.seq NamedBody648_9 NamedBody648_78

def NamedBody648_80 : StackLang.HolProg 64 :=
.seq NamedBody648_8 NamedBody648_79

def NamedBody648_81 : StackLang.HolProg 64 :=
.seq NamedBody648_7 NamedBody648_80

def NamedBody648_82 : StackLang.HolProg 64 :=
.seq NamedBody648_6 NamedBody648_81

def NamedBody648_83 : StackLang.HolProg 64 :=
.seq NamedBody648_5 NamedBody648_82

def NamedBody648_84 : StackLang.HolProg 64 :=
.seq NamedBody648_4 NamedBody648_83

def NamedBody648_85 : StackLang.HolProg 64 :=
.seq NamedBody648_3 NamedBody648_84

def NamedBody648_86 : StackLang.HolProg 64 :=
.seq NamedBody648_2 NamedBody648_85

def NamedBody648_87 : StackLang.HolProg 64 :=
.seq NamedBody648_1 NamedBody648_86

def NamedBody648_88 : StackLang.HolProg 64 :=
.seq NamedBody648_0 NamedBody648_87

def Named648 : Nat × StackLang.HolProg 64 := (648, NamedBody648_88)
theorem Named648_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed648 = Named648 := by
  kernel_rfl
#print axioms Named648_eq
end InitECandidate.Proofs.BackendStages
