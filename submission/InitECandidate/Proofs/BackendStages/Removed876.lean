import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc876
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody876_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody876_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody876_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody876_3 : StackLang.HolProg 64 :=
.seq RemovedBody876_1 RemovedBody876_2

def RemovedBody876_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody876_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody876_3 RemovedBody876_4

def RemovedBody876_6 : StackLang.HolProg 64 :=
.seq RemovedBody876_0 RemovedBody876_5

def RemovedBody876_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody876_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody876_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4602#64)

def RemovedBody876_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody876_11 : StackLang.HolProg 64 :=
.seq RemovedBody876_9 RemovedBody876_10

def RemovedBody876_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody876_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody876_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody876_15 : StackLang.HolProg 64 :=
.seq RemovedBody876_13 RemovedBody876_14

def RemovedBody876_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody876_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody876_15 RemovedBody876_16

def RemovedBody876_18 : StackLang.HolProg 64 :=
.seq RemovedBody876_12 RemovedBody876_17

def RemovedBody876_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody876_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody876_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 876 3

def RemovedBody876_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody876_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody876_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody876_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody876_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody876_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody876_28 : StackLang.HolProg 64 :=
.seq RemovedBody876_26 RemovedBody876_27

def RemovedBody876_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody876_30 : StackLang.HolProg 64 :=
.seq RemovedBody876_28 RemovedBody876_29

def RemovedBody876_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody876_32 : StackLang.HolProg 64 :=
.seq RemovedBody876_30 RemovedBody876_31

def RemovedBody876_33 : StackLang.HolProg 64 :=
.seq RemovedBody876_25 RemovedBody876_32

def RemovedBody876_34 : StackLang.HolProg 64 :=
.seq RemovedBody876_24 RemovedBody876_33

def RemovedBody876_35 : StackLang.HolProg 64 :=
.seq RemovedBody876_23 RemovedBody876_34

def RemovedBody876_36 : StackLang.HolProg 64 :=
.seq RemovedBody876_22 RemovedBody876_35

def RemovedBody876_37 : StackLang.HolProg 64 :=
.seq RemovedBody876_21 RemovedBody876_36

def RemovedBody876_38 : StackLang.HolProg 64 :=
.seq RemovedBody876_20 RemovedBody876_37

def RemovedBody876_39 : StackLang.HolProg 64 :=
.seq RemovedBody876_19 RemovedBody876_38

def RemovedBody876_40 : StackLang.HolProg 64 :=
.seq RemovedBody876_18 RemovedBody876_39

def RemovedBody876_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody876_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody876_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody876_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody876_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody876_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody876_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody876_48 : StackLang.HolProg 64 :=
.seq RemovedBody876_46 RemovedBody876_47

def RemovedBody876_49 : StackLang.HolProg 64 :=
.seq RemovedBody876_45 RemovedBody876_48

def RemovedBody876_50 : StackLang.HolProg 64 :=
.seq RemovedBody876_44 RemovedBody876_49

def RemovedBody876_51 : StackLang.HolProg 64 :=
.seq RemovedBody876_43 RemovedBody876_50

def RemovedBody876_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody876_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody876_54 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody876_55 : StackLang.HolProg 64 :=
.seq RemovedBody876_53 RemovedBody876_54

def RemovedBody876_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody876_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody876_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody876_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2688614470#64)

def RemovedBody876_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 0
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64)

def RemovedBody876_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 7#64)

def RemovedBody876_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody876_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody876_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 9#64)

def RemovedBody876_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody876_66 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody876_67 : StackLang.HolProg 64 :=
.seq RemovedBody876_65 RemovedBody876_66

def RemovedBody876_68 : StackLang.HolProg 64 :=
.seq RemovedBody876_64 RemovedBody876_67

def RemovedBody876_69 : StackLang.HolProg 64 :=
.seq RemovedBody876_63 RemovedBody876_68

def RemovedBody876_70 : StackLang.HolProg 64 :=
.seq RemovedBody876_62 RemovedBody876_69

def RemovedBody876_71 : StackLang.HolProg 64 :=
.seq RemovedBody876_61 RemovedBody876_70

def RemovedBody876_72 : StackLang.HolProg 64 :=
.seq RemovedBody876_60 RemovedBody876_71

def RemovedBody876_73 : StackLang.HolProg 64 :=
.seq RemovedBody876_59 RemovedBody876_72

def RemovedBody876_74 : StackLang.HolProg 64 :=
.seq RemovedBody876_58 RemovedBody876_73

def RemovedBody876_75 : StackLang.HolProg 64 :=
.seq RemovedBody876_57 RemovedBody876_74

def RemovedBody876_76 : StackLang.HolProg 64 :=
.seq RemovedBody876_56 RemovedBody876_75

def RemovedBody876_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64) RemovedBody876_55 RemovedBody876_76

def RemovedBody876_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody876_79 : StackLang.HolProg 64 :=
.seq RemovedBody876_77 RemovedBody876_78

def RemovedBody876_80 : StackLang.HolProg 64 :=
.seq RemovedBody876_52 RemovedBody876_79

def RemovedBody876_81 : StackLang.HolProg 64 :=
.call (some (RemovedBody876_51, 0, 876, 2)) (Sum.inl 875) (some (RemovedBody876_80, 876, 3))

def RemovedBody876_82 : StackLang.HolProg 64 :=
.seq RemovedBody876_42 RemovedBody876_81

def RemovedBody876_83 : StackLang.HolProg 64 :=
.seq RemovedBody876_41 RemovedBody876_82

def RemovedBody876_84 : StackLang.HolProg 64 :=
.seq RemovedBody876_40 RemovedBody876_83

def RemovedBody876_85 : StackLang.HolProg 64 :=
.seq RemovedBody876_11 RemovedBody876_84

def RemovedBody876_86 : StackLang.HolProg 64 :=
.seq RemovedBody876_8 RemovedBody876_85

def RemovedBody876_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody876_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody876_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody876_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody876_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody876_92 : StackLang.HolProg 64 :=
.seq RemovedBody876_90 RemovedBody876_91

def RemovedBody876_93 : StackLang.HolProg 64 :=
.seq RemovedBody876_89 RemovedBody876_92

def RemovedBody876_94 : StackLang.HolProg 64 :=
.seq RemovedBody876_88 RemovedBody876_93

def RemovedBody876_95 : StackLang.HolProg 64 :=
.seq RemovedBody876_87 RemovedBody876_94

def RemovedBody876_96 : StackLang.HolProg 64 :=
.seq RemovedBody876_86 RemovedBody876_95

def RemovedBody876_97 : StackLang.HolProg 64 :=
.seq RemovedBody876_7 RemovedBody876_96

def RemovedBody876_98 : StackLang.HolProg 64 :=
.seq RemovedBody876_6 RemovedBody876_97

def Removed876 : Nat × StackLang.HolProg 64 := (876, RemovedBody876_98)
theorem Removed876_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc876 = Removed876 := by
  kernel_rfl
#print axioms Removed876_eq
end InitECandidate.Proofs.BackendStages
