import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc648
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody648_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody648_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody648_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def RemovedBody648_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody648_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody648_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody648_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody648_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody648_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody648_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody648_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody648_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody648_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody648_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody648_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody648_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody648_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def RemovedBody648_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody648_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody648_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody648_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody648_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def RemovedBody648_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody648_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody648_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 16#64))

def RemovedBody648_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody648_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody648_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def RemovedBody648_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody648_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody648_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody648_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody648_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody648_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody648_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody648_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody648_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody648_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody648_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody648_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody648_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody648_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody648_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody648_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody648_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody648_45 : StackLang.HolProg 64 :=
.seq RemovedBody648_43 RemovedBody648_44

def RemovedBody648_46 : StackLang.HolProg 64 :=
.seq RemovedBody648_42 RemovedBody648_45

def RemovedBody648_47 : StackLang.HolProg 64 :=
.seq RemovedBody648_41 RemovedBody648_46

def RemovedBody648_48 : StackLang.HolProg 64 :=
.seq RemovedBody648_40 RemovedBody648_47

def RemovedBody648_49 : StackLang.HolProg 64 :=
.seq RemovedBody648_39 RemovedBody648_48

def RemovedBody648_50 : StackLang.HolProg 64 :=
.seq RemovedBody648_38 RemovedBody648_49

def RemovedBody648_51 : StackLang.HolProg 64 :=
.seq RemovedBody648_37 RemovedBody648_50

def RemovedBody648_52 : StackLang.HolProg 64 :=
.seq RemovedBody648_36 RemovedBody648_51

def RemovedBody648_53 : StackLang.HolProg 64 :=
.seq RemovedBody648_35 RemovedBody648_52

def RemovedBody648_54 : StackLang.HolProg 64 :=
.seq RemovedBody648_34 RemovedBody648_53

def RemovedBody648_55 : StackLang.HolProg 64 :=
.seq RemovedBody648_33 RemovedBody648_54

def RemovedBody648_56 : StackLang.HolProg 64 :=
.seq RemovedBody648_32 RemovedBody648_55

def RemovedBody648_57 : StackLang.HolProg 64 :=
.seq RemovedBody648_31 RemovedBody648_56

def RemovedBody648_58 : StackLang.HolProg 64 :=
.seq RemovedBody648_30 RemovedBody648_57

def RemovedBody648_59 : StackLang.HolProg 64 :=
.seq RemovedBody648_29 RemovedBody648_58

def RemovedBody648_60 : StackLang.HolProg 64 :=
.seq RemovedBody648_28 RemovedBody648_59

def RemovedBody648_61 : StackLang.HolProg 64 :=
.seq RemovedBody648_27 RemovedBody648_60

def RemovedBody648_62 : StackLang.HolProg 64 :=
.seq RemovedBody648_26 RemovedBody648_61

def RemovedBody648_63 : StackLang.HolProg 64 :=
.seq RemovedBody648_25 RemovedBody648_62

def RemovedBody648_64 : StackLang.HolProg 64 :=
.seq RemovedBody648_24 RemovedBody648_63

def RemovedBody648_65 : StackLang.HolProg 64 :=
.seq RemovedBody648_23 RemovedBody648_64

def RemovedBody648_66 : StackLang.HolProg 64 :=
.seq RemovedBody648_22 RemovedBody648_65

def RemovedBody648_67 : StackLang.HolProg 64 :=
.seq RemovedBody648_21 RemovedBody648_66

def RemovedBody648_68 : StackLang.HolProg 64 :=
.seq RemovedBody648_20 RemovedBody648_67

def RemovedBody648_69 : StackLang.HolProg 64 :=
.seq RemovedBody648_19 RemovedBody648_68

def RemovedBody648_70 : StackLang.HolProg 64 :=
.seq RemovedBody648_18 RemovedBody648_69

def RemovedBody648_71 : StackLang.HolProg 64 :=
.seq RemovedBody648_17 RemovedBody648_70

def RemovedBody648_72 : StackLang.HolProg 64 :=
.seq RemovedBody648_16 RemovedBody648_71

def RemovedBody648_73 : StackLang.HolProg 64 :=
.seq RemovedBody648_15 RemovedBody648_72

def RemovedBody648_74 : StackLang.HolProg 64 :=
.seq RemovedBody648_14 RemovedBody648_73

def RemovedBody648_75 : StackLang.HolProg 64 :=
.seq RemovedBody648_13 RemovedBody648_74

def RemovedBody648_76 : StackLang.HolProg 64 :=
.seq RemovedBody648_12 RemovedBody648_75

def RemovedBody648_77 : StackLang.HolProg 64 :=
.seq RemovedBody648_11 RemovedBody648_76

def RemovedBody648_78 : StackLang.HolProg 64 :=
.seq RemovedBody648_10 RemovedBody648_77

def RemovedBody648_79 : StackLang.HolProg 64 :=
.seq RemovedBody648_9 RemovedBody648_78

def RemovedBody648_80 : StackLang.HolProg 64 :=
.seq RemovedBody648_8 RemovedBody648_79

def RemovedBody648_81 : StackLang.HolProg 64 :=
.seq RemovedBody648_7 RemovedBody648_80

def RemovedBody648_82 : StackLang.HolProg 64 :=
.seq RemovedBody648_6 RemovedBody648_81

def RemovedBody648_83 : StackLang.HolProg 64 :=
.seq RemovedBody648_5 RemovedBody648_82

def RemovedBody648_84 : StackLang.HolProg 64 :=
.seq RemovedBody648_4 RemovedBody648_83

def RemovedBody648_85 : StackLang.HolProg 64 :=
.seq RemovedBody648_3 RemovedBody648_84

def RemovedBody648_86 : StackLang.HolProg 64 :=
.seq RemovedBody648_2 RemovedBody648_85

def RemovedBody648_87 : StackLang.HolProg 64 :=
.seq RemovedBody648_1 RemovedBody648_86

def RemovedBody648_88 : StackLang.HolProg 64 :=
.seq RemovedBody648_0 RemovedBody648_87

def Removed648 : Nat × StackLang.HolProg 64 := (648, RemovedBody648_88)
theorem Removed648_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc648 = Removed648 := by
  kernel_rfl
#print axioms Removed648_eq
end InitECandidate.Proofs.BackendStages
