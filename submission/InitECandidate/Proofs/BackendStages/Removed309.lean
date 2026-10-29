import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc309
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody309_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody309_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody309_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody309_3 : StackLang.HolProg 64 :=
.seq RemovedBody309_1 RemovedBody309_2

def RemovedBody309_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody309_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody309_3 RemovedBody309_4

def RemovedBody309_6 : StackLang.HolProg 64 :=
.seq RemovedBody309_0 RemovedBody309_5

def RemovedBody309_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody309_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody309_9 : StackLang.HolProg 64 :=
.seq RemovedBody309_7 RemovedBody309_8

def RemovedBody309_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody309_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 850#64)

def RemovedBody309_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody309_13 : StackLang.HolProg 64 :=
.seq RemovedBody309_11 RemovedBody309_12

def RemovedBody309_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody309_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody309_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody309_17 : StackLang.HolProg 64 :=
.seq RemovedBody309_15 RemovedBody309_16

def RemovedBody309_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody309_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody309_17 RemovedBody309_18

def RemovedBody309_20 : StackLang.HolProg 64 :=
.seq RemovedBody309_14 RemovedBody309_19

def RemovedBody309_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody309_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody309_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 309 3

def RemovedBody309_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody309_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody309_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody309_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody309_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody309_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody309_30 : StackLang.HolProg 64 :=
.seq RemovedBody309_28 RemovedBody309_29

def RemovedBody309_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody309_32 : StackLang.HolProg 64 :=
.seq RemovedBody309_30 RemovedBody309_31

def RemovedBody309_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody309_34 : StackLang.HolProg 64 :=
.seq RemovedBody309_32 RemovedBody309_33

def RemovedBody309_35 : StackLang.HolProg 64 :=
.seq RemovedBody309_27 RemovedBody309_34

def RemovedBody309_36 : StackLang.HolProg 64 :=
.seq RemovedBody309_26 RemovedBody309_35

def RemovedBody309_37 : StackLang.HolProg 64 :=
.seq RemovedBody309_25 RemovedBody309_36

def RemovedBody309_38 : StackLang.HolProg 64 :=
.seq RemovedBody309_24 RemovedBody309_37

def RemovedBody309_39 : StackLang.HolProg 64 :=
.seq RemovedBody309_23 RemovedBody309_38

def RemovedBody309_40 : StackLang.HolProg 64 :=
.seq RemovedBody309_22 RemovedBody309_39

def RemovedBody309_41 : StackLang.HolProg 64 :=
.seq RemovedBody309_21 RemovedBody309_40

def RemovedBody309_42 : StackLang.HolProg 64 :=
.seq RemovedBody309_20 RemovedBody309_41

def RemovedBody309_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody309_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody309_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody309_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody309_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody309_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody309_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody309_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody309_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody309_52 : StackLang.HolProg 64 :=
.seq RemovedBody309_50 RemovedBody309_51

def RemovedBody309_53 : StackLang.HolProg 64 :=
.seq RemovedBody309_49 RemovedBody309_52

def RemovedBody309_54 : StackLang.HolProg 64 :=
.seq RemovedBody309_48 RemovedBody309_53

def RemovedBody309_55 : StackLang.HolProg 64 :=
.seq RemovedBody309_47 RemovedBody309_54

def RemovedBody309_56 : StackLang.HolProg 64 :=
.seq RemovedBody309_46 RemovedBody309_55

def RemovedBody309_57 : StackLang.HolProg 64 :=
.seq RemovedBody309_45 RemovedBody309_56

def RemovedBody309_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody309_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody309_60 : StackLang.HolProg 64 :=
.seq RemovedBody309_58 RemovedBody309_59

def RemovedBody309_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody309_62 : StackLang.HolProg 64 :=
.seq RemovedBody309_60 RemovedBody309_61

def RemovedBody309_63 : StackLang.HolProg 64 :=
.call (some (RemovedBody309_57, 0, 309, 2)) (Sum.inl 305) (some (RemovedBody309_62, 309, 3))

def RemovedBody309_64 : StackLang.HolProg 64 :=
.seq RemovedBody309_44 RemovedBody309_63

def RemovedBody309_65 : StackLang.HolProg 64 :=
.seq RemovedBody309_43 RemovedBody309_64

def RemovedBody309_66 : StackLang.HolProg 64 :=
.seq RemovedBody309_42 RemovedBody309_65

def RemovedBody309_67 : StackLang.HolProg 64 :=
.seq RemovedBody309_13 RemovedBody309_66

def RemovedBody309_68 : StackLang.HolProg 64 :=
.seq RemovedBody309_10 RemovedBody309_67

def RemovedBody309_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody309_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody309_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody309_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody309_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody309_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody309_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody309_76 : StackLang.HolProg 64 :=
.seq RemovedBody309_74 RemovedBody309_75

def RemovedBody309_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody309_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody309_76 RemovedBody309_77

def RemovedBody309_79 : StackLang.HolProg 64 :=
.seq RemovedBody309_73 RemovedBody309_78

def RemovedBody309_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 308

def RemovedBody309_81 : StackLang.HolProg 64 :=
.seq RemovedBody309_79 RemovedBody309_80

def RemovedBody309_82 : StackLang.HolProg 64 :=
.seq RemovedBody309_72 RemovedBody309_81

def RemovedBody309_83 : StackLang.HolProg 64 :=
.seq RemovedBody309_71 RemovedBody309_82

def RemovedBody309_84 : StackLang.HolProg 64 :=
.seq RemovedBody309_70 RemovedBody309_83

def RemovedBody309_85 : StackLang.HolProg 64 :=
.seq RemovedBody309_69 RemovedBody309_84

def RemovedBody309_86 : StackLang.HolProg 64 :=
.seq RemovedBody309_68 RemovedBody309_85

def RemovedBody309_87 : StackLang.HolProg 64 :=
.seq RemovedBody309_9 RemovedBody309_86

def RemovedBody309_88 : StackLang.HolProg 64 :=
.seq RemovedBody309_6 RemovedBody309_87

def Removed309 : Nat × StackLang.HolProg 64 := (309, RemovedBody309_88)
theorem Removed309_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc309 = Removed309 := by
  kernel_rfl
#print axioms Removed309_eq
end InitECandidate.Proofs.BackendStages
