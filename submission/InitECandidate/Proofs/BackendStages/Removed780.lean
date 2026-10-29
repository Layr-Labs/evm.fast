import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc780
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody780_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody780_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody780_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody780_3 : StackLang.HolProg 64 :=
.seq RemovedBody780_1 RemovedBody780_2

def RemovedBody780_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody780_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody780_3 RemovedBody780_4

def RemovedBody780_6 : StackLang.HolProg 64 :=
.seq RemovedBody780_0 RemovedBody780_5

def RemovedBody780_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody780_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 288#64)

def RemovedBody780_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody780_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody780_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3546#64)

def RemovedBody780_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody780_13 : StackLang.HolProg 64 :=
.seq RemovedBody780_11 RemovedBody780_12

def RemovedBody780_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody780_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody780_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody780_17 : StackLang.HolProg 64 :=
.seq RemovedBody780_15 RemovedBody780_16

def RemovedBody780_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody780_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody780_17 RemovedBody780_18

def RemovedBody780_20 : StackLang.HolProg 64 :=
.seq RemovedBody780_14 RemovedBody780_19

def RemovedBody780_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody780_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody780_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 780 3

def RemovedBody780_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody780_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody780_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody780_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody780_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody780_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody780_30 : StackLang.HolProg 64 :=
.seq RemovedBody780_28 RemovedBody780_29

def RemovedBody780_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody780_32 : StackLang.HolProg 64 :=
.seq RemovedBody780_30 RemovedBody780_31

def RemovedBody780_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody780_34 : StackLang.HolProg 64 :=
.seq RemovedBody780_32 RemovedBody780_33

def RemovedBody780_35 : StackLang.HolProg 64 :=
.seq RemovedBody780_27 RemovedBody780_34

def RemovedBody780_36 : StackLang.HolProg 64 :=
.seq RemovedBody780_26 RemovedBody780_35

def RemovedBody780_37 : StackLang.HolProg 64 :=
.seq RemovedBody780_25 RemovedBody780_36

def RemovedBody780_38 : StackLang.HolProg 64 :=
.seq RemovedBody780_24 RemovedBody780_37

def RemovedBody780_39 : StackLang.HolProg 64 :=
.seq RemovedBody780_23 RemovedBody780_38

def RemovedBody780_40 : StackLang.HolProg 64 :=
.seq RemovedBody780_22 RemovedBody780_39

def RemovedBody780_41 : StackLang.HolProg 64 :=
.seq RemovedBody780_21 RemovedBody780_40

def RemovedBody780_42 : StackLang.HolProg 64 :=
.seq RemovedBody780_20 RemovedBody780_41

def RemovedBody780_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody780_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody780_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody780_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody780_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody780_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody780_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody780_50 : StackLang.HolProg 64 :=
.seq RemovedBody780_48 RemovedBody780_49

def RemovedBody780_51 : StackLang.HolProg 64 :=
.seq RemovedBody780_47 RemovedBody780_50

def RemovedBody780_52 : StackLang.HolProg 64 :=
.seq RemovedBody780_46 RemovedBody780_51

def RemovedBody780_53 : StackLang.HolProg 64 :=
.seq RemovedBody780_45 RemovedBody780_52

def RemovedBody780_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody780_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody780_56 : StackLang.HolProg 64 :=
.seq RemovedBody780_54 RemovedBody780_55

def RemovedBody780_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody780_53, 0, 780, 2)) (Sum.inl 77) (some (RemovedBody780_56, 780, 3))

def RemovedBody780_58 : StackLang.HolProg 64 :=
.seq RemovedBody780_44 RemovedBody780_57

def RemovedBody780_59 : StackLang.HolProg 64 :=
.seq RemovedBody780_43 RemovedBody780_58

def RemovedBody780_60 : StackLang.HolProg 64 :=
.seq RemovedBody780_42 RemovedBody780_59

def RemovedBody780_61 : StackLang.HolProg 64 :=
.seq RemovedBody780_13 RemovedBody780_60

def RemovedBody780_62 : StackLang.HolProg 64 :=
.seq RemovedBody780_10 RemovedBody780_61

def RemovedBody780_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody780_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody780_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody780_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody780_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody780_68 : StackLang.HolProg 64 :=
.seq RemovedBody780_66 RemovedBody780_67

def RemovedBody780_69 : StackLang.HolProg 64 :=
.seq RemovedBody780_65 RemovedBody780_68

def RemovedBody780_70 : StackLang.HolProg 64 :=
.seq RemovedBody780_64 RemovedBody780_69

def RemovedBody780_71 : StackLang.HolProg 64 :=
.seq RemovedBody780_63 RemovedBody780_70

def RemovedBody780_72 : StackLang.HolProg 64 :=
.seq RemovedBody780_62 RemovedBody780_71

def RemovedBody780_73 : StackLang.HolProg 64 :=
.seq RemovedBody780_9 RemovedBody780_72

def RemovedBody780_74 : StackLang.HolProg 64 :=
.seq RemovedBody780_8 RemovedBody780_73

def RemovedBody780_75 : StackLang.HolProg 64 :=
.seq RemovedBody780_7 RemovedBody780_74

def RemovedBody780_76 : StackLang.HolProg 64 :=
.seq RemovedBody780_6 RemovedBody780_75

def Removed780 : Nat × StackLang.HolProg 64 := (780, RemovedBody780_76)
theorem Removed780_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc780 = Removed780 := by
  kernel_rfl
#print axioms Removed780_eq
end InitECandidate.Proofs.BackendStages
