import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed220
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody220_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody220_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody220_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1#64)

def NamedBody220_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody220_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody220_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody220_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody220_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody220_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody220_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody220_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody220_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody220_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody220_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody220_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody220_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody220_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1#64)

def NamedBody220_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody220_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody220_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody220_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody220_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 8#64))

def NamedBody220_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody220_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody220_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 16#64))

def NamedBody220_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody220_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody220_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 24#64))

def NamedBody220_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody220_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def NamedBody220_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody220_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody220_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody220_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody220_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody220_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody220_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody220_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody220_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody220_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody220_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody220_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody220_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody220_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody220_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody220_45 : StackLang.HolProg 64 :=
.seq NamedBody220_43 NamedBody220_44

def NamedBody220_46 : StackLang.HolProg 64 :=
.seq NamedBody220_42 NamedBody220_45

def NamedBody220_47 : StackLang.HolProg 64 :=
.seq NamedBody220_41 NamedBody220_46

def NamedBody220_48 : StackLang.HolProg 64 :=
.seq NamedBody220_40 NamedBody220_47

def NamedBody220_49 : StackLang.HolProg 64 :=
.seq NamedBody220_39 NamedBody220_48

def NamedBody220_50 : StackLang.HolProg 64 :=
.seq NamedBody220_38 NamedBody220_49

def NamedBody220_51 : StackLang.HolProg 64 :=
.seq NamedBody220_37 NamedBody220_50

def NamedBody220_52 : StackLang.HolProg 64 :=
.seq NamedBody220_36 NamedBody220_51

def NamedBody220_53 : StackLang.HolProg 64 :=
.seq NamedBody220_35 NamedBody220_52

def NamedBody220_54 : StackLang.HolProg 64 :=
.seq NamedBody220_34 NamedBody220_53

def NamedBody220_55 : StackLang.HolProg 64 :=
.seq NamedBody220_33 NamedBody220_54

def NamedBody220_56 : StackLang.HolProg 64 :=
.seq NamedBody220_32 NamedBody220_55

def NamedBody220_57 : StackLang.HolProg 64 :=
.seq NamedBody220_31 NamedBody220_56

def NamedBody220_58 : StackLang.HolProg 64 :=
.seq NamedBody220_30 NamedBody220_57

def NamedBody220_59 : StackLang.HolProg 64 :=
.seq NamedBody220_29 NamedBody220_58

def NamedBody220_60 : StackLang.HolProg 64 :=
.seq NamedBody220_28 NamedBody220_59

def NamedBody220_61 : StackLang.HolProg 64 :=
.seq NamedBody220_27 NamedBody220_60

def NamedBody220_62 : StackLang.HolProg 64 :=
.seq NamedBody220_26 NamedBody220_61

def NamedBody220_63 : StackLang.HolProg 64 :=
.seq NamedBody220_25 NamedBody220_62

def NamedBody220_64 : StackLang.HolProg 64 :=
.seq NamedBody220_24 NamedBody220_63

def NamedBody220_65 : StackLang.HolProg 64 :=
.seq NamedBody220_23 NamedBody220_64

def NamedBody220_66 : StackLang.HolProg 64 :=
.seq NamedBody220_22 NamedBody220_65

def NamedBody220_67 : StackLang.HolProg 64 :=
.seq NamedBody220_21 NamedBody220_66

def NamedBody220_68 : StackLang.HolProg 64 :=
.seq NamedBody220_20 NamedBody220_67

def NamedBody220_69 : StackLang.HolProg 64 :=
.seq NamedBody220_19 NamedBody220_68

def NamedBody220_70 : StackLang.HolProg 64 :=
.seq NamedBody220_18 NamedBody220_69

def NamedBody220_71 : StackLang.HolProg 64 :=
.seq NamedBody220_17 NamedBody220_70

def NamedBody220_72 : StackLang.HolProg 64 :=
.seq NamedBody220_16 NamedBody220_71

def NamedBody220_73 : StackLang.HolProg 64 :=
.seq NamedBody220_15 NamedBody220_72

def NamedBody220_74 : StackLang.HolProg 64 :=
.seq NamedBody220_14 NamedBody220_73

def NamedBody220_75 : StackLang.HolProg 64 :=
.seq NamedBody220_13 NamedBody220_74

def NamedBody220_76 : StackLang.HolProg 64 :=
.seq NamedBody220_12 NamedBody220_75

def NamedBody220_77 : StackLang.HolProg 64 :=
.seq NamedBody220_11 NamedBody220_76

def NamedBody220_78 : StackLang.HolProg 64 :=
.seq NamedBody220_10 NamedBody220_77

def NamedBody220_79 : StackLang.HolProg 64 :=
.seq NamedBody220_9 NamedBody220_78

def NamedBody220_80 : StackLang.HolProg 64 :=
.seq NamedBody220_8 NamedBody220_79

def NamedBody220_81 : StackLang.HolProg 64 :=
.seq NamedBody220_7 NamedBody220_80

def NamedBody220_82 : StackLang.HolProg 64 :=
.seq NamedBody220_6 NamedBody220_81

def NamedBody220_83 : StackLang.HolProg 64 :=
.seq NamedBody220_5 NamedBody220_82

def NamedBody220_84 : StackLang.HolProg 64 :=
.seq NamedBody220_4 NamedBody220_83

def NamedBody220_85 : StackLang.HolProg 64 :=
.seq NamedBody220_3 NamedBody220_84

def NamedBody220_86 : StackLang.HolProg 64 :=
.seq NamedBody220_2 NamedBody220_85

def NamedBody220_87 : StackLang.HolProg 64 :=
.seq NamedBody220_1 NamedBody220_86

def NamedBody220_88 : StackLang.HolProg 64 :=
.seq NamedBody220_0 NamedBody220_87

def Named220 : Nat × StackLang.HolProg 64 := (220, NamedBody220_88)
theorem Named220_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed220 = Named220 := by
  kernel_rfl
#print axioms Named220_eq
end InitECandidate.Proofs.BackendStages
