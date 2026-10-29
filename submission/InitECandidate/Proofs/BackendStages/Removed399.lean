import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc399
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody399_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody399_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody399_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody399_3 : StackLang.HolProg 64 :=
.seq RemovedBody399_1 RemovedBody399_2

def RemovedBody399_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody399_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody399_3 RemovedBody399_4

def RemovedBody399_6 : StackLang.HolProg 64 :=
.seq RemovedBody399_0 RemovedBody399_5

def RemovedBody399_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody399_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody399_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1184#64)

def RemovedBody399_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody399_11 : StackLang.HolProg 64 :=
.seq RemovedBody399_9 RemovedBody399_10

def RemovedBody399_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody399_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody399_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody399_15 : StackLang.HolProg 64 :=
.seq RemovedBody399_13 RemovedBody399_14

def RemovedBody399_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody399_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody399_15 RemovedBody399_16

def RemovedBody399_18 : StackLang.HolProg 64 :=
.seq RemovedBody399_12 RemovedBody399_17

def RemovedBody399_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody399_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody399_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 399 3

def RemovedBody399_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody399_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody399_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody399_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody399_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody399_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody399_28 : StackLang.HolProg 64 :=
.seq RemovedBody399_26 RemovedBody399_27

def RemovedBody399_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody399_30 : StackLang.HolProg 64 :=
.seq RemovedBody399_28 RemovedBody399_29

def RemovedBody399_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody399_32 : StackLang.HolProg 64 :=
.seq RemovedBody399_30 RemovedBody399_31

def RemovedBody399_33 : StackLang.HolProg 64 :=
.seq RemovedBody399_25 RemovedBody399_32

def RemovedBody399_34 : StackLang.HolProg 64 :=
.seq RemovedBody399_24 RemovedBody399_33

def RemovedBody399_35 : StackLang.HolProg 64 :=
.seq RemovedBody399_23 RemovedBody399_34

def RemovedBody399_36 : StackLang.HolProg 64 :=
.seq RemovedBody399_22 RemovedBody399_35

def RemovedBody399_37 : StackLang.HolProg 64 :=
.seq RemovedBody399_21 RemovedBody399_36

def RemovedBody399_38 : StackLang.HolProg 64 :=
.seq RemovedBody399_20 RemovedBody399_37

def RemovedBody399_39 : StackLang.HolProg 64 :=
.seq RemovedBody399_19 RemovedBody399_38

def RemovedBody399_40 : StackLang.HolProg 64 :=
.seq RemovedBody399_18 RemovedBody399_39

def RemovedBody399_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody399_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody399_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody399_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody399_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody399_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody399_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody399_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody399_49 : StackLang.HolProg 64 :=
.seq RemovedBody399_47 RemovedBody399_48

def RemovedBody399_50 : StackLang.HolProg 64 :=
.seq RemovedBody399_46 RemovedBody399_49

def RemovedBody399_51 : StackLang.HolProg 64 :=
.seq RemovedBody399_45 RemovedBody399_50

def RemovedBody399_52 : StackLang.HolProg 64 :=
.seq RemovedBody399_44 RemovedBody399_51

def RemovedBody399_53 : StackLang.HolProg 64 :=
.seq RemovedBody399_43 RemovedBody399_52

def RemovedBody399_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody399_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody399_56 : StackLang.HolProg 64 :=
.seq RemovedBody399_54 RemovedBody399_55

def RemovedBody399_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody399_53, 0, 399, 2)) (Sum.inl 398) (some (RemovedBody399_56, 399, 3))

def RemovedBody399_58 : StackLang.HolProg 64 :=
.seq RemovedBody399_42 RemovedBody399_57

def RemovedBody399_59 : StackLang.HolProg 64 :=
.seq RemovedBody399_41 RemovedBody399_58

def RemovedBody399_60 : StackLang.HolProg 64 :=
.seq RemovedBody399_40 RemovedBody399_59

def RemovedBody399_61 : StackLang.HolProg 64 :=
.seq RemovedBody399_11 RemovedBody399_60

def RemovedBody399_62 : StackLang.HolProg 64 :=
.seq RemovedBody399_8 RemovedBody399_61

def RemovedBody399_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody399_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody399_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody399_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody399_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody399_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody399_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody399_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551488#64))

def RemovedBody399_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody399_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody399_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody399_74 : StackLang.HolProg 64 :=
.seq RemovedBody399_72 RemovedBody399_73

def RemovedBody399_75 : StackLang.HolProg 64 :=
.seq RemovedBody399_71 RemovedBody399_74

def RemovedBody399_76 : StackLang.HolProg 64 :=
.seq RemovedBody399_70 RemovedBody399_75

def RemovedBody399_77 : StackLang.HolProg 64 :=
.seq RemovedBody399_69 RemovedBody399_76

def RemovedBody399_78 : StackLang.HolProg 64 :=
.seq RemovedBody399_68 RemovedBody399_77

def RemovedBody399_79 : StackLang.HolProg 64 :=
.seq RemovedBody399_67 RemovedBody399_78

def RemovedBody399_80 : StackLang.HolProg 64 :=
.seq RemovedBody399_66 RemovedBody399_79

def RemovedBody399_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody399_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody399_80 RemovedBody399_81

def RemovedBody399_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody399_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody399_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody399_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 40#64))

def RemovedBody399_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody399_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody399_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody399_90 : StackLang.HolProg 64 :=
.seq RemovedBody399_88 RemovedBody399_89

def RemovedBody399_91 : StackLang.HolProg 64 :=
.seq RemovedBody399_87 RemovedBody399_90

def RemovedBody399_92 : StackLang.HolProg 64 :=
.seq RemovedBody399_86 RemovedBody399_91

def RemovedBody399_93 : StackLang.HolProg 64 :=
.seq RemovedBody399_85 RemovedBody399_92

def RemovedBody399_94 : StackLang.HolProg 64 :=
.seq RemovedBody399_84 RemovedBody399_93

def RemovedBody399_95 : StackLang.HolProg 64 :=
.seq RemovedBody399_83 RemovedBody399_94

def RemovedBody399_96 : StackLang.HolProg 64 :=
.seq RemovedBody399_82 RemovedBody399_95

def RemovedBody399_97 : StackLang.HolProg 64 :=
.seq RemovedBody399_65 RemovedBody399_96

def RemovedBody399_98 : StackLang.HolProg 64 :=
.seq RemovedBody399_64 RemovedBody399_97

def RemovedBody399_99 : StackLang.HolProg 64 :=
.seq RemovedBody399_63 RemovedBody399_98

def RemovedBody399_100 : StackLang.HolProg 64 :=
.seq RemovedBody399_62 RemovedBody399_99

def RemovedBody399_101 : StackLang.HolProg 64 :=
.seq RemovedBody399_7 RemovedBody399_100

def RemovedBody399_102 : StackLang.HolProg 64 :=
.seq RemovedBody399_6 RemovedBody399_101

def Removed399 : Nat × StackLang.HolProg 64 := (399, RemovedBody399_102)
theorem Removed399_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc399 = Removed399 := by
  kernel_rfl
#print axioms Removed399_eq
end InitECandidate.Proofs.BackendStages
