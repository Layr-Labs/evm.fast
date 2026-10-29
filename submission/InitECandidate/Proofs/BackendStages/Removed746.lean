import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc746
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody746_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody746_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody746_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody746_3 : StackLang.HolProg 64 :=
.seq RemovedBody746_1 RemovedBody746_2

def RemovedBody746_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody746_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody746_3 RemovedBody746_4

def RemovedBody746_6 : StackLang.HolProg 64 :=
.seq RemovedBody746_0 RemovedBody746_5

def RemovedBody746_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody746_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 288#64)

def RemovedBody746_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody746_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody746_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3306#64)

def RemovedBody746_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody746_13 : StackLang.HolProg 64 :=
.seq RemovedBody746_11 RemovedBody746_12

def RemovedBody746_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody746_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody746_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody746_17 : StackLang.HolProg 64 :=
.seq RemovedBody746_15 RemovedBody746_16

def RemovedBody746_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody746_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody746_17 RemovedBody746_18

def RemovedBody746_20 : StackLang.HolProg 64 :=
.seq RemovedBody746_14 RemovedBody746_19

def RemovedBody746_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody746_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody746_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 746 3

def RemovedBody746_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody746_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody746_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody746_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody746_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody746_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody746_30 : StackLang.HolProg 64 :=
.seq RemovedBody746_28 RemovedBody746_29

def RemovedBody746_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody746_32 : StackLang.HolProg 64 :=
.seq RemovedBody746_30 RemovedBody746_31

def RemovedBody746_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody746_34 : StackLang.HolProg 64 :=
.seq RemovedBody746_32 RemovedBody746_33

def RemovedBody746_35 : StackLang.HolProg 64 :=
.seq RemovedBody746_27 RemovedBody746_34

def RemovedBody746_36 : StackLang.HolProg 64 :=
.seq RemovedBody746_26 RemovedBody746_35

def RemovedBody746_37 : StackLang.HolProg 64 :=
.seq RemovedBody746_25 RemovedBody746_36

def RemovedBody746_38 : StackLang.HolProg 64 :=
.seq RemovedBody746_24 RemovedBody746_37

def RemovedBody746_39 : StackLang.HolProg 64 :=
.seq RemovedBody746_23 RemovedBody746_38

def RemovedBody746_40 : StackLang.HolProg 64 :=
.seq RemovedBody746_22 RemovedBody746_39

def RemovedBody746_41 : StackLang.HolProg 64 :=
.seq RemovedBody746_21 RemovedBody746_40

def RemovedBody746_42 : StackLang.HolProg 64 :=
.seq RemovedBody746_20 RemovedBody746_41

def RemovedBody746_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody746_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody746_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody746_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody746_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody746_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody746_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody746_50 : StackLang.HolProg 64 :=
.seq RemovedBody746_48 RemovedBody746_49

def RemovedBody746_51 : StackLang.HolProg 64 :=
.seq RemovedBody746_47 RemovedBody746_50

def RemovedBody746_52 : StackLang.HolProg 64 :=
.seq RemovedBody746_46 RemovedBody746_51

def RemovedBody746_53 : StackLang.HolProg 64 :=
.seq RemovedBody746_45 RemovedBody746_52

def RemovedBody746_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody746_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody746_56 : StackLang.HolProg 64 :=
.seq RemovedBody746_54 RemovedBody746_55

def RemovedBody746_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody746_53, 0, 746, 2)) (Sum.inl 77) (some (RemovedBody746_56, 746, 3))

def RemovedBody746_58 : StackLang.HolProg 64 :=
.seq RemovedBody746_44 RemovedBody746_57

def RemovedBody746_59 : StackLang.HolProg 64 :=
.seq RemovedBody746_43 RemovedBody746_58

def RemovedBody746_60 : StackLang.HolProg 64 :=
.seq RemovedBody746_42 RemovedBody746_59

def RemovedBody746_61 : StackLang.HolProg 64 :=
.seq RemovedBody746_13 RemovedBody746_60

def RemovedBody746_62 : StackLang.HolProg 64 :=
.seq RemovedBody746_10 RemovedBody746_61

def RemovedBody746_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody746_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody746_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody746_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody746_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody746_68 : StackLang.HolProg 64 :=
.seq RemovedBody746_66 RemovedBody746_67

def RemovedBody746_69 : StackLang.HolProg 64 :=
.seq RemovedBody746_65 RemovedBody746_68

def RemovedBody746_70 : StackLang.HolProg 64 :=
.seq RemovedBody746_64 RemovedBody746_69

def RemovedBody746_71 : StackLang.HolProg 64 :=
.seq RemovedBody746_63 RemovedBody746_70

def RemovedBody746_72 : StackLang.HolProg 64 :=
.seq RemovedBody746_62 RemovedBody746_71

def RemovedBody746_73 : StackLang.HolProg 64 :=
.seq RemovedBody746_9 RemovedBody746_72

def RemovedBody746_74 : StackLang.HolProg 64 :=
.seq RemovedBody746_8 RemovedBody746_73

def RemovedBody746_75 : StackLang.HolProg 64 :=
.seq RemovedBody746_7 RemovedBody746_74

def RemovedBody746_76 : StackLang.HolProg 64 :=
.seq RemovedBody746_6 RemovedBody746_75

def Removed746 : Nat × StackLang.HolProg 64 := (746, RemovedBody746_76)
theorem Removed746_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc746 = Removed746 := by
  kernel_rfl
#print axioms Removed746_eq
end InitECandidate.Proofs.BackendStages
