import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc768
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody768_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody768_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody768_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody768_3 : StackLang.HolProg 64 :=
.seq RemovedBody768_1 RemovedBody768_2

def RemovedBody768_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody768_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody768_3 RemovedBody768_4

def RemovedBody768_6 : StackLang.HolProg 64 :=
.seq RemovedBody768_0 RemovedBody768_5

def RemovedBody768_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody768_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 144#64)

def RemovedBody768_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody768_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody768_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3454#64)

def RemovedBody768_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody768_13 : StackLang.HolProg 64 :=
.seq RemovedBody768_11 RemovedBody768_12

def RemovedBody768_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody768_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody768_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody768_17 : StackLang.HolProg 64 :=
.seq RemovedBody768_15 RemovedBody768_16

def RemovedBody768_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody768_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody768_17 RemovedBody768_18

def RemovedBody768_20 : StackLang.HolProg 64 :=
.seq RemovedBody768_14 RemovedBody768_19

def RemovedBody768_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody768_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody768_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 768 3

def RemovedBody768_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody768_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody768_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody768_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody768_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody768_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody768_30 : StackLang.HolProg 64 :=
.seq RemovedBody768_28 RemovedBody768_29

def RemovedBody768_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody768_32 : StackLang.HolProg 64 :=
.seq RemovedBody768_30 RemovedBody768_31

def RemovedBody768_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody768_34 : StackLang.HolProg 64 :=
.seq RemovedBody768_32 RemovedBody768_33

def RemovedBody768_35 : StackLang.HolProg 64 :=
.seq RemovedBody768_27 RemovedBody768_34

def RemovedBody768_36 : StackLang.HolProg 64 :=
.seq RemovedBody768_26 RemovedBody768_35

def RemovedBody768_37 : StackLang.HolProg 64 :=
.seq RemovedBody768_25 RemovedBody768_36

def RemovedBody768_38 : StackLang.HolProg 64 :=
.seq RemovedBody768_24 RemovedBody768_37

def RemovedBody768_39 : StackLang.HolProg 64 :=
.seq RemovedBody768_23 RemovedBody768_38

def RemovedBody768_40 : StackLang.HolProg 64 :=
.seq RemovedBody768_22 RemovedBody768_39

def RemovedBody768_41 : StackLang.HolProg 64 :=
.seq RemovedBody768_21 RemovedBody768_40

def RemovedBody768_42 : StackLang.HolProg 64 :=
.seq RemovedBody768_20 RemovedBody768_41

def RemovedBody768_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody768_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody768_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody768_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody768_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody768_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody768_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody768_50 : StackLang.HolProg 64 :=
.seq RemovedBody768_48 RemovedBody768_49

def RemovedBody768_51 : StackLang.HolProg 64 :=
.seq RemovedBody768_47 RemovedBody768_50

def RemovedBody768_52 : StackLang.HolProg 64 :=
.seq RemovedBody768_46 RemovedBody768_51

def RemovedBody768_53 : StackLang.HolProg 64 :=
.seq RemovedBody768_45 RemovedBody768_52

def RemovedBody768_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody768_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody768_56 : StackLang.HolProg 64 :=
.seq RemovedBody768_54 RemovedBody768_55

def RemovedBody768_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody768_53, 0, 768, 2)) (Sum.inl 77) (some (RemovedBody768_56, 768, 3))

def RemovedBody768_58 : StackLang.HolProg 64 :=
.seq RemovedBody768_44 RemovedBody768_57

def RemovedBody768_59 : StackLang.HolProg 64 :=
.seq RemovedBody768_43 RemovedBody768_58

def RemovedBody768_60 : StackLang.HolProg 64 :=
.seq RemovedBody768_42 RemovedBody768_59

def RemovedBody768_61 : StackLang.HolProg 64 :=
.seq RemovedBody768_13 RemovedBody768_60

def RemovedBody768_62 : StackLang.HolProg 64 :=
.seq RemovedBody768_10 RemovedBody768_61

def RemovedBody768_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody768_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody768_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody768_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody768_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody768_68 : StackLang.HolProg 64 :=
.seq RemovedBody768_66 RemovedBody768_67

def RemovedBody768_69 : StackLang.HolProg 64 :=
.seq RemovedBody768_65 RemovedBody768_68

def RemovedBody768_70 : StackLang.HolProg 64 :=
.seq RemovedBody768_64 RemovedBody768_69

def RemovedBody768_71 : StackLang.HolProg 64 :=
.seq RemovedBody768_63 RemovedBody768_70

def RemovedBody768_72 : StackLang.HolProg 64 :=
.seq RemovedBody768_62 RemovedBody768_71

def RemovedBody768_73 : StackLang.HolProg 64 :=
.seq RemovedBody768_9 RemovedBody768_72

def RemovedBody768_74 : StackLang.HolProg 64 :=
.seq RemovedBody768_8 RemovedBody768_73

def RemovedBody768_75 : StackLang.HolProg 64 :=
.seq RemovedBody768_7 RemovedBody768_74

def RemovedBody768_76 : StackLang.HolProg 64 :=
.seq RemovedBody768_6 RemovedBody768_75

def Removed768 : Nat × StackLang.HolProg 64 := (768, RemovedBody768_76)
theorem Removed768_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc768 = Removed768 := by
  kernel_rfl
#print axioms Removed768_eq
end InitECandidate.Proofs.BackendStages
