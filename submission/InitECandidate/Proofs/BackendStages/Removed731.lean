import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc731
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody731_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody731_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody731_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 8505329371266088957#64)

def RemovedBody731_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody731_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody731_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 17002214543764226050#64)

def RemovedBody731_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody731_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody731_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 6865905132761471162#64)

def RemovedBody731_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody731_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody731_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 8632934651105793861#64)

def RemovedBody731_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody731_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody731_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 6631298214892334189#64)

def RemovedBody731_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody731_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def RemovedBody731_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1582556514881692819#64)

def RemovedBody731_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody731_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def RemovedBody731_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody731_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody731_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody731_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody731_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody731_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody731_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody731_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody731_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody731_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody731_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody731_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody731_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody731_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody731_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody731_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody731_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def RemovedBody731_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody731_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody731_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def RemovedBody731_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody731_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody731_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody731_43 : StackLang.HolProg 64 :=
.seq RemovedBody731_41 RemovedBody731_42

def RemovedBody731_44 : StackLang.HolProg 64 :=
.seq RemovedBody731_40 RemovedBody731_43

def RemovedBody731_45 : StackLang.HolProg 64 :=
.seq RemovedBody731_39 RemovedBody731_44

def RemovedBody731_46 : StackLang.HolProg 64 :=
.seq RemovedBody731_38 RemovedBody731_45

def RemovedBody731_47 : StackLang.HolProg 64 :=
.seq RemovedBody731_37 RemovedBody731_46

def RemovedBody731_48 : StackLang.HolProg 64 :=
.seq RemovedBody731_36 RemovedBody731_47

def RemovedBody731_49 : StackLang.HolProg 64 :=
.seq RemovedBody731_35 RemovedBody731_48

def RemovedBody731_50 : StackLang.HolProg 64 :=
.seq RemovedBody731_34 RemovedBody731_49

def RemovedBody731_51 : StackLang.HolProg 64 :=
.seq RemovedBody731_33 RemovedBody731_50

def RemovedBody731_52 : StackLang.HolProg 64 :=
.seq RemovedBody731_32 RemovedBody731_51

def RemovedBody731_53 : StackLang.HolProg 64 :=
.seq RemovedBody731_31 RemovedBody731_52

def RemovedBody731_54 : StackLang.HolProg 64 :=
.seq RemovedBody731_30 RemovedBody731_53

def RemovedBody731_55 : StackLang.HolProg 64 :=
.seq RemovedBody731_29 RemovedBody731_54

def RemovedBody731_56 : StackLang.HolProg 64 :=
.seq RemovedBody731_28 RemovedBody731_55

def RemovedBody731_57 : StackLang.HolProg 64 :=
.seq RemovedBody731_27 RemovedBody731_56

def RemovedBody731_58 : StackLang.HolProg 64 :=
.seq RemovedBody731_26 RemovedBody731_57

def RemovedBody731_59 : StackLang.HolProg 64 :=
.seq RemovedBody731_25 RemovedBody731_58

def RemovedBody731_60 : StackLang.HolProg 64 :=
.seq RemovedBody731_24 RemovedBody731_59

def RemovedBody731_61 : StackLang.HolProg 64 :=
.seq RemovedBody731_23 RemovedBody731_60

def RemovedBody731_62 : StackLang.HolProg 64 :=
.seq RemovedBody731_22 RemovedBody731_61

def RemovedBody731_63 : StackLang.HolProg 64 :=
.seq RemovedBody731_21 RemovedBody731_62

def RemovedBody731_64 : StackLang.HolProg 64 :=
.seq RemovedBody731_20 RemovedBody731_63

def RemovedBody731_65 : StackLang.HolProg 64 :=
.seq RemovedBody731_19 RemovedBody731_64

def RemovedBody731_66 : StackLang.HolProg 64 :=
.seq RemovedBody731_18 RemovedBody731_65

def RemovedBody731_67 : StackLang.HolProg 64 :=
.seq RemovedBody731_17 RemovedBody731_66

def RemovedBody731_68 : StackLang.HolProg 64 :=
.seq RemovedBody731_16 RemovedBody731_67

def RemovedBody731_69 : StackLang.HolProg 64 :=
.seq RemovedBody731_15 RemovedBody731_68

def RemovedBody731_70 : StackLang.HolProg 64 :=
.seq RemovedBody731_14 RemovedBody731_69

def RemovedBody731_71 : StackLang.HolProg 64 :=
.seq RemovedBody731_13 RemovedBody731_70

def RemovedBody731_72 : StackLang.HolProg 64 :=
.seq RemovedBody731_12 RemovedBody731_71

def RemovedBody731_73 : StackLang.HolProg 64 :=
.seq RemovedBody731_11 RemovedBody731_72

def RemovedBody731_74 : StackLang.HolProg 64 :=
.seq RemovedBody731_10 RemovedBody731_73

def RemovedBody731_75 : StackLang.HolProg 64 :=
.seq RemovedBody731_9 RemovedBody731_74

def RemovedBody731_76 : StackLang.HolProg 64 :=
.seq RemovedBody731_8 RemovedBody731_75

def RemovedBody731_77 : StackLang.HolProg 64 :=
.seq RemovedBody731_7 RemovedBody731_76

def RemovedBody731_78 : StackLang.HolProg 64 :=
.seq RemovedBody731_6 RemovedBody731_77

def RemovedBody731_79 : StackLang.HolProg 64 :=
.seq RemovedBody731_5 RemovedBody731_78

def RemovedBody731_80 : StackLang.HolProg 64 :=
.seq RemovedBody731_4 RemovedBody731_79

def RemovedBody731_81 : StackLang.HolProg 64 :=
.seq RemovedBody731_3 RemovedBody731_80

def RemovedBody731_82 : StackLang.HolProg 64 :=
.seq RemovedBody731_2 RemovedBody731_81

def RemovedBody731_83 : StackLang.HolProg 64 :=
.seq RemovedBody731_1 RemovedBody731_82

def RemovedBody731_84 : StackLang.HolProg 64 :=
.seq RemovedBody731_0 RemovedBody731_83

def Removed731 : Nat × StackLang.HolProg 64 := (731, RemovedBody731_84)
theorem Removed731_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc731 = Removed731 := by
  kernel_rfl
#print axioms Removed731_eq
end InitECandidate.Proofs.BackendStages
