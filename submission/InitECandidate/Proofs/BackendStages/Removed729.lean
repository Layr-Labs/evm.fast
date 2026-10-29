import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc729
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody729_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody729_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody729_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody729_3 : StackLang.HolProg 64 :=
.seq RemovedBody729_1 RemovedBody729_2

def RemovedBody729_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody729_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody729_3 RemovedBody729_4

def RemovedBody729_6 : StackLang.HolProg 64 :=
.seq RemovedBody729_0 RemovedBody729_5

def RemovedBody729_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody729_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 96#64)

def RemovedBody729_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody729_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody729_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3261#64)

def RemovedBody729_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody729_13 : StackLang.HolProg 64 :=
.seq RemovedBody729_11 RemovedBody729_12

def RemovedBody729_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody729_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody729_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody729_17 : StackLang.HolProg 64 :=
.seq RemovedBody729_15 RemovedBody729_16

def RemovedBody729_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody729_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody729_17 RemovedBody729_18

def RemovedBody729_20 : StackLang.HolProg 64 :=
.seq RemovedBody729_14 RemovedBody729_19

def RemovedBody729_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody729_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody729_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 729 3

def RemovedBody729_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody729_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody729_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody729_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody729_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody729_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody729_30 : StackLang.HolProg 64 :=
.seq RemovedBody729_28 RemovedBody729_29

def RemovedBody729_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody729_32 : StackLang.HolProg 64 :=
.seq RemovedBody729_30 RemovedBody729_31

def RemovedBody729_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody729_34 : StackLang.HolProg 64 :=
.seq RemovedBody729_32 RemovedBody729_33

def RemovedBody729_35 : StackLang.HolProg 64 :=
.seq RemovedBody729_27 RemovedBody729_34

def RemovedBody729_36 : StackLang.HolProg 64 :=
.seq RemovedBody729_26 RemovedBody729_35

def RemovedBody729_37 : StackLang.HolProg 64 :=
.seq RemovedBody729_25 RemovedBody729_36

def RemovedBody729_38 : StackLang.HolProg 64 :=
.seq RemovedBody729_24 RemovedBody729_37

def RemovedBody729_39 : StackLang.HolProg 64 :=
.seq RemovedBody729_23 RemovedBody729_38

def RemovedBody729_40 : StackLang.HolProg 64 :=
.seq RemovedBody729_22 RemovedBody729_39

def RemovedBody729_41 : StackLang.HolProg 64 :=
.seq RemovedBody729_21 RemovedBody729_40

def RemovedBody729_42 : StackLang.HolProg 64 :=
.seq RemovedBody729_20 RemovedBody729_41

def RemovedBody729_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody729_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody729_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody729_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody729_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody729_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody729_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody729_50 : StackLang.HolProg 64 :=
.seq RemovedBody729_48 RemovedBody729_49

def RemovedBody729_51 : StackLang.HolProg 64 :=
.seq RemovedBody729_47 RemovedBody729_50

def RemovedBody729_52 : StackLang.HolProg 64 :=
.seq RemovedBody729_46 RemovedBody729_51

def RemovedBody729_53 : StackLang.HolProg 64 :=
.seq RemovedBody729_45 RemovedBody729_52

def RemovedBody729_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody729_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody729_56 : StackLang.HolProg 64 :=
.seq RemovedBody729_54 RemovedBody729_55

def RemovedBody729_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody729_53, 0, 729, 2)) (Sum.inl 77) (some (RemovedBody729_56, 729, 3))

def RemovedBody729_58 : StackLang.HolProg 64 :=
.seq RemovedBody729_44 RemovedBody729_57

def RemovedBody729_59 : StackLang.HolProg 64 :=
.seq RemovedBody729_43 RemovedBody729_58

def RemovedBody729_60 : StackLang.HolProg 64 :=
.seq RemovedBody729_42 RemovedBody729_59

def RemovedBody729_61 : StackLang.HolProg 64 :=
.seq RemovedBody729_13 RemovedBody729_60

def RemovedBody729_62 : StackLang.HolProg 64 :=
.seq RemovedBody729_10 RemovedBody729_61

def RemovedBody729_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody729_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody729_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody729_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody729_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody729_68 : StackLang.HolProg 64 :=
.seq RemovedBody729_66 RemovedBody729_67

def RemovedBody729_69 : StackLang.HolProg 64 :=
.seq RemovedBody729_65 RemovedBody729_68

def RemovedBody729_70 : StackLang.HolProg 64 :=
.seq RemovedBody729_64 RemovedBody729_69

def RemovedBody729_71 : StackLang.HolProg 64 :=
.seq RemovedBody729_63 RemovedBody729_70

def RemovedBody729_72 : StackLang.HolProg 64 :=
.seq RemovedBody729_62 RemovedBody729_71

def RemovedBody729_73 : StackLang.HolProg 64 :=
.seq RemovedBody729_9 RemovedBody729_72

def RemovedBody729_74 : StackLang.HolProg 64 :=
.seq RemovedBody729_8 RemovedBody729_73

def RemovedBody729_75 : StackLang.HolProg 64 :=
.seq RemovedBody729_7 RemovedBody729_74

def RemovedBody729_76 : StackLang.HolProg 64 :=
.seq RemovedBody729_6 RemovedBody729_75

def Removed729 : Nat × StackLang.HolProg 64 := (729, RemovedBody729_76)
theorem Removed729_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc729 = Removed729 := by
  kernel_rfl
#print axioms Removed729_eq
end InitECandidate.Proofs.BackendStages
