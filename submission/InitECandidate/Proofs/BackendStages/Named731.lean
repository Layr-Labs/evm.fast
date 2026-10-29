import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed731
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody731_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody731_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody731_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 8505329371266088957#64)

def NamedBody731_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody731_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody731_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 17002214543764226050#64)

def NamedBody731_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody731_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody731_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 6865905132761471162#64)

def NamedBody731_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody731_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody731_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 8632934651105793861#64)

def NamedBody731_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody731_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody731_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 6631298214892334189#64)

def NamedBody731_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody731_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 32#64))

def NamedBody731_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1582556514881692819#64)

def NamedBody731_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody731_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 40#64))

def NamedBody731_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody731_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody731_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody731_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody731_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody731_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody731_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody731_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody731_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody731_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody731_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody731_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody731_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody731_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody731_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody731_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody731_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 32#64))

def NamedBody731_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody731_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody731_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 40#64))

def NamedBody731_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody731_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody731_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody731_43 : StackLang.HolProg 64 :=
.seq NamedBody731_41 NamedBody731_42

def NamedBody731_44 : StackLang.HolProg 64 :=
.seq NamedBody731_40 NamedBody731_43

def NamedBody731_45 : StackLang.HolProg 64 :=
.seq NamedBody731_39 NamedBody731_44

def NamedBody731_46 : StackLang.HolProg 64 :=
.seq NamedBody731_38 NamedBody731_45

def NamedBody731_47 : StackLang.HolProg 64 :=
.seq NamedBody731_37 NamedBody731_46

def NamedBody731_48 : StackLang.HolProg 64 :=
.seq NamedBody731_36 NamedBody731_47

def NamedBody731_49 : StackLang.HolProg 64 :=
.seq NamedBody731_35 NamedBody731_48

def NamedBody731_50 : StackLang.HolProg 64 :=
.seq NamedBody731_34 NamedBody731_49

def NamedBody731_51 : StackLang.HolProg 64 :=
.seq NamedBody731_33 NamedBody731_50

def NamedBody731_52 : StackLang.HolProg 64 :=
.seq NamedBody731_32 NamedBody731_51

def NamedBody731_53 : StackLang.HolProg 64 :=
.seq NamedBody731_31 NamedBody731_52

def NamedBody731_54 : StackLang.HolProg 64 :=
.seq NamedBody731_30 NamedBody731_53

def NamedBody731_55 : StackLang.HolProg 64 :=
.seq NamedBody731_29 NamedBody731_54

def NamedBody731_56 : StackLang.HolProg 64 :=
.seq NamedBody731_28 NamedBody731_55

def NamedBody731_57 : StackLang.HolProg 64 :=
.seq NamedBody731_27 NamedBody731_56

def NamedBody731_58 : StackLang.HolProg 64 :=
.seq NamedBody731_26 NamedBody731_57

def NamedBody731_59 : StackLang.HolProg 64 :=
.seq NamedBody731_25 NamedBody731_58

def NamedBody731_60 : StackLang.HolProg 64 :=
.seq NamedBody731_24 NamedBody731_59

def NamedBody731_61 : StackLang.HolProg 64 :=
.seq NamedBody731_23 NamedBody731_60

def NamedBody731_62 : StackLang.HolProg 64 :=
.seq NamedBody731_22 NamedBody731_61

def NamedBody731_63 : StackLang.HolProg 64 :=
.seq NamedBody731_21 NamedBody731_62

def NamedBody731_64 : StackLang.HolProg 64 :=
.seq NamedBody731_20 NamedBody731_63

def NamedBody731_65 : StackLang.HolProg 64 :=
.seq NamedBody731_19 NamedBody731_64

def NamedBody731_66 : StackLang.HolProg 64 :=
.seq NamedBody731_18 NamedBody731_65

def NamedBody731_67 : StackLang.HolProg 64 :=
.seq NamedBody731_17 NamedBody731_66

def NamedBody731_68 : StackLang.HolProg 64 :=
.seq NamedBody731_16 NamedBody731_67

def NamedBody731_69 : StackLang.HolProg 64 :=
.seq NamedBody731_15 NamedBody731_68

def NamedBody731_70 : StackLang.HolProg 64 :=
.seq NamedBody731_14 NamedBody731_69

def NamedBody731_71 : StackLang.HolProg 64 :=
.seq NamedBody731_13 NamedBody731_70

def NamedBody731_72 : StackLang.HolProg 64 :=
.seq NamedBody731_12 NamedBody731_71

def NamedBody731_73 : StackLang.HolProg 64 :=
.seq NamedBody731_11 NamedBody731_72

def NamedBody731_74 : StackLang.HolProg 64 :=
.seq NamedBody731_10 NamedBody731_73

def NamedBody731_75 : StackLang.HolProg 64 :=
.seq NamedBody731_9 NamedBody731_74

def NamedBody731_76 : StackLang.HolProg 64 :=
.seq NamedBody731_8 NamedBody731_75

def NamedBody731_77 : StackLang.HolProg 64 :=
.seq NamedBody731_7 NamedBody731_76

def NamedBody731_78 : StackLang.HolProg 64 :=
.seq NamedBody731_6 NamedBody731_77

def NamedBody731_79 : StackLang.HolProg 64 :=
.seq NamedBody731_5 NamedBody731_78

def NamedBody731_80 : StackLang.HolProg 64 :=
.seq NamedBody731_4 NamedBody731_79

def NamedBody731_81 : StackLang.HolProg 64 :=
.seq NamedBody731_3 NamedBody731_80

def NamedBody731_82 : StackLang.HolProg 64 :=
.seq NamedBody731_2 NamedBody731_81

def NamedBody731_83 : StackLang.HolProg 64 :=
.seq NamedBody731_1 NamedBody731_82

def NamedBody731_84 : StackLang.HolProg 64 :=
.seq NamedBody731_0 NamedBody731_83

def Named731 : Nat × StackLang.HolProg 64 := (731, NamedBody731_84)
theorem Named731_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed731 = Named731 := by
  kernel_rfl
#print axioms Named731_eq
end InitECandidate.Proofs.BackendStages
