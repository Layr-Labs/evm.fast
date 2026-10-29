import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc545
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody545_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody545_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody545_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody545_3 : StackLang.HolProg 64 :=
.seq RemovedBody545_1 RemovedBody545_2

def RemovedBody545_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody545_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody545_3 RemovedBody545_4

def RemovedBody545_6 : StackLang.HolProg 64 :=
.seq RemovedBody545_0 RemovedBody545_5

def RemovedBody545_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody545_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 88#64))

def RemovedBody545_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 8#64)

def RemovedBody545_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody545_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody545_12 : StackLang.HolProg 64 :=
.seq RemovedBody545_10 RemovedBody545_11

def RemovedBody545_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody545_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1805#64)

def RemovedBody545_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody545_16 : StackLang.HolProg 64 :=
.seq RemovedBody545_14 RemovedBody545_15

def RemovedBody545_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody545_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody545_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody545_20 : StackLang.HolProg 64 :=
.seq RemovedBody545_18 RemovedBody545_19

def RemovedBody545_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody545_22 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody545_20 RemovedBody545_21

def RemovedBody545_23 : StackLang.HolProg 64 :=
.seq RemovedBody545_17 RemovedBody545_22

def RemovedBody545_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody545_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody545_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 545 3

def RemovedBody545_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody545_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody545_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody545_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody545_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody545_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody545_33 : StackLang.HolProg 64 :=
.seq RemovedBody545_31 RemovedBody545_32

def RemovedBody545_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody545_35 : StackLang.HolProg 64 :=
.seq RemovedBody545_33 RemovedBody545_34

def RemovedBody545_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody545_37 : StackLang.HolProg 64 :=
.seq RemovedBody545_35 RemovedBody545_36

def RemovedBody545_38 : StackLang.HolProg 64 :=
.seq RemovedBody545_30 RemovedBody545_37

def RemovedBody545_39 : StackLang.HolProg 64 :=
.seq RemovedBody545_29 RemovedBody545_38

def RemovedBody545_40 : StackLang.HolProg 64 :=
.seq RemovedBody545_28 RemovedBody545_39

def RemovedBody545_41 : StackLang.HolProg 64 :=
.seq RemovedBody545_27 RemovedBody545_40

def RemovedBody545_42 : StackLang.HolProg 64 :=
.seq RemovedBody545_26 RemovedBody545_41

def RemovedBody545_43 : StackLang.HolProg 64 :=
.seq RemovedBody545_25 RemovedBody545_42

def RemovedBody545_44 : StackLang.HolProg 64 :=
.seq RemovedBody545_24 RemovedBody545_43

def RemovedBody545_45 : StackLang.HolProg 64 :=
.seq RemovedBody545_23 RemovedBody545_44

def RemovedBody545_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody545_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody545_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody545_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody545_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody545_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody545_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody545_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody545_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody545_55 : StackLang.HolProg 64 :=
.seq RemovedBody545_53 RemovedBody545_54

def RemovedBody545_56 : StackLang.HolProg 64 :=
.seq RemovedBody545_52 RemovedBody545_55

def RemovedBody545_57 : StackLang.HolProg 64 :=
.seq RemovedBody545_51 RemovedBody545_56

def RemovedBody545_58 : StackLang.HolProg 64 :=
.seq RemovedBody545_50 RemovedBody545_57

def RemovedBody545_59 : StackLang.HolProg 64 :=
.seq RemovedBody545_49 RemovedBody545_58

def RemovedBody545_60 : StackLang.HolProg 64 :=
.seq RemovedBody545_48 RemovedBody545_59

def RemovedBody545_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody545_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody545_63 : StackLang.HolProg 64 :=
.seq RemovedBody545_61 RemovedBody545_62

def RemovedBody545_64 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody545_65 : StackLang.HolProg 64 :=
.seq RemovedBody545_63 RemovedBody545_64

def RemovedBody545_66 : StackLang.HolProg 64 :=
.call (some (RemovedBody545_60, 0, 545, 2)) (Sum.inl 437) (some (RemovedBody545_65, 545, 3))

def RemovedBody545_67 : StackLang.HolProg 64 :=
.seq RemovedBody545_47 RemovedBody545_66

def RemovedBody545_68 : StackLang.HolProg 64 :=
.seq RemovedBody545_46 RemovedBody545_67

def RemovedBody545_69 : StackLang.HolProg 64 :=
.seq RemovedBody545_45 RemovedBody545_68

def RemovedBody545_70 : StackLang.HolProg 64 :=
.seq RemovedBody545_16 RemovedBody545_69

def RemovedBody545_71 : StackLang.HolProg 64 :=
.seq RemovedBody545_13 RemovedBody545_70

def RemovedBody545_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody545_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody545_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody545_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody545_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody545_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody545_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody545_79 : StackLang.HolProg 64 :=
.seq RemovedBody545_77 RemovedBody545_78

def RemovedBody545_80 : StackLang.HolProg 64 :=
.seq RemovedBody545_76 RemovedBody545_79

def RemovedBody545_81 : StackLang.HolProg 64 :=
.seq RemovedBody545_75 RemovedBody545_80

def RemovedBody545_82 : StackLang.HolProg 64 :=
.seq RemovedBody545_74 RemovedBody545_81

def RemovedBody545_83 : StackLang.HolProg 64 :=
.seq RemovedBody545_73 RemovedBody545_82

def RemovedBody545_84 : StackLang.HolProg 64 :=
.seq RemovedBody545_72 RemovedBody545_83

def RemovedBody545_85 : StackLang.HolProg 64 :=
.seq RemovedBody545_71 RemovedBody545_84

def RemovedBody545_86 : StackLang.HolProg 64 :=
.seq RemovedBody545_12 RemovedBody545_85

def RemovedBody545_87 : StackLang.HolProg 64 :=
.seq RemovedBody545_9 RemovedBody545_86

def RemovedBody545_88 : StackLang.HolProg 64 :=
.seq RemovedBody545_8 RemovedBody545_87

def RemovedBody545_89 : StackLang.HolProg 64 :=
.seq RemovedBody545_7 RemovedBody545_88

def RemovedBody545_90 : StackLang.HolProg 64 :=
.seq RemovedBody545_6 RemovedBody545_89

def Removed545 : Nat × StackLang.HolProg 64 := (545, RemovedBody545_90)
theorem Removed545_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc545 = Removed545 := by
  kernel_rfl
#print axioms Removed545_eq
end InitECandidate.Proofs.BackendStages
