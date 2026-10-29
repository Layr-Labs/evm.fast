import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc221
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody221_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody221_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody221_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody221_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody221_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody221_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody221_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody221_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody221_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody221_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody221_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody221_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody221_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody221_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody221_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def RemovedBody221_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody221_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 16#64))

def RemovedBody221_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody221_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def RemovedBody221_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody221_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody221_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def RemovedBody221_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody221_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody221_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody221_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody221_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody221_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody221_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody221_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody221_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody221_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody221_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody221_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody221_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody221_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody221_36 : StackLang.HolProg 64 :=
.seq RemovedBody221_34 RemovedBody221_35

def RemovedBody221_37 : StackLang.HolProg 64 :=
.seq RemovedBody221_33 RemovedBody221_36

def RemovedBody221_38 : StackLang.HolProg 64 :=
.seq RemovedBody221_32 RemovedBody221_37

def RemovedBody221_39 : StackLang.HolProg 64 :=
.seq RemovedBody221_31 RemovedBody221_38

def RemovedBody221_40 : StackLang.HolProg 64 :=
.seq RemovedBody221_30 RemovedBody221_39

def RemovedBody221_41 : StackLang.HolProg 64 :=
.seq RemovedBody221_29 RemovedBody221_40

def RemovedBody221_42 : StackLang.HolProg 64 :=
.seq RemovedBody221_28 RemovedBody221_41

def RemovedBody221_43 : StackLang.HolProg 64 :=
.seq RemovedBody221_27 RemovedBody221_42

def RemovedBody221_44 : StackLang.HolProg 64 :=
.seq RemovedBody221_26 RemovedBody221_43

def RemovedBody221_45 : StackLang.HolProg 64 :=
.seq RemovedBody221_25 RemovedBody221_44

def RemovedBody221_46 : StackLang.HolProg 64 :=
.seq RemovedBody221_24 RemovedBody221_45

def RemovedBody221_47 : StackLang.HolProg 64 :=
.seq RemovedBody221_23 RemovedBody221_46

def RemovedBody221_48 : StackLang.HolProg 64 :=
.seq RemovedBody221_22 RemovedBody221_47

def RemovedBody221_49 : StackLang.HolProg 64 :=
.seq RemovedBody221_21 RemovedBody221_48

def RemovedBody221_50 : StackLang.HolProg 64 :=
.seq RemovedBody221_20 RemovedBody221_49

def RemovedBody221_51 : StackLang.HolProg 64 :=
.seq RemovedBody221_19 RemovedBody221_50

def RemovedBody221_52 : StackLang.HolProg 64 :=
.seq RemovedBody221_18 RemovedBody221_51

def RemovedBody221_53 : StackLang.HolProg 64 :=
.seq RemovedBody221_17 RemovedBody221_52

def RemovedBody221_54 : StackLang.HolProg 64 :=
.seq RemovedBody221_16 RemovedBody221_53

def RemovedBody221_55 : StackLang.HolProg 64 :=
.seq RemovedBody221_15 RemovedBody221_54

def RemovedBody221_56 : StackLang.HolProg 64 :=
.seq RemovedBody221_14 RemovedBody221_55

def RemovedBody221_57 : StackLang.HolProg 64 :=
.seq RemovedBody221_13 RemovedBody221_56

def RemovedBody221_58 : StackLang.HolProg 64 :=
.seq RemovedBody221_12 RemovedBody221_57

def RemovedBody221_59 : StackLang.HolProg 64 :=
.seq RemovedBody221_11 RemovedBody221_58

def RemovedBody221_60 : StackLang.HolProg 64 :=
.seq RemovedBody221_10 RemovedBody221_59

def RemovedBody221_61 : StackLang.HolProg 64 :=
.seq RemovedBody221_9 RemovedBody221_60

def RemovedBody221_62 : StackLang.HolProg 64 :=
.seq RemovedBody221_8 RemovedBody221_61

def RemovedBody221_63 : StackLang.HolProg 64 :=
.seq RemovedBody221_7 RemovedBody221_62

def RemovedBody221_64 : StackLang.HolProg 64 :=
.seq RemovedBody221_6 RemovedBody221_63

def RemovedBody221_65 : StackLang.HolProg 64 :=
.seq RemovedBody221_5 RemovedBody221_64

def RemovedBody221_66 : StackLang.HolProg 64 :=
.seq RemovedBody221_4 RemovedBody221_65

def RemovedBody221_67 : StackLang.HolProg 64 :=
.seq RemovedBody221_3 RemovedBody221_66

def RemovedBody221_68 : StackLang.HolProg 64 :=
.seq RemovedBody221_2 RemovedBody221_67

def RemovedBody221_69 : StackLang.HolProg 64 :=
.seq RemovedBody221_1 RemovedBody221_68

def RemovedBody221_70 : StackLang.HolProg 64 :=
.seq RemovedBody221_0 RemovedBody221_69

def Removed221 : Nat × StackLang.HolProg 64 := (221, RemovedBody221_70)
theorem Removed221_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc221 = Removed221 := by
  kernel_rfl
#print axioms Removed221_eq
end InitECandidate.Proofs.BackendStages
