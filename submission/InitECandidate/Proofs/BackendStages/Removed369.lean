import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc369
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody369_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody369_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody369_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody369_3 : StackLang.HolProg 64 :=
.seq RemovedBody369_1 RemovedBody369_2

def RemovedBody369_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody369_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody369_3 RemovedBody369_4

def RemovedBody369_6 : StackLang.HolProg 64 :=
.seq RemovedBody369_0 RemovedBody369_5

def RemovedBody369_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody369_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody369_9 : StackLang.HolProg 64 :=
.seq RemovedBody369_7 RemovedBody369_8

def RemovedBody369_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 384#64))

def RemovedBody369_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody369_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 392#64))

def RemovedBody369_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody369_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody369_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1084#64)

def RemovedBody369_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody369_17 : StackLang.HolProg 64 :=
.seq RemovedBody369_15 RemovedBody369_16

def RemovedBody369_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody369_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody369_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody369_21 : StackLang.HolProg 64 :=
.seq RemovedBody369_19 RemovedBody369_20

def RemovedBody369_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody369_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody369_21 RemovedBody369_22

def RemovedBody369_24 : StackLang.HolProg 64 :=
.seq RemovedBody369_18 RemovedBody369_23

def RemovedBody369_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody369_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody369_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 369 3

def RemovedBody369_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody369_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody369_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody369_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody369_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody369_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody369_34 : StackLang.HolProg 64 :=
.seq RemovedBody369_32 RemovedBody369_33

def RemovedBody369_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody369_36 : StackLang.HolProg 64 :=
.seq RemovedBody369_34 RemovedBody369_35

def RemovedBody369_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody369_38 : StackLang.HolProg 64 :=
.seq RemovedBody369_36 RemovedBody369_37

def RemovedBody369_39 : StackLang.HolProg 64 :=
.seq RemovedBody369_31 RemovedBody369_38

def RemovedBody369_40 : StackLang.HolProg 64 :=
.seq RemovedBody369_30 RemovedBody369_39

def RemovedBody369_41 : StackLang.HolProg 64 :=
.seq RemovedBody369_29 RemovedBody369_40

def RemovedBody369_42 : StackLang.HolProg 64 :=
.seq RemovedBody369_28 RemovedBody369_41

def RemovedBody369_43 : StackLang.HolProg 64 :=
.seq RemovedBody369_27 RemovedBody369_42

def RemovedBody369_44 : StackLang.HolProg 64 :=
.seq RemovedBody369_26 RemovedBody369_43

def RemovedBody369_45 : StackLang.HolProg 64 :=
.seq RemovedBody369_25 RemovedBody369_44

def RemovedBody369_46 : StackLang.HolProg 64 :=
.seq RemovedBody369_24 RemovedBody369_45

def RemovedBody369_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody369_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody369_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody369_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody369_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody369_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody369_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody369_54 : StackLang.HolProg 64 :=
.seq RemovedBody369_52 RemovedBody369_53

def RemovedBody369_55 : StackLang.HolProg 64 :=
.seq RemovedBody369_51 RemovedBody369_54

def RemovedBody369_56 : StackLang.HolProg 64 :=
.seq RemovedBody369_50 RemovedBody369_55

def RemovedBody369_57 : StackLang.HolProg 64 :=
.seq RemovedBody369_49 RemovedBody369_56

def RemovedBody369_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody369_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody369_60 : StackLang.HolProg 64 :=
.seq RemovedBody369_58 RemovedBody369_59

def RemovedBody369_61 : StackLang.HolProg 64 :=
.call (some (RemovedBody369_57, 0, 369, 2)) (Sum.inl 158) (some (RemovedBody369_60, 369, 3))

def RemovedBody369_62 : StackLang.HolProg 64 :=
.seq RemovedBody369_48 RemovedBody369_61

def RemovedBody369_63 : StackLang.HolProg 64 :=
.seq RemovedBody369_47 RemovedBody369_62

def RemovedBody369_64 : StackLang.HolProg 64 :=
.seq RemovedBody369_46 RemovedBody369_63

def RemovedBody369_65 : StackLang.HolProg 64 :=
.seq RemovedBody369_17 RemovedBody369_64

def RemovedBody369_66 : StackLang.HolProg 64 :=
.seq RemovedBody369_14 RemovedBody369_65

def RemovedBody369_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody369_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody369_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody369_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody369_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody369_72 : StackLang.HolProg 64 :=
.seq RemovedBody369_70 RemovedBody369_71

def RemovedBody369_73 : StackLang.HolProg 64 :=
.seq RemovedBody369_69 RemovedBody369_72

def RemovedBody369_74 : StackLang.HolProg 64 :=
.seq RemovedBody369_68 RemovedBody369_73

def RemovedBody369_75 : StackLang.HolProg 64 :=
.seq RemovedBody369_67 RemovedBody369_74

def RemovedBody369_76 : StackLang.HolProg 64 :=
.seq RemovedBody369_66 RemovedBody369_75

def RemovedBody369_77 : StackLang.HolProg 64 :=
.seq RemovedBody369_13 RemovedBody369_76

def RemovedBody369_78 : StackLang.HolProg 64 :=
.seq RemovedBody369_12 RemovedBody369_77

def RemovedBody369_79 : StackLang.HolProg 64 :=
.seq RemovedBody369_11 RemovedBody369_78

def RemovedBody369_80 : StackLang.HolProg 64 :=
.seq RemovedBody369_10 RemovedBody369_79

def RemovedBody369_81 : StackLang.HolProg 64 :=
.seq RemovedBody369_9 RemovedBody369_80

def RemovedBody369_82 : StackLang.HolProg 64 :=
.seq RemovedBody369_6 RemovedBody369_81

def Removed369 : Nat × StackLang.HolProg 64 := (369, RemovedBody369_82)
theorem Removed369_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc369 = Removed369 := by
  kernel_rfl
#print axioms Removed369_eq
end InitECandidate.Proofs.BackendStages
