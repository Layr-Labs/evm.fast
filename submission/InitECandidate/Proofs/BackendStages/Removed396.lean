import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc396
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody396_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody396_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody396_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody396_3 : StackLang.HolProg 64 :=
.seq RemovedBody396_1 RemovedBody396_2

def RemovedBody396_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody396_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody396_3 RemovedBody396_4

def RemovedBody396_6 : StackLang.HolProg 64 :=
.seq RemovedBody396_0 RemovedBody396_5

def RemovedBody396_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody396_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody396_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody396_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody396_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551440#64))

def RemovedBody396_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 72#64))

def RemovedBody396_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody396_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def RemovedBody396_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody396_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody396_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1175#64)

def RemovedBody396_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody396_19 : StackLang.HolProg 64 :=
.seq RemovedBody396_17 RemovedBody396_18

def RemovedBody396_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody396_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody396_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody396_23 : StackLang.HolProg 64 :=
.seq RemovedBody396_21 RemovedBody396_22

def RemovedBody396_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody396_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody396_23 RemovedBody396_24

def RemovedBody396_26 : StackLang.HolProg 64 :=
.seq RemovedBody396_20 RemovedBody396_25

def RemovedBody396_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody396_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody396_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 396 3

def RemovedBody396_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody396_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody396_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody396_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody396_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody396_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody396_36 : StackLang.HolProg 64 :=
.seq RemovedBody396_34 RemovedBody396_35

def RemovedBody396_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody396_38 : StackLang.HolProg 64 :=
.seq RemovedBody396_36 RemovedBody396_37

def RemovedBody396_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody396_40 : StackLang.HolProg 64 :=
.seq RemovedBody396_38 RemovedBody396_39

def RemovedBody396_41 : StackLang.HolProg 64 :=
.seq RemovedBody396_33 RemovedBody396_40

def RemovedBody396_42 : StackLang.HolProg 64 :=
.seq RemovedBody396_32 RemovedBody396_41

def RemovedBody396_43 : StackLang.HolProg 64 :=
.seq RemovedBody396_31 RemovedBody396_42

def RemovedBody396_44 : StackLang.HolProg 64 :=
.seq RemovedBody396_30 RemovedBody396_43

def RemovedBody396_45 : StackLang.HolProg 64 :=
.seq RemovedBody396_29 RemovedBody396_44

def RemovedBody396_46 : StackLang.HolProg 64 :=
.seq RemovedBody396_28 RemovedBody396_45

def RemovedBody396_47 : StackLang.HolProg 64 :=
.seq RemovedBody396_27 RemovedBody396_46

def RemovedBody396_48 : StackLang.HolProg 64 :=
.seq RemovedBody396_26 RemovedBody396_47

def RemovedBody396_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody396_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody396_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody396_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody396_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody396_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody396_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody396_56 : StackLang.HolProg 64 :=
.seq RemovedBody396_54 RemovedBody396_55

def RemovedBody396_57 : StackLang.HolProg 64 :=
.seq RemovedBody396_53 RemovedBody396_56

def RemovedBody396_58 : StackLang.HolProg 64 :=
.seq RemovedBody396_52 RemovedBody396_57

def RemovedBody396_59 : StackLang.HolProg 64 :=
.seq RemovedBody396_51 RemovedBody396_58

def RemovedBody396_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody396_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody396_62 : StackLang.HolProg 64 :=
.seq RemovedBody396_60 RemovedBody396_61

def RemovedBody396_63 : StackLang.HolProg 64 :=
.call (some (RemovedBody396_59, 0, 396, 2)) (Sum.inl 192) (some (RemovedBody396_62, 396, 3))

def RemovedBody396_64 : StackLang.HolProg 64 :=
.seq RemovedBody396_50 RemovedBody396_63

def RemovedBody396_65 : StackLang.HolProg 64 :=
.seq RemovedBody396_49 RemovedBody396_64

def RemovedBody396_66 : StackLang.HolProg 64 :=
.seq RemovedBody396_48 RemovedBody396_65

def RemovedBody396_67 : StackLang.HolProg 64 :=
.seq RemovedBody396_19 RemovedBody396_66

def RemovedBody396_68 : StackLang.HolProg 64 :=
.seq RemovedBody396_16 RemovedBody396_67

def RemovedBody396_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody396_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody396_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody396_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody396_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody396_74 : StackLang.HolProg 64 :=
.seq RemovedBody396_72 RemovedBody396_73

def RemovedBody396_75 : StackLang.HolProg 64 :=
.seq RemovedBody396_71 RemovedBody396_74

def RemovedBody396_76 : StackLang.HolProg 64 :=
.seq RemovedBody396_70 RemovedBody396_75

def RemovedBody396_77 : StackLang.HolProg 64 :=
.seq RemovedBody396_69 RemovedBody396_76

def RemovedBody396_78 : StackLang.HolProg 64 :=
.seq RemovedBody396_68 RemovedBody396_77

def RemovedBody396_79 : StackLang.HolProg 64 :=
.seq RemovedBody396_15 RemovedBody396_78

def RemovedBody396_80 : StackLang.HolProg 64 :=
.seq RemovedBody396_14 RemovedBody396_79

def RemovedBody396_81 : StackLang.HolProg 64 :=
.seq RemovedBody396_13 RemovedBody396_80

def RemovedBody396_82 : StackLang.HolProg 64 :=
.seq RemovedBody396_12 RemovedBody396_81

def RemovedBody396_83 : StackLang.HolProg 64 :=
.seq RemovedBody396_11 RemovedBody396_82

def RemovedBody396_84 : StackLang.HolProg 64 :=
.seq RemovedBody396_10 RemovedBody396_83

def RemovedBody396_85 : StackLang.HolProg 64 :=
.seq RemovedBody396_9 RemovedBody396_84

def RemovedBody396_86 : StackLang.HolProg 64 :=
.seq RemovedBody396_8 RemovedBody396_85

def RemovedBody396_87 : StackLang.HolProg 64 :=
.seq RemovedBody396_7 RemovedBody396_86

def RemovedBody396_88 : StackLang.HolProg 64 :=
.seq RemovedBody396_6 RemovedBody396_87

def Removed396 : Nat × StackLang.HolProg 64 := (396, RemovedBody396_88)
theorem Removed396_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc396 = Removed396 := by
  kernel_rfl
#print axioms Removed396_eq
end InitECandidate.Proofs.BackendStages
