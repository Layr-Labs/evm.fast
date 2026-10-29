import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc175
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody175_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody175_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody175_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody175_3 : StackLang.HolProg 64 :=
.seq RemovedBody175_1 RemovedBody175_2

def RemovedBody175_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody175_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody175_3 RemovedBody175_4

def RemovedBody175_6 : StackLang.HolProg 64 :=
.seq RemovedBody175_0 RemovedBody175_5

def RemovedBody175_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody175_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 55#64)

def RemovedBody175_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody175_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody175_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody175_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody175_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody175_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody175_15 : StackLang.HolProg 64 :=
.seq RemovedBody175_13 RemovedBody175_14

def RemovedBody175_16 : StackLang.HolProg 64 :=
.seq RemovedBody175_12 RemovedBody175_15

def RemovedBody175_17 : StackLang.HolProg 64 :=
.seq RemovedBody175_11 RemovedBody175_16

def RemovedBody175_18 : StackLang.HolProg 64 :=
.seq RemovedBody175_10 RemovedBody175_17

def RemovedBody175_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody175_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody175_18 RemovedBody175_19

def RemovedBody175_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody175_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody175_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody175_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody175_25 : StackLang.HolProg 64 :=
.seq RemovedBody175_23 RemovedBody175_24

def RemovedBody175_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody175_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 196#64)

def RemovedBody175_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody175_29 : StackLang.HolProg 64 :=
.seq RemovedBody175_27 RemovedBody175_28

def RemovedBody175_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody175_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody175_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody175_33 : StackLang.HolProg 64 :=
.seq RemovedBody175_31 RemovedBody175_32

def RemovedBody175_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody175_35 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody175_33 RemovedBody175_34

def RemovedBody175_36 : StackLang.HolProg 64 :=
.seq RemovedBody175_30 RemovedBody175_35

def RemovedBody175_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody175_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody175_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 175 3

def RemovedBody175_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody175_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody175_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody175_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody175_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody175_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody175_46 : StackLang.HolProg 64 :=
.seq RemovedBody175_44 RemovedBody175_45

def RemovedBody175_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody175_48 : StackLang.HolProg 64 :=
.seq RemovedBody175_46 RemovedBody175_47

def RemovedBody175_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody175_50 : StackLang.HolProg 64 :=
.seq RemovedBody175_48 RemovedBody175_49

def RemovedBody175_51 : StackLang.HolProg 64 :=
.seq RemovedBody175_43 RemovedBody175_50

def RemovedBody175_52 : StackLang.HolProg 64 :=
.seq RemovedBody175_42 RemovedBody175_51

def RemovedBody175_53 : StackLang.HolProg 64 :=
.seq RemovedBody175_41 RemovedBody175_52

def RemovedBody175_54 : StackLang.HolProg 64 :=
.seq RemovedBody175_40 RemovedBody175_53

def RemovedBody175_55 : StackLang.HolProg 64 :=
.seq RemovedBody175_39 RemovedBody175_54

def RemovedBody175_56 : StackLang.HolProg 64 :=
.seq RemovedBody175_38 RemovedBody175_55

def RemovedBody175_57 : StackLang.HolProg 64 :=
.seq RemovedBody175_37 RemovedBody175_56

def RemovedBody175_58 : StackLang.HolProg 64 :=
.seq RemovedBody175_36 RemovedBody175_57

def RemovedBody175_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody175_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody175_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody175_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody175_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody175_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody175_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody175_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody175_67 : StackLang.HolProg 64 :=
.seq RemovedBody175_65 RemovedBody175_66

def RemovedBody175_68 : StackLang.HolProg 64 :=
.seq RemovedBody175_64 RemovedBody175_67

def RemovedBody175_69 : StackLang.HolProg 64 :=
.seq RemovedBody175_63 RemovedBody175_68

def RemovedBody175_70 : StackLang.HolProg 64 :=
.seq RemovedBody175_62 RemovedBody175_69

def RemovedBody175_71 : StackLang.HolProg 64 :=
.seq RemovedBody175_61 RemovedBody175_70

def RemovedBody175_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody175_73 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody175_74 : StackLang.HolProg 64 :=
.seq RemovedBody175_72 RemovedBody175_73

def RemovedBody175_75 : StackLang.HolProg 64 :=
.call (some (RemovedBody175_71, 0, 175, 2)) (Sum.inl 172) (some (RemovedBody175_74, 175, 3))

def RemovedBody175_76 : StackLang.HolProg 64 :=
.seq RemovedBody175_60 RemovedBody175_75

def RemovedBody175_77 : StackLang.HolProg 64 :=
.seq RemovedBody175_59 RemovedBody175_76

def RemovedBody175_78 : StackLang.HolProg 64 :=
.seq RemovedBody175_58 RemovedBody175_77

def RemovedBody175_79 : StackLang.HolProg 64 :=
.seq RemovedBody175_29 RemovedBody175_78

def RemovedBody175_80 : StackLang.HolProg 64 :=
.seq RemovedBody175_26 RemovedBody175_79

def RemovedBody175_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody175_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody175_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody175_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody175_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody175_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody175_87 : StackLang.HolProg 64 :=
.seq RemovedBody175_85 RemovedBody175_86

def RemovedBody175_88 : StackLang.HolProg 64 :=
.seq RemovedBody175_84 RemovedBody175_87

def RemovedBody175_89 : StackLang.HolProg 64 :=
.seq RemovedBody175_83 RemovedBody175_88

def RemovedBody175_90 : StackLang.HolProg 64 :=
.seq RemovedBody175_82 RemovedBody175_89

def RemovedBody175_91 : StackLang.HolProg 64 :=
.seq RemovedBody175_81 RemovedBody175_90

def RemovedBody175_92 : StackLang.HolProg 64 :=
.seq RemovedBody175_80 RemovedBody175_91

def RemovedBody175_93 : StackLang.HolProg 64 :=
.seq RemovedBody175_25 RemovedBody175_92

def RemovedBody175_94 : StackLang.HolProg 64 :=
.seq RemovedBody175_22 RemovedBody175_93

def RemovedBody175_95 : StackLang.HolProg 64 :=
.seq RemovedBody175_21 RemovedBody175_94

def RemovedBody175_96 : StackLang.HolProg 64 :=
.seq RemovedBody175_20 RemovedBody175_95

def RemovedBody175_97 : StackLang.HolProg 64 :=
.seq RemovedBody175_9 RemovedBody175_96

def RemovedBody175_98 : StackLang.HolProg 64 :=
.seq RemovedBody175_8 RemovedBody175_97

def RemovedBody175_99 : StackLang.HolProg 64 :=
.seq RemovedBody175_7 RemovedBody175_98

def RemovedBody175_100 : StackLang.HolProg 64 :=
.seq RemovedBody175_6 RemovedBody175_99

def Removed175 : Nat × StackLang.HolProg 64 := (175, RemovedBody175_100)
theorem Removed175_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc175 = Removed175 := by
  kernel_rfl
#print axioms Removed175_eq
end InitECandidate.Proofs.BackendStages
