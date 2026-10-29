import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc493
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody493_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody493_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody493_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody493_3 : StackLang.HolProg 64 :=
.seq RemovedBody493_1 RemovedBody493_2

def RemovedBody493_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody493_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody493_3 RemovedBody493_4

def RemovedBody493_6 : StackLang.HolProg 64 :=
.seq RemovedBody493_0 RemovedBody493_5

def RemovedBody493_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody493_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody493_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody493_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody493_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody493_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 168#64))

def RemovedBody493_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody493_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody493_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1540#64)

def RemovedBody493_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody493_17 : StackLang.HolProg 64 :=
.seq RemovedBody493_15 RemovedBody493_16

def RemovedBody493_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody493_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody493_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody493_21 : StackLang.HolProg 64 :=
.seq RemovedBody493_19 RemovedBody493_20

def RemovedBody493_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody493_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody493_21 RemovedBody493_22

def RemovedBody493_24 : StackLang.HolProg 64 :=
.seq RemovedBody493_18 RemovedBody493_23

def RemovedBody493_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody493_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody493_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 493 3

def RemovedBody493_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody493_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody493_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody493_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody493_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody493_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody493_34 : StackLang.HolProg 64 :=
.seq RemovedBody493_32 RemovedBody493_33

def RemovedBody493_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody493_36 : StackLang.HolProg 64 :=
.seq RemovedBody493_34 RemovedBody493_35

def RemovedBody493_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody493_38 : StackLang.HolProg 64 :=
.seq RemovedBody493_36 RemovedBody493_37

def RemovedBody493_39 : StackLang.HolProg 64 :=
.seq RemovedBody493_31 RemovedBody493_38

def RemovedBody493_40 : StackLang.HolProg 64 :=
.seq RemovedBody493_30 RemovedBody493_39

def RemovedBody493_41 : StackLang.HolProg 64 :=
.seq RemovedBody493_29 RemovedBody493_40

def RemovedBody493_42 : StackLang.HolProg 64 :=
.seq RemovedBody493_28 RemovedBody493_41

def RemovedBody493_43 : StackLang.HolProg 64 :=
.seq RemovedBody493_27 RemovedBody493_42

def RemovedBody493_44 : StackLang.HolProg 64 :=
.seq RemovedBody493_26 RemovedBody493_43

def RemovedBody493_45 : StackLang.HolProg 64 :=
.seq RemovedBody493_25 RemovedBody493_44

def RemovedBody493_46 : StackLang.HolProg 64 :=
.seq RemovedBody493_24 RemovedBody493_45

def RemovedBody493_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody493_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody493_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody493_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody493_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody493_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody493_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody493_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody493_55 : StackLang.HolProg 64 :=
.seq RemovedBody493_53 RemovedBody493_54

def RemovedBody493_56 : StackLang.HolProg 64 :=
.seq RemovedBody493_52 RemovedBody493_55

def RemovedBody493_57 : StackLang.HolProg 64 :=
.seq RemovedBody493_51 RemovedBody493_56

def RemovedBody493_58 : StackLang.HolProg 64 :=
.seq RemovedBody493_50 RemovedBody493_57

def RemovedBody493_59 : StackLang.HolProg 64 :=
.seq RemovedBody493_49 RemovedBody493_58

def RemovedBody493_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody493_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody493_62 : StackLang.HolProg 64 :=
.seq RemovedBody493_60 RemovedBody493_61

def RemovedBody493_63 : StackLang.HolProg 64 :=
.call (some (RemovedBody493_59, 0, 493, 2)) (Sum.inl 187) (some (RemovedBody493_62, 493, 3))

def RemovedBody493_64 : StackLang.HolProg 64 :=
.seq RemovedBody493_48 RemovedBody493_63

def RemovedBody493_65 : StackLang.HolProg 64 :=
.seq RemovedBody493_47 RemovedBody493_64

def RemovedBody493_66 : StackLang.HolProg 64 :=
.seq RemovedBody493_46 RemovedBody493_65

def RemovedBody493_67 : StackLang.HolProg 64 :=
.seq RemovedBody493_17 RemovedBody493_66

def RemovedBody493_68 : StackLang.HolProg 64 :=
.seq RemovedBody493_14 RemovedBody493_67

def RemovedBody493_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody493_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody493_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody493_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody493_73 : StackLang.HolProg 64 :=
.seq RemovedBody493_71 RemovedBody493_72

def RemovedBody493_74 : StackLang.HolProg 64 :=
.seq RemovedBody493_70 RemovedBody493_73

def RemovedBody493_75 : StackLang.HolProg 64 :=
.seq RemovedBody493_69 RemovedBody493_74

def RemovedBody493_76 : StackLang.HolProg 64 :=
.seq RemovedBody493_68 RemovedBody493_75

def RemovedBody493_77 : StackLang.HolProg 64 :=
.seq RemovedBody493_13 RemovedBody493_76

def RemovedBody493_78 : StackLang.HolProg 64 :=
.seq RemovedBody493_12 RemovedBody493_77

def RemovedBody493_79 : StackLang.HolProg 64 :=
.seq RemovedBody493_11 RemovedBody493_78

def RemovedBody493_80 : StackLang.HolProg 64 :=
.seq RemovedBody493_10 RemovedBody493_79

def RemovedBody493_81 : StackLang.HolProg 64 :=
.seq RemovedBody493_9 RemovedBody493_80

def RemovedBody493_82 : StackLang.HolProg 64 :=
.seq RemovedBody493_8 RemovedBody493_81

def RemovedBody493_83 : StackLang.HolProg 64 :=
.seq RemovedBody493_7 RemovedBody493_82

def RemovedBody493_84 : StackLang.HolProg 64 :=
.seq RemovedBody493_6 RemovedBody493_83

def Removed493 : Nat × StackLang.HolProg 64 := (493, RemovedBody493_84)
theorem Removed493_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc493 = Removed493 := by
  kernel_rfl
#print axioms Removed493_eq
end InitECandidate.Proofs.BackendStages
