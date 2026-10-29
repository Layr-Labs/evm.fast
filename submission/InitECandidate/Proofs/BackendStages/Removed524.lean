import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc524
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody524_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody524_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody524_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody524_3 : StackLang.HolProg 64 :=
.seq RemovedBody524_1 RemovedBody524_2

def RemovedBody524_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody524_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody524_3 RemovedBody524_4

def RemovedBody524_6 : StackLang.HolProg 64 :=
.seq RemovedBody524_0 RemovedBody524_5

def RemovedBody524_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody524_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody524_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody524_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody524_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody524_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 104#64)))

def RemovedBody524_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody524_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody524_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody524_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody524_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody524_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody524_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1717#64)

def RemovedBody524_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody524_21 : StackLang.HolProg 64 :=
.seq RemovedBody524_19 RemovedBody524_20

def RemovedBody524_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody524_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody524_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody524_25 : StackLang.HolProg 64 :=
.seq RemovedBody524_23 RemovedBody524_24

def RemovedBody524_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody524_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody524_25 RemovedBody524_26

def RemovedBody524_28 : StackLang.HolProg 64 :=
.seq RemovedBody524_22 RemovedBody524_27

def RemovedBody524_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody524_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody524_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 524 3

def RemovedBody524_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody524_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody524_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody524_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody524_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody524_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody524_38 : StackLang.HolProg 64 :=
.seq RemovedBody524_36 RemovedBody524_37

def RemovedBody524_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody524_40 : StackLang.HolProg 64 :=
.seq RemovedBody524_38 RemovedBody524_39

def RemovedBody524_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody524_42 : StackLang.HolProg 64 :=
.seq RemovedBody524_40 RemovedBody524_41

def RemovedBody524_43 : StackLang.HolProg 64 :=
.seq RemovedBody524_35 RemovedBody524_42

def RemovedBody524_44 : StackLang.HolProg 64 :=
.seq RemovedBody524_34 RemovedBody524_43

def RemovedBody524_45 : StackLang.HolProg 64 :=
.seq RemovedBody524_33 RemovedBody524_44

def RemovedBody524_46 : StackLang.HolProg 64 :=
.seq RemovedBody524_32 RemovedBody524_45

def RemovedBody524_47 : StackLang.HolProg 64 :=
.seq RemovedBody524_31 RemovedBody524_46

def RemovedBody524_48 : StackLang.HolProg 64 :=
.seq RemovedBody524_30 RemovedBody524_47

def RemovedBody524_49 : StackLang.HolProg 64 :=
.seq RemovedBody524_29 RemovedBody524_48

def RemovedBody524_50 : StackLang.HolProg 64 :=
.seq RemovedBody524_28 RemovedBody524_49

def RemovedBody524_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody524_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody524_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody524_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody524_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody524_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody524_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody524_58 : StackLang.HolProg 64 :=
.seq RemovedBody524_56 RemovedBody524_57

def RemovedBody524_59 : StackLang.HolProg 64 :=
.seq RemovedBody524_55 RemovedBody524_58

def RemovedBody524_60 : StackLang.HolProg 64 :=
.seq RemovedBody524_54 RemovedBody524_59

def RemovedBody524_61 : StackLang.HolProg 64 :=
.seq RemovedBody524_53 RemovedBody524_60

def RemovedBody524_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody524_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody524_64 : StackLang.HolProg 64 :=
.seq RemovedBody524_62 RemovedBody524_63

def RemovedBody524_65 : StackLang.HolProg 64 :=
.call (some (RemovedBody524_61, 0, 524, 2)) (Sum.inl 490) (some (RemovedBody524_64, 524, 3))

def RemovedBody524_66 : StackLang.HolProg 64 :=
.seq RemovedBody524_52 RemovedBody524_65

def RemovedBody524_67 : StackLang.HolProg 64 :=
.seq RemovedBody524_51 RemovedBody524_66

def RemovedBody524_68 : StackLang.HolProg 64 :=
.seq RemovedBody524_50 RemovedBody524_67

def RemovedBody524_69 : StackLang.HolProg 64 :=
.seq RemovedBody524_21 RemovedBody524_68

def RemovedBody524_70 : StackLang.HolProg 64 :=
.seq RemovedBody524_18 RemovedBody524_69

def RemovedBody524_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody524_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody524_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody524_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody524_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody524_76 : StackLang.HolProg 64 :=
.seq RemovedBody524_74 RemovedBody524_75

def RemovedBody524_77 : StackLang.HolProg 64 :=
.seq RemovedBody524_73 RemovedBody524_76

def RemovedBody524_78 : StackLang.HolProg 64 :=
.seq RemovedBody524_72 RemovedBody524_77

def RemovedBody524_79 : StackLang.HolProg 64 :=
.seq RemovedBody524_71 RemovedBody524_78

def RemovedBody524_80 : StackLang.HolProg 64 :=
.seq RemovedBody524_70 RemovedBody524_79

def RemovedBody524_81 : StackLang.HolProg 64 :=
.seq RemovedBody524_17 RemovedBody524_80

def RemovedBody524_82 : StackLang.HolProg 64 :=
.seq RemovedBody524_16 RemovedBody524_81

def RemovedBody524_83 : StackLang.HolProg 64 :=
.seq RemovedBody524_15 RemovedBody524_82

def RemovedBody524_84 : StackLang.HolProg 64 :=
.seq RemovedBody524_14 RemovedBody524_83

def RemovedBody524_85 : StackLang.HolProg 64 :=
.seq RemovedBody524_13 RemovedBody524_84

def RemovedBody524_86 : StackLang.HolProg 64 :=
.seq RemovedBody524_12 RemovedBody524_85

def RemovedBody524_87 : StackLang.HolProg 64 :=
.seq RemovedBody524_11 RemovedBody524_86

def RemovedBody524_88 : StackLang.HolProg 64 :=
.seq RemovedBody524_10 RemovedBody524_87

def RemovedBody524_89 : StackLang.HolProg 64 :=
.seq RemovedBody524_9 RemovedBody524_88

def RemovedBody524_90 : StackLang.HolProg 64 :=
.seq RemovedBody524_8 RemovedBody524_89

def RemovedBody524_91 : StackLang.HolProg 64 :=
.seq RemovedBody524_7 RemovedBody524_90

def RemovedBody524_92 : StackLang.HolProg 64 :=
.seq RemovedBody524_6 RemovedBody524_91

def Removed524 : Nat × StackLang.HolProg 64 := (524, RemovedBody524_92)
theorem Removed524_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc524 = Removed524 := by
  kernel_rfl
#print axioms Removed524_eq
end InitECandidate.Proofs.BackendStages
