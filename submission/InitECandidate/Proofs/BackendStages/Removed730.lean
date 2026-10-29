import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc730
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody730_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody730_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody730_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody730_3 : StackLang.HolProg 64 :=
.seq RemovedBody730_1 RemovedBody730_2

def RemovedBody730_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody730_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody730_3 RemovedBody730_4

def RemovedBody730_6 : StackLang.HolProg 64 :=
.seq RemovedBody730_0 RemovedBody730_5

def RemovedBody730_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody730_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 96#64)

def RemovedBody730_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody730_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody730_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3262#64)

def RemovedBody730_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody730_13 : StackLang.HolProg 64 :=
.seq RemovedBody730_11 RemovedBody730_12

def RemovedBody730_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody730_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody730_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody730_17 : StackLang.HolProg 64 :=
.seq RemovedBody730_15 RemovedBody730_16

def RemovedBody730_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody730_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody730_17 RemovedBody730_18

def RemovedBody730_20 : StackLang.HolProg 64 :=
.seq RemovedBody730_14 RemovedBody730_19

def RemovedBody730_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody730_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody730_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 730 3

def RemovedBody730_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody730_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody730_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody730_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody730_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody730_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody730_30 : StackLang.HolProg 64 :=
.seq RemovedBody730_28 RemovedBody730_29

def RemovedBody730_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody730_32 : StackLang.HolProg 64 :=
.seq RemovedBody730_30 RemovedBody730_31

def RemovedBody730_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody730_34 : StackLang.HolProg 64 :=
.seq RemovedBody730_32 RemovedBody730_33

def RemovedBody730_35 : StackLang.HolProg 64 :=
.seq RemovedBody730_27 RemovedBody730_34

def RemovedBody730_36 : StackLang.HolProg 64 :=
.seq RemovedBody730_26 RemovedBody730_35

def RemovedBody730_37 : StackLang.HolProg 64 :=
.seq RemovedBody730_25 RemovedBody730_36

def RemovedBody730_38 : StackLang.HolProg 64 :=
.seq RemovedBody730_24 RemovedBody730_37

def RemovedBody730_39 : StackLang.HolProg 64 :=
.seq RemovedBody730_23 RemovedBody730_38

def RemovedBody730_40 : StackLang.HolProg 64 :=
.seq RemovedBody730_22 RemovedBody730_39

def RemovedBody730_41 : StackLang.HolProg 64 :=
.seq RemovedBody730_21 RemovedBody730_40

def RemovedBody730_42 : StackLang.HolProg 64 :=
.seq RemovedBody730_20 RemovedBody730_41

def RemovedBody730_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody730_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody730_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody730_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody730_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody730_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody730_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody730_50 : StackLang.HolProg 64 :=
.seq RemovedBody730_48 RemovedBody730_49

def RemovedBody730_51 : StackLang.HolProg 64 :=
.seq RemovedBody730_47 RemovedBody730_50

def RemovedBody730_52 : StackLang.HolProg 64 :=
.seq RemovedBody730_46 RemovedBody730_51

def RemovedBody730_53 : StackLang.HolProg 64 :=
.seq RemovedBody730_45 RemovedBody730_52

def RemovedBody730_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody730_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody730_56 : StackLang.HolProg 64 :=
.seq RemovedBody730_54 RemovedBody730_55

def RemovedBody730_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody730_53, 0, 730, 2)) (Sum.inl 78) (some (RemovedBody730_56, 730, 3))

def RemovedBody730_58 : StackLang.HolProg 64 :=
.seq RemovedBody730_44 RemovedBody730_57

def RemovedBody730_59 : StackLang.HolProg 64 :=
.seq RemovedBody730_43 RemovedBody730_58

def RemovedBody730_60 : StackLang.HolProg 64 :=
.seq RemovedBody730_42 RemovedBody730_59

def RemovedBody730_61 : StackLang.HolProg 64 :=
.seq RemovedBody730_13 RemovedBody730_60

def RemovedBody730_62 : StackLang.HolProg 64 :=
.seq RemovedBody730_10 RemovedBody730_61

def RemovedBody730_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody730_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody730_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody730_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody730_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody730_68 : StackLang.HolProg 64 :=
.seq RemovedBody730_66 RemovedBody730_67

def RemovedBody730_69 : StackLang.HolProg 64 :=
.seq RemovedBody730_65 RemovedBody730_68

def RemovedBody730_70 : StackLang.HolProg 64 :=
.seq RemovedBody730_64 RemovedBody730_69

def RemovedBody730_71 : StackLang.HolProg 64 :=
.seq RemovedBody730_63 RemovedBody730_70

def RemovedBody730_72 : StackLang.HolProg 64 :=
.seq RemovedBody730_62 RemovedBody730_71

def RemovedBody730_73 : StackLang.HolProg 64 :=
.seq RemovedBody730_9 RemovedBody730_72

def RemovedBody730_74 : StackLang.HolProg 64 :=
.seq RemovedBody730_8 RemovedBody730_73

def RemovedBody730_75 : StackLang.HolProg 64 :=
.seq RemovedBody730_7 RemovedBody730_74

def RemovedBody730_76 : StackLang.HolProg 64 :=
.seq RemovedBody730_6 RemovedBody730_75

def Removed730 : Nat × StackLang.HolProg 64 := (730, RemovedBody730_76)
theorem Removed730_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc730 = Removed730 := by
  kernel_rfl
#print axioms Removed730_eq
end InitECandidate.Proofs.BackendStages
