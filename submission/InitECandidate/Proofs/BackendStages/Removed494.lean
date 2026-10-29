import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc494
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody494_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody494_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody494_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody494_3 : StackLang.HolProg 64 :=
.seq RemovedBody494_1 RemovedBody494_2

def RemovedBody494_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody494_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody494_3 RemovedBody494_4

def RemovedBody494_6 : StackLang.HolProg 64 :=
.seq RemovedBody494_0 RemovedBody494_5

def RemovedBody494_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody494_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody494_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody494_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody494_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody494_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 168#64))

def RemovedBody494_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody494_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def RemovedBody494_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody494_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody494_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1541#64)

def RemovedBody494_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody494_19 : StackLang.HolProg 64 :=
.seq RemovedBody494_17 RemovedBody494_18

def RemovedBody494_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody494_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody494_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody494_23 : StackLang.HolProg 64 :=
.seq RemovedBody494_21 RemovedBody494_22

def RemovedBody494_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody494_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody494_23 RemovedBody494_24

def RemovedBody494_26 : StackLang.HolProg 64 :=
.seq RemovedBody494_20 RemovedBody494_25

def RemovedBody494_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody494_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody494_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 494 3

def RemovedBody494_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody494_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody494_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody494_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody494_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody494_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody494_36 : StackLang.HolProg 64 :=
.seq RemovedBody494_34 RemovedBody494_35

def RemovedBody494_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody494_38 : StackLang.HolProg 64 :=
.seq RemovedBody494_36 RemovedBody494_37

def RemovedBody494_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody494_40 : StackLang.HolProg 64 :=
.seq RemovedBody494_38 RemovedBody494_39

def RemovedBody494_41 : StackLang.HolProg 64 :=
.seq RemovedBody494_33 RemovedBody494_40

def RemovedBody494_42 : StackLang.HolProg 64 :=
.seq RemovedBody494_32 RemovedBody494_41

def RemovedBody494_43 : StackLang.HolProg 64 :=
.seq RemovedBody494_31 RemovedBody494_42

def RemovedBody494_44 : StackLang.HolProg 64 :=
.seq RemovedBody494_30 RemovedBody494_43

def RemovedBody494_45 : StackLang.HolProg 64 :=
.seq RemovedBody494_29 RemovedBody494_44

def RemovedBody494_46 : StackLang.HolProg 64 :=
.seq RemovedBody494_28 RemovedBody494_45

def RemovedBody494_47 : StackLang.HolProg 64 :=
.seq RemovedBody494_27 RemovedBody494_46

def RemovedBody494_48 : StackLang.HolProg 64 :=
.seq RemovedBody494_26 RemovedBody494_47

def RemovedBody494_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody494_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody494_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody494_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody494_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody494_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody494_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody494_56 : StackLang.HolProg 64 :=
.seq RemovedBody494_54 RemovedBody494_55

def RemovedBody494_57 : StackLang.HolProg 64 :=
.seq RemovedBody494_53 RemovedBody494_56

def RemovedBody494_58 : StackLang.HolProg 64 :=
.seq RemovedBody494_52 RemovedBody494_57

def RemovedBody494_59 : StackLang.HolProg 64 :=
.seq RemovedBody494_51 RemovedBody494_58

def RemovedBody494_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody494_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody494_62 : StackLang.HolProg 64 :=
.seq RemovedBody494_60 RemovedBody494_61

def RemovedBody494_63 : StackLang.HolProg 64 :=
.call (some (RemovedBody494_59, 0, 494, 2)) (Sum.inl 192) (some (RemovedBody494_62, 494, 3))

def RemovedBody494_64 : StackLang.HolProg 64 :=
.seq RemovedBody494_50 RemovedBody494_63

def RemovedBody494_65 : StackLang.HolProg 64 :=
.seq RemovedBody494_49 RemovedBody494_64

def RemovedBody494_66 : StackLang.HolProg 64 :=
.seq RemovedBody494_48 RemovedBody494_65

def RemovedBody494_67 : StackLang.HolProg 64 :=
.seq RemovedBody494_19 RemovedBody494_66

def RemovedBody494_68 : StackLang.HolProg 64 :=
.seq RemovedBody494_16 RemovedBody494_67

def RemovedBody494_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody494_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody494_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody494_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody494_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody494_74 : StackLang.HolProg 64 :=
.seq RemovedBody494_72 RemovedBody494_73

def RemovedBody494_75 : StackLang.HolProg 64 :=
.seq RemovedBody494_71 RemovedBody494_74

def RemovedBody494_76 : StackLang.HolProg 64 :=
.seq RemovedBody494_70 RemovedBody494_75

def RemovedBody494_77 : StackLang.HolProg 64 :=
.seq RemovedBody494_69 RemovedBody494_76

def RemovedBody494_78 : StackLang.HolProg 64 :=
.seq RemovedBody494_68 RemovedBody494_77

def RemovedBody494_79 : StackLang.HolProg 64 :=
.seq RemovedBody494_15 RemovedBody494_78

def RemovedBody494_80 : StackLang.HolProg 64 :=
.seq RemovedBody494_14 RemovedBody494_79

def RemovedBody494_81 : StackLang.HolProg 64 :=
.seq RemovedBody494_13 RemovedBody494_80

def RemovedBody494_82 : StackLang.HolProg 64 :=
.seq RemovedBody494_12 RemovedBody494_81

def RemovedBody494_83 : StackLang.HolProg 64 :=
.seq RemovedBody494_11 RemovedBody494_82

def RemovedBody494_84 : StackLang.HolProg 64 :=
.seq RemovedBody494_10 RemovedBody494_83

def RemovedBody494_85 : StackLang.HolProg 64 :=
.seq RemovedBody494_9 RemovedBody494_84

def RemovedBody494_86 : StackLang.HolProg 64 :=
.seq RemovedBody494_8 RemovedBody494_85

def RemovedBody494_87 : StackLang.HolProg 64 :=
.seq RemovedBody494_7 RemovedBody494_86

def RemovedBody494_88 : StackLang.HolProg 64 :=
.seq RemovedBody494_6 RemovedBody494_87

def Removed494 : Nat × StackLang.HolProg 64 := (494, RemovedBody494_88)
theorem Removed494_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc494 = Removed494 := by
  kernel_rfl
#print axioms Removed494_eq
end InitECandidate.Proofs.BackendStages
