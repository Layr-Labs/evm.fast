import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed468
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody468_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody468_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody468_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 23#64)

def NamedBody468_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody468_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody468_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody468_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody468_7 : StackLang.HolProg 64 :=
.seq NamedBody468_5 NamedBody468_6

def NamedBody468_8 : StackLang.HolProg 64 :=
.seq NamedBody468_4 NamedBody468_7

def NamedBody468_9 : StackLang.HolProg 64 :=
.seq NamedBody468_3 NamedBody468_8

def NamedBody468_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody468_11 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody468_9 NamedBody468_10

def NamedBody468_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody468_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody468_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody468_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody468_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody468_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 239#64)

def NamedBody468_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody468_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody468_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody468_21 : StackLang.HolProg 64 :=
.seq NamedBody468_19 NamedBody468_20

def NamedBody468_22 : StackLang.HolProg 64 :=
.seq NamedBody468_18 NamedBody468_21

def NamedBody468_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody468_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody468_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody468_26 : StackLang.HolProg 64 :=
.seq NamedBody468_24 NamedBody468_25

def NamedBody468_27 : StackLang.HolProg 64 :=
.seq NamedBody468_23 NamedBody468_26

def NamedBody468_28 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody468_22 NamedBody468_27

def NamedBody468_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody468_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody468_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody468_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody468_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody468_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1#64)

def NamedBody468_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody468_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1#64)

def NamedBody468_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody468_38 : StackLang.HolProg 64 :=
.seq NamedBody468_36 NamedBody468_37

def NamedBody468_39 : StackLang.HolProg 64 :=
.seq NamedBody468_35 NamedBody468_38

def NamedBody468_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody468_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody468_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody468_43 : StackLang.HolProg 64 :=
.seq NamedBody468_41 NamedBody468_42

def NamedBody468_44 : StackLang.HolProg 64 :=
.seq NamedBody468_40 NamedBody468_43

def NamedBody468_45 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody468_39 NamedBody468_44

def NamedBody468_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody468_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody468_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def NamedBody468_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody468_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody468_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody468_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody468_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1#64)

def NamedBody468_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody468_55 : StackLang.HolProg 64 :=
.seq NamedBody468_53 NamedBody468_54

def NamedBody468_56 : StackLang.HolProg 64 :=
.seq NamedBody468_52 NamedBody468_55

def NamedBody468_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody468_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody468_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody468_60 : StackLang.HolProg 64 :=
.seq NamedBody468_58 NamedBody468_59

def NamedBody468_61 : StackLang.HolProg 64 :=
.seq NamedBody468_57 NamedBody468_60

def NamedBody468_62 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody468_56 NamedBody468_61

def NamedBody468_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody468_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody468_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody468_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody468_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody468_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody468_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody468_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody468_71 : StackLang.HolProg 64 :=
.seq NamedBody468_69 NamedBody468_70

def NamedBody468_72 : StackLang.HolProg 64 :=
.seq NamedBody468_68 NamedBody468_71

def NamedBody468_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody468_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) NamedBody468_72 NamedBody468_73

def NamedBody468_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody468_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody468_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody468_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody468_79 : StackLang.HolProg 64 :=
.seq NamedBody468_77 NamedBody468_78

def NamedBody468_80 : StackLang.HolProg 64 :=
.seq NamedBody468_76 NamedBody468_79

def NamedBody468_81 : StackLang.HolProg 64 :=
.seq NamedBody468_75 NamedBody468_80

def NamedBody468_82 : StackLang.HolProg 64 :=
.seq NamedBody468_74 NamedBody468_81

def NamedBody468_83 : StackLang.HolProg 64 :=
.seq NamedBody468_67 NamedBody468_82

def NamedBody468_84 : StackLang.HolProg 64 :=
.seq NamedBody468_66 NamedBody468_83

def NamedBody468_85 : StackLang.HolProg 64 :=
.seq NamedBody468_65 NamedBody468_84

def NamedBody468_86 : StackLang.HolProg 64 :=
.seq NamedBody468_64 NamedBody468_85

def NamedBody468_87 : StackLang.HolProg 64 :=
.seq NamedBody468_63 NamedBody468_86

def NamedBody468_88 : StackLang.HolProg 64 :=
.seq NamedBody468_62 NamedBody468_87

def NamedBody468_89 : StackLang.HolProg 64 :=
.seq NamedBody468_51 NamedBody468_88

def NamedBody468_90 : StackLang.HolProg 64 :=
.seq NamedBody468_50 NamedBody468_89

def NamedBody468_91 : StackLang.HolProg 64 :=
.seq NamedBody468_49 NamedBody468_90

def NamedBody468_92 : StackLang.HolProg 64 :=
.seq NamedBody468_48 NamedBody468_91

def NamedBody468_93 : StackLang.HolProg 64 :=
.seq NamedBody468_47 NamedBody468_92

def NamedBody468_94 : StackLang.HolProg 64 :=
.seq NamedBody468_46 NamedBody468_93

def NamedBody468_95 : StackLang.HolProg 64 :=
.seq NamedBody468_45 NamedBody468_94

def NamedBody468_96 : StackLang.HolProg 64 :=
.seq NamedBody468_34 NamedBody468_95

def NamedBody468_97 : StackLang.HolProg 64 :=
.seq NamedBody468_33 NamedBody468_96

def NamedBody468_98 : StackLang.HolProg 64 :=
.seq NamedBody468_32 NamedBody468_97

def NamedBody468_99 : StackLang.HolProg 64 :=
.seq NamedBody468_31 NamedBody468_98

def NamedBody468_100 : StackLang.HolProg 64 :=
.seq NamedBody468_30 NamedBody468_99

def NamedBody468_101 : StackLang.HolProg 64 :=
.seq NamedBody468_29 NamedBody468_100

def NamedBody468_102 : StackLang.HolProg 64 :=
.seq NamedBody468_28 NamedBody468_101

def NamedBody468_103 : StackLang.HolProg 64 :=
.seq NamedBody468_17 NamedBody468_102

def NamedBody468_104 : StackLang.HolProg 64 :=
.seq NamedBody468_16 NamedBody468_103

def NamedBody468_105 : StackLang.HolProg 64 :=
.seq NamedBody468_15 NamedBody468_104

def NamedBody468_106 : StackLang.HolProg 64 :=
.seq NamedBody468_14 NamedBody468_105

def NamedBody468_107 : StackLang.HolProg 64 :=
.seq NamedBody468_13 NamedBody468_106

def NamedBody468_108 : StackLang.HolProg 64 :=
.seq NamedBody468_12 NamedBody468_107

def NamedBody468_109 : StackLang.HolProg 64 :=
.seq NamedBody468_11 NamedBody468_108

def NamedBody468_110 : StackLang.HolProg 64 :=
.seq NamedBody468_2 NamedBody468_109

def NamedBody468_111 : StackLang.HolProg 64 :=
.seq NamedBody468_1 NamedBody468_110

def NamedBody468_112 : StackLang.HolProg 64 :=
.seq NamedBody468_0 NamedBody468_111

def Named468 : Nat × StackLang.HolProg 64 := (468, NamedBody468_112)
theorem Named468_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed468 = Named468 := by
  kernel_rfl
#print axioms Named468_eq
end InitECandidate.Proofs.BackendStages
