import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc873
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody873_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody873_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody873_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody873_3 : StackLang.HolProg 64 :=
.seq RemovedBody873_1 RemovedBody873_2

def RemovedBody873_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody873_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody873_3 RemovedBody873_4

def RemovedBody873_6 : StackLang.HolProg 64 :=
.seq RemovedBody873_0 RemovedBody873_5

def RemovedBody873_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody873_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody873_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4599#64)

def RemovedBody873_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody873_11 : StackLang.HolProg 64 :=
.seq RemovedBody873_9 RemovedBody873_10

def RemovedBody873_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody873_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody873_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody873_15 : StackLang.HolProg 64 :=
.seq RemovedBody873_13 RemovedBody873_14

def RemovedBody873_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody873_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody873_15 RemovedBody873_16

def RemovedBody873_18 : StackLang.HolProg 64 :=
.seq RemovedBody873_12 RemovedBody873_17

def RemovedBody873_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody873_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody873_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 873 3

def RemovedBody873_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody873_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody873_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody873_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody873_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody873_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody873_28 : StackLang.HolProg 64 :=
.seq RemovedBody873_26 RemovedBody873_27

def RemovedBody873_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody873_30 : StackLang.HolProg 64 :=
.seq RemovedBody873_28 RemovedBody873_29

def RemovedBody873_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody873_32 : StackLang.HolProg 64 :=
.seq RemovedBody873_30 RemovedBody873_31

def RemovedBody873_33 : StackLang.HolProg 64 :=
.seq RemovedBody873_25 RemovedBody873_32

def RemovedBody873_34 : StackLang.HolProg 64 :=
.seq RemovedBody873_24 RemovedBody873_33

def RemovedBody873_35 : StackLang.HolProg 64 :=
.seq RemovedBody873_23 RemovedBody873_34

def RemovedBody873_36 : StackLang.HolProg 64 :=
.seq RemovedBody873_22 RemovedBody873_35

def RemovedBody873_37 : StackLang.HolProg 64 :=
.seq RemovedBody873_21 RemovedBody873_36

def RemovedBody873_38 : StackLang.HolProg 64 :=
.seq RemovedBody873_20 RemovedBody873_37

def RemovedBody873_39 : StackLang.HolProg 64 :=
.seq RemovedBody873_19 RemovedBody873_38

def RemovedBody873_40 : StackLang.HolProg 64 :=
.seq RemovedBody873_18 RemovedBody873_39

def RemovedBody873_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody873_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody873_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody873_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody873_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody873_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody873_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody873_48 : StackLang.HolProg 64 :=
.seq RemovedBody873_46 RemovedBody873_47

def RemovedBody873_49 : StackLang.HolProg 64 :=
.seq RemovedBody873_45 RemovedBody873_48

def RemovedBody873_50 : StackLang.HolProg 64 :=
.seq RemovedBody873_44 RemovedBody873_49

def RemovedBody873_51 : StackLang.HolProg 64 :=
.seq RemovedBody873_43 RemovedBody873_50

def RemovedBody873_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody873_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody873_54 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody873_55 : StackLang.HolProg 64 :=
.seq RemovedBody873_53 RemovedBody873_54

def RemovedBody873_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody873_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody873_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody873_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2688614470#64)

def RemovedBody873_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 0
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64)

def RemovedBody873_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 4#64)

def RemovedBody873_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody873_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody873_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 9#64)

def RemovedBody873_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody873_66 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody873_67 : StackLang.HolProg 64 :=
.seq RemovedBody873_65 RemovedBody873_66

def RemovedBody873_68 : StackLang.HolProg 64 :=
.seq RemovedBody873_64 RemovedBody873_67

def RemovedBody873_69 : StackLang.HolProg 64 :=
.seq RemovedBody873_63 RemovedBody873_68

def RemovedBody873_70 : StackLang.HolProg 64 :=
.seq RemovedBody873_62 RemovedBody873_69

def RemovedBody873_71 : StackLang.HolProg 64 :=
.seq RemovedBody873_61 RemovedBody873_70

def RemovedBody873_72 : StackLang.HolProg 64 :=
.seq RemovedBody873_60 RemovedBody873_71

def RemovedBody873_73 : StackLang.HolProg 64 :=
.seq RemovedBody873_59 RemovedBody873_72

def RemovedBody873_74 : StackLang.HolProg 64 :=
.seq RemovedBody873_58 RemovedBody873_73

def RemovedBody873_75 : StackLang.HolProg 64 :=
.seq RemovedBody873_57 RemovedBody873_74

def RemovedBody873_76 : StackLang.HolProg 64 :=
.seq RemovedBody873_56 RemovedBody873_75

def RemovedBody873_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64) RemovedBody873_55 RemovedBody873_76

def RemovedBody873_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody873_79 : StackLang.HolProg 64 :=
.seq RemovedBody873_77 RemovedBody873_78

def RemovedBody873_80 : StackLang.HolProg 64 :=
.seq RemovedBody873_52 RemovedBody873_79

def RemovedBody873_81 : StackLang.HolProg 64 :=
.call (some (RemovedBody873_51, 0, 873, 2)) (Sum.inl 872) (some (RemovedBody873_80, 873, 3))

def RemovedBody873_82 : StackLang.HolProg 64 :=
.seq RemovedBody873_42 RemovedBody873_81

def RemovedBody873_83 : StackLang.HolProg 64 :=
.seq RemovedBody873_41 RemovedBody873_82

def RemovedBody873_84 : StackLang.HolProg 64 :=
.seq RemovedBody873_40 RemovedBody873_83

def RemovedBody873_85 : StackLang.HolProg 64 :=
.seq RemovedBody873_11 RemovedBody873_84

def RemovedBody873_86 : StackLang.HolProg 64 :=
.seq RemovedBody873_8 RemovedBody873_85

def RemovedBody873_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody873_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody873_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody873_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody873_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody873_92 : StackLang.HolProg 64 :=
.seq RemovedBody873_90 RemovedBody873_91

def RemovedBody873_93 : StackLang.HolProg 64 :=
.seq RemovedBody873_89 RemovedBody873_92

def RemovedBody873_94 : StackLang.HolProg 64 :=
.seq RemovedBody873_88 RemovedBody873_93

def RemovedBody873_95 : StackLang.HolProg 64 :=
.seq RemovedBody873_87 RemovedBody873_94

def RemovedBody873_96 : StackLang.HolProg 64 :=
.seq RemovedBody873_86 RemovedBody873_95

def RemovedBody873_97 : StackLang.HolProg 64 :=
.seq RemovedBody873_7 RemovedBody873_96

def RemovedBody873_98 : StackLang.HolProg 64 :=
.seq RemovedBody873_6 RemovedBody873_97

def Removed873 : Nat × StackLang.HolProg 64 := (873, RemovedBody873_98)
theorem Removed873_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc873 = Removed873 := by
  kernel_rfl
#print axioms Removed873_eq
end InitECandidate.Proofs.BackendStages
