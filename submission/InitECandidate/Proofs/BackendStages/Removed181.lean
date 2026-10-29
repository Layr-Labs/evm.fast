import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc181
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody181_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody181_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody181_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody181_3 : StackLang.HolProg 64 :=
.seq RemovedBody181_1 RemovedBody181_2

def RemovedBody181_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody181_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody181_3 RemovedBody181_4

def RemovedBody181_6 : StackLang.HolProg 64 :=
.seq RemovedBody181_0 RemovedBody181_5

def RemovedBody181_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody181_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def RemovedBody181_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody181_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody181_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody181_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody181_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody181_14 : StackLang.HolProg 64 :=
.seq RemovedBody181_12 RemovedBody181_13

def RemovedBody181_15 : StackLang.HolProg 64 :=
.seq RemovedBody181_11 RemovedBody181_14

def RemovedBody181_16 : StackLang.HolProg 64 :=
.seq RemovedBody181_10 RemovedBody181_15

def RemovedBody181_17 : StackLang.HolProg 64 :=
.seq RemovedBody181_9 RemovedBody181_16

def RemovedBody181_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody181_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody181_17 RemovedBody181_18

def RemovedBody181_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody181_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody181_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody181_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody181_24 : StackLang.HolProg 64 :=
.seq RemovedBody181_22 RemovedBody181_23

def RemovedBody181_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody181_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 202#64)

def RemovedBody181_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody181_28 : StackLang.HolProg 64 :=
.seq RemovedBody181_26 RemovedBody181_27

def RemovedBody181_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody181_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody181_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody181_32 : StackLang.HolProg 64 :=
.seq RemovedBody181_30 RemovedBody181_31

def RemovedBody181_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody181_34 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody181_32 RemovedBody181_33

def RemovedBody181_35 : StackLang.HolProg 64 :=
.seq RemovedBody181_29 RemovedBody181_34

def RemovedBody181_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody181_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody181_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 181 3

def RemovedBody181_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody181_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody181_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody181_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody181_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody181_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody181_45 : StackLang.HolProg 64 :=
.seq RemovedBody181_43 RemovedBody181_44

def RemovedBody181_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody181_47 : StackLang.HolProg 64 :=
.seq RemovedBody181_45 RemovedBody181_46

def RemovedBody181_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody181_49 : StackLang.HolProg 64 :=
.seq RemovedBody181_47 RemovedBody181_48

def RemovedBody181_50 : StackLang.HolProg 64 :=
.seq RemovedBody181_42 RemovedBody181_49

def RemovedBody181_51 : StackLang.HolProg 64 :=
.seq RemovedBody181_41 RemovedBody181_50

def RemovedBody181_52 : StackLang.HolProg 64 :=
.seq RemovedBody181_40 RemovedBody181_51

def RemovedBody181_53 : StackLang.HolProg 64 :=
.seq RemovedBody181_39 RemovedBody181_52

def RemovedBody181_54 : StackLang.HolProg 64 :=
.seq RemovedBody181_38 RemovedBody181_53

def RemovedBody181_55 : StackLang.HolProg 64 :=
.seq RemovedBody181_37 RemovedBody181_54

def RemovedBody181_56 : StackLang.HolProg 64 :=
.seq RemovedBody181_36 RemovedBody181_55

def RemovedBody181_57 : StackLang.HolProg 64 :=
.seq RemovedBody181_35 RemovedBody181_56

def RemovedBody181_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody181_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody181_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody181_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody181_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody181_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody181_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody181_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody181_66 : StackLang.HolProg 64 :=
.seq RemovedBody181_64 RemovedBody181_65

def RemovedBody181_67 : StackLang.HolProg 64 :=
.seq RemovedBody181_63 RemovedBody181_66

def RemovedBody181_68 : StackLang.HolProg 64 :=
.seq RemovedBody181_62 RemovedBody181_67

def RemovedBody181_69 : StackLang.HolProg 64 :=
.seq RemovedBody181_61 RemovedBody181_68

def RemovedBody181_70 : StackLang.HolProg 64 :=
.seq RemovedBody181_60 RemovedBody181_69

def RemovedBody181_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody181_72 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody181_73 : StackLang.HolProg 64 :=
.seq RemovedBody181_71 RemovedBody181_72

def RemovedBody181_74 : StackLang.HolProg 64 :=
.call (some (RemovedBody181_70, 0, 181, 2)) (Sum.inl 172) (some (RemovedBody181_73, 181, 3))

def RemovedBody181_75 : StackLang.HolProg 64 :=
.seq RemovedBody181_59 RemovedBody181_74

def RemovedBody181_76 : StackLang.HolProg 64 :=
.seq RemovedBody181_58 RemovedBody181_75

def RemovedBody181_77 : StackLang.HolProg 64 :=
.seq RemovedBody181_57 RemovedBody181_76

def RemovedBody181_78 : StackLang.HolProg 64 :=
.seq RemovedBody181_28 RemovedBody181_77

def RemovedBody181_79 : StackLang.HolProg 64 :=
.seq RemovedBody181_25 RemovedBody181_78

def RemovedBody181_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody181_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody181_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody181_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody181_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody181_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody181_86 : StackLang.HolProg 64 :=
.seq RemovedBody181_84 RemovedBody181_85

def RemovedBody181_87 : StackLang.HolProg 64 :=
.seq RemovedBody181_83 RemovedBody181_86

def RemovedBody181_88 : StackLang.HolProg 64 :=
.seq RemovedBody181_82 RemovedBody181_87

def RemovedBody181_89 : StackLang.HolProg 64 :=
.seq RemovedBody181_81 RemovedBody181_88

def RemovedBody181_90 : StackLang.HolProg 64 :=
.seq RemovedBody181_80 RemovedBody181_89

def RemovedBody181_91 : StackLang.HolProg 64 :=
.seq RemovedBody181_79 RemovedBody181_90

def RemovedBody181_92 : StackLang.HolProg 64 :=
.seq RemovedBody181_24 RemovedBody181_91

def RemovedBody181_93 : StackLang.HolProg 64 :=
.seq RemovedBody181_21 RemovedBody181_92

def RemovedBody181_94 : StackLang.HolProg 64 :=
.seq RemovedBody181_20 RemovedBody181_93

def RemovedBody181_95 : StackLang.HolProg 64 :=
.seq RemovedBody181_19 RemovedBody181_94

def RemovedBody181_96 : StackLang.HolProg 64 :=
.seq RemovedBody181_8 RemovedBody181_95

def RemovedBody181_97 : StackLang.HolProg 64 :=
.seq RemovedBody181_7 RemovedBody181_96

def RemovedBody181_98 : StackLang.HolProg 64 :=
.seq RemovedBody181_6 RemovedBody181_97

def Removed181 : Nat × StackLang.HolProg 64 := (181, RemovedBody181_98)
theorem Removed181_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc181 = Removed181 := by
  kernel_rfl
#print axioms Removed181_eq
end InitECandidate.Proofs.BackendStages
