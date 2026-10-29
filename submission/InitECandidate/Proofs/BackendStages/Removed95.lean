import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc95
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody95_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody95_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody95_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody95_3 : StackLang.HolProg 64 :=
.seq RemovedBody95_1 RemovedBody95_2

def RemovedBody95_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody95_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody95_3 RemovedBody95_4

def RemovedBody95_6 : StackLang.HolProg 64 :=
.seq RemovedBody95_0 RemovedBody95_5

def RemovedBody95_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody95_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody95_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 41#64)

def RemovedBody95_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody95_11 : StackLang.HolProg 64 :=
.seq RemovedBody95_9 RemovedBody95_10

def RemovedBody95_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody95_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody95_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody95_15 : StackLang.HolProg 64 :=
.seq RemovedBody95_13 RemovedBody95_14

def RemovedBody95_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody95_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody95_15 RemovedBody95_16

def RemovedBody95_18 : StackLang.HolProg 64 :=
.seq RemovedBody95_12 RemovedBody95_17

def RemovedBody95_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody95_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody95_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 95 3

def RemovedBody95_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody95_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody95_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody95_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody95_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody95_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody95_28 : StackLang.HolProg 64 :=
.seq RemovedBody95_26 RemovedBody95_27

def RemovedBody95_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody95_30 : StackLang.HolProg 64 :=
.seq RemovedBody95_28 RemovedBody95_29

def RemovedBody95_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody95_32 : StackLang.HolProg 64 :=
.seq RemovedBody95_30 RemovedBody95_31

def RemovedBody95_33 : StackLang.HolProg 64 :=
.seq RemovedBody95_25 RemovedBody95_32

def RemovedBody95_34 : StackLang.HolProg 64 :=
.seq RemovedBody95_24 RemovedBody95_33

def RemovedBody95_35 : StackLang.HolProg 64 :=
.seq RemovedBody95_23 RemovedBody95_34

def RemovedBody95_36 : StackLang.HolProg 64 :=
.seq RemovedBody95_22 RemovedBody95_35

def RemovedBody95_37 : StackLang.HolProg 64 :=
.seq RemovedBody95_21 RemovedBody95_36

def RemovedBody95_38 : StackLang.HolProg 64 :=
.seq RemovedBody95_20 RemovedBody95_37

def RemovedBody95_39 : StackLang.HolProg 64 :=
.seq RemovedBody95_19 RemovedBody95_38

def RemovedBody95_40 : StackLang.HolProg 64 :=
.seq RemovedBody95_18 RemovedBody95_39

def RemovedBody95_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody95_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody95_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody95_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody95_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody95_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody95_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody95_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody95_49 : StackLang.HolProg 64 :=
.seq RemovedBody95_47 RemovedBody95_48

def RemovedBody95_50 : StackLang.HolProg 64 :=
.seq RemovedBody95_46 RemovedBody95_49

def RemovedBody95_51 : StackLang.HolProg 64 :=
.seq RemovedBody95_45 RemovedBody95_50

def RemovedBody95_52 : StackLang.HolProg 64 :=
.seq RemovedBody95_44 RemovedBody95_51

def RemovedBody95_53 : StackLang.HolProg 64 :=
.seq RemovedBody95_43 RemovedBody95_52

def RemovedBody95_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody95_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody95_56 : StackLang.HolProg 64 :=
.seq RemovedBody95_54 RemovedBody95_55

def RemovedBody95_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody95_53, 0, 95, 2)) (Sum.inl 94) (some (RemovedBody95_56, 95, 3))

def RemovedBody95_58 : StackLang.HolProg 64 :=
.seq RemovedBody95_42 RemovedBody95_57

def RemovedBody95_59 : StackLang.HolProg 64 :=
.seq RemovedBody95_41 RemovedBody95_58

def RemovedBody95_60 : StackLang.HolProg 64 :=
.seq RemovedBody95_40 RemovedBody95_59

def RemovedBody95_61 : StackLang.HolProg 64 :=
.seq RemovedBody95_11 RemovedBody95_60

def RemovedBody95_62 : StackLang.HolProg 64 :=
.seq RemovedBody95_8 RemovedBody95_61

def RemovedBody95_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody95_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody95_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody95_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody95_67 : StackLang.HolProg 64 :=
.seq RemovedBody95_65 RemovedBody95_66

def RemovedBody95_68 : StackLang.HolProg 64 :=
.seq RemovedBody95_64 RemovedBody95_67

def RemovedBody95_69 : StackLang.HolProg 64 :=
.seq RemovedBody95_63 RemovedBody95_68

def RemovedBody95_70 : StackLang.HolProg 64 :=
.seq RemovedBody95_62 RemovedBody95_69

def RemovedBody95_71 : StackLang.HolProg 64 :=
.seq RemovedBody95_7 RemovedBody95_70

def RemovedBody95_72 : StackLang.HolProg 64 :=
.seq RemovedBody95_6 RemovedBody95_71

def Removed95 : Nat × StackLang.HolProg 64 := (95, RemovedBody95_72)
theorem Removed95_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc95 = Removed95 := by
  kernel_rfl
#print axioms Removed95_eq
end InitECandidate.Proofs.BackendStages
