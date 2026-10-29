import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc563
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody563_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody563_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody563_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody563_3 : StackLang.HolProg 64 :=
.seq RemovedBody563_1 RemovedBody563_2

def RemovedBody563_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody563_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody563_3 RemovedBody563_4

def RemovedBody563_6 : StackLang.HolProg 64 :=
.seq RemovedBody563_0 RemovedBody563_5

def RemovedBody563_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody563_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody563_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody563_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody563_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody563_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 48#64))

def RemovedBody563_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody563_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 56#64))

def RemovedBody563_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody563_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody563_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody563_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1928#64)

def RemovedBody563_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody563_20 : StackLang.HolProg 64 :=
.seq RemovedBody563_18 RemovedBody563_19

def RemovedBody563_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody563_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody563_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody563_24 : StackLang.HolProg 64 :=
.seq RemovedBody563_22 RemovedBody563_23

def RemovedBody563_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody563_26 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody563_24 RemovedBody563_25

def RemovedBody563_27 : StackLang.HolProg 64 :=
.seq RemovedBody563_21 RemovedBody563_26

def RemovedBody563_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody563_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody563_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 563 3

def RemovedBody563_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody563_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody563_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody563_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody563_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody563_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody563_37 : StackLang.HolProg 64 :=
.seq RemovedBody563_35 RemovedBody563_36

def RemovedBody563_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody563_39 : StackLang.HolProg 64 :=
.seq RemovedBody563_37 RemovedBody563_38

def RemovedBody563_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody563_41 : StackLang.HolProg 64 :=
.seq RemovedBody563_39 RemovedBody563_40

def RemovedBody563_42 : StackLang.HolProg 64 :=
.seq RemovedBody563_34 RemovedBody563_41

def RemovedBody563_43 : StackLang.HolProg 64 :=
.seq RemovedBody563_33 RemovedBody563_42

def RemovedBody563_44 : StackLang.HolProg 64 :=
.seq RemovedBody563_32 RemovedBody563_43

def RemovedBody563_45 : StackLang.HolProg 64 :=
.seq RemovedBody563_31 RemovedBody563_44

def RemovedBody563_46 : StackLang.HolProg 64 :=
.seq RemovedBody563_30 RemovedBody563_45

def RemovedBody563_47 : StackLang.HolProg 64 :=
.seq RemovedBody563_29 RemovedBody563_46

def RemovedBody563_48 : StackLang.HolProg 64 :=
.seq RemovedBody563_28 RemovedBody563_47

def RemovedBody563_49 : StackLang.HolProg 64 :=
.seq RemovedBody563_27 RemovedBody563_48

def RemovedBody563_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody563_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody563_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody563_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody563_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody563_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody563_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody563_57 : StackLang.HolProg 64 :=
.seq RemovedBody563_55 RemovedBody563_56

def RemovedBody563_58 : StackLang.HolProg 64 :=
.seq RemovedBody563_54 RemovedBody563_57

def RemovedBody563_59 : StackLang.HolProg 64 :=
.seq RemovedBody563_53 RemovedBody563_58

def RemovedBody563_60 : StackLang.HolProg 64 :=
.seq RemovedBody563_52 RemovedBody563_59

def RemovedBody563_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody563_62 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody563_63 : StackLang.HolProg 64 :=
.seq RemovedBody563_61 RemovedBody563_62

def RemovedBody563_64 : StackLang.HolProg 64 :=
.call (some (RemovedBody563_60, 0, 563, 2)) (Sum.inl 560) (some (RemovedBody563_63, 563, 3))

def RemovedBody563_65 : StackLang.HolProg 64 :=
.seq RemovedBody563_51 RemovedBody563_64

def RemovedBody563_66 : StackLang.HolProg 64 :=
.seq RemovedBody563_50 RemovedBody563_65

def RemovedBody563_67 : StackLang.HolProg 64 :=
.seq RemovedBody563_49 RemovedBody563_66

def RemovedBody563_68 : StackLang.HolProg 64 :=
.seq RemovedBody563_20 RemovedBody563_67

def RemovedBody563_69 : StackLang.HolProg 64 :=
.seq RemovedBody563_17 RemovedBody563_68

def RemovedBody563_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody563_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody563_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody563_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody563_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody563_75 : StackLang.HolProg 64 :=
.seq RemovedBody563_73 RemovedBody563_74

def RemovedBody563_76 : StackLang.HolProg 64 :=
.seq RemovedBody563_72 RemovedBody563_75

def RemovedBody563_77 : StackLang.HolProg 64 :=
.seq RemovedBody563_71 RemovedBody563_76

def RemovedBody563_78 : StackLang.HolProg 64 :=
.seq RemovedBody563_70 RemovedBody563_77

def RemovedBody563_79 : StackLang.HolProg 64 :=
.seq RemovedBody563_69 RemovedBody563_78

def RemovedBody563_80 : StackLang.HolProg 64 :=
.seq RemovedBody563_16 RemovedBody563_79

def RemovedBody563_81 : StackLang.HolProg 64 :=
.seq RemovedBody563_15 RemovedBody563_80

def RemovedBody563_82 : StackLang.HolProg 64 :=
.seq RemovedBody563_14 RemovedBody563_81

def RemovedBody563_83 : StackLang.HolProg 64 :=
.seq RemovedBody563_13 RemovedBody563_82

def RemovedBody563_84 : StackLang.HolProg 64 :=
.seq RemovedBody563_12 RemovedBody563_83

def RemovedBody563_85 : StackLang.HolProg 64 :=
.seq RemovedBody563_11 RemovedBody563_84

def RemovedBody563_86 : StackLang.HolProg 64 :=
.seq RemovedBody563_10 RemovedBody563_85

def RemovedBody563_87 : StackLang.HolProg 64 :=
.seq RemovedBody563_9 RemovedBody563_86

def RemovedBody563_88 : StackLang.HolProg 64 :=
.seq RemovedBody563_8 RemovedBody563_87

def RemovedBody563_89 : StackLang.HolProg 64 :=
.seq RemovedBody563_7 RemovedBody563_88

def RemovedBody563_90 : StackLang.HolProg 64 :=
.seq RemovedBody563_6 RemovedBody563_89

def Removed563 : Nat × StackLang.HolProg 64 := (563, RemovedBody563_90)
theorem Removed563_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc563 = Removed563 := by
  kernel_rfl
#print axioms Removed563_eq
end InitECandidate.Proofs.BackendStages
