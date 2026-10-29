import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc425
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody425_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody425_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody425_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody425_3 : StackLang.HolProg 64 :=
.seq RemovedBody425_1 RemovedBody425_2

def RemovedBody425_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody425_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody425_3 RemovedBody425_4

def RemovedBody425_6 : StackLang.HolProg 64 :=
.seq RemovedBody425_0 RemovedBody425_5

def RemovedBody425_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody425_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody425_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody425_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody425_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def RemovedBody425_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 56#64))

def RemovedBody425_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody425_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def RemovedBody425_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody425_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody425_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1268#64)

def RemovedBody425_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody425_19 : StackLang.HolProg 64 :=
.seq RemovedBody425_17 RemovedBody425_18

def RemovedBody425_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody425_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody425_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody425_23 : StackLang.HolProg 64 :=
.seq RemovedBody425_21 RemovedBody425_22

def RemovedBody425_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody425_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody425_23 RemovedBody425_24

def RemovedBody425_26 : StackLang.HolProg 64 :=
.seq RemovedBody425_20 RemovedBody425_25

def RemovedBody425_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody425_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody425_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 425 3

def RemovedBody425_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody425_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody425_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody425_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody425_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody425_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody425_36 : StackLang.HolProg 64 :=
.seq RemovedBody425_34 RemovedBody425_35

def RemovedBody425_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody425_38 : StackLang.HolProg 64 :=
.seq RemovedBody425_36 RemovedBody425_37

def RemovedBody425_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody425_40 : StackLang.HolProg 64 :=
.seq RemovedBody425_38 RemovedBody425_39

def RemovedBody425_41 : StackLang.HolProg 64 :=
.seq RemovedBody425_33 RemovedBody425_40

def RemovedBody425_42 : StackLang.HolProg 64 :=
.seq RemovedBody425_32 RemovedBody425_41

def RemovedBody425_43 : StackLang.HolProg 64 :=
.seq RemovedBody425_31 RemovedBody425_42

def RemovedBody425_44 : StackLang.HolProg 64 :=
.seq RemovedBody425_30 RemovedBody425_43

def RemovedBody425_45 : StackLang.HolProg 64 :=
.seq RemovedBody425_29 RemovedBody425_44

def RemovedBody425_46 : StackLang.HolProg 64 :=
.seq RemovedBody425_28 RemovedBody425_45

def RemovedBody425_47 : StackLang.HolProg 64 :=
.seq RemovedBody425_27 RemovedBody425_46

def RemovedBody425_48 : StackLang.HolProg 64 :=
.seq RemovedBody425_26 RemovedBody425_47

def RemovedBody425_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody425_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody425_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody425_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody425_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody425_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody425_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody425_56 : StackLang.HolProg 64 :=
.seq RemovedBody425_54 RemovedBody425_55

def RemovedBody425_57 : StackLang.HolProg 64 :=
.seq RemovedBody425_53 RemovedBody425_56

def RemovedBody425_58 : StackLang.HolProg 64 :=
.seq RemovedBody425_52 RemovedBody425_57

def RemovedBody425_59 : StackLang.HolProg 64 :=
.seq RemovedBody425_51 RemovedBody425_58

def RemovedBody425_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody425_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody425_62 : StackLang.HolProg 64 :=
.seq RemovedBody425_60 RemovedBody425_61

def RemovedBody425_63 : StackLang.HolProg 64 :=
.call (some (RemovedBody425_59, 0, 425, 2)) (Sum.inl 192) (some (RemovedBody425_62, 425, 3))

def RemovedBody425_64 : StackLang.HolProg 64 :=
.seq RemovedBody425_50 RemovedBody425_63

def RemovedBody425_65 : StackLang.HolProg 64 :=
.seq RemovedBody425_49 RemovedBody425_64

def RemovedBody425_66 : StackLang.HolProg 64 :=
.seq RemovedBody425_48 RemovedBody425_65

def RemovedBody425_67 : StackLang.HolProg 64 :=
.seq RemovedBody425_19 RemovedBody425_66

def RemovedBody425_68 : StackLang.HolProg 64 :=
.seq RemovedBody425_16 RemovedBody425_67

def RemovedBody425_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody425_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody425_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody425_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody425_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody425_74 : StackLang.HolProg 64 :=
.seq RemovedBody425_72 RemovedBody425_73

def RemovedBody425_75 : StackLang.HolProg 64 :=
.seq RemovedBody425_71 RemovedBody425_74

def RemovedBody425_76 : StackLang.HolProg 64 :=
.seq RemovedBody425_70 RemovedBody425_75

def RemovedBody425_77 : StackLang.HolProg 64 :=
.seq RemovedBody425_69 RemovedBody425_76

def RemovedBody425_78 : StackLang.HolProg 64 :=
.seq RemovedBody425_68 RemovedBody425_77

def RemovedBody425_79 : StackLang.HolProg 64 :=
.seq RemovedBody425_15 RemovedBody425_78

def RemovedBody425_80 : StackLang.HolProg 64 :=
.seq RemovedBody425_14 RemovedBody425_79

def RemovedBody425_81 : StackLang.HolProg 64 :=
.seq RemovedBody425_13 RemovedBody425_80

def RemovedBody425_82 : StackLang.HolProg 64 :=
.seq RemovedBody425_12 RemovedBody425_81

def RemovedBody425_83 : StackLang.HolProg 64 :=
.seq RemovedBody425_11 RemovedBody425_82

def RemovedBody425_84 : StackLang.HolProg 64 :=
.seq RemovedBody425_10 RemovedBody425_83

def RemovedBody425_85 : StackLang.HolProg 64 :=
.seq RemovedBody425_9 RemovedBody425_84

def RemovedBody425_86 : StackLang.HolProg 64 :=
.seq RemovedBody425_8 RemovedBody425_85

def RemovedBody425_87 : StackLang.HolProg 64 :=
.seq RemovedBody425_7 RemovedBody425_86

def RemovedBody425_88 : StackLang.HolProg 64 :=
.seq RemovedBody425_6 RemovedBody425_87

def Removed425 : Nat × StackLang.HolProg 64 := (425, RemovedBody425_88)
theorem Removed425_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc425 = Removed425 := by
  kernel_rfl
#print axioms Removed425_eq
end InitECandidate.Proofs.BackendStages
