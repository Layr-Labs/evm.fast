import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc477
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody477_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody477_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody477_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody477_3 : StackLang.HolProg 64 :=
.seq RemovedBody477_1 RemovedBody477_2

def RemovedBody477_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody477_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody477_3 RemovedBody477_4

def RemovedBody477_6 : StackLang.HolProg 64 :=
.seq RemovedBody477_0 RemovedBody477_5

def RemovedBody477_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody477_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody477_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody477_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody477_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody477_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody477_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1498#64)

def RemovedBody477_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody477_15 : StackLang.HolProg 64 :=
.seq RemovedBody477_13 RemovedBody477_14

def RemovedBody477_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody477_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody477_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody477_19 : StackLang.HolProg 64 :=
.seq RemovedBody477_17 RemovedBody477_18

def RemovedBody477_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody477_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody477_19 RemovedBody477_20

def RemovedBody477_22 : StackLang.HolProg 64 :=
.seq RemovedBody477_16 RemovedBody477_21

def RemovedBody477_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody477_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody477_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 477 3

def RemovedBody477_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody477_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody477_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody477_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody477_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody477_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody477_32 : StackLang.HolProg 64 :=
.seq RemovedBody477_30 RemovedBody477_31

def RemovedBody477_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody477_34 : StackLang.HolProg 64 :=
.seq RemovedBody477_32 RemovedBody477_33

def RemovedBody477_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody477_36 : StackLang.HolProg 64 :=
.seq RemovedBody477_34 RemovedBody477_35

def RemovedBody477_37 : StackLang.HolProg 64 :=
.seq RemovedBody477_29 RemovedBody477_36

def RemovedBody477_38 : StackLang.HolProg 64 :=
.seq RemovedBody477_28 RemovedBody477_37

def RemovedBody477_39 : StackLang.HolProg 64 :=
.seq RemovedBody477_27 RemovedBody477_38

def RemovedBody477_40 : StackLang.HolProg 64 :=
.seq RemovedBody477_26 RemovedBody477_39

def RemovedBody477_41 : StackLang.HolProg 64 :=
.seq RemovedBody477_25 RemovedBody477_40

def RemovedBody477_42 : StackLang.HolProg 64 :=
.seq RemovedBody477_24 RemovedBody477_41

def RemovedBody477_43 : StackLang.HolProg 64 :=
.seq RemovedBody477_23 RemovedBody477_42

def RemovedBody477_44 : StackLang.HolProg 64 :=
.seq RemovedBody477_22 RemovedBody477_43

def RemovedBody477_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody477_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody477_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody477_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody477_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody477_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody477_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody477_52 : StackLang.HolProg 64 :=
.seq RemovedBody477_50 RemovedBody477_51

def RemovedBody477_53 : StackLang.HolProg 64 :=
.seq RemovedBody477_49 RemovedBody477_52

def RemovedBody477_54 : StackLang.HolProg 64 :=
.seq RemovedBody477_48 RemovedBody477_53

def RemovedBody477_55 : StackLang.HolProg 64 :=
.seq RemovedBody477_47 RemovedBody477_54

def RemovedBody477_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody477_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody477_58 : StackLang.HolProg 64 :=
.seq RemovedBody477_56 RemovedBody477_57

def RemovedBody477_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody477_55, 0, 477, 2)) (Sum.inl 476) (some (RemovedBody477_58, 477, 3))

def RemovedBody477_60 : StackLang.HolProg 64 :=
.seq RemovedBody477_46 RemovedBody477_59

def RemovedBody477_61 : StackLang.HolProg 64 :=
.seq RemovedBody477_45 RemovedBody477_60

def RemovedBody477_62 : StackLang.HolProg 64 :=
.seq RemovedBody477_44 RemovedBody477_61

def RemovedBody477_63 : StackLang.HolProg 64 :=
.seq RemovedBody477_15 RemovedBody477_62

def RemovedBody477_64 : StackLang.HolProg 64 :=
.seq RemovedBody477_12 RemovedBody477_63

def RemovedBody477_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody477_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody477_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody477_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody477_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody477_70 : StackLang.HolProg 64 :=
.seq RemovedBody477_68 RemovedBody477_69

def RemovedBody477_71 : StackLang.HolProg 64 :=
.seq RemovedBody477_67 RemovedBody477_70

def RemovedBody477_72 : StackLang.HolProg 64 :=
.seq RemovedBody477_66 RemovedBody477_71

def RemovedBody477_73 : StackLang.HolProg 64 :=
.seq RemovedBody477_65 RemovedBody477_72

def RemovedBody477_74 : StackLang.HolProg 64 :=
.seq RemovedBody477_64 RemovedBody477_73

def RemovedBody477_75 : StackLang.HolProg 64 :=
.seq RemovedBody477_11 RemovedBody477_74

def RemovedBody477_76 : StackLang.HolProg 64 :=
.seq RemovedBody477_10 RemovedBody477_75

def RemovedBody477_77 : StackLang.HolProg 64 :=
.seq RemovedBody477_9 RemovedBody477_76

def RemovedBody477_78 : StackLang.HolProg 64 :=
.seq RemovedBody477_8 RemovedBody477_77

def RemovedBody477_79 : StackLang.HolProg 64 :=
.seq RemovedBody477_7 RemovedBody477_78

def RemovedBody477_80 : StackLang.HolProg 64 :=
.seq RemovedBody477_6 RemovedBody477_79

def Removed477 : Nat × StackLang.HolProg 64 := (477, RemovedBody477_80)
theorem Removed477_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc477 = Removed477 := by
  kernel_rfl
#print axioms Removed477_eq
end InitECandidate.Proofs.BackendStages
