import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc280
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody280_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody280_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody280_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody280_3 : StackLang.HolProg 64 :=
.seq RemovedBody280_1 RemovedBody280_2

def RemovedBody280_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody280_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody280_3 RemovedBody280_4

def RemovedBody280_6 : StackLang.HolProg 64 :=
.seq RemovedBody280_0 RemovedBody280_5

def RemovedBody280_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody280_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 11684671#64)

def RemovedBody280_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody280_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody280_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody280_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 744#64)

def RemovedBody280_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody280_14 : StackLang.HolProg 64 :=
.seq RemovedBody280_12 RemovedBody280_13

def RemovedBody280_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody280_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody280_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody280_18 : StackLang.HolProg 64 :=
.seq RemovedBody280_16 RemovedBody280_17

def RemovedBody280_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody280_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody280_18 RemovedBody280_19

def RemovedBody280_21 : StackLang.HolProg 64 :=
.seq RemovedBody280_15 RemovedBody280_20

def RemovedBody280_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody280_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody280_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 280 3

def RemovedBody280_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody280_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody280_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody280_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody280_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody280_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody280_31 : StackLang.HolProg 64 :=
.seq RemovedBody280_29 RemovedBody280_30

def RemovedBody280_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody280_33 : StackLang.HolProg 64 :=
.seq RemovedBody280_31 RemovedBody280_32

def RemovedBody280_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody280_35 : StackLang.HolProg 64 :=
.seq RemovedBody280_33 RemovedBody280_34

def RemovedBody280_36 : StackLang.HolProg 64 :=
.seq RemovedBody280_28 RemovedBody280_35

def RemovedBody280_37 : StackLang.HolProg 64 :=
.seq RemovedBody280_27 RemovedBody280_36

def RemovedBody280_38 : StackLang.HolProg 64 :=
.seq RemovedBody280_26 RemovedBody280_37

def RemovedBody280_39 : StackLang.HolProg 64 :=
.seq RemovedBody280_25 RemovedBody280_38

def RemovedBody280_40 : StackLang.HolProg 64 :=
.seq RemovedBody280_24 RemovedBody280_39

def RemovedBody280_41 : StackLang.HolProg 64 :=
.seq RemovedBody280_23 RemovedBody280_40

def RemovedBody280_42 : StackLang.HolProg 64 :=
.seq RemovedBody280_22 RemovedBody280_41

def RemovedBody280_43 : StackLang.HolProg 64 :=
.seq RemovedBody280_21 RemovedBody280_42

def RemovedBody280_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody280_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody280_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody280_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody280_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody280_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody280_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody280_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody280_52 : StackLang.HolProg 64 :=
.seq RemovedBody280_50 RemovedBody280_51

def RemovedBody280_53 : StackLang.HolProg 64 :=
.seq RemovedBody280_49 RemovedBody280_52

def RemovedBody280_54 : StackLang.HolProg 64 :=
.seq RemovedBody280_48 RemovedBody280_53

def RemovedBody280_55 : StackLang.HolProg 64 :=
.seq RemovedBody280_47 RemovedBody280_54

def RemovedBody280_56 : StackLang.HolProg 64 :=
.seq RemovedBody280_46 RemovedBody280_55

def RemovedBody280_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody280_58 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody280_59 : StackLang.HolProg 64 :=
.seq RemovedBody280_57 RemovedBody280_58

def RemovedBody280_60 : StackLang.HolProg 64 :=
.call (some (RemovedBody280_56, 0, 280, 2)) (Sum.inl 279) (some (RemovedBody280_59, 280, 3))

def RemovedBody280_61 : StackLang.HolProg 64 :=
.seq RemovedBody280_45 RemovedBody280_60

def RemovedBody280_62 : StackLang.HolProg 64 :=
.seq RemovedBody280_44 RemovedBody280_61

def RemovedBody280_63 : StackLang.HolProg 64 :=
.seq RemovedBody280_43 RemovedBody280_62

def RemovedBody280_64 : StackLang.HolProg 64 :=
.seq RemovedBody280_14 RemovedBody280_63

def RemovedBody280_65 : StackLang.HolProg 64 :=
.seq RemovedBody280_11 RemovedBody280_64

def RemovedBody280_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody280_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody280_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody280_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody280_70 : StackLang.HolProg 64 :=
.seq RemovedBody280_68 RemovedBody280_69

def RemovedBody280_71 : StackLang.HolProg 64 :=
.seq RemovedBody280_67 RemovedBody280_70

def RemovedBody280_72 : StackLang.HolProg 64 :=
.seq RemovedBody280_66 RemovedBody280_71

def RemovedBody280_73 : StackLang.HolProg 64 :=
.seq RemovedBody280_65 RemovedBody280_72

def RemovedBody280_74 : StackLang.HolProg 64 :=
.seq RemovedBody280_10 RemovedBody280_73

def RemovedBody280_75 : StackLang.HolProg 64 :=
.seq RemovedBody280_9 RemovedBody280_74

def RemovedBody280_76 : StackLang.HolProg 64 :=
.seq RemovedBody280_8 RemovedBody280_75

def RemovedBody280_77 : StackLang.HolProg 64 :=
.seq RemovedBody280_7 RemovedBody280_76

def RemovedBody280_78 : StackLang.HolProg 64 :=
.seq RemovedBody280_6 RemovedBody280_77

def Removed280 : Nat × StackLang.HolProg 64 := (280, RemovedBody280_78)
theorem Removed280_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc280 = Removed280 := by
  kernel_rfl
#print axioms Removed280_eq
end InitECandidate.Proofs.BackendStages
