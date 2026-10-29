import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc150
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody150_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody150_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody150_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1779033703#64)

def RemovedBody150_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody150_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody150_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody150_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody150_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 3144134277#64)

def RemovedBody150_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody150_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody150_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody150_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody150_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1013904242#64)

def RemovedBody150_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody150_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody150_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody150_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody150_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 2773480762#64)

def RemovedBody150_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody150_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody150_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody150_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody150_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1359893119#64)

def RemovedBody150_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody150_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody150_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody150_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody150_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 2600822924#64)

def RemovedBody150_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody150_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody150_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody150_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody150_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 528734635#64)

def RemovedBody150_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody150_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody150_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody150_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody150_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1541459225#64)

def RemovedBody150_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody150_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody150_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody150_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody150_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody150_43 : StackLang.HolProg 64 :=
.seq RemovedBody150_41 RemovedBody150_42

def RemovedBody150_44 : StackLang.HolProg 64 :=
.seq RemovedBody150_40 RemovedBody150_43

def RemovedBody150_45 : StackLang.HolProg 64 :=
.seq RemovedBody150_39 RemovedBody150_44

def RemovedBody150_46 : StackLang.HolProg 64 :=
.seq RemovedBody150_38 RemovedBody150_45

def RemovedBody150_47 : StackLang.HolProg 64 :=
.seq RemovedBody150_37 RemovedBody150_46

def RemovedBody150_48 : StackLang.HolProg 64 :=
.seq RemovedBody150_36 RemovedBody150_47

def RemovedBody150_49 : StackLang.HolProg 64 :=
.seq RemovedBody150_35 RemovedBody150_48

def RemovedBody150_50 : StackLang.HolProg 64 :=
.seq RemovedBody150_34 RemovedBody150_49

def RemovedBody150_51 : StackLang.HolProg 64 :=
.seq RemovedBody150_33 RemovedBody150_50

def RemovedBody150_52 : StackLang.HolProg 64 :=
.seq RemovedBody150_32 RemovedBody150_51

def RemovedBody150_53 : StackLang.HolProg 64 :=
.seq RemovedBody150_31 RemovedBody150_52

def RemovedBody150_54 : StackLang.HolProg 64 :=
.seq RemovedBody150_30 RemovedBody150_53

def RemovedBody150_55 : StackLang.HolProg 64 :=
.seq RemovedBody150_29 RemovedBody150_54

def RemovedBody150_56 : StackLang.HolProg 64 :=
.seq RemovedBody150_28 RemovedBody150_55

def RemovedBody150_57 : StackLang.HolProg 64 :=
.seq RemovedBody150_27 RemovedBody150_56

def RemovedBody150_58 : StackLang.HolProg 64 :=
.seq RemovedBody150_26 RemovedBody150_57

def RemovedBody150_59 : StackLang.HolProg 64 :=
.seq RemovedBody150_25 RemovedBody150_58

def RemovedBody150_60 : StackLang.HolProg 64 :=
.seq RemovedBody150_24 RemovedBody150_59

def RemovedBody150_61 : StackLang.HolProg 64 :=
.seq RemovedBody150_23 RemovedBody150_60

def RemovedBody150_62 : StackLang.HolProg 64 :=
.seq RemovedBody150_22 RemovedBody150_61

def RemovedBody150_63 : StackLang.HolProg 64 :=
.seq RemovedBody150_21 RemovedBody150_62

def RemovedBody150_64 : StackLang.HolProg 64 :=
.seq RemovedBody150_20 RemovedBody150_63

def RemovedBody150_65 : StackLang.HolProg 64 :=
.seq RemovedBody150_19 RemovedBody150_64

def RemovedBody150_66 : StackLang.HolProg 64 :=
.seq RemovedBody150_18 RemovedBody150_65

def RemovedBody150_67 : StackLang.HolProg 64 :=
.seq RemovedBody150_17 RemovedBody150_66

def RemovedBody150_68 : StackLang.HolProg 64 :=
.seq RemovedBody150_16 RemovedBody150_67

def RemovedBody150_69 : StackLang.HolProg 64 :=
.seq RemovedBody150_15 RemovedBody150_68

def RemovedBody150_70 : StackLang.HolProg 64 :=
.seq RemovedBody150_14 RemovedBody150_69

def RemovedBody150_71 : StackLang.HolProg 64 :=
.seq RemovedBody150_13 RemovedBody150_70

def RemovedBody150_72 : StackLang.HolProg 64 :=
.seq RemovedBody150_12 RemovedBody150_71

def RemovedBody150_73 : StackLang.HolProg 64 :=
.seq RemovedBody150_11 RemovedBody150_72

def RemovedBody150_74 : StackLang.HolProg 64 :=
.seq RemovedBody150_10 RemovedBody150_73

def RemovedBody150_75 : StackLang.HolProg 64 :=
.seq RemovedBody150_9 RemovedBody150_74

def RemovedBody150_76 : StackLang.HolProg 64 :=
.seq RemovedBody150_8 RemovedBody150_75

def RemovedBody150_77 : StackLang.HolProg 64 :=
.seq RemovedBody150_7 RemovedBody150_76

def RemovedBody150_78 : StackLang.HolProg 64 :=
.seq RemovedBody150_6 RemovedBody150_77

def RemovedBody150_79 : StackLang.HolProg 64 :=
.seq RemovedBody150_5 RemovedBody150_78

def RemovedBody150_80 : StackLang.HolProg 64 :=
.seq RemovedBody150_4 RemovedBody150_79

def RemovedBody150_81 : StackLang.HolProg 64 :=
.seq RemovedBody150_3 RemovedBody150_80

def RemovedBody150_82 : StackLang.HolProg 64 :=
.seq RemovedBody150_2 RemovedBody150_81

def RemovedBody150_83 : StackLang.HolProg 64 :=
.seq RemovedBody150_1 RemovedBody150_82

def RemovedBody150_84 : StackLang.HolProg 64 :=
.seq RemovedBody150_0 RemovedBody150_83

def Removed150 : Nat × StackLang.HolProg 64 := (150, RemovedBody150_84)
theorem Removed150_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc150 = Removed150 := by
  kernel_rfl
#print axioms Removed150_eq
end InitECandidate.Proofs.BackendStages
