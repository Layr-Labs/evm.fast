import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc600
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody600_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody600_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody600_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody600_3 : StackLang.HolProg 64 :=
.seq RemovedBody600_1 RemovedBody600_2

def RemovedBody600_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody600_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody600_3 RemovedBody600_4

def RemovedBody600_6 : StackLang.HolProg 64 :=
.seq RemovedBody600_0 RemovedBody600_5

def RemovedBody600_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody600_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody600_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody600_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody600_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody600_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 160#64))

def RemovedBody600_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody600_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody600_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody600_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551328#64))

def RemovedBody600_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody600_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody600_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody600_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2275#64)

def RemovedBody600_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody600_22 : StackLang.HolProg 64 :=
.seq RemovedBody600_20 RemovedBody600_21

def RemovedBody600_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody600_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody600_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody600_26 : StackLang.HolProg 64 :=
.seq RemovedBody600_24 RemovedBody600_25

def RemovedBody600_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody600_28 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody600_26 RemovedBody600_27

def RemovedBody600_29 : StackLang.HolProg 64 :=
.seq RemovedBody600_23 RemovedBody600_28

def RemovedBody600_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody600_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody600_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 600 3

def RemovedBody600_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody600_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody600_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody600_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody600_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody600_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody600_39 : StackLang.HolProg 64 :=
.seq RemovedBody600_37 RemovedBody600_38

def RemovedBody600_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody600_41 : StackLang.HolProg 64 :=
.seq RemovedBody600_39 RemovedBody600_40

def RemovedBody600_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody600_43 : StackLang.HolProg 64 :=
.seq RemovedBody600_41 RemovedBody600_42

def RemovedBody600_44 : StackLang.HolProg 64 :=
.seq RemovedBody600_36 RemovedBody600_43

def RemovedBody600_45 : StackLang.HolProg 64 :=
.seq RemovedBody600_35 RemovedBody600_44

def RemovedBody600_46 : StackLang.HolProg 64 :=
.seq RemovedBody600_34 RemovedBody600_45

def RemovedBody600_47 : StackLang.HolProg 64 :=
.seq RemovedBody600_33 RemovedBody600_46

def RemovedBody600_48 : StackLang.HolProg 64 :=
.seq RemovedBody600_32 RemovedBody600_47

def RemovedBody600_49 : StackLang.HolProg 64 :=
.seq RemovedBody600_31 RemovedBody600_48

def RemovedBody600_50 : StackLang.HolProg 64 :=
.seq RemovedBody600_30 RemovedBody600_49

def RemovedBody600_51 : StackLang.HolProg 64 :=
.seq RemovedBody600_29 RemovedBody600_50

def RemovedBody600_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody600_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody600_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody600_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody600_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody600_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody600_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody600_59 : StackLang.HolProg 64 :=
.seq RemovedBody600_57 RemovedBody600_58

def RemovedBody600_60 : StackLang.HolProg 64 :=
.seq RemovedBody600_56 RemovedBody600_59

def RemovedBody600_61 : StackLang.HolProg 64 :=
.seq RemovedBody600_55 RemovedBody600_60

def RemovedBody600_62 : StackLang.HolProg 64 :=
.seq RemovedBody600_54 RemovedBody600_61

def RemovedBody600_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody600_64 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody600_65 : StackLang.HolProg 64 :=
.seq RemovedBody600_63 RemovedBody600_64

def RemovedBody600_66 : StackLang.HolProg 64 :=
.call (some (RemovedBody600_62, 0, 600, 2)) (Sum.inl 391) (some (RemovedBody600_65, 600, 3))

def RemovedBody600_67 : StackLang.HolProg 64 :=
.seq RemovedBody600_53 RemovedBody600_66

def RemovedBody600_68 : StackLang.HolProg 64 :=
.seq RemovedBody600_52 RemovedBody600_67

def RemovedBody600_69 : StackLang.HolProg 64 :=
.seq RemovedBody600_51 RemovedBody600_68

def RemovedBody600_70 : StackLang.HolProg 64 :=
.seq RemovedBody600_22 RemovedBody600_69

def RemovedBody600_71 : StackLang.HolProg 64 :=
.seq RemovedBody600_19 RemovedBody600_70

def RemovedBody600_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody600_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody600_74 : StackLang.HolProg 64 :=
.seq RemovedBody600_72 RemovedBody600_73

def RemovedBody600_75 : StackLang.HolProg 64 :=
.seq RemovedBody600_71 RemovedBody600_74

def RemovedBody600_76 : StackLang.HolProg 64 :=
.seq RemovedBody600_18 RemovedBody600_75

def RemovedBody600_77 : StackLang.HolProg 64 :=
.seq RemovedBody600_17 RemovedBody600_76

def RemovedBody600_78 : StackLang.HolProg 64 :=
.seq RemovedBody600_16 RemovedBody600_77

def RemovedBody600_79 : StackLang.HolProg 64 :=
.seq RemovedBody600_15 RemovedBody600_78

def RemovedBody600_80 : StackLang.HolProg 64 :=
.seq RemovedBody600_14 RemovedBody600_79

def RemovedBody600_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody600_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody600_83 : StackLang.HolProg 64 :=
.seq RemovedBody600_81 RemovedBody600_82

def RemovedBody600_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody600_80 RemovedBody600_83

def RemovedBody600_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody600_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody600_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody600_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody600_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody600_90 : StackLang.HolProg 64 :=
.seq RemovedBody600_88 RemovedBody600_89

def RemovedBody600_91 : StackLang.HolProg 64 :=
.seq RemovedBody600_87 RemovedBody600_90

def RemovedBody600_92 : StackLang.HolProg 64 :=
.seq RemovedBody600_86 RemovedBody600_91

def RemovedBody600_93 : StackLang.HolProg 64 :=
.seq RemovedBody600_85 RemovedBody600_92

def RemovedBody600_94 : StackLang.HolProg 64 :=
.seq RemovedBody600_84 RemovedBody600_93

def RemovedBody600_95 : StackLang.HolProg 64 :=
.seq RemovedBody600_13 RemovedBody600_94

def RemovedBody600_96 : StackLang.HolProg 64 :=
.seq RemovedBody600_12 RemovedBody600_95

def RemovedBody600_97 : StackLang.HolProg 64 :=
.seq RemovedBody600_11 RemovedBody600_96

def RemovedBody600_98 : StackLang.HolProg 64 :=
.seq RemovedBody600_10 RemovedBody600_97

def RemovedBody600_99 : StackLang.HolProg 64 :=
.seq RemovedBody600_9 RemovedBody600_98

def RemovedBody600_100 : StackLang.HolProg 64 :=
.seq RemovedBody600_8 RemovedBody600_99

def RemovedBody600_101 : StackLang.HolProg 64 :=
.seq RemovedBody600_7 RemovedBody600_100

def RemovedBody600_102 : StackLang.HolProg 64 :=
.seq RemovedBody600_6 RemovedBody600_101

def Removed600 : Nat × StackLang.HolProg 64 := (600, RemovedBody600_102)
theorem Removed600_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc600 = Removed600 := by
  kernel_rfl
#print axioms Removed600_eq
end InitECandidate.Proofs.BackendStages
