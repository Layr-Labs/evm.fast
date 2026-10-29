import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc871
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody871_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody871_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody871_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody871_3 : StackLang.HolProg 64 :=
.seq RemovedBody871_1 RemovedBody871_2

def RemovedBody871_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody871_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody871_3 RemovedBody871_4

def RemovedBody871_6 : StackLang.HolProg 64 :=
.seq RemovedBody871_0 RemovedBody871_5

def RemovedBody871_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody871_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody871_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4597#64)

def RemovedBody871_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody871_11 : StackLang.HolProg 64 :=
.seq RemovedBody871_9 RemovedBody871_10

def RemovedBody871_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody871_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody871_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody871_15 : StackLang.HolProg 64 :=
.seq RemovedBody871_13 RemovedBody871_14

def RemovedBody871_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody871_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody871_15 RemovedBody871_16

def RemovedBody871_18 : StackLang.HolProg 64 :=
.seq RemovedBody871_12 RemovedBody871_17

def RemovedBody871_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody871_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody871_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 871 3

def RemovedBody871_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody871_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody871_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody871_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody871_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody871_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody871_28 : StackLang.HolProg 64 :=
.seq RemovedBody871_26 RemovedBody871_27

def RemovedBody871_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody871_30 : StackLang.HolProg 64 :=
.seq RemovedBody871_28 RemovedBody871_29

def RemovedBody871_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody871_32 : StackLang.HolProg 64 :=
.seq RemovedBody871_30 RemovedBody871_31

def RemovedBody871_33 : StackLang.HolProg 64 :=
.seq RemovedBody871_25 RemovedBody871_32

def RemovedBody871_34 : StackLang.HolProg 64 :=
.seq RemovedBody871_24 RemovedBody871_33

def RemovedBody871_35 : StackLang.HolProg 64 :=
.seq RemovedBody871_23 RemovedBody871_34

def RemovedBody871_36 : StackLang.HolProg 64 :=
.seq RemovedBody871_22 RemovedBody871_35

def RemovedBody871_37 : StackLang.HolProg 64 :=
.seq RemovedBody871_21 RemovedBody871_36

def RemovedBody871_38 : StackLang.HolProg 64 :=
.seq RemovedBody871_20 RemovedBody871_37

def RemovedBody871_39 : StackLang.HolProg 64 :=
.seq RemovedBody871_19 RemovedBody871_38

def RemovedBody871_40 : StackLang.HolProg 64 :=
.seq RemovedBody871_18 RemovedBody871_39

def RemovedBody871_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody871_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody871_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody871_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody871_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody871_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody871_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody871_48 : StackLang.HolProg 64 :=
.seq RemovedBody871_46 RemovedBody871_47

def RemovedBody871_49 : StackLang.HolProg 64 :=
.seq RemovedBody871_45 RemovedBody871_48

def RemovedBody871_50 : StackLang.HolProg 64 :=
.seq RemovedBody871_44 RemovedBody871_49

def RemovedBody871_51 : StackLang.HolProg 64 :=
.seq RemovedBody871_43 RemovedBody871_50

def RemovedBody871_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody871_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody871_54 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody871_55 : StackLang.HolProg 64 :=
.seq RemovedBody871_53 RemovedBody871_54

def RemovedBody871_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody871_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody871_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody871_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2688614470#64)

def RemovedBody871_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 0
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64)

def RemovedBody871_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 2#64)

def RemovedBody871_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody871_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody871_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 9#64)

def RemovedBody871_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody871_66 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody871_67 : StackLang.HolProg 64 :=
.seq RemovedBody871_65 RemovedBody871_66

def RemovedBody871_68 : StackLang.HolProg 64 :=
.seq RemovedBody871_64 RemovedBody871_67

def RemovedBody871_69 : StackLang.HolProg 64 :=
.seq RemovedBody871_63 RemovedBody871_68

def RemovedBody871_70 : StackLang.HolProg 64 :=
.seq RemovedBody871_62 RemovedBody871_69

def RemovedBody871_71 : StackLang.HolProg 64 :=
.seq RemovedBody871_61 RemovedBody871_70

def RemovedBody871_72 : StackLang.HolProg 64 :=
.seq RemovedBody871_60 RemovedBody871_71

def RemovedBody871_73 : StackLang.HolProg 64 :=
.seq RemovedBody871_59 RemovedBody871_72

def RemovedBody871_74 : StackLang.HolProg 64 :=
.seq RemovedBody871_58 RemovedBody871_73

def RemovedBody871_75 : StackLang.HolProg 64 :=
.seq RemovedBody871_57 RemovedBody871_74

def RemovedBody871_76 : StackLang.HolProg 64 :=
.seq RemovedBody871_56 RemovedBody871_75

def RemovedBody871_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64) RemovedBody871_55 RemovedBody871_76

def RemovedBody871_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody871_79 : StackLang.HolProg 64 :=
.seq RemovedBody871_77 RemovedBody871_78

def RemovedBody871_80 : StackLang.HolProg 64 :=
.seq RemovedBody871_52 RemovedBody871_79

def RemovedBody871_81 : StackLang.HolProg 64 :=
.call (some (RemovedBody871_51, 0, 871, 2)) (Sum.inl 870) (some (RemovedBody871_80, 871, 3))

def RemovedBody871_82 : StackLang.HolProg 64 :=
.seq RemovedBody871_42 RemovedBody871_81

def RemovedBody871_83 : StackLang.HolProg 64 :=
.seq RemovedBody871_41 RemovedBody871_82

def RemovedBody871_84 : StackLang.HolProg 64 :=
.seq RemovedBody871_40 RemovedBody871_83

def RemovedBody871_85 : StackLang.HolProg 64 :=
.seq RemovedBody871_11 RemovedBody871_84

def RemovedBody871_86 : StackLang.HolProg 64 :=
.seq RemovedBody871_8 RemovedBody871_85

def RemovedBody871_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody871_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody871_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody871_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody871_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody871_92 : StackLang.HolProg 64 :=
.seq RemovedBody871_90 RemovedBody871_91

def RemovedBody871_93 : StackLang.HolProg 64 :=
.seq RemovedBody871_89 RemovedBody871_92

def RemovedBody871_94 : StackLang.HolProg 64 :=
.seq RemovedBody871_88 RemovedBody871_93

def RemovedBody871_95 : StackLang.HolProg 64 :=
.seq RemovedBody871_87 RemovedBody871_94

def RemovedBody871_96 : StackLang.HolProg 64 :=
.seq RemovedBody871_86 RemovedBody871_95

def RemovedBody871_97 : StackLang.HolProg 64 :=
.seq RemovedBody871_7 RemovedBody871_96

def RemovedBody871_98 : StackLang.HolProg 64 :=
.seq RemovedBody871_6 RemovedBody871_97

def Removed871 : Nat × StackLang.HolProg 64 := (871, RemovedBody871_98)
theorem Removed871_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc871 = Removed871 := by
  kernel_rfl
#print axioms Removed871_eq
end InitECandidate.Proofs.BackendStages
