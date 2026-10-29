import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc346
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody346_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody346_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody346_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody346_3 : StackLang.HolProg 64 :=
.seq RemovedBody346_1 RemovedBody346_2

def RemovedBody346_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody346_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody346_3 RemovedBody346_4

def RemovedBody346_6 : StackLang.HolProg 64 :=
.seq RemovedBody346_0 RemovedBody346_5

def RemovedBody346_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody346_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody346_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1026#64)

def RemovedBody346_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody346_11 : StackLang.HolProg 64 :=
.seq RemovedBody346_9 RemovedBody346_10

def RemovedBody346_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody346_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody346_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody346_15 : StackLang.HolProg 64 :=
.seq RemovedBody346_13 RemovedBody346_14

def RemovedBody346_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody346_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody346_15 RemovedBody346_16

def RemovedBody346_18 : StackLang.HolProg 64 :=
.seq RemovedBody346_12 RemovedBody346_17

def RemovedBody346_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody346_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody346_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 346 3

def RemovedBody346_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody346_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody346_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody346_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody346_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody346_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody346_28 : StackLang.HolProg 64 :=
.seq RemovedBody346_26 RemovedBody346_27

def RemovedBody346_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody346_30 : StackLang.HolProg 64 :=
.seq RemovedBody346_28 RemovedBody346_29

def RemovedBody346_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody346_32 : StackLang.HolProg 64 :=
.seq RemovedBody346_30 RemovedBody346_31

def RemovedBody346_33 : StackLang.HolProg 64 :=
.seq RemovedBody346_25 RemovedBody346_32

def RemovedBody346_34 : StackLang.HolProg 64 :=
.seq RemovedBody346_24 RemovedBody346_33

def RemovedBody346_35 : StackLang.HolProg 64 :=
.seq RemovedBody346_23 RemovedBody346_34

def RemovedBody346_36 : StackLang.HolProg 64 :=
.seq RemovedBody346_22 RemovedBody346_35

def RemovedBody346_37 : StackLang.HolProg 64 :=
.seq RemovedBody346_21 RemovedBody346_36

def RemovedBody346_38 : StackLang.HolProg 64 :=
.seq RemovedBody346_20 RemovedBody346_37

def RemovedBody346_39 : StackLang.HolProg 64 :=
.seq RemovedBody346_19 RemovedBody346_38

def RemovedBody346_40 : StackLang.HolProg 64 :=
.seq RemovedBody346_18 RemovedBody346_39

def RemovedBody346_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody346_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody346_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody346_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody346_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody346_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody346_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody346_48 : StackLang.HolProg 64 :=
.seq RemovedBody346_46 RemovedBody346_47

def RemovedBody346_49 : StackLang.HolProg 64 :=
.seq RemovedBody346_45 RemovedBody346_48

def RemovedBody346_50 : StackLang.HolProg 64 :=
.seq RemovedBody346_44 RemovedBody346_49

def RemovedBody346_51 : StackLang.HolProg 64 :=
.seq RemovedBody346_43 RemovedBody346_50

def RemovedBody346_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody346_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody346_54 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody346_55 : StackLang.HolProg 64 :=
.seq RemovedBody346_53 RemovedBody346_54

def RemovedBody346_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody346_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody346_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody346_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 100#64)))

def RemovedBody346_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody346_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody346_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def RemovedBody346_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody346_64 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody346_65 : StackLang.HolProg 64 :=
.seq RemovedBody346_63 RemovedBody346_64

def RemovedBody346_66 : StackLang.HolProg 64 :=
.seq RemovedBody346_62 RemovedBody346_65

def RemovedBody346_67 : StackLang.HolProg 64 :=
.seq RemovedBody346_61 RemovedBody346_66

def RemovedBody346_68 : StackLang.HolProg 64 :=
.seq RemovedBody346_60 RemovedBody346_67

def RemovedBody346_69 : StackLang.HolProg 64 :=
.seq RemovedBody346_59 RemovedBody346_68

def RemovedBody346_70 : StackLang.HolProg 64 :=
.seq RemovedBody346_58 RemovedBody346_69

def RemovedBody346_71 : StackLang.HolProg 64 :=
.seq RemovedBody346_57 RemovedBody346_70

def RemovedBody346_72 : StackLang.HolProg 64 :=
.seq RemovedBody346_56 RemovedBody346_71

def RemovedBody346_73 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64) RemovedBody346_55 RemovedBody346_72

def RemovedBody346_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody346_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody346_76 : StackLang.HolProg 64 :=
.seq RemovedBody346_74 RemovedBody346_75

def RemovedBody346_77 : StackLang.HolProg 64 :=
.seq RemovedBody346_73 RemovedBody346_76

def RemovedBody346_78 : StackLang.HolProg 64 :=
.seq RemovedBody346_52 RemovedBody346_77

def RemovedBody346_79 : StackLang.HolProg 64 :=
.call (some (RemovedBody346_51, 0, 346, 2)) (Sum.inl 345) (some (RemovedBody346_78, 346, 3))

def RemovedBody346_80 : StackLang.HolProg 64 :=
.seq RemovedBody346_42 RemovedBody346_79

def RemovedBody346_81 : StackLang.HolProg 64 :=
.seq RemovedBody346_41 RemovedBody346_80

def RemovedBody346_82 : StackLang.HolProg 64 :=
.seq RemovedBody346_40 RemovedBody346_81

def RemovedBody346_83 : StackLang.HolProg 64 :=
.seq RemovedBody346_11 RemovedBody346_82

def RemovedBody346_84 : StackLang.HolProg 64 :=
.seq RemovedBody346_8 RemovedBody346_83

def RemovedBody346_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody346_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody346_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody346_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody346_89 : StackLang.HolProg 64 :=
.seq RemovedBody346_87 RemovedBody346_88

def RemovedBody346_90 : StackLang.HolProg 64 :=
.seq RemovedBody346_86 RemovedBody346_89

def RemovedBody346_91 : StackLang.HolProg 64 :=
.seq RemovedBody346_85 RemovedBody346_90

def RemovedBody346_92 : StackLang.HolProg 64 :=
.seq RemovedBody346_84 RemovedBody346_91

def RemovedBody346_93 : StackLang.HolProg 64 :=
.seq RemovedBody346_7 RemovedBody346_92

def RemovedBody346_94 : StackLang.HolProg 64 :=
.seq RemovedBody346_6 RemovedBody346_93

def Removed346 : Nat × StackLang.HolProg 64 := (346, RemovedBody346_94)
theorem Removed346_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc346 = Removed346 := by
  kernel_rfl
#print axioms Removed346_eq
end InitECandidate.Proofs.BackendStages
