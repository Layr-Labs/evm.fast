import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc383
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody383_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody383_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody383_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody383_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody383_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody383_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody383_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody383_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody383_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody383_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody383_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody383_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody383_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def RemovedBody383_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody383_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody383_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody383_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody383_17 : StackLang.HolProg 64 :=
.seq RemovedBody383_15 RemovedBody383_16

def RemovedBody383_18 : StackLang.HolProg 64 :=
.seq RemovedBody383_14 RemovedBody383_17

def RemovedBody383_19 : StackLang.HolProg 64 :=
.seq RemovedBody383_13 RemovedBody383_18

def RemovedBody383_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody383_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody383_22 : StackLang.HolProg 64 :=
.seq RemovedBody383_20 RemovedBody383_21

def RemovedBody383_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) RemovedBody383_19 RemovedBody383_22

def RemovedBody383_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody383_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody383_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody383_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody383_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody383_29 : StackLang.HolProg 64 :=
.seq RemovedBody383_27 RemovedBody383_28

def RemovedBody383_30 : StackLang.HolProg 64 :=
.seq RemovedBody383_26 RemovedBody383_29

def RemovedBody383_31 : StackLang.HolProg 64 :=
.seq RemovedBody383_25 RemovedBody383_30

def RemovedBody383_32 : StackLang.HolProg 64 :=
.seq RemovedBody383_24 RemovedBody383_31

def RemovedBody383_33 : StackLang.HolProg 64 :=
.seq RemovedBody383_23 RemovedBody383_32

def RemovedBody383_34 : StackLang.HolProg 64 :=
.seq RemovedBody383_12 RemovedBody383_33

def RemovedBody383_35 : StackLang.HolProg 64 :=
.seq RemovedBody383_11 RemovedBody383_34

def RemovedBody383_36 : StackLang.HolProg 64 :=
.seq RemovedBody383_10 RemovedBody383_35

def RemovedBody383_37 : StackLang.HolProg 64 :=
.seq RemovedBody383_9 RemovedBody383_36

def RemovedBody383_38 : StackLang.HolProg 64 :=
.seq RemovedBody383_8 RemovedBody383_37

def RemovedBody383_39 : StackLang.HolProg 64 :=
.seq RemovedBody383_7 RemovedBody383_38

def RemovedBody383_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody383_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody383_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody383_43 : StackLang.HolProg 64 :=
.seq RemovedBody383_41 RemovedBody383_42

def RemovedBody383_44 : StackLang.HolProg 64 :=
.seq RemovedBody383_40 RemovedBody383_43

def RemovedBody383_45 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody383_39 RemovedBody383_44

def RemovedBody383_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody383_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody383_48 : StackLang.HolProg 64 :=
.seq RemovedBody383_46 RemovedBody383_47

def RemovedBody383_49 : StackLang.HolProg 64 :=
.seq RemovedBody383_45 RemovedBody383_48

def RemovedBody383_50 : StackLang.HolProg 64 :=
.seq RemovedBody383_6 RemovedBody383_49

def RemovedBody383_51 : StackLang.HolProg 64 :=
.loop RemovedBody383_50

def RemovedBody383_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody383_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody383_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody383_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def RemovedBody383_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody383_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody383_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody383_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody383_60 : StackLang.HolProg 64 :=
.seq RemovedBody383_58 RemovedBody383_59

def RemovedBody383_61 : StackLang.HolProg 64 :=
.seq RemovedBody383_57 RemovedBody383_60

def RemovedBody383_62 : StackLang.HolProg 64 :=
.seq RemovedBody383_56 RemovedBody383_61

def RemovedBody383_63 : StackLang.HolProg 64 :=
.seq RemovedBody383_55 RemovedBody383_62

def RemovedBody383_64 : StackLang.HolProg 64 :=
.seq RemovedBody383_54 RemovedBody383_63

def RemovedBody383_65 : StackLang.HolProg 64 :=
.seq RemovedBody383_53 RemovedBody383_64

def RemovedBody383_66 : StackLang.HolProg 64 :=
.seq RemovedBody383_52 RemovedBody383_65

def RemovedBody383_67 : StackLang.HolProg 64 :=
.seq RemovedBody383_51 RemovedBody383_66

def RemovedBody383_68 : StackLang.HolProg 64 :=
.seq RemovedBody383_5 RemovedBody383_67

def RemovedBody383_69 : StackLang.HolProg 64 :=
.seq RemovedBody383_4 RemovedBody383_68

def RemovedBody383_70 : StackLang.HolProg 64 :=
.seq RemovedBody383_3 RemovedBody383_69

def RemovedBody383_71 : StackLang.HolProg 64 :=
.seq RemovedBody383_2 RemovedBody383_70

def RemovedBody383_72 : StackLang.HolProg 64 :=
.seq RemovedBody383_1 RemovedBody383_71

def RemovedBody383_73 : StackLang.HolProg 64 :=
.seq RemovedBody383_0 RemovedBody383_72

def Removed383 : Nat × StackLang.HolProg 64 := (383, RemovedBody383_73)
theorem Removed383_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc383 = Removed383 := by
  kernel_rfl
#print axioms Removed383_eq
end InitECandidate.Proofs.BackendStages
