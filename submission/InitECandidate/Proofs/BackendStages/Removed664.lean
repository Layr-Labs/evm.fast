import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc664
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody664_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody664_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody664_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody664_3 : StackLang.HolProg 64 :=
.seq RemovedBody664_1 RemovedBody664_2

def RemovedBody664_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody664_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody664_3 RemovedBody664_4

def RemovedBody664_6 : StackLang.HolProg 64 :=
.seq RemovedBody664_0 RemovedBody664_5

def RemovedBody664_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody664_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 3486998266802970665#64)

def RemovedBody664_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 13281191951274694749#64)

def RemovedBody664_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 10917124144477883021#64)

def RemovedBody664_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 4332616871279656263#64)

def RemovedBody664_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody664_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody664_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2752#64)

def RemovedBody664_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody664_16 : StackLang.HolProg 64 :=
.seq RemovedBody664_14 RemovedBody664_15

def RemovedBody664_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody664_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody664_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody664_20 : StackLang.HolProg 64 :=
.seq RemovedBody664_18 RemovedBody664_19

def RemovedBody664_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody664_22 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody664_20 RemovedBody664_21

def RemovedBody664_23 : StackLang.HolProg 64 :=
.seq RemovedBody664_17 RemovedBody664_22

def RemovedBody664_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody664_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody664_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 664 3

def RemovedBody664_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody664_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody664_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody664_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody664_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody664_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody664_33 : StackLang.HolProg 64 :=
.seq RemovedBody664_31 RemovedBody664_32

def RemovedBody664_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody664_35 : StackLang.HolProg 64 :=
.seq RemovedBody664_33 RemovedBody664_34

def RemovedBody664_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody664_37 : StackLang.HolProg 64 :=
.seq RemovedBody664_35 RemovedBody664_36

def RemovedBody664_38 : StackLang.HolProg 64 :=
.seq RemovedBody664_30 RemovedBody664_37

def RemovedBody664_39 : StackLang.HolProg 64 :=
.seq RemovedBody664_29 RemovedBody664_38

def RemovedBody664_40 : StackLang.HolProg 64 :=
.seq RemovedBody664_28 RemovedBody664_39

def RemovedBody664_41 : StackLang.HolProg 64 :=
.seq RemovedBody664_27 RemovedBody664_40

def RemovedBody664_42 : StackLang.HolProg 64 :=
.seq RemovedBody664_26 RemovedBody664_41

def RemovedBody664_43 : StackLang.HolProg 64 :=
.seq RemovedBody664_25 RemovedBody664_42

def RemovedBody664_44 : StackLang.HolProg 64 :=
.seq RemovedBody664_24 RemovedBody664_43

def RemovedBody664_45 : StackLang.HolProg 64 :=
.seq RemovedBody664_23 RemovedBody664_44

def RemovedBody664_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody664_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody664_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody664_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody664_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody664_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody664_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody664_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody664_54 : StackLang.HolProg 64 :=
.seq RemovedBody664_52 RemovedBody664_53

def RemovedBody664_55 : StackLang.HolProg 64 :=
.seq RemovedBody664_51 RemovedBody664_54

def RemovedBody664_56 : StackLang.HolProg 64 :=
.seq RemovedBody664_50 RemovedBody664_55

def RemovedBody664_57 : StackLang.HolProg 64 :=
.seq RemovedBody664_49 RemovedBody664_56

def RemovedBody664_58 : StackLang.HolProg 64 :=
.seq RemovedBody664_48 RemovedBody664_57

def RemovedBody664_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody664_60 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody664_61 : StackLang.HolProg 64 :=
.seq RemovedBody664_59 RemovedBody664_60

def RemovedBody664_62 : StackLang.HolProg 64 :=
.call (some (RemovedBody664_58, 0, 664, 2)) (Sum.inl 210) (some (RemovedBody664_61, 664, 3))

def RemovedBody664_63 : StackLang.HolProg 64 :=
.seq RemovedBody664_47 RemovedBody664_62

def RemovedBody664_64 : StackLang.HolProg 64 :=
.seq RemovedBody664_46 RemovedBody664_63

def RemovedBody664_65 : StackLang.HolProg 64 :=
.seq RemovedBody664_45 RemovedBody664_64

def RemovedBody664_66 : StackLang.HolProg 64 :=
.seq RemovedBody664_16 RemovedBody664_65

def RemovedBody664_67 : StackLang.HolProg 64 :=
.seq RemovedBody664_13 RemovedBody664_66

def RemovedBody664_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody664_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody664_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 2377177743836652868#64)

def RemovedBody664_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 17257524443456604923#64)

def RemovedBody664_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 7129779742913871286#64)

def RemovedBody664_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 12812017116984455391#64)

def RemovedBody664_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody664_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody664_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody664_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody664_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody664_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody664_80 : StackLang.HolProg 64 :=
.seq RemovedBody664_78 RemovedBody664_79

def RemovedBody664_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody664_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody664_80 RemovedBody664_81

def RemovedBody664_83 : StackLang.HolProg 64 :=
.seq RemovedBody664_77 RemovedBody664_82

def RemovedBody664_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 661

def RemovedBody664_85 : StackLang.HolProg 64 :=
.seq RemovedBody664_83 RemovedBody664_84

def RemovedBody664_86 : StackLang.HolProg 64 :=
.seq RemovedBody664_76 RemovedBody664_85

def RemovedBody664_87 : StackLang.HolProg 64 :=
.seq RemovedBody664_75 RemovedBody664_86

def RemovedBody664_88 : StackLang.HolProg 64 :=
.seq RemovedBody664_74 RemovedBody664_87

def RemovedBody664_89 : StackLang.HolProg 64 :=
.seq RemovedBody664_73 RemovedBody664_88

def RemovedBody664_90 : StackLang.HolProg 64 :=
.seq RemovedBody664_72 RemovedBody664_89

def RemovedBody664_91 : StackLang.HolProg 64 :=
.seq RemovedBody664_71 RemovedBody664_90

def RemovedBody664_92 : StackLang.HolProg 64 :=
.seq RemovedBody664_70 RemovedBody664_91

def RemovedBody664_93 : StackLang.HolProg 64 :=
.seq RemovedBody664_69 RemovedBody664_92

def RemovedBody664_94 : StackLang.HolProg 64 :=
.seq RemovedBody664_68 RemovedBody664_93

def RemovedBody664_95 : StackLang.HolProg 64 :=
.seq RemovedBody664_67 RemovedBody664_94

def RemovedBody664_96 : StackLang.HolProg 64 :=
.seq RemovedBody664_12 RemovedBody664_95

def RemovedBody664_97 : StackLang.HolProg 64 :=
.seq RemovedBody664_11 RemovedBody664_96

def RemovedBody664_98 : StackLang.HolProg 64 :=
.seq RemovedBody664_10 RemovedBody664_97

def RemovedBody664_99 : StackLang.HolProg 64 :=
.seq RemovedBody664_9 RemovedBody664_98

def RemovedBody664_100 : StackLang.HolProg 64 :=
.seq RemovedBody664_8 RemovedBody664_99

def RemovedBody664_101 : StackLang.HolProg 64 :=
.seq RemovedBody664_7 RemovedBody664_100

def RemovedBody664_102 : StackLang.HolProg 64 :=
.seq RemovedBody664_6 RemovedBody664_101

def Removed664 : Nat × StackLang.HolProg 64 := (664, RemovedBody664_102)
theorem Removed664_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc664 = Removed664 := by
  kernel_rfl
#print axioms Removed664_eq
end InitECandidate.Proofs.BackendStages
