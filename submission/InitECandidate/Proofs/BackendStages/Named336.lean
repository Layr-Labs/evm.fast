import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed336
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody336_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody336_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody336_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody336_3 : StackLang.HolProg 64 :=
.seq NamedBody336_1 NamedBody336_2

def NamedBody336_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody336_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody336_3 NamedBody336_4

def NamedBody336_6 : StackLang.HolProg 64 :=
.seq NamedBody336_0 NamedBody336_5

def NamedBody336_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody336_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody336_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 970#64)

def NamedBody336_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody336_11 : StackLang.HolProg 64 :=
.seq NamedBody336_9 NamedBody336_10

def NamedBody336_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody336_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody336_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody336_15 : StackLang.HolProg 64 :=
.seq NamedBody336_13 NamedBody336_14

def NamedBody336_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody336_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody336_15 NamedBody336_16

def NamedBody336_18 : StackLang.HolProg 64 :=
.seq NamedBody336_12 NamedBody336_17

def NamedBody336_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody336_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody336_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 336 3

def NamedBody336_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody336_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody336_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody336_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody336_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody336_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody336_28 : StackLang.HolProg 64 :=
.seq NamedBody336_26 NamedBody336_27

def NamedBody336_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody336_30 : StackLang.HolProg 64 :=
.seq NamedBody336_28 NamedBody336_29

def NamedBody336_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody336_32 : StackLang.HolProg 64 :=
.seq NamedBody336_30 NamedBody336_31

def NamedBody336_33 : StackLang.HolProg 64 :=
.seq NamedBody336_25 NamedBody336_32

def NamedBody336_34 : StackLang.HolProg 64 :=
.seq NamedBody336_24 NamedBody336_33

def NamedBody336_35 : StackLang.HolProg 64 :=
.seq NamedBody336_23 NamedBody336_34

def NamedBody336_36 : StackLang.HolProg 64 :=
.seq NamedBody336_22 NamedBody336_35

def NamedBody336_37 : StackLang.HolProg 64 :=
.seq NamedBody336_21 NamedBody336_36

def NamedBody336_38 : StackLang.HolProg 64 :=
.seq NamedBody336_20 NamedBody336_37

def NamedBody336_39 : StackLang.HolProg 64 :=
.seq NamedBody336_19 NamedBody336_38

def NamedBody336_40 : StackLang.HolProg 64 :=
.seq NamedBody336_18 NamedBody336_39

def NamedBody336_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody336_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody336_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody336_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody336_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody336_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody336_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody336_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody336_49 : StackLang.HolProg 64 :=
.seq NamedBody336_47 NamedBody336_48

def NamedBody336_50 : StackLang.HolProg 64 :=
.seq NamedBody336_46 NamedBody336_49

def NamedBody336_51 : StackLang.HolProg 64 :=
.seq NamedBody336_45 NamedBody336_50

def NamedBody336_52 : StackLang.HolProg 64 :=
.seq NamedBody336_44 NamedBody336_51

def NamedBody336_53 : StackLang.HolProg 64 :=
.seq NamedBody336_43 NamedBody336_52

def NamedBody336_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody336_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody336_56 : StackLang.HolProg 64 :=
.seq NamedBody336_54 NamedBody336_55

def NamedBody336_57 : StackLang.HolProg 64 :=
.call (some (NamedBody336_53, 1, 336, 2)) (Sum.inl 335) (some (NamedBody336_56, 336, 3))

def NamedBody336_58 : StackLang.HolProg 64 :=
.seq NamedBody336_42 NamedBody336_57

def NamedBody336_59 : StackLang.HolProg 64 :=
.seq NamedBody336_41 NamedBody336_58

def NamedBody336_60 : StackLang.HolProg 64 :=
.seq NamedBody336_40 NamedBody336_59

def NamedBody336_61 : StackLang.HolProg 64 :=
.seq NamedBody336_11 NamedBody336_60

def NamedBody336_62 : StackLang.HolProg 64 :=
.seq NamedBody336_8 NamedBody336_61

def NamedBody336_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody336_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 32#64)

def NamedBody336_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody336_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody336_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 13#64)

def NamedBody336_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody336_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody336_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 6#64)

def NamedBody336_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody336_72 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody336_73 : StackLang.HolProg 64 :=
.seq NamedBody336_71 NamedBody336_72

def NamedBody336_74 : StackLang.HolProg 64 :=
.seq NamedBody336_70 NamedBody336_73

def NamedBody336_75 : StackLang.HolProg 64 :=
.seq NamedBody336_69 NamedBody336_74

def NamedBody336_76 : StackLang.HolProg 64 :=
.seq NamedBody336_68 NamedBody336_75

def NamedBody336_77 : StackLang.HolProg 64 :=
.seq NamedBody336_67 NamedBody336_76

def NamedBody336_78 : StackLang.HolProg 64 :=
.seq NamedBody336_66 NamedBody336_77

def NamedBody336_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody336_80 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody336_78 NamedBody336_79

def NamedBody336_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody336_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody336_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody336_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody336_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody336_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody336_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody336_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody336_89 : StackLang.HolProg 64 :=
.seq NamedBody336_87 NamedBody336_88

def NamedBody336_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody336_91 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody336_89 NamedBody336_90

def NamedBody336_92 : StackLang.HolProg 64 :=
.seq NamedBody336_86 NamedBody336_91

def NamedBody336_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 146

def NamedBody336_94 : StackLang.HolProg 64 :=
.seq NamedBody336_92 NamedBody336_93

def NamedBody336_95 : StackLang.HolProg 64 :=
.seq NamedBody336_85 NamedBody336_94

def NamedBody336_96 : StackLang.HolProg 64 :=
.seq NamedBody336_84 NamedBody336_95

def NamedBody336_97 : StackLang.HolProg 64 :=
.seq NamedBody336_83 NamedBody336_96

def NamedBody336_98 : StackLang.HolProg 64 :=
.seq NamedBody336_82 NamedBody336_97

def NamedBody336_99 : StackLang.HolProg 64 :=
.seq NamedBody336_81 NamedBody336_98

def NamedBody336_100 : StackLang.HolProg 64 :=
.seq NamedBody336_80 NamedBody336_99

def NamedBody336_101 : StackLang.HolProg 64 :=
.seq NamedBody336_65 NamedBody336_100

def NamedBody336_102 : StackLang.HolProg 64 :=
.seq NamedBody336_64 NamedBody336_101

def NamedBody336_103 : StackLang.HolProg 64 :=
.seq NamedBody336_63 NamedBody336_102

def NamedBody336_104 : StackLang.HolProg 64 :=
.seq NamedBody336_62 NamedBody336_103

def NamedBody336_105 : StackLang.HolProg 64 :=
.seq NamedBody336_7 NamedBody336_104

def NamedBody336_106 : StackLang.HolProg 64 :=
.seq NamedBody336_6 NamedBody336_105

def Named336 : Nat × StackLang.HolProg 64 := (336, NamedBody336_106)
theorem Named336_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed336 = Named336 := by
  kernel_rfl
#print axioms Named336_eq
end InitECandidate.Proofs.BackendStages
