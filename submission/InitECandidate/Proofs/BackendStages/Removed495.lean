import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc495
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody495_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody495_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody495_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody495_3 : StackLang.HolProg 64 :=
.seq RemovedBody495_1 RemovedBody495_2

def RemovedBody495_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody495_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody495_3 RemovedBody495_4

def RemovedBody495_6 : StackLang.HolProg 64 :=
.seq RemovedBody495_0 RemovedBody495_5

def RemovedBody495_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody495_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody495_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1542#64)

def RemovedBody495_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody495_11 : StackLang.HolProg 64 :=
.seq RemovedBody495_9 RemovedBody495_10

def RemovedBody495_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody495_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody495_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody495_15 : StackLang.HolProg 64 :=
.seq RemovedBody495_13 RemovedBody495_14

def RemovedBody495_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody495_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody495_15 RemovedBody495_16

def RemovedBody495_18 : StackLang.HolProg 64 :=
.seq RemovedBody495_12 RemovedBody495_17

def RemovedBody495_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody495_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody495_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 495 3

def RemovedBody495_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody495_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody495_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody495_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody495_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody495_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody495_28 : StackLang.HolProg 64 :=
.seq RemovedBody495_26 RemovedBody495_27

def RemovedBody495_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody495_30 : StackLang.HolProg 64 :=
.seq RemovedBody495_28 RemovedBody495_29

def RemovedBody495_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody495_32 : StackLang.HolProg 64 :=
.seq RemovedBody495_30 RemovedBody495_31

def RemovedBody495_33 : StackLang.HolProg 64 :=
.seq RemovedBody495_25 RemovedBody495_32

def RemovedBody495_34 : StackLang.HolProg 64 :=
.seq RemovedBody495_24 RemovedBody495_33

def RemovedBody495_35 : StackLang.HolProg 64 :=
.seq RemovedBody495_23 RemovedBody495_34

def RemovedBody495_36 : StackLang.HolProg 64 :=
.seq RemovedBody495_22 RemovedBody495_35

def RemovedBody495_37 : StackLang.HolProg 64 :=
.seq RemovedBody495_21 RemovedBody495_36

def RemovedBody495_38 : StackLang.HolProg 64 :=
.seq RemovedBody495_20 RemovedBody495_37

def RemovedBody495_39 : StackLang.HolProg 64 :=
.seq RemovedBody495_19 RemovedBody495_38

def RemovedBody495_40 : StackLang.HolProg 64 :=
.seq RemovedBody495_18 RemovedBody495_39

def RemovedBody495_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody495_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody495_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody495_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody495_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody495_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody495_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody495_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody495_49 : StackLang.HolProg 64 :=
.seq RemovedBody495_47 RemovedBody495_48

def RemovedBody495_50 : StackLang.HolProg 64 :=
.seq RemovedBody495_46 RemovedBody495_49

def RemovedBody495_51 : StackLang.HolProg 64 :=
.seq RemovedBody495_45 RemovedBody495_50

def RemovedBody495_52 : StackLang.HolProg 64 :=
.seq RemovedBody495_44 RemovedBody495_51

def RemovedBody495_53 : StackLang.HolProg 64 :=
.seq RemovedBody495_43 RemovedBody495_52

def RemovedBody495_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody495_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody495_56 : StackLang.HolProg 64 :=
.seq RemovedBody495_54 RemovedBody495_55

def RemovedBody495_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody495_53, 0, 495, 2)) (Sum.inl 493) (some (RemovedBody495_56, 495, 3))

def RemovedBody495_58 : StackLang.HolProg 64 :=
.seq RemovedBody495_42 RemovedBody495_57

def RemovedBody495_59 : StackLang.HolProg 64 :=
.seq RemovedBody495_41 RemovedBody495_58

def RemovedBody495_60 : StackLang.HolProg 64 :=
.seq RemovedBody495_40 RemovedBody495_59

def RemovedBody495_61 : StackLang.HolProg 64 :=
.seq RemovedBody495_11 RemovedBody495_60

def RemovedBody495_62 : StackLang.HolProg 64 :=
.seq RemovedBody495_8 RemovedBody495_61

def RemovedBody495_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody495_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody495_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody495_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody495_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 100#64)

def RemovedBody495_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody495_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody495_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody495_71 : StackLang.HolProg 64 :=
.seq RemovedBody495_69 RemovedBody495_70

def RemovedBody495_72 : StackLang.HolProg 64 :=
.seq RemovedBody495_68 RemovedBody495_71

def RemovedBody495_73 : StackLang.HolProg 64 :=
.seq RemovedBody495_67 RemovedBody495_72

def RemovedBody495_74 : StackLang.HolProg 64 :=
.seq RemovedBody495_66 RemovedBody495_73

def RemovedBody495_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody495_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody495_74 RemovedBody495_75

def RemovedBody495_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody495_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody495_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3000#64)

def RemovedBody495_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody495_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody495_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody495_83 : StackLang.HolProg 64 :=
.seq RemovedBody495_81 RemovedBody495_82

def RemovedBody495_84 : StackLang.HolProg 64 :=
.seq RemovedBody495_80 RemovedBody495_83

def RemovedBody495_85 : StackLang.HolProg 64 :=
.seq RemovedBody495_79 RemovedBody495_84

def RemovedBody495_86 : StackLang.HolProg 64 :=
.seq RemovedBody495_78 RemovedBody495_85

def RemovedBody495_87 : StackLang.HolProg 64 :=
.seq RemovedBody495_77 RemovedBody495_86

def RemovedBody495_88 : StackLang.HolProg 64 :=
.seq RemovedBody495_76 RemovedBody495_87

def RemovedBody495_89 : StackLang.HolProg 64 :=
.seq RemovedBody495_65 RemovedBody495_88

def RemovedBody495_90 : StackLang.HolProg 64 :=
.seq RemovedBody495_64 RemovedBody495_89

def RemovedBody495_91 : StackLang.HolProg 64 :=
.seq RemovedBody495_63 RemovedBody495_90

def RemovedBody495_92 : StackLang.HolProg 64 :=
.seq RemovedBody495_62 RemovedBody495_91

def RemovedBody495_93 : StackLang.HolProg 64 :=
.seq RemovedBody495_7 RemovedBody495_92

def RemovedBody495_94 : StackLang.HolProg 64 :=
.seq RemovedBody495_6 RemovedBody495_93

def Removed495 : Nat × StackLang.HolProg 64 := (495, RemovedBody495_94)
theorem Removed495_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc495 = Removed495 := by
  kernel_rfl
#print axioms Removed495_eq
end InitECandidate.Proofs.BackendStages
