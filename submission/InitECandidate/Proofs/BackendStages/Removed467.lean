import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc467
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody467_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody467_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody467_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody467_3 : StackLang.HolProg 64 :=
.seq RemovedBody467_1 RemovedBody467_2

def RemovedBody467_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody467_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody467_3 RemovedBody467_4

def RemovedBody467_6 : StackLang.HolProg 64 :=
.seq RemovedBody467_0 RemovedBody467_5

def RemovedBody467_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody467_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 20#64)

def RemovedBody467_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody467_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody467_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1493#64)

def RemovedBody467_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody467_13 : StackLang.HolProg 64 :=
.seq RemovedBody467_11 RemovedBody467_12

def RemovedBody467_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody467_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody467_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody467_17 : StackLang.HolProg 64 :=
.seq RemovedBody467_15 RemovedBody467_16

def RemovedBody467_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody467_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody467_17 RemovedBody467_18

def RemovedBody467_20 : StackLang.HolProg 64 :=
.seq RemovedBody467_14 RemovedBody467_19

def RemovedBody467_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody467_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody467_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 467 3

def RemovedBody467_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody467_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody467_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody467_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody467_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody467_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody467_30 : StackLang.HolProg 64 :=
.seq RemovedBody467_28 RemovedBody467_29

def RemovedBody467_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody467_32 : StackLang.HolProg 64 :=
.seq RemovedBody467_30 RemovedBody467_31

def RemovedBody467_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody467_34 : StackLang.HolProg 64 :=
.seq RemovedBody467_32 RemovedBody467_33

def RemovedBody467_35 : StackLang.HolProg 64 :=
.seq RemovedBody467_27 RemovedBody467_34

def RemovedBody467_36 : StackLang.HolProg 64 :=
.seq RemovedBody467_26 RemovedBody467_35

def RemovedBody467_37 : StackLang.HolProg 64 :=
.seq RemovedBody467_25 RemovedBody467_36

def RemovedBody467_38 : StackLang.HolProg 64 :=
.seq RemovedBody467_24 RemovedBody467_37

def RemovedBody467_39 : StackLang.HolProg 64 :=
.seq RemovedBody467_23 RemovedBody467_38

def RemovedBody467_40 : StackLang.HolProg 64 :=
.seq RemovedBody467_22 RemovedBody467_39

def RemovedBody467_41 : StackLang.HolProg 64 :=
.seq RemovedBody467_21 RemovedBody467_40

def RemovedBody467_42 : StackLang.HolProg 64 :=
.seq RemovedBody467_20 RemovedBody467_41

def RemovedBody467_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody467_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody467_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody467_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody467_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody467_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody467_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody467_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody467_51 : StackLang.HolProg 64 :=
.seq RemovedBody467_49 RemovedBody467_50

def RemovedBody467_52 : StackLang.HolProg 64 :=
.seq RemovedBody467_48 RemovedBody467_51

def RemovedBody467_53 : StackLang.HolProg 64 :=
.seq RemovedBody467_47 RemovedBody467_52

def RemovedBody467_54 : StackLang.HolProg 64 :=
.seq RemovedBody467_46 RemovedBody467_53

def RemovedBody467_55 : StackLang.HolProg 64 :=
.seq RemovedBody467_45 RemovedBody467_54

def RemovedBody467_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody467_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody467_58 : StackLang.HolProg 64 :=
.seq RemovedBody467_56 RemovedBody467_57

def RemovedBody467_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody467_55, 0, 467, 2)) (Sum.inl 146) (some (RemovedBody467_58, 467, 3))

def RemovedBody467_60 : StackLang.HolProg 64 :=
.seq RemovedBody467_44 RemovedBody467_59

def RemovedBody467_61 : StackLang.HolProg 64 :=
.seq RemovedBody467_43 RemovedBody467_60

def RemovedBody467_62 : StackLang.HolProg 64 :=
.seq RemovedBody467_42 RemovedBody467_61

def RemovedBody467_63 : StackLang.HolProg 64 :=
.seq RemovedBody467_13 RemovedBody467_62

def RemovedBody467_64 : StackLang.HolProg 64 :=
.seq RemovedBody467_10 RemovedBody467_63

def RemovedBody467_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody467_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody467_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody467_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody467_69 : StackLang.HolProg 64 :=
.seq RemovedBody467_67 RemovedBody467_68

def RemovedBody467_70 : StackLang.HolProg 64 :=
.seq RemovedBody467_66 RemovedBody467_69

def RemovedBody467_71 : StackLang.HolProg 64 :=
.seq RemovedBody467_65 RemovedBody467_70

def RemovedBody467_72 : StackLang.HolProg 64 :=
.seq RemovedBody467_64 RemovedBody467_71

def RemovedBody467_73 : StackLang.HolProg 64 :=
.seq RemovedBody467_9 RemovedBody467_72

def RemovedBody467_74 : StackLang.HolProg 64 :=
.seq RemovedBody467_8 RemovedBody467_73

def RemovedBody467_75 : StackLang.HolProg 64 :=
.seq RemovedBody467_7 RemovedBody467_74

def RemovedBody467_76 : StackLang.HolProg 64 :=
.seq RemovedBody467_6 RemovedBody467_75

def Removed467 : Nat × StackLang.HolProg 64 := (467, RemovedBody467_76)
theorem Removed467_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc467 = Removed467 := by
  kernel_rfl
#print axioms Removed467_eq
end InitECandidate.Proofs.BackendStages
