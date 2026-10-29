import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc841
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody841_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody841_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody841_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody841_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody841_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody841_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 16#64)

def RemovedBody841_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody841_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody841_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody841_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody841_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody841_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody841_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody841_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody841_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody841_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody841_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody841_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 16#64))

def RemovedBody841_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 33#64)

def RemovedBody841_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody841_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody841_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody841_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 32#64))

def RemovedBody841_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody841_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody841_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody841_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody841_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody841_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody841_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody841_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody841_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody841_32 : StackLang.HolProg 64 :=
.seq RemovedBody841_30 RemovedBody841_31

def RemovedBody841_33 : StackLang.HolProg 64 :=
.seq RemovedBody841_29 RemovedBody841_32

def RemovedBody841_34 : StackLang.HolProg 64 :=
.seq RemovedBody841_28 RemovedBody841_33

def RemovedBody841_35 : StackLang.HolProg 64 :=
.seq RemovedBody841_27 RemovedBody841_34

def RemovedBody841_36 : StackLang.HolProg 64 :=
.seq RemovedBody841_26 RemovedBody841_35

def RemovedBody841_37 : StackLang.HolProg 64 :=
.seq RemovedBody841_25 RemovedBody841_36

def RemovedBody841_38 : StackLang.HolProg 64 :=
.seq RemovedBody841_24 RemovedBody841_37

def RemovedBody841_39 : StackLang.HolProg 64 :=
.seq RemovedBody841_23 RemovedBody841_38

def RemovedBody841_40 : StackLang.HolProg 64 :=
.seq RemovedBody841_22 RemovedBody841_39

def RemovedBody841_41 : StackLang.HolProg 64 :=
.seq RemovedBody841_21 RemovedBody841_40

def RemovedBody841_42 : StackLang.HolProg 64 :=
.seq RemovedBody841_20 RemovedBody841_41

def RemovedBody841_43 : StackLang.HolProg 64 :=
.seq RemovedBody841_19 RemovedBody841_42

def RemovedBody841_44 : StackLang.HolProg 64 :=
.seq RemovedBody841_18 RemovedBody841_43

def RemovedBody841_45 : StackLang.HolProg 64 :=
.seq RemovedBody841_17 RemovedBody841_44

def RemovedBody841_46 : StackLang.HolProg 64 :=
.seq RemovedBody841_16 RemovedBody841_45

def RemovedBody841_47 : StackLang.HolProg 64 :=
.seq RemovedBody841_15 RemovedBody841_46

def RemovedBody841_48 : StackLang.HolProg 64 :=
.seq RemovedBody841_14 RemovedBody841_47

def RemovedBody841_49 : StackLang.HolProg 64 :=
.seq RemovedBody841_13 RemovedBody841_48

def RemovedBody841_50 : StackLang.HolProg 64 :=
.seq RemovedBody841_12 RemovedBody841_49

def RemovedBody841_51 : StackLang.HolProg 64 :=
.seq RemovedBody841_11 RemovedBody841_50

def RemovedBody841_52 : StackLang.HolProg 64 :=
.seq RemovedBody841_10 RemovedBody841_51

def RemovedBody841_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody841_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody841_55 : StackLang.HolProg 64 :=
.seq RemovedBody841_53 RemovedBody841_54

def RemovedBody841_56 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) RemovedBody841_52 RemovedBody841_55

def RemovedBody841_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody841_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody841_59 : StackLang.HolProg 64 :=
.seq RemovedBody841_57 RemovedBody841_58

def RemovedBody841_60 : StackLang.HolProg 64 :=
.seq RemovedBody841_56 RemovedBody841_59

def RemovedBody841_61 : StackLang.HolProg 64 :=
.seq RemovedBody841_9 RemovedBody841_60

def RemovedBody841_62 : StackLang.HolProg 64 :=
.loop RemovedBody841_61

def RemovedBody841_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody841_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody841_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def RemovedBody841_66 : StackLang.HolProg 64 :=
.seq RemovedBody841_64 RemovedBody841_65

def RemovedBody841_67 : StackLang.HolProg 64 :=
.seq RemovedBody841_63 RemovedBody841_66

def RemovedBody841_68 : StackLang.HolProg 64 :=
.seq RemovedBody841_62 RemovedBody841_67

def RemovedBody841_69 : StackLang.HolProg 64 :=
.seq RemovedBody841_8 RemovedBody841_68

def RemovedBody841_70 : StackLang.HolProg 64 :=
.seq RemovedBody841_7 RemovedBody841_69

def RemovedBody841_71 : StackLang.HolProg 64 :=
.seq RemovedBody841_6 RemovedBody841_70

def RemovedBody841_72 : StackLang.HolProg 64 :=
.seq RemovedBody841_5 RemovedBody841_71

def RemovedBody841_73 : StackLang.HolProg 64 :=
.seq RemovedBody841_4 RemovedBody841_72

def RemovedBody841_74 : StackLang.HolProg 64 :=
.seq RemovedBody841_3 RemovedBody841_73

def RemovedBody841_75 : StackLang.HolProg 64 :=
.seq RemovedBody841_2 RemovedBody841_74

def RemovedBody841_76 : StackLang.HolProg 64 :=
.seq RemovedBody841_1 RemovedBody841_75

def RemovedBody841_77 : StackLang.HolProg 64 :=
.seq RemovedBody841_0 RemovedBody841_76

def Removed841 : Nat × StackLang.HolProg 64 := (841, RemovedBody841_77)
theorem Removed841_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc841 = Removed841 := by
  kernel_rfl
#print axioms Removed841_eq
end InitECandidate.Proofs.BackendStages
