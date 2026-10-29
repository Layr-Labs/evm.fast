import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc755
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody755_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody755_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody755_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody755_3 : StackLang.HolProg 64 :=
.seq RemovedBody755_1 RemovedBody755_2

def RemovedBody755_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody755_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody755_3 RemovedBody755_4

def RemovedBody755_6 : StackLang.HolProg 64 :=
.seq RemovedBody755_0 RemovedBody755_5

def RemovedBody755_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody755_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 576#64)

def RemovedBody755_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody755_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody755_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3371#64)

def RemovedBody755_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody755_13 : StackLang.HolProg 64 :=
.seq RemovedBody755_11 RemovedBody755_12

def RemovedBody755_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody755_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody755_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody755_17 : StackLang.HolProg 64 :=
.seq RemovedBody755_15 RemovedBody755_16

def RemovedBody755_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody755_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody755_17 RemovedBody755_18

def RemovedBody755_20 : StackLang.HolProg 64 :=
.seq RemovedBody755_14 RemovedBody755_19

def RemovedBody755_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody755_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody755_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 755 3

def RemovedBody755_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody755_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody755_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody755_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody755_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody755_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody755_30 : StackLang.HolProg 64 :=
.seq RemovedBody755_28 RemovedBody755_29

def RemovedBody755_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody755_32 : StackLang.HolProg 64 :=
.seq RemovedBody755_30 RemovedBody755_31

def RemovedBody755_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody755_34 : StackLang.HolProg 64 :=
.seq RemovedBody755_32 RemovedBody755_33

def RemovedBody755_35 : StackLang.HolProg 64 :=
.seq RemovedBody755_27 RemovedBody755_34

def RemovedBody755_36 : StackLang.HolProg 64 :=
.seq RemovedBody755_26 RemovedBody755_35

def RemovedBody755_37 : StackLang.HolProg 64 :=
.seq RemovedBody755_25 RemovedBody755_36

def RemovedBody755_38 : StackLang.HolProg 64 :=
.seq RemovedBody755_24 RemovedBody755_37

def RemovedBody755_39 : StackLang.HolProg 64 :=
.seq RemovedBody755_23 RemovedBody755_38

def RemovedBody755_40 : StackLang.HolProg 64 :=
.seq RemovedBody755_22 RemovedBody755_39

def RemovedBody755_41 : StackLang.HolProg 64 :=
.seq RemovedBody755_21 RemovedBody755_40

def RemovedBody755_42 : StackLang.HolProg 64 :=
.seq RemovedBody755_20 RemovedBody755_41

def RemovedBody755_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody755_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody755_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody755_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody755_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody755_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody755_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody755_50 : StackLang.HolProg 64 :=
.seq RemovedBody755_48 RemovedBody755_49

def RemovedBody755_51 : StackLang.HolProg 64 :=
.seq RemovedBody755_47 RemovedBody755_50

def RemovedBody755_52 : StackLang.HolProg 64 :=
.seq RemovedBody755_46 RemovedBody755_51

def RemovedBody755_53 : StackLang.HolProg 64 :=
.seq RemovedBody755_45 RemovedBody755_52

def RemovedBody755_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody755_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody755_56 : StackLang.HolProg 64 :=
.seq RemovedBody755_54 RemovedBody755_55

def RemovedBody755_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody755_53, 0, 755, 2)) (Sum.inl 77) (some (RemovedBody755_56, 755, 3))

def RemovedBody755_58 : StackLang.HolProg 64 :=
.seq RemovedBody755_44 RemovedBody755_57

def RemovedBody755_59 : StackLang.HolProg 64 :=
.seq RemovedBody755_43 RemovedBody755_58

def RemovedBody755_60 : StackLang.HolProg 64 :=
.seq RemovedBody755_42 RemovedBody755_59

def RemovedBody755_61 : StackLang.HolProg 64 :=
.seq RemovedBody755_13 RemovedBody755_60

def RemovedBody755_62 : StackLang.HolProg 64 :=
.seq RemovedBody755_10 RemovedBody755_61

def RemovedBody755_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody755_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody755_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody755_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody755_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody755_68 : StackLang.HolProg 64 :=
.seq RemovedBody755_66 RemovedBody755_67

def RemovedBody755_69 : StackLang.HolProg 64 :=
.seq RemovedBody755_65 RemovedBody755_68

def RemovedBody755_70 : StackLang.HolProg 64 :=
.seq RemovedBody755_64 RemovedBody755_69

def RemovedBody755_71 : StackLang.HolProg 64 :=
.seq RemovedBody755_63 RemovedBody755_70

def RemovedBody755_72 : StackLang.HolProg 64 :=
.seq RemovedBody755_62 RemovedBody755_71

def RemovedBody755_73 : StackLang.HolProg 64 :=
.seq RemovedBody755_9 RemovedBody755_72

def RemovedBody755_74 : StackLang.HolProg 64 :=
.seq RemovedBody755_8 RemovedBody755_73

def RemovedBody755_75 : StackLang.HolProg 64 :=
.seq RemovedBody755_7 RemovedBody755_74

def RemovedBody755_76 : StackLang.HolProg 64 :=
.seq RemovedBody755_6 RemovedBody755_75

def Removed755 : Nat × StackLang.HolProg 64 := (755, RemovedBody755_76)
theorem Removed755_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc755 = Removed755 := by
  kernel_rfl
#print axioms Removed755_eq
end InitECandidate.Proofs.BackendStages
