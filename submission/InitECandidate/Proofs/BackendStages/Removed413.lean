import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc413
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody413_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody413_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody413_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody413_3 : StackLang.HolProg 64 :=
.seq RemovedBody413_1 RemovedBody413_2

def RemovedBody413_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody413_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody413_3 RemovedBody413_4

def RemovedBody413_6 : StackLang.HolProg 64 :=
.seq RemovedBody413_0 RemovedBody413_5

def RemovedBody413_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody413_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody413_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1233#64)

def RemovedBody413_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody413_11 : StackLang.HolProg 64 :=
.seq RemovedBody413_9 RemovedBody413_10

def RemovedBody413_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody413_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody413_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody413_15 : StackLang.HolProg 64 :=
.seq RemovedBody413_13 RemovedBody413_14

def RemovedBody413_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody413_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody413_15 RemovedBody413_16

def RemovedBody413_18 : StackLang.HolProg 64 :=
.seq RemovedBody413_12 RemovedBody413_17

def RemovedBody413_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody413_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody413_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 413 3

def RemovedBody413_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody413_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody413_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody413_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody413_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody413_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody413_28 : StackLang.HolProg 64 :=
.seq RemovedBody413_26 RemovedBody413_27

def RemovedBody413_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody413_30 : StackLang.HolProg 64 :=
.seq RemovedBody413_28 RemovedBody413_29

def RemovedBody413_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody413_32 : StackLang.HolProg 64 :=
.seq RemovedBody413_30 RemovedBody413_31

def RemovedBody413_33 : StackLang.HolProg 64 :=
.seq RemovedBody413_25 RemovedBody413_32

def RemovedBody413_34 : StackLang.HolProg 64 :=
.seq RemovedBody413_24 RemovedBody413_33

def RemovedBody413_35 : StackLang.HolProg 64 :=
.seq RemovedBody413_23 RemovedBody413_34

def RemovedBody413_36 : StackLang.HolProg 64 :=
.seq RemovedBody413_22 RemovedBody413_35

def RemovedBody413_37 : StackLang.HolProg 64 :=
.seq RemovedBody413_21 RemovedBody413_36

def RemovedBody413_38 : StackLang.HolProg 64 :=
.seq RemovedBody413_20 RemovedBody413_37

def RemovedBody413_39 : StackLang.HolProg 64 :=
.seq RemovedBody413_19 RemovedBody413_38

def RemovedBody413_40 : StackLang.HolProg 64 :=
.seq RemovedBody413_18 RemovedBody413_39

def RemovedBody413_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody413_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody413_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody413_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody413_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody413_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody413_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody413_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody413_49 : StackLang.HolProg 64 :=
.seq RemovedBody413_47 RemovedBody413_48

def RemovedBody413_50 : StackLang.HolProg 64 :=
.seq RemovedBody413_46 RemovedBody413_49

def RemovedBody413_51 : StackLang.HolProg 64 :=
.seq RemovedBody413_45 RemovedBody413_50

def RemovedBody413_52 : StackLang.HolProg 64 :=
.seq RemovedBody413_44 RemovedBody413_51

def RemovedBody413_53 : StackLang.HolProg 64 :=
.seq RemovedBody413_43 RemovedBody413_52

def RemovedBody413_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody413_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody413_56 : StackLang.HolProg 64 :=
.seq RemovedBody413_54 RemovedBody413_55

def RemovedBody413_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody413_53, 0, 413, 2)) (Sum.inl 406) (some (RemovedBody413_56, 413, 3))

def RemovedBody413_58 : StackLang.HolProg 64 :=
.seq RemovedBody413_42 RemovedBody413_57

def RemovedBody413_59 : StackLang.HolProg 64 :=
.seq RemovedBody413_41 RemovedBody413_58

def RemovedBody413_60 : StackLang.HolProg 64 :=
.seq RemovedBody413_40 RemovedBody413_59

def RemovedBody413_61 : StackLang.HolProg 64 :=
.seq RemovedBody413_11 RemovedBody413_60

def RemovedBody413_62 : StackLang.HolProg 64 :=
.seq RemovedBody413_8 RemovedBody413_61

def RemovedBody413_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody413_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody413_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody413_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody413_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody413_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody413_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody413_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody413_71 : StackLang.HolProg 64 :=
.seq RemovedBody413_69 RemovedBody413_70

def RemovedBody413_72 : StackLang.HolProg 64 :=
.seq RemovedBody413_68 RemovedBody413_71

def RemovedBody413_73 : StackLang.HolProg 64 :=
.seq RemovedBody413_67 RemovedBody413_72

def RemovedBody413_74 : StackLang.HolProg 64 :=
.seq RemovedBody413_66 RemovedBody413_73

def RemovedBody413_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody413_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody413_74 RemovedBody413_75

def RemovedBody413_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody413_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody413_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody413_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody413_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody413_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody413_83 : StackLang.HolProg 64 :=
.seq RemovedBody413_81 RemovedBody413_82

def RemovedBody413_84 : StackLang.HolProg 64 :=
.seq RemovedBody413_80 RemovedBody413_83

def RemovedBody413_85 : StackLang.HolProg 64 :=
.seq RemovedBody413_79 RemovedBody413_84

def RemovedBody413_86 : StackLang.HolProg 64 :=
.seq RemovedBody413_78 RemovedBody413_85

def RemovedBody413_87 : StackLang.HolProg 64 :=
.seq RemovedBody413_77 RemovedBody413_86

def RemovedBody413_88 : StackLang.HolProg 64 :=
.seq RemovedBody413_76 RemovedBody413_87

def RemovedBody413_89 : StackLang.HolProg 64 :=
.seq RemovedBody413_65 RemovedBody413_88

def RemovedBody413_90 : StackLang.HolProg 64 :=
.seq RemovedBody413_64 RemovedBody413_89

def RemovedBody413_91 : StackLang.HolProg 64 :=
.seq RemovedBody413_63 RemovedBody413_90

def RemovedBody413_92 : StackLang.HolProg 64 :=
.seq RemovedBody413_62 RemovedBody413_91

def RemovedBody413_93 : StackLang.HolProg 64 :=
.seq RemovedBody413_7 RemovedBody413_92

def RemovedBody413_94 : StackLang.HolProg 64 :=
.seq RemovedBody413_6 RemovedBody413_93

def Removed413 : Nat × StackLang.HolProg 64 := (413, RemovedBody413_94)
theorem Removed413_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc413 = Removed413 := by
  kernel_rfl
#print axioms Removed413_eq
end InitECandidate.Proofs.BackendStages
