import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc464
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody464_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody464_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody464_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody464_3 : StackLang.HolProg 64 :=
.seq RemovedBody464_1 RemovedBody464_2

def RemovedBody464_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody464_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody464_3 RemovedBody464_4

def RemovedBody464_6 : StackLang.HolProg 64 :=
.seq RemovedBody464_0 RemovedBody464_5

def RemovedBody464_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody464_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 31#64)))

def RemovedBody464_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody464_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody464_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody464_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody464_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody464_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody464_15 : StackLang.HolProg 64 :=
.seq RemovedBody464_13 RemovedBody464_14

def RemovedBody464_16 : StackLang.HolProg 64 :=
.seq RemovedBody464_12 RemovedBody464_15

def RemovedBody464_17 : StackLang.HolProg 64 :=
.seq RemovedBody464_11 RemovedBody464_16

def RemovedBody464_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody464_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody464_17 RemovedBody464_18

def RemovedBody464_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody464_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody464_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody464_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def RemovedBody464_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody464_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody464_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody464_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody464_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1488#64)

def RemovedBody464_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody464_30 : StackLang.HolProg 64 :=
.seq RemovedBody464_28 RemovedBody464_29

def RemovedBody464_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody464_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody464_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody464_34 : StackLang.HolProg 64 :=
.seq RemovedBody464_32 RemovedBody464_33

def RemovedBody464_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody464_36 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody464_34 RemovedBody464_35

def RemovedBody464_37 : StackLang.HolProg 64 :=
.seq RemovedBody464_31 RemovedBody464_36

def RemovedBody464_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody464_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody464_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 464 3

def RemovedBody464_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody464_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody464_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody464_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody464_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody464_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody464_47 : StackLang.HolProg 64 :=
.seq RemovedBody464_45 RemovedBody464_46

def RemovedBody464_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody464_49 : StackLang.HolProg 64 :=
.seq RemovedBody464_47 RemovedBody464_48

def RemovedBody464_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody464_51 : StackLang.HolProg 64 :=
.seq RemovedBody464_49 RemovedBody464_50

def RemovedBody464_52 : StackLang.HolProg 64 :=
.seq RemovedBody464_44 RemovedBody464_51

def RemovedBody464_53 : StackLang.HolProg 64 :=
.seq RemovedBody464_43 RemovedBody464_52

def RemovedBody464_54 : StackLang.HolProg 64 :=
.seq RemovedBody464_42 RemovedBody464_53

def RemovedBody464_55 : StackLang.HolProg 64 :=
.seq RemovedBody464_41 RemovedBody464_54

def RemovedBody464_56 : StackLang.HolProg 64 :=
.seq RemovedBody464_40 RemovedBody464_55

def RemovedBody464_57 : StackLang.HolProg 64 :=
.seq RemovedBody464_39 RemovedBody464_56

def RemovedBody464_58 : StackLang.HolProg 64 :=
.seq RemovedBody464_38 RemovedBody464_57

def RemovedBody464_59 : StackLang.HolProg 64 :=
.seq RemovedBody464_37 RemovedBody464_58

def RemovedBody464_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody464_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody464_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody464_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody464_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody464_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody464_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody464_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody464_68 : StackLang.HolProg 64 :=
.seq RemovedBody464_66 RemovedBody464_67

def RemovedBody464_69 : StackLang.HolProg 64 :=
.seq RemovedBody464_65 RemovedBody464_68

def RemovedBody464_70 : StackLang.HolProg 64 :=
.seq RemovedBody464_64 RemovedBody464_69

def RemovedBody464_71 : StackLang.HolProg 64 :=
.seq RemovedBody464_63 RemovedBody464_70

def RemovedBody464_72 : StackLang.HolProg 64 :=
.seq RemovedBody464_62 RemovedBody464_71

def RemovedBody464_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody464_74 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody464_75 : StackLang.HolProg 64 :=
.seq RemovedBody464_73 RemovedBody464_74

def RemovedBody464_76 : StackLang.HolProg 64 :=
.call (some (RemovedBody464_72, 0, 464, 2)) (Sum.inl 463) (some (RemovedBody464_75, 464, 3))

def RemovedBody464_77 : StackLang.HolProg 64 :=
.seq RemovedBody464_61 RemovedBody464_76

def RemovedBody464_78 : StackLang.HolProg 64 :=
.seq RemovedBody464_60 RemovedBody464_77

def RemovedBody464_79 : StackLang.HolProg 64 :=
.seq RemovedBody464_59 RemovedBody464_78

def RemovedBody464_80 : StackLang.HolProg 64 :=
.seq RemovedBody464_30 RemovedBody464_79

def RemovedBody464_81 : StackLang.HolProg 64 :=
.seq RemovedBody464_27 RemovedBody464_80

def RemovedBody464_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody464_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody464_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody464_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody464_86 : StackLang.HolProg 64 :=
.seq RemovedBody464_84 RemovedBody464_85

def RemovedBody464_87 : StackLang.HolProg 64 :=
.seq RemovedBody464_83 RemovedBody464_86

def RemovedBody464_88 : StackLang.HolProg 64 :=
.seq RemovedBody464_82 RemovedBody464_87

def RemovedBody464_89 : StackLang.HolProg 64 :=
.seq RemovedBody464_81 RemovedBody464_88

def RemovedBody464_90 : StackLang.HolProg 64 :=
.seq RemovedBody464_26 RemovedBody464_89

def RemovedBody464_91 : StackLang.HolProg 64 :=
.seq RemovedBody464_25 RemovedBody464_90

def RemovedBody464_92 : StackLang.HolProg 64 :=
.seq RemovedBody464_24 RemovedBody464_91

def RemovedBody464_93 : StackLang.HolProg 64 :=
.seq RemovedBody464_23 RemovedBody464_92

def RemovedBody464_94 : StackLang.HolProg 64 :=
.seq RemovedBody464_22 RemovedBody464_93

def RemovedBody464_95 : StackLang.HolProg 64 :=
.seq RemovedBody464_21 RemovedBody464_94

def RemovedBody464_96 : StackLang.HolProg 64 :=
.seq RemovedBody464_20 RemovedBody464_95

def RemovedBody464_97 : StackLang.HolProg 64 :=
.seq RemovedBody464_19 RemovedBody464_96

def RemovedBody464_98 : StackLang.HolProg 64 :=
.seq RemovedBody464_10 RemovedBody464_97

def RemovedBody464_99 : StackLang.HolProg 64 :=
.seq RemovedBody464_9 RemovedBody464_98

def RemovedBody464_100 : StackLang.HolProg 64 :=
.seq RemovedBody464_8 RemovedBody464_99

def RemovedBody464_101 : StackLang.HolProg 64 :=
.seq RemovedBody464_7 RemovedBody464_100

def RemovedBody464_102 : StackLang.HolProg 64 :=
.seq RemovedBody464_6 RemovedBody464_101

def Removed464 : Nat × StackLang.HolProg 64 := (464, RemovedBody464_102)
theorem Removed464_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc464 = Removed464 := by
  kernel_rfl
#print axioms Removed464_eq
end InitECandidate.Proofs.BackendStages
