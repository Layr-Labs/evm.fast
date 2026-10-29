import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc394
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody394_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody394_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody394_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody394_3 : StackLang.HolProg 64 :=
.seq RemovedBody394_1 RemovedBody394_2

def RemovedBody394_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody394_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody394_3 RemovedBody394_4

def RemovedBody394_6 : StackLang.HolProg 64 :=
.seq RemovedBody394_0 RemovedBody394_5

def RemovedBody394_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody394_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody394_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody394_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody394_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551480#64))

def RemovedBody394_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody394_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody394_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody394_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody394_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody394_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody394_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody394_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1172#64)

def RemovedBody394_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody394_21 : StackLang.HolProg 64 :=
.seq RemovedBody394_19 RemovedBody394_20

def RemovedBody394_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody394_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody394_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody394_25 : StackLang.HolProg 64 :=
.seq RemovedBody394_23 RemovedBody394_24

def RemovedBody394_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody394_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody394_25 RemovedBody394_26

def RemovedBody394_28 : StackLang.HolProg 64 :=
.seq RemovedBody394_22 RemovedBody394_27

def RemovedBody394_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody394_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody394_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 394 3

def RemovedBody394_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody394_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody394_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody394_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody394_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody394_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody394_38 : StackLang.HolProg 64 :=
.seq RemovedBody394_36 RemovedBody394_37

def RemovedBody394_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody394_40 : StackLang.HolProg 64 :=
.seq RemovedBody394_38 RemovedBody394_39

def RemovedBody394_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody394_42 : StackLang.HolProg 64 :=
.seq RemovedBody394_40 RemovedBody394_41

def RemovedBody394_43 : StackLang.HolProg 64 :=
.seq RemovedBody394_35 RemovedBody394_42

def RemovedBody394_44 : StackLang.HolProg 64 :=
.seq RemovedBody394_34 RemovedBody394_43

def RemovedBody394_45 : StackLang.HolProg 64 :=
.seq RemovedBody394_33 RemovedBody394_44

def RemovedBody394_46 : StackLang.HolProg 64 :=
.seq RemovedBody394_32 RemovedBody394_45

def RemovedBody394_47 : StackLang.HolProg 64 :=
.seq RemovedBody394_31 RemovedBody394_46

def RemovedBody394_48 : StackLang.HolProg 64 :=
.seq RemovedBody394_30 RemovedBody394_47

def RemovedBody394_49 : StackLang.HolProg 64 :=
.seq RemovedBody394_29 RemovedBody394_48

def RemovedBody394_50 : StackLang.HolProg 64 :=
.seq RemovedBody394_28 RemovedBody394_49

def RemovedBody394_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody394_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody394_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody394_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody394_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody394_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody394_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody394_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody394_59 : StackLang.HolProg 64 :=
.seq RemovedBody394_57 RemovedBody394_58

def RemovedBody394_60 : StackLang.HolProg 64 :=
.seq RemovedBody394_56 RemovedBody394_59

def RemovedBody394_61 : StackLang.HolProg 64 :=
.seq RemovedBody394_55 RemovedBody394_60

def RemovedBody394_62 : StackLang.HolProg 64 :=
.seq RemovedBody394_54 RemovedBody394_61

def RemovedBody394_63 : StackLang.HolProg 64 :=
.seq RemovedBody394_53 RemovedBody394_62

def RemovedBody394_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody394_65 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody394_66 : StackLang.HolProg 64 :=
.seq RemovedBody394_64 RemovedBody394_65

def RemovedBody394_67 : StackLang.HolProg 64 :=
.call (some (RemovedBody394_63, 0, 394, 2)) (Sum.inl 393) (some (RemovedBody394_66, 394, 3))

def RemovedBody394_68 : StackLang.HolProg 64 :=
.seq RemovedBody394_52 RemovedBody394_67

def RemovedBody394_69 : StackLang.HolProg 64 :=
.seq RemovedBody394_51 RemovedBody394_68

def RemovedBody394_70 : StackLang.HolProg 64 :=
.seq RemovedBody394_50 RemovedBody394_69

def RemovedBody394_71 : StackLang.HolProg 64 :=
.seq RemovedBody394_21 RemovedBody394_70

def RemovedBody394_72 : StackLang.HolProg 64 :=
.seq RemovedBody394_18 RemovedBody394_71

def RemovedBody394_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody394_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody394_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody394_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody394_77 : StackLang.HolProg 64 :=
.seq RemovedBody394_75 RemovedBody394_76

def RemovedBody394_78 : StackLang.HolProg 64 :=
.seq RemovedBody394_74 RemovedBody394_77

def RemovedBody394_79 : StackLang.HolProg 64 :=
.seq RemovedBody394_73 RemovedBody394_78

def RemovedBody394_80 : StackLang.HolProg 64 :=
.seq RemovedBody394_72 RemovedBody394_79

def RemovedBody394_81 : StackLang.HolProg 64 :=
.seq RemovedBody394_17 RemovedBody394_80

def RemovedBody394_82 : StackLang.HolProg 64 :=
.seq RemovedBody394_16 RemovedBody394_81

def RemovedBody394_83 : StackLang.HolProg 64 :=
.seq RemovedBody394_15 RemovedBody394_82

def RemovedBody394_84 : StackLang.HolProg 64 :=
.seq RemovedBody394_14 RemovedBody394_83

def RemovedBody394_85 : StackLang.HolProg 64 :=
.seq RemovedBody394_13 RemovedBody394_84

def RemovedBody394_86 : StackLang.HolProg 64 :=
.seq RemovedBody394_12 RemovedBody394_85

def RemovedBody394_87 : StackLang.HolProg 64 :=
.seq RemovedBody394_11 RemovedBody394_86

def RemovedBody394_88 : StackLang.HolProg 64 :=
.seq RemovedBody394_10 RemovedBody394_87

def RemovedBody394_89 : StackLang.HolProg 64 :=
.seq RemovedBody394_9 RemovedBody394_88

def RemovedBody394_90 : StackLang.HolProg 64 :=
.seq RemovedBody394_8 RemovedBody394_89

def RemovedBody394_91 : StackLang.HolProg 64 :=
.seq RemovedBody394_7 RemovedBody394_90

def RemovedBody394_92 : StackLang.HolProg 64 :=
.seq RemovedBody394_6 RemovedBody394_91

def Removed394 : Nat × StackLang.HolProg 64 := (394, RemovedBody394_92)
theorem Removed394_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc394 = Removed394 := by
  kernel_rfl
#print axioms Removed394_eq
end InitECandidate.Proofs.BackendStages
