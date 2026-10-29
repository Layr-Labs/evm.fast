import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc220
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody220_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody220_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody220_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def RemovedBody220_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody220_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody220_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody220_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody220_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody220_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody220_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody220_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody220_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody220_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody220_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody220_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody220_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody220_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def RemovedBody220_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody220_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody220_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody220_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody220_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def RemovedBody220_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody220_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody220_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 16#64))

def RemovedBody220_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody220_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody220_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def RemovedBody220_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody220_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody220_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody220_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody220_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody220_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody220_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody220_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody220_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody220_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody220_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody220_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody220_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody220_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody220_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody220_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody220_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody220_45 : StackLang.HolProg 64 :=
.seq RemovedBody220_43 RemovedBody220_44

def RemovedBody220_46 : StackLang.HolProg 64 :=
.seq RemovedBody220_42 RemovedBody220_45

def RemovedBody220_47 : StackLang.HolProg 64 :=
.seq RemovedBody220_41 RemovedBody220_46

def RemovedBody220_48 : StackLang.HolProg 64 :=
.seq RemovedBody220_40 RemovedBody220_47

def RemovedBody220_49 : StackLang.HolProg 64 :=
.seq RemovedBody220_39 RemovedBody220_48

def RemovedBody220_50 : StackLang.HolProg 64 :=
.seq RemovedBody220_38 RemovedBody220_49

def RemovedBody220_51 : StackLang.HolProg 64 :=
.seq RemovedBody220_37 RemovedBody220_50

def RemovedBody220_52 : StackLang.HolProg 64 :=
.seq RemovedBody220_36 RemovedBody220_51

def RemovedBody220_53 : StackLang.HolProg 64 :=
.seq RemovedBody220_35 RemovedBody220_52

def RemovedBody220_54 : StackLang.HolProg 64 :=
.seq RemovedBody220_34 RemovedBody220_53

def RemovedBody220_55 : StackLang.HolProg 64 :=
.seq RemovedBody220_33 RemovedBody220_54

def RemovedBody220_56 : StackLang.HolProg 64 :=
.seq RemovedBody220_32 RemovedBody220_55

def RemovedBody220_57 : StackLang.HolProg 64 :=
.seq RemovedBody220_31 RemovedBody220_56

def RemovedBody220_58 : StackLang.HolProg 64 :=
.seq RemovedBody220_30 RemovedBody220_57

def RemovedBody220_59 : StackLang.HolProg 64 :=
.seq RemovedBody220_29 RemovedBody220_58

def RemovedBody220_60 : StackLang.HolProg 64 :=
.seq RemovedBody220_28 RemovedBody220_59

def RemovedBody220_61 : StackLang.HolProg 64 :=
.seq RemovedBody220_27 RemovedBody220_60

def RemovedBody220_62 : StackLang.HolProg 64 :=
.seq RemovedBody220_26 RemovedBody220_61

def RemovedBody220_63 : StackLang.HolProg 64 :=
.seq RemovedBody220_25 RemovedBody220_62

def RemovedBody220_64 : StackLang.HolProg 64 :=
.seq RemovedBody220_24 RemovedBody220_63

def RemovedBody220_65 : StackLang.HolProg 64 :=
.seq RemovedBody220_23 RemovedBody220_64

def RemovedBody220_66 : StackLang.HolProg 64 :=
.seq RemovedBody220_22 RemovedBody220_65

def RemovedBody220_67 : StackLang.HolProg 64 :=
.seq RemovedBody220_21 RemovedBody220_66

def RemovedBody220_68 : StackLang.HolProg 64 :=
.seq RemovedBody220_20 RemovedBody220_67

def RemovedBody220_69 : StackLang.HolProg 64 :=
.seq RemovedBody220_19 RemovedBody220_68

def RemovedBody220_70 : StackLang.HolProg 64 :=
.seq RemovedBody220_18 RemovedBody220_69

def RemovedBody220_71 : StackLang.HolProg 64 :=
.seq RemovedBody220_17 RemovedBody220_70

def RemovedBody220_72 : StackLang.HolProg 64 :=
.seq RemovedBody220_16 RemovedBody220_71

def RemovedBody220_73 : StackLang.HolProg 64 :=
.seq RemovedBody220_15 RemovedBody220_72

def RemovedBody220_74 : StackLang.HolProg 64 :=
.seq RemovedBody220_14 RemovedBody220_73

def RemovedBody220_75 : StackLang.HolProg 64 :=
.seq RemovedBody220_13 RemovedBody220_74

def RemovedBody220_76 : StackLang.HolProg 64 :=
.seq RemovedBody220_12 RemovedBody220_75

def RemovedBody220_77 : StackLang.HolProg 64 :=
.seq RemovedBody220_11 RemovedBody220_76

def RemovedBody220_78 : StackLang.HolProg 64 :=
.seq RemovedBody220_10 RemovedBody220_77

def RemovedBody220_79 : StackLang.HolProg 64 :=
.seq RemovedBody220_9 RemovedBody220_78

def RemovedBody220_80 : StackLang.HolProg 64 :=
.seq RemovedBody220_8 RemovedBody220_79

def RemovedBody220_81 : StackLang.HolProg 64 :=
.seq RemovedBody220_7 RemovedBody220_80

def RemovedBody220_82 : StackLang.HolProg 64 :=
.seq RemovedBody220_6 RemovedBody220_81

def RemovedBody220_83 : StackLang.HolProg 64 :=
.seq RemovedBody220_5 RemovedBody220_82

def RemovedBody220_84 : StackLang.HolProg 64 :=
.seq RemovedBody220_4 RemovedBody220_83

def RemovedBody220_85 : StackLang.HolProg 64 :=
.seq RemovedBody220_3 RemovedBody220_84

def RemovedBody220_86 : StackLang.HolProg 64 :=
.seq RemovedBody220_2 RemovedBody220_85

def RemovedBody220_87 : StackLang.HolProg 64 :=
.seq RemovedBody220_1 RemovedBody220_86

def RemovedBody220_88 : StackLang.HolProg 64 :=
.seq RemovedBody220_0 RemovedBody220_87

def Removed220 : Nat × StackLang.HolProg 64 := (220, RemovedBody220_88)
theorem Removed220_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc220 = Removed220 := by
  kernel_rfl
#print axioms Removed220_eq
end InitECandidate.Proofs.BackendStages
