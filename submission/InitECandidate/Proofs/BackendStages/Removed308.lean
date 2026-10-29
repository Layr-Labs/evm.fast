import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc308
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody308_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody308_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody308_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody308_3 : StackLang.HolProg 64 :=
.seq RemovedBody308_1 RemovedBody308_2

def RemovedBody308_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody308_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody308_3 RemovedBody308_4

def RemovedBody308_6 : StackLang.HolProg 64 :=
.seq RemovedBody308_0 RemovedBody308_5

def RemovedBody308_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody308_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 16#64)

def RemovedBody308_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody308_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody308_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody308_12 : StackLang.HolProg 64 :=
.seq RemovedBody308_10 RemovedBody308_11

def RemovedBody308_13 : StackLang.HolProg 64 :=
.seq RemovedBody308_9 RemovedBody308_12

def RemovedBody308_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody308_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 849#64)

def RemovedBody308_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody308_17 : StackLang.HolProg 64 :=
.seq RemovedBody308_15 RemovedBody308_16

def RemovedBody308_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody308_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody308_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody308_21 : StackLang.HolProg 64 :=
.seq RemovedBody308_19 RemovedBody308_20

def RemovedBody308_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody308_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody308_21 RemovedBody308_22

def RemovedBody308_24 : StackLang.HolProg 64 :=
.seq RemovedBody308_18 RemovedBody308_23

def RemovedBody308_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody308_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody308_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 308 3

def RemovedBody308_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody308_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody308_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody308_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody308_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody308_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody308_34 : StackLang.HolProg 64 :=
.seq RemovedBody308_32 RemovedBody308_33

def RemovedBody308_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody308_36 : StackLang.HolProg 64 :=
.seq RemovedBody308_34 RemovedBody308_35

def RemovedBody308_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody308_38 : StackLang.HolProg 64 :=
.seq RemovedBody308_36 RemovedBody308_37

def RemovedBody308_39 : StackLang.HolProg 64 :=
.seq RemovedBody308_31 RemovedBody308_38

def RemovedBody308_40 : StackLang.HolProg 64 :=
.seq RemovedBody308_30 RemovedBody308_39

def RemovedBody308_41 : StackLang.HolProg 64 :=
.seq RemovedBody308_29 RemovedBody308_40

def RemovedBody308_42 : StackLang.HolProg 64 :=
.seq RemovedBody308_28 RemovedBody308_41

def RemovedBody308_43 : StackLang.HolProg 64 :=
.seq RemovedBody308_27 RemovedBody308_42

def RemovedBody308_44 : StackLang.HolProg 64 :=
.seq RemovedBody308_26 RemovedBody308_43

def RemovedBody308_45 : StackLang.HolProg 64 :=
.seq RemovedBody308_25 RemovedBody308_44

def RemovedBody308_46 : StackLang.HolProg 64 :=
.seq RemovedBody308_24 RemovedBody308_45

def RemovedBody308_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody308_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody308_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody308_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody308_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody308_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody308_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody308_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody308_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody308_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody308_57 : StackLang.HolProg 64 :=
.seq RemovedBody308_55 RemovedBody308_56

def RemovedBody308_58 : StackLang.HolProg 64 :=
.seq RemovedBody308_54 RemovedBody308_57

def RemovedBody308_59 : StackLang.HolProg 64 :=
.seq RemovedBody308_53 RemovedBody308_58

def RemovedBody308_60 : StackLang.HolProg 64 :=
.seq RemovedBody308_52 RemovedBody308_59

def RemovedBody308_61 : StackLang.HolProg 64 :=
.seq RemovedBody308_51 RemovedBody308_60

def RemovedBody308_62 : StackLang.HolProg 64 :=
.seq RemovedBody308_50 RemovedBody308_61

def RemovedBody308_63 : StackLang.HolProg 64 :=
.seq RemovedBody308_49 RemovedBody308_62

def RemovedBody308_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody308_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody308_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody308_67 : StackLang.HolProg 64 :=
.seq RemovedBody308_65 RemovedBody308_66

def RemovedBody308_68 : StackLang.HolProg 64 :=
.seq RemovedBody308_64 RemovedBody308_67

def RemovedBody308_69 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody308_70 : StackLang.HolProg 64 :=
.seq RemovedBody308_68 RemovedBody308_69

def RemovedBody308_71 : StackLang.HolProg 64 :=
.call (some (RemovedBody308_63, 0, 308, 2)) (Sum.inl 68) (some (RemovedBody308_70, 308, 3))

def RemovedBody308_72 : StackLang.HolProg 64 :=
.seq RemovedBody308_48 RemovedBody308_71

def RemovedBody308_73 : StackLang.HolProg 64 :=
.seq RemovedBody308_47 RemovedBody308_72

def RemovedBody308_74 : StackLang.HolProg 64 :=
.seq RemovedBody308_46 RemovedBody308_73

def RemovedBody308_75 : StackLang.HolProg 64 :=
.seq RemovedBody308_17 RemovedBody308_74

def RemovedBody308_76 : StackLang.HolProg 64 :=
.seq RemovedBody308_14 RemovedBody308_75

def RemovedBody308_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody308_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody308_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody308_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody308_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody308_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody308_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody308_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody308_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody308_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody308_87 : StackLang.HolProg 64 :=
.seq RemovedBody308_85 RemovedBody308_86

def RemovedBody308_88 : StackLang.HolProg 64 :=
.seq RemovedBody308_84 RemovedBody308_87

def RemovedBody308_89 : StackLang.HolProg 64 :=
.seq RemovedBody308_83 RemovedBody308_88

def RemovedBody308_90 : StackLang.HolProg 64 :=
.seq RemovedBody308_82 RemovedBody308_89

def RemovedBody308_91 : StackLang.HolProg 64 :=
.seq RemovedBody308_81 RemovedBody308_90

def RemovedBody308_92 : StackLang.HolProg 64 :=
.seq RemovedBody308_80 RemovedBody308_91

def RemovedBody308_93 : StackLang.HolProg 64 :=
.seq RemovedBody308_79 RemovedBody308_92

def RemovedBody308_94 : StackLang.HolProg 64 :=
.seq RemovedBody308_78 RemovedBody308_93

def RemovedBody308_95 : StackLang.HolProg 64 :=
.seq RemovedBody308_77 RemovedBody308_94

def RemovedBody308_96 : StackLang.HolProg 64 :=
.seq RemovedBody308_76 RemovedBody308_95

def RemovedBody308_97 : StackLang.HolProg 64 :=
.seq RemovedBody308_13 RemovedBody308_96

def RemovedBody308_98 : StackLang.HolProg 64 :=
.seq RemovedBody308_8 RemovedBody308_97

def RemovedBody308_99 : StackLang.HolProg 64 :=
.seq RemovedBody308_7 RemovedBody308_98

def RemovedBody308_100 : StackLang.HolProg 64 :=
.seq RemovedBody308_6 RemovedBody308_99

def Removed308 : Nat × StackLang.HolProg 64 := (308, RemovedBody308_100)
theorem Removed308_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc308 = Removed308 := by
  kernel_rfl
#print axioms Removed308_eq
end InitECandidate.Proofs.BackendStages
