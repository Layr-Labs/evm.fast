import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc875
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody875_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody875_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody875_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody875_3 : StackLang.HolProg 64 :=
.seq RemovedBody875_1 RemovedBody875_2

def RemovedBody875_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody875_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody875_3 RemovedBody875_4

def RemovedBody875_6 : StackLang.HolProg 64 :=
.seq RemovedBody875_0 RemovedBody875_5

def RemovedBody875_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody875_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody875_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4601#64)

def RemovedBody875_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody875_11 : StackLang.HolProg 64 :=
.seq RemovedBody875_9 RemovedBody875_10

def RemovedBody875_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody875_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody875_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody875_15 : StackLang.HolProg 64 :=
.seq RemovedBody875_13 RemovedBody875_14

def RemovedBody875_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody875_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody875_15 RemovedBody875_16

def RemovedBody875_18 : StackLang.HolProg 64 :=
.seq RemovedBody875_12 RemovedBody875_17

def RemovedBody875_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody875_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody875_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 875 3

def RemovedBody875_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody875_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody875_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody875_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody875_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody875_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody875_28 : StackLang.HolProg 64 :=
.seq RemovedBody875_26 RemovedBody875_27

def RemovedBody875_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody875_30 : StackLang.HolProg 64 :=
.seq RemovedBody875_28 RemovedBody875_29

def RemovedBody875_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody875_32 : StackLang.HolProg 64 :=
.seq RemovedBody875_30 RemovedBody875_31

def RemovedBody875_33 : StackLang.HolProg 64 :=
.seq RemovedBody875_25 RemovedBody875_32

def RemovedBody875_34 : StackLang.HolProg 64 :=
.seq RemovedBody875_24 RemovedBody875_33

def RemovedBody875_35 : StackLang.HolProg 64 :=
.seq RemovedBody875_23 RemovedBody875_34

def RemovedBody875_36 : StackLang.HolProg 64 :=
.seq RemovedBody875_22 RemovedBody875_35

def RemovedBody875_37 : StackLang.HolProg 64 :=
.seq RemovedBody875_21 RemovedBody875_36

def RemovedBody875_38 : StackLang.HolProg 64 :=
.seq RemovedBody875_20 RemovedBody875_37

def RemovedBody875_39 : StackLang.HolProg 64 :=
.seq RemovedBody875_19 RemovedBody875_38

def RemovedBody875_40 : StackLang.HolProg 64 :=
.seq RemovedBody875_18 RemovedBody875_39

def RemovedBody875_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody875_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody875_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody875_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody875_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody875_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody875_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody875_48 : StackLang.HolProg 64 :=
.seq RemovedBody875_46 RemovedBody875_47

def RemovedBody875_49 : StackLang.HolProg 64 :=
.seq RemovedBody875_45 RemovedBody875_48

def RemovedBody875_50 : StackLang.HolProg 64 :=
.seq RemovedBody875_44 RemovedBody875_49

def RemovedBody875_51 : StackLang.HolProg 64 :=
.seq RemovedBody875_43 RemovedBody875_50

def RemovedBody875_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody875_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody875_54 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody875_55 : StackLang.HolProg 64 :=
.seq RemovedBody875_53 RemovedBody875_54

def RemovedBody875_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody875_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody875_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody875_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2688614470#64)

def RemovedBody875_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 0
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64)

def RemovedBody875_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 6#64)

def RemovedBody875_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody875_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody875_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 9#64)

def RemovedBody875_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody875_66 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody875_67 : StackLang.HolProg 64 :=
.seq RemovedBody875_65 RemovedBody875_66

def RemovedBody875_68 : StackLang.HolProg 64 :=
.seq RemovedBody875_64 RemovedBody875_67

def RemovedBody875_69 : StackLang.HolProg 64 :=
.seq RemovedBody875_63 RemovedBody875_68

def RemovedBody875_70 : StackLang.HolProg 64 :=
.seq RemovedBody875_62 RemovedBody875_69

def RemovedBody875_71 : StackLang.HolProg 64 :=
.seq RemovedBody875_61 RemovedBody875_70

def RemovedBody875_72 : StackLang.HolProg 64 :=
.seq RemovedBody875_60 RemovedBody875_71

def RemovedBody875_73 : StackLang.HolProg 64 :=
.seq RemovedBody875_59 RemovedBody875_72

def RemovedBody875_74 : StackLang.HolProg 64 :=
.seq RemovedBody875_58 RemovedBody875_73

def RemovedBody875_75 : StackLang.HolProg 64 :=
.seq RemovedBody875_57 RemovedBody875_74

def RemovedBody875_76 : StackLang.HolProg 64 :=
.seq RemovedBody875_56 RemovedBody875_75

def RemovedBody875_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64) RemovedBody875_55 RemovedBody875_76

def RemovedBody875_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody875_79 : StackLang.HolProg 64 :=
.seq RemovedBody875_77 RemovedBody875_78

def RemovedBody875_80 : StackLang.HolProg 64 :=
.seq RemovedBody875_52 RemovedBody875_79

def RemovedBody875_81 : StackLang.HolProg 64 :=
.call (some (RemovedBody875_51, 0, 875, 2)) (Sum.inl 874) (some (RemovedBody875_80, 875, 3))

def RemovedBody875_82 : StackLang.HolProg 64 :=
.seq RemovedBody875_42 RemovedBody875_81

def RemovedBody875_83 : StackLang.HolProg 64 :=
.seq RemovedBody875_41 RemovedBody875_82

def RemovedBody875_84 : StackLang.HolProg 64 :=
.seq RemovedBody875_40 RemovedBody875_83

def RemovedBody875_85 : StackLang.HolProg 64 :=
.seq RemovedBody875_11 RemovedBody875_84

def RemovedBody875_86 : StackLang.HolProg 64 :=
.seq RemovedBody875_8 RemovedBody875_85

def RemovedBody875_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody875_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody875_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody875_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody875_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody875_92 : StackLang.HolProg 64 :=
.seq RemovedBody875_90 RemovedBody875_91

def RemovedBody875_93 : StackLang.HolProg 64 :=
.seq RemovedBody875_89 RemovedBody875_92

def RemovedBody875_94 : StackLang.HolProg 64 :=
.seq RemovedBody875_88 RemovedBody875_93

def RemovedBody875_95 : StackLang.HolProg 64 :=
.seq RemovedBody875_87 RemovedBody875_94

def RemovedBody875_96 : StackLang.HolProg 64 :=
.seq RemovedBody875_86 RemovedBody875_95

def RemovedBody875_97 : StackLang.HolProg 64 :=
.seq RemovedBody875_7 RemovedBody875_96

def RemovedBody875_98 : StackLang.HolProg 64 :=
.seq RemovedBody875_6 RemovedBody875_97

def Removed875 : Nat × StackLang.HolProg 64 := (875, RemovedBody875_98)
theorem Removed875_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc875 = Removed875 := by
  kernel_rfl
#print axioms Removed875_eq
end InitECandidate.Proofs.BackendStages
