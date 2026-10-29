import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc874
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody874_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody874_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody874_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody874_3 : StackLang.HolProg 64 :=
.seq RemovedBody874_1 RemovedBody874_2

def RemovedBody874_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody874_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody874_3 RemovedBody874_4

def RemovedBody874_6 : StackLang.HolProg 64 :=
.seq RemovedBody874_0 RemovedBody874_5

def RemovedBody874_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody874_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody874_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4600#64)

def RemovedBody874_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody874_11 : StackLang.HolProg 64 :=
.seq RemovedBody874_9 RemovedBody874_10

def RemovedBody874_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody874_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody874_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody874_15 : StackLang.HolProg 64 :=
.seq RemovedBody874_13 RemovedBody874_14

def RemovedBody874_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody874_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody874_15 RemovedBody874_16

def RemovedBody874_18 : StackLang.HolProg 64 :=
.seq RemovedBody874_12 RemovedBody874_17

def RemovedBody874_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody874_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody874_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 874 3

def RemovedBody874_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody874_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody874_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody874_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody874_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody874_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody874_28 : StackLang.HolProg 64 :=
.seq RemovedBody874_26 RemovedBody874_27

def RemovedBody874_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody874_30 : StackLang.HolProg 64 :=
.seq RemovedBody874_28 RemovedBody874_29

def RemovedBody874_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody874_32 : StackLang.HolProg 64 :=
.seq RemovedBody874_30 RemovedBody874_31

def RemovedBody874_33 : StackLang.HolProg 64 :=
.seq RemovedBody874_25 RemovedBody874_32

def RemovedBody874_34 : StackLang.HolProg 64 :=
.seq RemovedBody874_24 RemovedBody874_33

def RemovedBody874_35 : StackLang.HolProg 64 :=
.seq RemovedBody874_23 RemovedBody874_34

def RemovedBody874_36 : StackLang.HolProg 64 :=
.seq RemovedBody874_22 RemovedBody874_35

def RemovedBody874_37 : StackLang.HolProg 64 :=
.seq RemovedBody874_21 RemovedBody874_36

def RemovedBody874_38 : StackLang.HolProg 64 :=
.seq RemovedBody874_20 RemovedBody874_37

def RemovedBody874_39 : StackLang.HolProg 64 :=
.seq RemovedBody874_19 RemovedBody874_38

def RemovedBody874_40 : StackLang.HolProg 64 :=
.seq RemovedBody874_18 RemovedBody874_39

def RemovedBody874_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody874_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody874_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody874_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody874_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody874_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody874_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody874_48 : StackLang.HolProg 64 :=
.seq RemovedBody874_46 RemovedBody874_47

def RemovedBody874_49 : StackLang.HolProg 64 :=
.seq RemovedBody874_45 RemovedBody874_48

def RemovedBody874_50 : StackLang.HolProg 64 :=
.seq RemovedBody874_44 RemovedBody874_49

def RemovedBody874_51 : StackLang.HolProg 64 :=
.seq RemovedBody874_43 RemovedBody874_50

def RemovedBody874_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody874_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody874_54 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody874_55 : StackLang.HolProg 64 :=
.seq RemovedBody874_53 RemovedBody874_54

def RemovedBody874_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody874_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody874_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody874_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2688614470#64)

def RemovedBody874_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 0
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64)

def RemovedBody874_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 5#64)

def RemovedBody874_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody874_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody874_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 9#64)

def RemovedBody874_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody874_66 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody874_67 : StackLang.HolProg 64 :=
.seq RemovedBody874_65 RemovedBody874_66

def RemovedBody874_68 : StackLang.HolProg 64 :=
.seq RemovedBody874_64 RemovedBody874_67

def RemovedBody874_69 : StackLang.HolProg 64 :=
.seq RemovedBody874_63 RemovedBody874_68

def RemovedBody874_70 : StackLang.HolProg 64 :=
.seq RemovedBody874_62 RemovedBody874_69

def RemovedBody874_71 : StackLang.HolProg 64 :=
.seq RemovedBody874_61 RemovedBody874_70

def RemovedBody874_72 : StackLang.HolProg 64 :=
.seq RemovedBody874_60 RemovedBody874_71

def RemovedBody874_73 : StackLang.HolProg 64 :=
.seq RemovedBody874_59 RemovedBody874_72

def RemovedBody874_74 : StackLang.HolProg 64 :=
.seq RemovedBody874_58 RemovedBody874_73

def RemovedBody874_75 : StackLang.HolProg 64 :=
.seq RemovedBody874_57 RemovedBody874_74

def RemovedBody874_76 : StackLang.HolProg 64 :=
.seq RemovedBody874_56 RemovedBody874_75

def RemovedBody874_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64) RemovedBody874_55 RemovedBody874_76

def RemovedBody874_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody874_79 : StackLang.HolProg 64 :=
.seq RemovedBody874_77 RemovedBody874_78

def RemovedBody874_80 : StackLang.HolProg 64 :=
.seq RemovedBody874_52 RemovedBody874_79

def RemovedBody874_81 : StackLang.HolProg 64 :=
.call (some (RemovedBody874_51, 0, 874, 2)) (Sum.inl 873) (some (RemovedBody874_80, 874, 3))

def RemovedBody874_82 : StackLang.HolProg 64 :=
.seq RemovedBody874_42 RemovedBody874_81

def RemovedBody874_83 : StackLang.HolProg 64 :=
.seq RemovedBody874_41 RemovedBody874_82

def RemovedBody874_84 : StackLang.HolProg 64 :=
.seq RemovedBody874_40 RemovedBody874_83

def RemovedBody874_85 : StackLang.HolProg 64 :=
.seq RemovedBody874_11 RemovedBody874_84

def RemovedBody874_86 : StackLang.HolProg 64 :=
.seq RemovedBody874_8 RemovedBody874_85

def RemovedBody874_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody874_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody874_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody874_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody874_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody874_92 : StackLang.HolProg 64 :=
.seq RemovedBody874_90 RemovedBody874_91

def RemovedBody874_93 : StackLang.HolProg 64 :=
.seq RemovedBody874_89 RemovedBody874_92

def RemovedBody874_94 : StackLang.HolProg 64 :=
.seq RemovedBody874_88 RemovedBody874_93

def RemovedBody874_95 : StackLang.HolProg 64 :=
.seq RemovedBody874_87 RemovedBody874_94

def RemovedBody874_96 : StackLang.HolProg 64 :=
.seq RemovedBody874_86 RemovedBody874_95

def RemovedBody874_97 : StackLang.HolProg 64 :=
.seq RemovedBody874_7 RemovedBody874_96

def RemovedBody874_98 : StackLang.HolProg 64 :=
.seq RemovedBody874_6 RemovedBody874_97

def Removed874 : Nat × StackLang.HolProg 64 := (874, RemovedBody874_98)
theorem Removed874_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc874 = Removed874 := by
  kernel_rfl
#print axioms Removed874_eq
end InitECandidate.Proofs.BackendStages
