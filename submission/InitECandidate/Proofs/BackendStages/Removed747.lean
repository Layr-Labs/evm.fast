import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc747
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody747_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody747_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody747_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody747_3 : StackLang.HolProg 64 :=
.seq RemovedBody747_1 RemovedBody747_2

def RemovedBody747_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody747_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody747_3 RemovedBody747_4

def RemovedBody747_6 : StackLang.HolProg 64 :=
.seq RemovedBody747_0 RemovedBody747_5

def RemovedBody747_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody747_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 288#64)

def RemovedBody747_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody747_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody747_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3307#64)

def RemovedBody747_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody747_13 : StackLang.HolProg 64 :=
.seq RemovedBody747_11 RemovedBody747_12

def RemovedBody747_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody747_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody747_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody747_17 : StackLang.HolProg 64 :=
.seq RemovedBody747_15 RemovedBody747_16

def RemovedBody747_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody747_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody747_17 RemovedBody747_18

def RemovedBody747_20 : StackLang.HolProg 64 :=
.seq RemovedBody747_14 RemovedBody747_19

def RemovedBody747_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody747_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody747_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 747 3

def RemovedBody747_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody747_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody747_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody747_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody747_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody747_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody747_30 : StackLang.HolProg 64 :=
.seq RemovedBody747_28 RemovedBody747_29

def RemovedBody747_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody747_32 : StackLang.HolProg 64 :=
.seq RemovedBody747_30 RemovedBody747_31

def RemovedBody747_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody747_34 : StackLang.HolProg 64 :=
.seq RemovedBody747_32 RemovedBody747_33

def RemovedBody747_35 : StackLang.HolProg 64 :=
.seq RemovedBody747_27 RemovedBody747_34

def RemovedBody747_36 : StackLang.HolProg 64 :=
.seq RemovedBody747_26 RemovedBody747_35

def RemovedBody747_37 : StackLang.HolProg 64 :=
.seq RemovedBody747_25 RemovedBody747_36

def RemovedBody747_38 : StackLang.HolProg 64 :=
.seq RemovedBody747_24 RemovedBody747_37

def RemovedBody747_39 : StackLang.HolProg 64 :=
.seq RemovedBody747_23 RemovedBody747_38

def RemovedBody747_40 : StackLang.HolProg 64 :=
.seq RemovedBody747_22 RemovedBody747_39

def RemovedBody747_41 : StackLang.HolProg 64 :=
.seq RemovedBody747_21 RemovedBody747_40

def RemovedBody747_42 : StackLang.HolProg 64 :=
.seq RemovedBody747_20 RemovedBody747_41

def RemovedBody747_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody747_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody747_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody747_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody747_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody747_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody747_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody747_50 : StackLang.HolProg 64 :=
.seq RemovedBody747_48 RemovedBody747_49

def RemovedBody747_51 : StackLang.HolProg 64 :=
.seq RemovedBody747_47 RemovedBody747_50

def RemovedBody747_52 : StackLang.HolProg 64 :=
.seq RemovedBody747_46 RemovedBody747_51

def RemovedBody747_53 : StackLang.HolProg 64 :=
.seq RemovedBody747_45 RemovedBody747_52

def RemovedBody747_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody747_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody747_56 : StackLang.HolProg 64 :=
.seq RemovedBody747_54 RemovedBody747_55

def RemovedBody747_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody747_53, 0, 747, 2)) (Sum.inl 78) (some (RemovedBody747_56, 747, 3))

def RemovedBody747_58 : StackLang.HolProg 64 :=
.seq RemovedBody747_44 RemovedBody747_57

def RemovedBody747_59 : StackLang.HolProg 64 :=
.seq RemovedBody747_43 RemovedBody747_58

def RemovedBody747_60 : StackLang.HolProg 64 :=
.seq RemovedBody747_42 RemovedBody747_59

def RemovedBody747_61 : StackLang.HolProg 64 :=
.seq RemovedBody747_13 RemovedBody747_60

def RemovedBody747_62 : StackLang.HolProg 64 :=
.seq RemovedBody747_10 RemovedBody747_61

def RemovedBody747_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody747_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody747_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody747_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody747_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody747_68 : StackLang.HolProg 64 :=
.seq RemovedBody747_66 RemovedBody747_67

def RemovedBody747_69 : StackLang.HolProg 64 :=
.seq RemovedBody747_65 RemovedBody747_68

def RemovedBody747_70 : StackLang.HolProg 64 :=
.seq RemovedBody747_64 RemovedBody747_69

def RemovedBody747_71 : StackLang.HolProg 64 :=
.seq RemovedBody747_63 RemovedBody747_70

def RemovedBody747_72 : StackLang.HolProg 64 :=
.seq RemovedBody747_62 RemovedBody747_71

def RemovedBody747_73 : StackLang.HolProg 64 :=
.seq RemovedBody747_9 RemovedBody747_72

def RemovedBody747_74 : StackLang.HolProg 64 :=
.seq RemovedBody747_8 RemovedBody747_73

def RemovedBody747_75 : StackLang.HolProg 64 :=
.seq RemovedBody747_7 RemovedBody747_74

def RemovedBody747_76 : StackLang.HolProg 64 :=
.seq RemovedBody747_6 RemovedBody747_75

def Removed747 : Nat × StackLang.HolProg 64 := (747, RemovedBody747_76)
theorem Removed747_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc747 = Removed747 := by
  kernel_rfl
#print axioms Removed747_eq
end InitECandidate.Proofs.BackendStages
