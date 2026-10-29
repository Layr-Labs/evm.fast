import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed664
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody664_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody664_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody664_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody664_3 : StackLang.HolProg 64 :=
.seq NamedBody664_1 NamedBody664_2

def NamedBody664_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody664_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody664_3 NamedBody664_4

def NamedBody664_6 : StackLang.HolProg 64 :=
.seq NamedBody664_0 NamedBody664_5

def NamedBody664_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody664_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 3486998266802970665#64)

def NamedBody664_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 13281191951274694749#64)

def NamedBody664_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 10917124144477883021#64)

def NamedBody664_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 4332616871279656263#64)

def NamedBody664_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody664_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody664_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2752#64)

def NamedBody664_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody664_16 : StackLang.HolProg 64 :=
.seq NamedBody664_14 NamedBody664_15

def NamedBody664_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody664_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody664_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody664_20 : StackLang.HolProg 64 :=
.seq NamedBody664_18 NamedBody664_19

def NamedBody664_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody664_22 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody664_20 NamedBody664_21

def NamedBody664_23 : StackLang.HolProg 64 :=
.seq NamedBody664_17 NamedBody664_22

def NamedBody664_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody664_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody664_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 664 3

def NamedBody664_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody664_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody664_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody664_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody664_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody664_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody664_33 : StackLang.HolProg 64 :=
.seq NamedBody664_31 NamedBody664_32

def NamedBody664_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody664_35 : StackLang.HolProg 64 :=
.seq NamedBody664_33 NamedBody664_34

def NamedBody664_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody664_37 : StackLang.HolProg 64 :=
.seq NamedBody664_35 NamedBody664_36

def NamedBody664_38 : StackLang.HolProg 64 :=
.seq NamedBody664_30 NamedBody664_37

def NamedBody664_39 : StackLang.HolProg 64 :=
.seq NamedBody664_29 NamedBody664_38

def NamedBody664_40 : StackLang.HolProg 64 :=
.seq NamedBody664_28 NamedBody664_39

def NamedBody664_41 : StackLang.HolProg 64 :=
.seq NamedBody664_27 NamedBody664_40

def NamedBody664_42 : StackLang.HolProg 64 :=
.seq NamedBody664_26 NamedBody664_41

def NamedBody664_43 : StackLang.HolProg 64 :=
.seq NamedBody664_25 NamedBody664_42

def NamedBody664_44 : StackLang.HolProg 64 :=
.seq NamedBody664_24 NamedBody664_43

def NamedBody664_45 : StackLang.HolProg 64 :=
.seq NamedBody664_23 NamedBody664_44

def NamedBody664_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody664_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody664_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody664_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody664_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody664_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody664_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody664_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody664_54 : StackLang.HolProg 64 :=
.seq NamedBody664_52 NamedBody664_53

def NamedBody664_55 : StackLang.HolProg 64 :=
.seq NamedBody664_51 NamedBody664_54

def NamedBody664_56 : StackLang.HolProg 64 :=
.seq NamedBody664_50 NamedBody664_55

def NamedBody664_57 : StackLang.HolProg 64 :=
.seq NamedBody664_49 NamedBody664_56

def NamedBody664_58 : StackLang.HolProg 64 :=
.seq NamedBody664_48 NamedBody664_57

def NamedBody664_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody664_60 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody664_61 : StackLang.HolProg 64 :=
.seq NamedBody664_59 NamedBody664_60

def NamedBody664_62 : StackLang.HolProg 64 :=
.call (some (NamedBody664_58, 1, 664, 2)) (Sum.inl 210) (some (NamedBody664_61, 664, 3))

def NamedBody664_63 : StackLang.HolProg 64 :=
.seq NamedBody664_47 NamedBody664_62

def NamedBody664_64 : StackLang.HolProg 64 :=
.seq NamedBody664_46 NamedBody664_63

def NamedBody664_65 : StackLang.HolProg 64 :=
.seq NamedBody664_45 NamedBody664_64

def NamedBody664_66 : StackLang.HolProg 64 :=
.seq NamedBody664_16 NamedBody664_65

def NamedBody664_67 : StackLang.HolProg 64 :=
.seq NamedBody664_13 NamedBody664_66

def NamedBody664_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody664_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody664_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 2377177743836652868#64)

def NamedBody664_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 17257524443456604923#64)

def NamedBody664_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 7129779742913871286#64)

def NamedBody664_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 12812017116984455391#64)

def NamedBody664_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody664_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody664_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody664_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody664_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody664_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody664_80 : StackLang.HolProg 64 :=
.seq NamedBody664_78 NamedBody664_79

def NamedBody664_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody664_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody664_80 NamedBody664_81

def NamedBody664_83 : StackLang.HolProg 64 :=
.seq NamedBody664_77 NamedBody664_82

def NamedBody664_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 661

def NamedBody664_85 : StackLang.HolProg 64 :=
.seq NamedBody664_83 NamedBody664_84

def NamedBody664_86 : StackLang.HolProg 64 :=
.seq NamedBody664_76 NamedBody664_85

def NamedBody664_87 : StackLang.HolProg 64 :=
.seq NamedBody664_75 NamedBody664_86

def NamedBody664_88 : StackLang.HolProg 64 :=
.seq NamedBody664_74 NamedBody664_87

def NamedBody664_89 : StackLang.HolProg 64 :=
.seq NamedBody664_73 NamedBody664_88

def NamedBody664_90 : StackLang.HolProg 64 :=
.seq NamedBody664_72 NamedBody664_89

def NamedBody664_91 : StackLang.HolProg 64 :=
.seq NamedBody664_71 NamedBody664_90

def NamedBody664_92 : StackLang.HolProg 64 :=
.seq NamedBody664_70 NamedBody664_91

def NamedBody664_93 : StackLang.HolProg 64 :=
.seq NamedBody664_69 NamedBody664_92

def NamedBody664_94 : StackLang.HolProg 64 :=
.seq NamedBody664_68 NamedBody664_93

def NamedBody664_95 : StackLang.HolProg 64 :=
.seq NamedBody664_67 NamedBody664_94

def NamedBody664_96 : StackLang.HolProg 64 :=
.seq NamedBody664_12 NamedBody664_95

def NamedBody664_97 : StackLang.HolProg 64 :=
.seq NamedBody664_11 NamedBody664_96

def NamedBody664_98 : StackLang.HolProg 64 :=
.seq NamedBody664_10 NamedBody664_97

def NamedBody664_99 : StackLang.HolProg 64 :=
.seq NamedBody664_9 NamedBody664_98

def NamedBody664_100 : StackLang.HolProg 64 :=
.seq NamedBody664_8 NamedBody664_99

def NamedBody664_101 : StackLang.HolProg 64 :=
.seq NamedBody664_7 NamedBody664_100

def NamedBody664_102 : StackLang.HolProg 64 :=
.seq NamedBody664_6 NamedBody664_101

def Named664 : Nat × StackLang.HolProg 64 := (664, NamedBody664_102)
theorem Named664_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed664 = Named664 := by
  kernel_rfl
#print axioms Named664_eq
end InitECandidate.Proofs.BackendStages
