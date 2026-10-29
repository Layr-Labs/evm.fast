import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc870
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody870_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody870_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody870_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody870_3 : StackLang.HolProg 64 :=
.seq RemovedBody870_1 RemovedBody870_2

def RemovedBody870_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody870_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody870_3 RemovedBody870_4

def RemovedBody870_6 : StackLang.HolProg 64 :=
.seq RemovedBody870_0 RemovedBody870_5

def RemovedBody870_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody870_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody870_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4596#64)

def RemovedBody870_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody870_11 : StackLang.HolProg 64 :=
.seq RemovedBody870_9 RemovedBody870_10

def RemovedBody870_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody870_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody870_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody870_15 : StackLang.HolProg 64 :=
.seq RemovedBody870_13 RemovedBody870_14

def RemovedBody870_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody870_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody870_15 RemovedBody870_16

def RemovedBody870_18 : StackLang.HolProg 64 :=
.seq RemovedBody870_12 RemovedBody870_17

def RemovedBody870_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody870_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody870_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 870 3

def RemovedBody870_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody870_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody870_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody870_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody870_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody870_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody870_28 : StackLang.HolProg 64 :=
.seq RemovedBody870_26 RemovedBody870_27

def RemovedBody870_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody870_30 : StackLang.HolProg 64 :=
.seq RemovedBody870_28 RemovedBody870_29

def RemovedBody870_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody870_32 : StackLang.HolProg 64 :=
.seq RemovedBody870_30 RemovedBody870_31

def RemovedBody870_33 : StackLang.HolProg 64 :=
.seq RemovedBody870_25 RemovedBody870_32

def RemovedBody870_34 : StackLang.HolProg 64 :=
.seq RemovedBody870_24 RemovedBody870_33

def RemovedBody870_35 : StackLang.HolProg 64 :=
.seq RemovedBody870_23 RemovedBody870_34

def RemovedBody870_36 : StackLang.HolProg 64 :=
.seq RemovedBody870_22 RemovedBody870_35

def RemovedBody870_37 : StackLang.HolProg 64 :=
.seq RemovedBody870_21 RemovedBody870_36

def RemovedBody870_38 : StackLang.HolProg 64 :=
.seq RemovedBody870_20 RemovedBody870_37

def RemovedBody870_39 : StackLang.HolProg 64 :=
.seq RemovedBody870_19 RemovedBody870_38

def RemovedBody870_40 : StackLang.HolProg 64 :=
.seq RemovedBody870_18 RemovedBody870_39

def RemovedBody870_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody870_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody870_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody870_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody870_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody870_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody870_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody870_48 : StackLang.HolProg 64 :=
.seq RemovedBody870_46 RemovedBody870_47

def RemovedBody870_49 : StackLang.HolProg 64 :=
.seq RemovedBody870_45 RemovedBody870_48

def RemovedBody870_50 : StackLang.HolProg 64 :=
.seq RemovedBody870_44 RemovedBody870_49

def RemovedBody870_51 : StackLang.HolProg 64 :=
.seq RemovedBody870_43 RemovedBody870_50

def RemovedBody870_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody870_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody870_54 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody870_55 : StackLang.HolProg 64 :=
.seq RemovedBody870_53 RemovedBody870_54

def RemovedBody870_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody870_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody870_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody870_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2688614470#64)

def RemovedBody870_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 0
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64)

def RemovedBody870_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def RemovedBody870_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody870_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody870_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 9#64)

def RemovedBody870_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody870_66 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody870_67 : StackLang.HolProg 64 :=
.seq RemovedBody870_65 RemovedBody870_66

def RemovedBody870_68 : StackLang.HolProg 64 :=
.seq RemovedBody870_64 RemovedBody870_67

def RemovedBody870_69 : StackLang.HolProg 64 :=
.seq RemovedBody870_63 RemovedBody870_68

def RemovedBody870_70 : StackLang.HolProg 64 :=
.seq RemovedBody870_62 RemovedBody870_69

def RemovedBody870_71 : StackLang.HolProg 64 :=
.seq RemovedBody870_61 RemovedBody870_70

def RemovedBody870_72 : StackLang.HolProg 64 :=
.seq RemovedBody870_60 RemovedBody870_71

def RemovedBody870_73 : StackLang.HolProg 64 :=
.seq RemovedBody870_59 RemovedBody870_72

def RemovedBody870_74 : StackLang.HolProg 64 :=
.seq RemovedBody870_58 RemovedBody870_73

def RemovedBody870_75 : StackLang.HolProg 64 :=
.seq RemovedBody870_57 RemovedBody870_74

def RemovedBody870_76 : StackLang.HolProg 64 :=
.seq RemovedBody870_56 RemovedBody870_75

def RemovedBody870_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64) RemovedBody870_55 RemovedBody870_76

def RemovedBody870_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody870_79 : StackLang.HolProg 64 :=
.seq RemovedBody870_77 RemovedBody870_78

def RemovedBody870_80 : StackLang.HolProg 64 :=
.seq RemovedBody870_52 RemovedBody870_79

def RemovedBody870_81 : StackLang.HolProg 64 :=
.call (some (RemovedBody870_51, 0, 870, 2)) (Sum.inl 869) (some (RemovedBody870_80, 870, 3))

def RemovedBody870_82 : StackLang.HolProg 64 :=
.seq RemovedBody870_42 RemovedBody870_81

def RemovedBody870_83 : StackLang.HolProg 64 :=
.seq RemovedBody870_41 RemovedBody870_82

def RemovedBody870_84 : StackLang.HolProg 64 :=
.seq RemovedBody870_40 RemovedBody870_83

def RemovedBody870_85 : StackLang.HolProg 64 :=
.seq RemovedBody870_11 RemovedBody870_84

def RemovedBody870_86 : StackLang.HolProg 64 :=
.seq RemovedBody870_8 RemovedBody870_85

def RemovedBody870_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody870_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody870_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody870_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody870_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody870_92 : StackLang.HolProg 64 :=
.seq RemovedBody870_90 RemovedBody870_91

def RemovedBody870_93 : StackLang.HolProg 64 :=
.seq RemovedBody870_89 RemovedBody870_92

def RemovedBody870_94 : StackLang.HolProg 64 :=
.seq RemovedBody870_88 RemovedBody870_93

def RemovedBody870_95 : StackLang.HolProg 64 :=
.seq RemovedBody870_87 RemovedBody870_94

def RemovedBody870_96 : StackLang.HolProg 64 :=
.seq RemovedBody870_86 RemovedBody870_95

def RemovedBody870_97 : StackLang.HolProg 64 :=
.seq RemovedBody870_7 RemovedBody870_96

def RemovedBody870_98 : StackLang.HolProg 64 :=
.seq RemovedBody870_6 RemovedBody870_97

def Removed870 : Nat × StackLang.HolProg 64 := (870, RemovedBody870_98)
theorem Removed870_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc870 = Removed870 := by
  kernel_rfl
#print axioms Removed870_eq
end InitECandidate.Proofs.BackendStages
