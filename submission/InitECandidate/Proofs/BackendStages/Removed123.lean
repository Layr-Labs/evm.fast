import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc123
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody123_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody123_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody123_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def RemovedBody123_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody123_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 32#64)

def RemovedBody123_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody123_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody123_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody123_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody123_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody123_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody123_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody123_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody123_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody123_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody123_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody123_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody123_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody123_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody123_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody123_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody123_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody123_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody123_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 1#64)

def RemovedBody123_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody123_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody123_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody123_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody123_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody123_29 : StackLang.HolProg 64 :=
.seq RemovedBody123_27 RemovedBody123_28

def RemovedBody123_30 : StackLang.HolProg 64 :=
.seq RemovedBody123_26 RemovedBody123_29

def RemovedBody123_31 : StackLang.HolProg 64 :=
.seq RemovedBody123_25 RemovedBody123_30

def RemovedBody123_32 : StackLang.HolProg 64 :=
.seq RemovedBody123_24 RemovedBody123_31

def RemovedBody123_33 : StackLang.HolProg 64 :=
.seq RemovedBody123_23 RemovedBody123_32

def RemovedBody123_34 : StackLang.HolProg 64 :=
.seq RemovedBody123_22 RemovedBody123_33

def RemovedBody123_35 : StackLang.HolProg 64 :=
.seq RemovedBody123_21 RemovedBody123_34

def RemovedBody123_36 : StackLang.HolProg 64 :=
.seq RemovedBody123_20 RemovedBody123_35

def RemovedBody123_37 : StackLang.HolProg 64 :=
.seq RemovedBody123_19 RemovedBody123_36

def RemovedBody123_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody123_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody123_40 : StackLang.HolProg 64 :=
.seq RemovedBody123_38 RemovedBody123_39

def RemovedBody123_41 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody123_37 RemovedBody123_40

def RemovedBody123_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody123_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody123_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody123_45 : StackLang.HolProg 64 :=
.seq RemovedBody123_43 RemovedBody123_44

def RemovedBody123_46 : StackLang.HolProg 64 :=
.seq RemovedBody123_42 RemovedBody123_45

def RemovedBody123_47 : StackLang.HolProg 64 :=
.seq RemovedBody123_41 RemovedBody123_46

def RemovedBody123_48 : StackLang.HolProg 64 :=
.seq RemovedBody123_18 RemovedBody123_47

def RemovedBody123_49 : StackLang.HolProg 64 :=
.seq RemovedBody123_17 RemovedBody123_48

def RemovedBody123_50 : StackLang.HolProg 64 :=
.seq RemovedBody123_16 RemovedBody123_49

def RemovedBody123_51 : StackLang.HolProg 64 :=
.seq RemovedBody123_15 RemovedBody123_50

def RemovedBody123_52 : StackLang.HolProg 64 :=
.seq RemovedBody123_14 RemovedBody123_51

def RemovedBody123_53 : StackLang.HolProg 64 :=
.seq RemovedBody123_13 RemovedBody123_52

def RemovedBody123_54 : StackLang.HolProg 64 :=
.seq RemovedBody123_12 RemovedBody123_53

def RemovedBody123_55 : StackLang.HolProg 64 :=
.seq RemovedBody123_11 RemovedBody123_54

def RemovedBody123_56 : StackLang.HolProg 64 :=
.seq RemovedBody123_10 RemovedBody123_55

def RemovedBody123_57 : StackLang.HolProg 64 :=
.seq RemovedBody123_9 RemovedBody123_56

def RemovedBody123_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody123_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody123_60 : StackLang.HolProg 64 :=
.seq RemovedBody123_58 RemovedBody123_59

def RemovedBody123_61 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) RemovedBody123_57 RemovedBody123_60

def RemovedBody123_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody123_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody123_64 : StackLang.HolProg 64 :=
.seq RemovedBody123_62 RemovedBody123_63

def RemovedBody123_65 : StackLang.HolProg 64 :=
.seq RemovedBody123_61 RemovedBody123_64

def RemovedBody123_66 : StackLang.HolProg 64 :=
.seq RemovedBody123_8 RemovedBody123_65

def RemovedBody123_67 : StackLang.HolProg 64 :=
.seq RemovedBody123_7 RemovedBody123_66

def RemovedBody123_68 : StackLang.HolProg 64 :=
.loop RemovedBody123_67

def RemovedBody123_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody123_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody123_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody123_72 : StackLang.HolProg 64 :=
.seq RemovedBody123_70 RemovedBody123_71

def RemovedBody123_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody123_74 : StackLang.HolProg 64 :=
.seq RemovedBody123_72 RemovedBody123_73

def RemovedBody123_75 : StackLang.HolProg 64 :=
.seq RemovedBody123_69 RemovedBody123_74

def RemovedBody123_76 : StackLang.HolProg 64 :=
.seq RemovedBody123_68 RemovedBody123_75

def RemovedBody123_77 : StackLang.HolProg 64 :=
.seq RemovedBody123_6 RemovedBody123_76

def RemovedBody123_78 : StackLang.HolProg 64 :=
.seq RemovedBody123_5 RemovedBody123_77

def RemovedBody123_79 : StackLang.HolProg 64 :=
.seq RemovedBody123_4 RemovedBody123_78

def RemovedBody123_80 : StackLang.HolProg 64 :=
.seq RemovedBody123_3 RemovedBody123_79

def RemovedBody123_81 : StackLang.HolProg 64 :=
.seq RemovedBody123_2 RemovedBody123_80

def RemovedBody123_82 : StackLang.HolProg 64 :=
.seq RemovedBody123_1 RemovedBody123_81

def RemovedBody123_83 : StackLang.HolProg 64 :=
.seq RemovedBody123_0 RemovedBody123_82

def Removed123 : Nat × StackLang.HolProg 64 := (123, RemovedBody123_83)
theorem Removed123_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc123 = Removed123 := by
  kernel_rfl
#print axioms Removed123_eq
end InitECandidate.Proofs.BackendStages
