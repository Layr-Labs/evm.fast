import InitE.SourceDeclarations
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages.Parallel461
def word461_1_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(79, 2)]

def word461_1_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 52 79 (Flapjack.WordRegImm.imm 9#64)))

def word461_1_2 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_0 word461_1_1

def word461_1_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(70, 52)]

def word461_1_4 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_2 word461_1_3

def word461_1_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 4)]

def word461_1_6 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_4 word461_1_5

def word461_1_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 48 20#64)

def word461_1_8 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_6 word461_1_7

def word461_1_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word461_1_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 70

def word461_1_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 2)) (some 176) ([70, 14, 48]) (some (70, word461_1_10, 461, 3))

def word461_1_12 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_7 word461_1_11

def word461_1_13 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_8 word461_1_12

def word461_1_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word461_1_15 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_13 word461_1_14

def word461_1_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(79, 34)]

def word461_1_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(80, 52)]

def word461_1_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 70 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_19 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_17 word461_1_18

def word461_1_20 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_16 word461_1_19

def word461_1_21 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_15 word461_1_20

def word461_1_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(52, 70)]

def word461_1_23 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_21 word461_1_22

def word461_1_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def word461_1_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([70]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 4)) (some 69) ([]) (some (14, word461_1_24, 461, 5))

def word461_1_26 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_23 word461_1_25

def word461_1_27 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_26 word461_1_14

def word461_1_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(79, 6)]

def word461_1_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 79 0#64))

def word461_1_30 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_28 word461_1_29

def word461_1_31 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_27 word461_1_30

def word461_1_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(66, 14)]

def word461_1_33 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_31 word461_1_32

def word461_1_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 8)]

def word461_1_35 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_33 word461_1_34

def word461_1_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 66

def word461_1_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([48, 30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 6)) (some 460) ([66, 22]) (some (66, word461_1_36, 461, 7))

def word461_1_38 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_35 word461_1_37

def word461_1_39 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_38 word461_1_14

def word461_1_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(79, 52)]

def word461_1_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 66 79 (Flapjack.WordRegImm.imm 9#64)))

def word461_1_42 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_40 word461_1_41

def word461_1_43 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_39 word461_1_42

def word461_1_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 0#64)

def word461_1_45 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_43 word461_1_44

def word461_1_46 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_45 word461_1_14

def word461_1_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 22)]

def word461_1_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(76, 30)]

def word461_1_49 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_47 word461_1_48

def word461_1_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 1#64)

def word461_1_51 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_50 word461_1_14

def word461_1_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 1#64)

def word461_1_53 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_51 word461_1_52

def word461_1_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(79, 22)]

def word461_1_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 79 79 (Flapjack.WordRegImm.imm 5#64)))

def word461_1_56 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_54 word461_1_55

def word461_1_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(80, 48)]

def word461_1_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 58 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_59 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_57 word461_1_58

def word461_1_60 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_56 word461_1_59

def word461_1_61 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_53 word461_1_60

def word461_1_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 14)]

def word461_1_63 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_61 word461_1_62

def word461_1_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 58)]

def word461_1_65 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_63 word461_1_64

def word461_1_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def word461_1_67 : WordLangProgHOL (BitVec 64) :=
.call (some (([40, 76]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 8)) (some 186) ([12, 46]) (some (12, word461_1_66, 461, 9))

def word461_1_68 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_65 word461_1_67

def word461_1_69 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_68 word461_1_14

def word461_1_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 76)]

def word461_1_71 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_69 word461_1_70

def word461_1_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(79, 12)]

def word461_1_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 46 (Flapjack.WordLangAddr.addr 79 8#64))

def word461_1_74 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_72 word461_1_73

def word461_1_75 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_71 word461_1_74

def word461_1_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 28 (Flapjack.WordLangAddr.addr 79 0#64))

def word461_1_77 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_72 word461_1_76

def word461_1_78 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_75 word461_1_77

def word461_1_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 28)]

def word461_1_80 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_78 word461_1_79

def word461_1_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(56, 46)]

def word461_1_82 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_80 word461_1_81

def word461_1_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 38 40#64)

def word461_1_84 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_82 word461_1_83

def word461_1_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 74 0#64)

def word461_1_86 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_84 word461_1_85

def word461_1_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 8)]

def word461_1_88 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_86 word461_1_87

def word461_1_89 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_88 word461_1_85

def word461_1_90 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_89 word461_1_83

def word461_1_91 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_90 word461_1_85

def word461_1_92 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_91 word461_1_83

def word461_1_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def word461_1_94 : WordLangProgHOL (BitVec 64) :=
.call (some (([64]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 10)) (some 459) ([20, 56, 38, 74, 16]) (some (20, word461_1_93, 461, 11))

def word461_1_95 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_92 word461_1_94

def word461_1_96 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_95 word461_1_14

def word461_1_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(79, 66)]

def word461_1_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 64 79 (Flapjack.WordRegImm.imm 9#64)))

def word461_1_99 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_97 word461_1_98

def word461_1_100 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_96 word461_1_99

def word461_1_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 58)]

def word461_1_102 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_100 word461_1_101

def word461_1_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 50 32#64)

def word461_1_104 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_102 word461_1_103

def word461_1_105 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_104 word461_1_103

def word461_1_106 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_105 word461_1_103

def word461_1_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def word461_1_108 : WordLangProgHOL (BitVec 64) :=
.call (some (([20, 56, 38, 74]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 12)) (some 146) ([16, 50]) (some (16, word461_1_107, 461, 13))

def word461_1_109 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_106 word461_1_108

def word461_1_110 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_109 word461_1_14

def word461_1_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 64)]

def word461_1_112 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_110 word461_1_111

def word461_1_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 20)]

def word461_1_114 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_112 word461_1_113

def word461_1_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(32, 56)]

def word461_1_116 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_114 word461_1_115

def word461_1_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(68, 38)]

def word461_1_118 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_116 word461_1_117

def word461_1_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 74)]

def word461_1_120 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_118 word461_1_119

def word461_1_121 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 14)) (some 277) ([16, 50, 32, 68, 24]) (some (16, word461_1_107, 461, 15))

def word461_1_122 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_120 word461_1_121

def word461_1_123 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_122 word461_1_14

def word461_1_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(80, 64)]

def word461_1_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_126 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_124 word461_1_125

def word461_1_127 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_16 word461_1_126

def word461_1_128 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_123 word461_1_127

def word461_1_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(64, 16)]

def word461_1_130 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_128 word461_1_129

def word461_1_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(79, 64)]

def word461_1_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16 79 (Flapjack.WordRegImm.imm 9#64)))

def word461_1_133 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_131 word461_1_132

def word461_1_134 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_130 word461_1_133

def word461_1_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 50 0#64)

def word461_1_136 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_134 word461_1_135

def word461_1_137 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_136 word461_1_14

def word461_1_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(68, 50)]

def word461_1_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 46)]

def word461_1_140 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_138 word461_1_139

def word461_1_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 68 1#64)

def word461_1_142 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_141 word461_1_14

def word461_1_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 60 1#64)

def word461_1_144 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_142 word461_1_143

def word461_1_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(32, 50)]

def word461_1_146 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_144 word461_1_145

def word461_1_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 68 40#64)

def word461_1_148 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_146 word461_1_147

def word461_1_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 24 24 32 68))

def word461_1_150 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_148 word461_1_149

def word461_1_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(79, 24)]

def word461_1_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(80, 28)]

def word461_1_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 60 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_154 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_152 word461_1_153

def word461_1_155 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_151 word461_1_154

def word461_1_156 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_150 word461_1_155

def word461_1_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(79, 16)]

def word461_1_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 42 79 (Flapjack.WordRegImm.imm 9#64)))

def word461_1_159 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_157 word461_1_158

def word461_1_160 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_156 word461_1_159

def word461_1_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(78, 42)]

def word461_1_162 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_160 word461_1_161

def word461_1_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(79, 60)]

def word461_1_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 79 0#64))

def word461_1_165 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_163 word461_1_164

def word461_1_166 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_162 word461_1_165

def word461_1_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 78

def word461_1_168 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 16)) (some 177) ([78, 10]) (some (78, word461_1_167, 461, 17))

def word461_1_169 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_166 word461_1_168

def word461_1_170 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_169 word461_1_14

def word461_1_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(80, 42)]

def word461_1_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 78 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_173 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_171 word461_1_172

def word461_1_174 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_16 word461_1_173

def word461_1_175 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_170 word461_1_174

def word461_1_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 78)]

def word461_1_177 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_175 word461_1_176

def word461_1_178 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_177 word461_1_161

def word461_1_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 79 8#64))

def word461_1_180 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_163 word461_1_179

def word461_1_181 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_178 word461_1_180

def word461_1_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 44 (Flapjack.WordLangAddr.addr 79 16#64))

def word461_1_183 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_163 word461_1_182

def word461_1_184 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_181 word461_1_183

def word461_1_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 26 (Flapjack.WordLangAddr.addr 79 24#64))

def word461_1_186 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_163 word461_1_185

def word461_1_187 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_184 word461_1_186

def word461_1_188 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 62 (Flapjack.WordLangAddr.addr 79 32#64))

def word461_1_189 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_163 word461_1_188

def word461_1_190 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_187 word461_1_189

def word461_1_191 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 18)) (some 277) ([78, 10, 44, 26, 62]) (some (78, word461_1_167, 461, 19))

def word461_1_192 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_190 word461_1_191

def word461_1_193 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_192 word461_1_14

def word461_1_194 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_193 word461_1_174

def word461_1_195 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_194 word461_1_176

def word461_1_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(79, 42)]

def word461_1_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(80, 16)]

def word461_1_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 80 80 (Flapjack.WordRegImm.imm 9#64)))

def word461_1_199 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_197 word461_1_198

def word461_1_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 10 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_201 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_199 word461_1_200

def word461_1_202 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_196 word461_1_201

def word461_1_203 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_195 word461_1_202

def word461_1_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def word461_1_205 : WordLangProgHOL (BitVec 64) :=
.call (some (([78]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 20)) (some 180) ([10]) (some (10, word461_1_204, 461, 21))

def word461_1_206 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_203 word461_1_205

def word461_1_207 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_206 word461_1_14

def word461_1_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(79, 78)]

def word461_1_209 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 44 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_210 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_197 word461_1_209

def word461_1_211 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_208 word461_1_210

def word461_1_212 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_207 word461_1_211

def word461_1_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 26 79 (Flapjack.WordRegImm.imm 9#64)))

def word461_1_214 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_157 word461_1_213

def word461_1_215 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_212 word461_1_214

def word461_1_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 62 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_217 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_199 word461_1_216

def word461_1_218 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_196 word461_1_217

def word461_1_219 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_215 word461_1_218

def word461_1_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def word461_1_221 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 22)) (some 77) ([44, 26, 62]) (some (44, word461_1_220, 461, 23))

def word461_1_222 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_219 word461_1_221

def word461_1_223 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_222 word461_1_14

def word461_1_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 16)]

def word461_1_225 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_223 word461_1_224

def word461_1_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 26 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_227 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_199 word461_1_226

def word461_1_228 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_196 word461_1_227

def word461_1_229 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_225 word461_1_228

def word461_1_230 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 24)) (some 178) ([44, 26]) (some (44, word461_1_220, 461, 25))

def word461_1_231 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_229 word461_1_230

def word461_1_232 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_231 word461_1_14

def word461_1_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 79 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_234 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_199 word461_1_233

def word461_1_235 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_196 word461_1_234

def word461_1_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(80, 78)]

def word461_1_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 79 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_238 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_236 word461_1_237

def word461_1_239 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_235 word461_1_238

def word461_1_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_241 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_197 word461_1_240

def word461_1_242 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_239 word461_1_241

def word461_1_243 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_232 word461_1_242

def word461_1_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 10)]

def word461_1_245 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_243 word461_1_244

def word461_1_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(79, 50)]

def word461_1_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10 79 (Flapjack.WordRegImm.imm 1#64)))

def word461_1_248 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_246 word461_1_247

def word461_1_249 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_245 word461_1_248

def word461_1_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 10)]

def word461_1_251 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_249 word461_1_250

def word461_1_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def word461_1_253 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_251 word461_1_252

def word461_1_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 68 0#64)

def word461_1_255 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_254 word461_1_14

def word461_1_256 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 60 0#64)

def word461_1_257 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_255 word461_1_256

def word461_1_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def word461_1_259 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_257 word461_1_258

def word461_1_260 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 68 (Flapjack.WordRegImm.reg 24) word461_1_253 word461_1_259

def word461_1_261 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_140 word461_1_260

def word461_1_262 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_261 word461_1_14

def word461_1_263 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln) word461_1_262 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln)

def word461_1_264 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_137 word461_1_263

def word461_1_265 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_264 word461_1_14

def word461_1_266 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_124 word461_1_198

def word461_1_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 68 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_268 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_266 word461_1_267

def word461_1_269 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_157 word461_1_268

def word461_1_270 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_265 word461_1_269

def word461_1_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 68

def word461_1_272 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 26)) (some 180) ([68]) (some (68, word461_1_271, 461, 27))

def word461_1_273 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_270 word461_1_272

def word461_1_274 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_273 word461_1_14

def word461_1_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(79, 32)]

def word461_1_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_277 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_124 word461_1_276

def word461_1_278 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_275 word461_1_277

def word461_1_279 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_274 word461_1_278

def word461_1_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 60 79 (Flapjack.WordRegImm.imm 9#64)))

def word461_1_281 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_131 word461_1_280

def word461_1_282 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_279 word461_1_281

def word461_1_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 42 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_284 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_266 word461_1_283

def word461_1_285 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_157 word461_1_284

def word461_1_286 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_282 word461_1_285

def word461_1_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def word461_1_288 : WordLangProgHOL (BitVec 64) :=
.call (some (([68]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 28)) (some 77) ([24, 60, 42]) (some (24, word461_1_287, 461, 29))

def word461_1_289 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_286 word461_1_288

def word461_1_290 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_289 word461_1_14

def word461_1_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 64)]

def word461_1_292 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_290 word461_1_291

def word461_1_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 60 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_294 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_266 word461_1_293

def word461_1_295 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_157 word461_1_294

def word461_1_296 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_292 word461_1_295

def word461_1_297 : WordLangProgHOL (BitVec 64) :=
.call (some (([68]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 30)) (some 178) ([24, 60]) (some (24, word461_1_287, 461, 31))

def word461_1_298 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_296 word461_1_297

def word461_1_299 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_298 word461_1_14

def word461_1_300 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_266 word461_1_233

def word461_1_301 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_157 word461_1_300

def word461_1_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(80, 32)]

def word461_1_303 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_302 word461_1_237

def word461_1_304 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_301 word461_1_303

def word461_1_305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 68 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_306 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_124 word461_1_305

def word461_1_307 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_304 word461_1_306

def word461_1_308 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_299 word461_1_307

def word461_1_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(64, 68)]

def word461_1_310 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_308 word461_1_309

def word461_1_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(80, 66)]

def word461_1_312 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_311 word461_1_198

def word461_1_313 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 24 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_314 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_312 word461_1_313

def word461_1_315 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_131 word461_1_314

def word461_1_316 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_310 word461_1_315

def word461_1_317 : WordLangProgHOL (BitVec 64) :=
.call (some (([68]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 32)) (some 180) ([24]) (some (24, word461_1_287, 461, 33))

def word461_1_318 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_316 word461_1_317

def word461_1_319 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_318 word461_1_14

def word461_1_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(79, 68)]

def word461_1_321 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_311 word461_1_153

def word461_1_322 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_320 word461_1_321

def word461_1_323 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_319 word461_1_322

def word461_1_324 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_97 word461_1_158

def word461_1_325 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_323 word461_1_324

def word461_1_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 78 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_327 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_312 word461_1_326

def word461_1_328 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_131 word461_1_327

def word461_1_329 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_325 word461_1_328

def word461_1_330 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 60

def word461_1_331 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 34)) (some 77) ([60, 42, 78]) (some (60, word461_1_330, 461, 35))

def word461_1_332 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_329 word461_1_331

def word461_1_333 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_332 word461_1_14

def word461_1_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(60, 66)]

def word461_1_335 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_333 word461_1_334

def word461_1_336 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_312 word461_1_283

def word461_1_337 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_131 word461_1_336

def word461_1_338 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_335 word461_1_337

def word461_1_339 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 36)) (some 178) ([60, 42]) (some (60, word461_1_330, 461, 37))

def word461_1_340 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_338 word461_1_339

def word461_1_341 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_340 word461_1_14

def word461_1_342 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_312 word461_1_233

def word461_1_343 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_131 word461_1_342

def word461_1_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(80, 68)]

def word461_1_345 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_344 word461_1_237

def word461_1_346 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_343 word461_1_345

def word461_1_347 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_311 word461_1_276

def word461_1_348 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_346 word461_1_347

def word461_1_349 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_341 word461_1_348

def word461_1_350 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(66, 24)]

def word461_1_351 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_349 word461_1_350

def word461_1_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 24 79 (Flapjack.WordRegImm.imm 1#64)))

def word461_1_353 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_54 word461_1_352

def word461_1_354 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_351 word461_1_353

def word461_1_355 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 24)]

def word461_1_356 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_354 word461_1_355

def word461_1_357 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_356 word461_1_252

def word461_1_358 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 0#64)

def word461_1_359 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_358 word461_1_14

def word461_1_360 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def word461_1_361 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_359 word461_1_360

def word461_1_362 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_361 word461_1_258

def word461_1_363 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 40 (Flapjack.WordRegImm.reg 76) word461_1_357 word461_1_362

def word461_1_364 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_49 word461_1_363

def word461_1_365 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_364 word461_1_14

def word461_1_366 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) word461_1_365 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def word461_1_367 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_46 word461_1_366

def word461_1_368 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_367 word461_1_14

def word461_1_369 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_17 word461_1_198

def word461_1_370 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 40 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_371 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_369 word461_1_370

def word461_1_372 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_97 word461_1_371

def word461_1_373 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_368 word461_1_372

def word461_1_374 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def word461_1_375 : WordLangProgHOL (BitVec 64) :=
.call (some (([58]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 38)) (some 180) ([40]) (some (40, word461_1_374, 461, 39))

def word461_1_376 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_373 word461_1_375

def word461_1_377 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_376 word461_1_14

def word461_1_378 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(79, 58)]

def word461_1_379 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 76 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_380 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_17 word461_1_379

def word461_1_381 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_378 word461_1_380

def word461_1_382 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_377 word461_1_381

def word461_1_383 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 79 (Flapjack.WordRegImm.imm 9#64)))

def word461_1_384 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_40 word461_1_383

def word461_1_385 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_382 word461_1_384

def word461_1_386 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 46 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_387 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_369 word461_1_386

def word461_1_388 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_97 word461_1_387

def word461_1_389 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_385 word461_1_388

def word461_1_390 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 76

def word461_1_391 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 40)) (some 77) ([76, 12, 46]) (some (76, word461_1_390, 461, 41))

def word461_1_392 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_389 word461_1_391

def word461_1_393 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_392 word461_1_14

def word461_1_394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(76, 52)]

def word461_1_395 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_393 word461_1_394

def word461_1_396 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 12 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_397 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_369 word461_1_396

def word461_1_398 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_97 word461_1_397

def word461_1_399 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_395 word461_1_398

def word461_1_400 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 42)) (some 178) ([76, 12]) (some (76, word461_1_390, 461, 43))

def word461_1_401 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_399 word461_1_400

def word461_1_402 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_401 word461_1_14

def word461_1_403 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_369 word461_1_233

def word461_1_404 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_97 word461_1_403

def word461_1_405 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(80, 58)]

def word461_1_406 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_405 word461_1_237

def word461_1_407 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_404 word461_1_406

def word461_1_408 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 40 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_409 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_17 word461_1_408

def word461_1_410 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_407 word461_1_409

def word461_1_411 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_402 word461_1_410

def word461_1_412 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(52, 40)]

def word461_1_413 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_411 word461_1_412

def word461_1_414 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 40 (Flapjack.WordLangAddr.addr 79 8#64))

def word461_1_415 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_28 word461_1_414

def word461_1_416 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_413 word461_1_415

def word461_1_417 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 40)]

def word461_1_418 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_416 word461_1_417

def word461_1_419 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 46

def word461_1_420 : WordLangProgHOL (BitVec 64) :=
.call (some (([76, 12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 44)) (some 197) ([46]) (some (46, word461_1_419, 461, 45))

def word461_1_421 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_418 word461_1_420

def word461_1_422 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_421 word461_1_14

def word461_1_423 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 46 0#64)

def word461_1_424 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_422 word461_1_423

def word461_1_425 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_424 word461_1_44

def word461_1_426 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_425 word461_1_14

def word461_1_427 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(64, 22)]

def word461_1_428 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 12)]

def word461_1_429 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_427 word461_1_428

def word461_1_430 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 64 1#64)

def word461_1_431 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_430 word461_1_14

def word461_1_432 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 56 1#64)

def word461_1_433 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_431 word461_1_432

def word461_1_434 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(64, 14)]

def word461_1_435 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_433 word461_1_434

def word461_1_436 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(80, 76)]

def word461_1_437 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_438 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_436 word461_1_437

def word461_1_439 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_56 word461_1_438

def word461_1_440 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_435 word461_1_439

def word461_1_441 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 64

def word461_1_442 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 46)) (some 187) ([64, 20]) (some (64, word461_1_441, 461, 47))

def word461_1_443 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_440 word461_1_442

def word461_1_444 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_443 word461_1_14

def word461_1_445 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_444 word461_1_79

def word461_1_446 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 56 0#64)

def word461_1_447 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_445 word461_1_446

def word461_1_448 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 1#64)

def word461_1_449 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_448 word461_1_14

def word461_1_450 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 38 1#64)

def word461_1_451 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_449 word461_1_450

def word461_1_452 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(79, 46)]

def word461_1_453 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_452 word461_1_55

def word461_1_454 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 64 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_455 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_436 word461_1_454

def word461_1_456 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_453 word461_1_455

def word461_1_457 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_451 word461_1_456

def word461_1_458 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_436 word461_1_237

def word461_1_459 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_56 word461_1_458

def word461_1_460 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 79 0#64))

def word461_1_461 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_459 word461_1_460

def word461_1_462 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_457 word461_1_461

def word461_1_463 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(79, 76)]

def word461_1_464 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(80, 22)]

def word461_1_465 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 80 80 (Flapjack.WordRegImm.imm 5#64)))

def word461_1_466 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_464 word461_1_465

def word461_1_467 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_466 word461_1_237

def word461_1_468 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_463 word461_1_467

def word461_1_469 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 56 (Flapjack.WordLangAddr.addr 79 8#64))

def word461_1_470 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_468 word461_1_469

def word461_1_471 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_462 word461_1_470

def word461_1_472 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 38 (Flapjack.WordLangAddr.addr 79 16#64))

def word461_1_473 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_468 word461_1_472

def word461_1_474 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_471 word461_1_473

def word461_1_475 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 74 (Flapjack.WordLangAddr.addr 79 24#64))

def word461_1_476 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_468 word461_1_475

def word461_1_477 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_474 word461_1_476

def word461_1_478 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 20)]

def word461_1_479 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_477 word461_1_478

def word461_1_480 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 79 0#64))

def word461_1_481 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_131 word461_1_480

def word461_1_482 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_479 word461_1_481

def word461_1_483 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 56)]

def word461_1_484 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_482 word461_1_483

def word461_1_485 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 79 8#64))

def word461_1_486 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_131 word461_1_485

def word461_1_487 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_484 word461_1_486

def word461_1_488 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 38)]

def word461_1_489 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_487 word461_1_488

def word461_1_490 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 79 16#64))

def word461_1_491 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_131 word461_1_490

def word461_1_492 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_489 word461_1_491

def word461_1_493 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 74)]

def word461_1_494 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_492 word461_1_493

def word461_1_495 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 79 24#64))

def word461_1_496 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_131 word461_1_495

def word461_1_497 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_494 word461_1_496

def word461_1_498 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 64 79 (Flapjack.WordRegImm.imm 1#64)))

def word461_1_499 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_452 word461_1_498

def word461_1_500 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_497 word461_1_499

def word461_1_501 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 64)]

def word461_1_502 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_500 word461_1_501

def word461_1_503 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 0#64)

def word461_1_504 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_503 word461_1_14

def word461_1_505 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 38 0#64)

def word461_1_506 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_504 word461_1_505

def word461_1_507 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 20 (Flapjack.WordRegImm.reg 56) word461_1_502 word461_1_506

def word461_1_508 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_447 word461_1_507

def word461_1_509 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_508 word461_1_14

def word461_1_510 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_54 word461_1_498

def word461_1_511 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_509 word461_1_510

def word461_1_512 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 64)]

def word461_1_513 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_511 word461_1_512

def word461_1_514 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_513 word461_1_252

def word461_1_515 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 64 0#64)

def word461_1_516 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_515 word461_1_14

def word461_1_517 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_516 word461_1_446

def word461_1_518 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_517 word461_1_258

def word461_1_519 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 64 (Flapjack.WordRegImm.reg 20) word461_1_514 word461_1_518

def word461_1_520 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_429 word461_1_519

def word461_1_521 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_520 word461_1_14

def word461_1_522 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) word461_1_521 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def word461_1_523 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_426 word461_1_522

def word461_1_524 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_523 word461_1_14

def word461_1_525 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(64, 76)]

def word461_1_526 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_524 word461_1_525

def word461_1_527 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 46)]

def word461_1_528 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_526 word461_1_527

def word461_1_529 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 56 32#64)

def word461_1_530 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_528 word461_1_529

def word461_1_531 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 38 2#64)

def word461_1_532 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_530 word461_1_531

def word461_1_533 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(74, 8)]

def word461_1_534 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_532 word461_1_533

def word461_1_535 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_531 word461_1_529

def word461_1_536 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 48)) (some 459) ([64, 20, 56, 38, 74]) (some (64, word461_1_441, 461, 49))

def word461_1_537 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_535 word461_1_536

def word461_1_538 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_534 word461_1_537

def word461_1_539 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_538 word461_1_14

def word461_1_540 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_539 word461_1_42

def word461_1_541 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_540 word461_1_44

def word461_1_542 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_541 word461_1_14

def word461_1_543 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_427 word461_1_527

def word461_1_544 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 38 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_545 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_436 word461_1_544

def word461_1_546 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_56 word461_1_545

def word461_1_547 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_433 word461_1_546

def word461_1_548 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 74 32#64)

def word461_1_549 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_547 word461_1_548

def word461_1_550 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_549 word461_1_548

def word461_1_551 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_550 word461_1_548

def word461_1_552 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def word461_1_553 : WordLangProgHOL (BitVec 64) :=
.call (some (([28, 64, 20, 56]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 50)) (some 146) ([38, 74]) (some (38, word461_1_552, 461, 51))

def word461_1_554 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_551 word461_1_553

def word461_1_555 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_554 word461_1_14

def word461_1_556 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(38, 66)]

def word461_1_557 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_555 word461_1_556

def word461_1_558 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(74, 28)]

def word461_1_559 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_557 word461_1_558

def word461_1_560 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_559 word461_1_111

def word461_1_561 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_560 word461_1_113

def word461_1_562 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_561 word461_1_115

def word461_1_563 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 52)) (some 277) ([38, 74, 16, 50, 32]) (some (38, word461_1_552, 461, 53))

def word461_1_564 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_562 word461_1_563

def word461_1_565 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_564 word461_1_14

def word461_1_566 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_311 word461_1_544

def word461_1_567 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_16 word461_1_566

def word461_1_568 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_565 word461_1_567

def word461_1_569 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(66, 38)]

def word461_1_570 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_568 word461_1_569

def word461_1_571 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 38 79 (Flapjack.WordRegImm.imm 1#64)))

def word461_1_572 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_54 word461_1_571

def word461_1_573 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_570 word461_1_572

def word461_1_574 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 38)]

def word461_1_575 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_573 word461_1_574

def word461_1_576 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_575 word461_1_252

def word461_1_577 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 64 (Flapjack.WordRegImm.reg 20) word461_1_576 word461_1_518

def word461_1_578 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_543 word461_1_577

def word461_1_579 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_578 word461_1_14

def word461_1_580 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) word461_1_579 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln)

def word461_1_581 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_542 word461_1_580

def word461_1_582 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_581 word461_1_14

def word461_1_583 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 64 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_584 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_369 word461_1_583

def word461_1_585 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_97 word461_1_584

def word461_1_586 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_582 word461_1_585

def word461_1_587 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 54)) (some 180) ([64]) (some (64, word461_1_441, 461, 55))

def word461_1_588 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_586 word461_1_587

def word461_1_589 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_588 word461_1_14

def word461_1_590 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(79, 28)]

def word461_1_591 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_17 word461_1_437

def word461_1_592 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_590 word461_1_591

def word461_1_593 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_589 word461_1_592

def word461_1_594 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 56 79 (Flapjack.WordRegImm.imm 9#64)))

def word461_1_595 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_40 word461_1_594

def word461_1_596 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_593 word461_1_595

def word461_1_597 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 38 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_598 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_369 word461_1_597

def word461_1_599 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_97 word461_1_598

def word461_1_600 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_596 word461_1_599

def word461_1_601 : WordLangProgHOL (BitVec 64) :=
.call (some (([64]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 56)) (some 77) ([20, 56, 38]) (some (20, word461_1_93, 461, 57))

def word461_1_602 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_600 word461_1_601

def word461_1_603 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_602 word461_1_14

def word461_1_604 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 52)]

def word461_1_605 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_603 word461_1_604

def word461_1_606 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 56 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_607 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_369 word461_1_606

def word461_1_608 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_97 word461_1_607

def word461_1_609 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_605 word461_1_608

def word461_1_610 : WordLangProgHOL (BitVec 64) :=
.call (some (([64]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 58)) (some 178) ([20, 56]) (some (20, word461_1_93, 461, 59))

def word461_1_611 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_609 word461_1_610

def word461_1_612 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_611 word461_1_14

def word461_1_613 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_152 word461_1_237

def word461_1_614 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_404 word461_1_613

def word461_1_615 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_17 word461_1_454

def word461_1_616 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_614 word461_1_615

def word461_1_617 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_612 word461_1_616

def word461_1_618 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(52, 64)]

def word461_1_619 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_617 word461_1_618

def word461_1_620 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 64 (Flapjack.WordLangAddr.addr 79 16#64))

def word461_1_621 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_28 word461_1_620

def word461_1_622 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_619 word461_1_621

def word461_1_623 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 79 8#64))

def word461_1_624 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_131 word461_1_623

def word461_1_625 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_622 word461_1_624

def word461_1_626 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 56 (Flapjack.WordLangAddr.addr 79 0#64))

def word461_1_627 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_131 word461_1_626

def word461_1_628 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_625 word461_1_627

def word461_1_629 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(74, 56)]

def word461_1_630 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_628 word461_1_629

def word461_1_631 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_630 word461_1_478

def word461_1_632 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 50 40#64)

def word461_1_633 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_631 word461_1_632

def word461_1_634 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32 0#64)

def word461_1_635 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_633 word461_1_634

def word461_1_636 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(68, 8)]

def word461_1_637 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_635 word461_1_636

def word461_1_638 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_634 word461_1_632

def word461_1_639 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 74

def word461_1_640 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 60)) (some 459) ([74, 16, 50, 32, 68]) (some (74, word461_1_639, 461, 61))

def word461_1_641 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_638 word461_1_640

def word461_1_642 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_637 word461_1_641

def word461_1_643 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_642 word461_1_14

def word461_1_644 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_643 word461_1_42

def word461_1_645 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_644 word461_1_44

def word461_1_646 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_645 word461_1_14

def word461_1_647 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(74, 22)]

def word461_1_648 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_647 word461_1_478

def word461_1_649 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 74 1#64)

def word461_1_650 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_649 word461_1_14

def word461_1_651 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 50 1#64)

def word461_1_652 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_650 word461_1_651

def word461_1_653 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(38, 22)]

def word461_1_654 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_652 word461_1_653

def word461_1_655 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 74 40#64)

def word461_1_656 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_654 word461_1_655

def word461_1_657 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 16 16 38 74))

def word461_1_658 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_656 word461_1_657

def word461_1_659 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(80, 56)]

def word461_1_660 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 50 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_661 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_659 word461_1_660

def word461_1_662 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_157 word461_1_661

def word461_1_663 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_658 word461_1_662

def word461_1_664 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 32 79 (Flapjack.WordRegImm.imm 9#64)))

def word461_1_665 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_97 word461_1_664

def word461_1_666 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_663 word461_1_665

def word461_1_667 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(68, 32)]

def word461_1_668 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_666 word461_1_667

def word461_1_669 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 79 0#64))

def word461_1_670 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_246 word461_1_669

def word461_1_671 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_668 word461_1_670

def word461_1_672 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 62)) (some 177) ([68, 24]) (some (68, word461_1_271, 461, 63))

def word461_1_673 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_671 word461_1_672

def word461_1_674 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_673 word461_1_14

def word461_1_675 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_302 word461_1_305

def word461_1_676 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_16 word461_1_675

def word461_1_677 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_674 word461_1_676

def word461_1_678 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(32, 68)]

def word461_1_679 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_677 word461_1_678

def word461_1_680 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_679 word461_1_667

def word461_1_681 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 79 8#64))

def word461_1_682 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_246 word461_1_681

def word461_1_683 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_680 word461_1_682

def word461_1_684 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 60 (Flapjack.WordLangAddr.addr 79 16#64))

def word461_1_685 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_246 word461_1_684

def word461_1_686 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_683 word461_1_685

def word461_1_687 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 42 (Flapjack.WordLangAddr.addr 79 24#64))

def word461_1_688 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_246 word461_1_687

def word461_1_689 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_686 word461_1_688

def word461_1_690 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 78 (Flapjack.WordLangAddr.addr 79 32#64))

def word461_1_691 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_246 word461_1_690

def word461_1_692 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_689 word461_1_691

def word461_1_693 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 64)) (some 277) ([68, 24, 60, 42, 78]) (some (68, word461_1_271, 461, 65))

def word461_1_694 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_692 word461_1_693

def word461_1_695 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_694 word461_1_14

def word461_1_696 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_695 word461_1_676

def word461_1_697 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_696 word461_1_678

def word461_1_698 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_275 word461_1_314

def word461_1_699 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_697 word461_1_698

def word461_1_700 : WordLangProgHOL (BitVec 64) :=
.call (some (([68]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 66)) (some 180) ([24]) (some (24, word461_1_287, 461, 67))

def word461_1_701 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_699 word461_1_700

def word461_1_702 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_701 word461_1_14

def word461_1_703 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_702 word461_1_322

def word461_1_704 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_703 word461_1_324

def word461_1_705 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_275 word461_1_327

def word461_1_706 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_704 word461_1_705

def word461_1_707 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 68)) (some 77) ([60, 42, 78]) (some (60, word461_1_330, 461, 69))

def word461_1_708 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_706 word461_1_707

def word461_1_709 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_708 word461_1_14

def word461_1_710 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_709 word461_1_334

def word461_1_711 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_275 word461_1_336

def word461_1_712 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_710 word461_1_711

def word461_1_713 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 70)) (some 178) ([60, 42]) (some (60, word461_1_330, 461, 71))

def word461_1_714 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_712 word461_1_713

def word461_1_715 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_714 word461_1_14

def word461_1_716 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_275 word461_1_342

def word461_1_717 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_716 word461_1_345

def word461_1_718 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_717 word461_1_347

def word461_1_719 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_715 word461_1_718

def word461_1_720 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_719 word461_1_350

def word461_1_721 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_720 word461_1_353

def word461_1_722 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_721 word461_1_355

def word461_1_723 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_722 word461_1_252

def word461_1_724 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_85 word461_1_14

def word461_1_725 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_724 word461_1_135

def word461_1_726 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_725 word461_1_258

def word461_1_727 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 74 (Flapjack.WordRegImm.reg 16) word461_1_723 word461_1_726

def word461_1_728 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_648 word461_1_727

def word461_1_729 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_728 word461_1_14

def word461_1_730 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln) word461_1_729 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln)

def word461_1_731 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_646 word461_1_730

def word461_1_732 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_731 word461_1_14

def word461_1_733 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 74 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_734 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_369 word461_1_733

def word461_1_735 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_97 word461_1_734

def word461_1_736 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_732 word461_1_735

def word461_1_737 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 72)) (some 180) ([74]) (some (74, word461_1_639, 461, 73))

def word461_1_738 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_736 word461_1_737

def word461_1_739 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_738 word461_1_14

def word461_1_740 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(79, 38)]

def word461_1_741 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_17 word461_1_125

def word461_1_742 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_740 word461_1_741

def word461_1_743 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_739 word461_1_742

def word461_1_744 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 50 79 (Flapjack.WordRegImm.imm 9#64)))

def word461_1_745 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_40 word461_1_744

def word461_1_746 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_743 word461_1_745

def word461_1_747 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 32 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_748 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_369 word461_1_747

def word461_1_749 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_97 word461_1_748

def word461_1_750 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_746 word461_1_749

def word461_1_751 : WordLangProgHOL (BitVec 64) :=
.call (some (([74]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 74)) (some 77) ([16, 50, 32]) (some (16, word461_1_107, 461, 75))

def word461_1_752 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_750 word461_1_751

def word461_1_753 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_752 word461_1_14

def word461_1_754 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 52)]

def word461_1_755 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_753 word461_1_754

def word461_1_756 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 50 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_757 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_369 word461_1_756

def word461_1_758 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_97 word461_1_757

def word461_1_759 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_755 word461_1_758

def word461_1_760 : WordLangProgHOL (BitVec 64) :=
.call (some (([74]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 76)) (some 178) ([16, 50]) (some (16, word461_1_107, 461, 77))

def word461_1_761 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_759 word461_1_760

def word461_1_762 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_761 word461_1_14

def word461_1_763 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(80, 38)]

def word461_1_764 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_763 word461_1_237

def word461_1_765 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_404 word461_1_764

def word461_1_766 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 74 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_767 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_17 word461_1_766

def word461_1_768 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_765 word461_1_767

def word461_1_769 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_762 word461_1_768

def word461_1_770 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(52, 74)]

def word461_1_771 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_769 word461_1_770

def word461_1_772 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_28 word461_1_475

def word461_1_773 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_771 word461_1_772

def word461_1_774 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(79, 74)]

def word461_1_775 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 79 8#64))

def word461_1_776 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_774 word461_1_775

def word461_1_777 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_773 word461_1_776

def word461_1_778 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 50 (Flapjack.WordLangAddr.addr 79 0#64))

def word461_1_779 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_774 word461_1_778

def word461_1_780 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_777 word461_1_779

def word461_1_781 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_780 word461_1_138

def word461_1_782 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 16)]

def word461_1_783 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_781 word461_1_782

def word461_1_784 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 60 16#64)

def word461_1_785 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_783 word461_1_784

def word461_1_786 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 42 0#64)

def word461_1_787 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_785 word461_1_786

def word461_1_788 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(78, 8)]

def word461_1_789 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_787 word461_1_788

def word461_1_790 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_786 word461_1_784

def word461_1_791 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 78)) (some 459) ([68, 24, 60, 42, 78]) (some (68, word461_1_271, 461, 79))

def word461_1_792 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_790 word461_1_791

def word461_1_793 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_789 word461_1_792

def word461_1_794 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_793 word461_1_14

def word461_1_795 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_794 word461_1_42

def word461_1_796 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_795 word461_1_44

def word461_1_797 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_796 word461_1_14

def word461_1_798 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(68, 22)]

def word461_1_799 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_798 word461_1_782

def word461_1_800 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 79 79 (Flapjack.WordRegImm.imm 4#64)))

def word461_1_801 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_54 word461_1_800

def word461_1_802 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(80, 50)]

def word461_1_803 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 32 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_804 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_802 word461_1_803

def word461_1_805 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_801 word461_1_804

def word461_1_806 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_144 word461_1_805

def word461_1_807 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 68 79 (Flapjack.WordRegImm.imm 9#64)))

def word461_1_808 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_97 word461_1_807

def word461_1_809 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_806 word461_1_808

def word461_1_810 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 68)]

def word461_1_811 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_809 word461_1_810

def word461_1_812 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 60 (Flapjack.WordLangAddr.addr 79 0#64))

def word461_1_813 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_275 word461_1_812

def word461_1_814 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_811 word461_1_813

def word461_1_815 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 80)) (some 177) ([24, 60]) (some (24, word461_1_287, 461, 81))

def word461_1_816 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_814 word461_1_815

def word461_1_817 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_816 word461_1_14

def word461_1_818 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_344 word461_1_276

def word461_1_819 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_16 word461_1_818

def word461_1_820 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_817 word461_1_819

def word461_1_821 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(68, 24)]

def word461_1_822 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_820 word461_1_821

def word461_1_823 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_822 word461_1_810

def word461_1_824 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 60 (Flapjack.WordLangAddr.addr 79 8#64))

def word461_1_825 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_275 word461_1_824

def word461_1_826 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_823 word461_1_825

def word461_1_827 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 82)) (some 177) ([24, 60]) (some (24, word461_1_287, 461, 83))

def word461_1_828 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_826 word461_1_827

def word461_1_829 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_828 word461_1_14

def word461_1_830 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_829 word461_1_819

def word461_1_831 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_830 word461_1_821

def word461_1_832 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_312 word461_1_293

def word461_1_833 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_320 word461_1_832

def word461_1_834 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_831 word461_1_833

def word461_1_835 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 84)) (some 180) ([60]) (some (60, word461_1_330, 461, 85))

def word461_1_836 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_834 word461_1_835

def word461_1_837 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_836 word461_1_14

def word461_1_838 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 42 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_839 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_311 word461_1_838

def word461_1_840 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_151 word461_1_839

def word461_1_841 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_837 word461_1_840

def word461_1_842 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 78 79 (Flapjack.WordRegImm.imm 9#64)))

def word461_1_843 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_97 word461_1_842

def word461_1_844 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_841 word461_1_843

def word461_1_845 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_312 word461_1_200

def word461_1_846 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_320 word461_1_845

def word461_1_847 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_844 word461_1_846

def word461_1_848 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def word461_1_849 : WordLangProgHOL (BitVec 64) :=
.call (some (([60]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 86)) (some 77) ([42, 78, 10]) (some (42, word461_1_848, 461, 87))

def word461_1_850 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_847 word461_1_849

def word461_1_851 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_850 word461_1_14

def word461_1_852 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 66)]

def word461_1_853 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_851 word461_1_852

def word461_1_854 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_320 word461_1_327

def word461_1_855 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_853 word461_1_854

def word461_1_856 : WordLangProgHOL (BitVec 64) :=
.call (some (([60]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 88)) (some 178) ([42, 78]) (some (42, word461_1_848, 461, 89))

def word461_1_857 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_855 word461_1_856

def word461_1_858 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_857 word461_1_14

def word461_1_859 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_320 word461_1_342

def word461_1_860 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(80, 24)]

def word461_1_861 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_860 word461_1_237

def word461_1_862 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_859 word461_1_861

def word461_1_863 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_862 word461_1_321

def word461_1_864 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_858 word461_1_863

def word461_1_865 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(66, 60)]

def word461_1_866 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_864 word461_1_865

def word461_1_867 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 60 79 (Flapjack.WordRegImm.imm 1#64)))

def word461_1_868 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_54 word461_1_867

def word461_1_869 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_866 word461_1_868

def word461_1_870 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 60)]

def word461_1_871 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_869 word461_1_870

def word461_1_872 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_871 word461_1_252

def word461_1_873 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 68 (Flapjack.WordRegImm.reg 24) word461_1_872 word461_1_259

def word461_1_874 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_799 word461_1_873

def word461_1_875 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_874 word461_1_14

def word461_1_876 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln) word461_1_875 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln)

def word461_1_877 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_797 word461_1_876

def word461_1_878 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_877 word461_1_14

def word461_1_879 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_369 word461_1_267

def word461_1_880 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_97 word461_1_879

def word461_1_881 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_878 word461_1_880

def word461_1_882 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 90)) (some 180) ([68]) (some (68, word461_1_271, 461, 91))

def word461_1_883 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_881 word461_1_882

def word461_1_884 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_883 word461_1_14

def word461_1_885 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_17 word461_1_276

def word461_1_886 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_275 word461_1_885

def word461_1_887 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_884 word461_1_886

def word461_1_888 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_40 word461_1_280

def word461_1_889 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_887 word461_1_888

def word461_1_890 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_369 word461_1_283

def word461_1_891 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_97 word461_1_890

def word461_1_892 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_889 word461_1_891

def word461_1_893 : WordLangProgHOL (BitVec 64) :=
.call (some (([68]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 92)) (some 77) ([24, 60, 42]) (some (24, word461_1_287, 461, 93))

def word461_1_894 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_892 word461_1_893

def word461_1_895 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_894 word461_1_14

def word461_1_896 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 52)]

def word461_1_897 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_895 word461_1_896

def word461_1_898 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_369 word461_1_293

def word461_1_899 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_97 word461_1_898

def word461_1_900 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_897 word461_1_899

def word461_1_901 : WordLangProgHOL (BitVec 64) :=
.call (some (([68]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 94)) (some 178) ([24, 60]) (some (24, word461_1_287, 461, 95))

def word461_1_902 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_900 word461_1_901

def word461_1_903 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_902 word461_1_14

def word461_1_904 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_404 word461_1_303

def word461_1_905 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_17 word461_1_305

def word461_1_906 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_904 word461_1_905

def word461_1_907 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_903 word461_1_906

def word461_1_908 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(52, 68)]

def word461_1_909 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_907 word461_1_908

def word461_1_910 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 68 (Flapjack.WordLangAddr.addr 79 32#64))

def word461_1_911 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_28 word461_1_910

def word461_1_912 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_909 word461_1_911

def word461_1_913 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_320 word461_1_681

def word461_1_914 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_912 word461_1_913

def word461_1_915 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_320 word461_1_812

def word461_1_916 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_914 word461_1_915

def word461_1_917 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(78, 60)]

def word461_1_918 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_916 word461_1_917

def word461_1_919 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 24)]

def word461_1_920 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_918 word461_1_919

def word461_1_921 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 44 24#64)

def word461_1_922 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_920 word461_1_921

def word461_1_923 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 26 0#64)

def word461_1_924 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_922 word461_1_923

def word461_1_925 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(62, 8)]

def word461_1_926 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_924 word461_1_925

def word461_1_927 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_923 word461_1_921

def word461_1_928 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 96)) (some 459) ([78, 10, 44, 26, 62]) (some (78, word461_1_167, 461, 97))

def word461_1_929 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_927 word461_1_928

def word461_1_930 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_926 word461_1_929

def word461_1_931 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_930 word461_1_14

def word461_1_932 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_931 word461_1_42

def word461_1_933 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_932 word461_1_44

def word461_1_934 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_933 word461_1_14

def word461_1_935 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(78, 22)]

def word461_1_936 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_935 word461_1_919

def word461_1_937 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 78 1#64)

def word461_1_938 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_937 word461_1_14

def word461_1_939 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 44 1#64)

def word461_1_940 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_938 word461_1_939

def word461_1_941 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 22)]

def word461_1_942 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_940 word461_1_941

def word461_1_943 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 78 24#64)

def word461_1_944 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_942 word461_1_943

def word461_1_945 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 10 10 42 78))

def word461_1_946 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_944 word461_1_945

def word461_1_947 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(79, 10)]

def word461_1_948 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(80, 60)]

def word461_1_949 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_948 word461_1_209

def word461_1_950 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_947 word461_1_949

def word461_1_951 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_946 word461_1_950

def word461_1_952 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_97 word461_1_213

def word461_1_953 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_951 word461_1_952

def word461_1_954 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(62, 26)]

def word461_1_955 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_953 word461_1_954

def word461_1_956 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(79, 44)]

def word461_1_957 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 79 0#64))

def word461_1_958 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_956 word461_1_957

def word461_1_959 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_955 word461_1_958

def word461_1_960 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 62

def word461_1_961 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 98)) (some 177) ([62, 18]) (some (62, word461_1_960, 461, 99))

def word461_1_962 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_959 word461_1_961

def word461_1_963 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_962 word461_1_14

def word461_1_964 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(80, 26)]

def word461_1_965 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 62 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_966 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_964 word461_1_965

def word461_1_967 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_16 word461_1_966

def word461_1_968 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_963 word461_1_967

def word461_1_969 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 62)]

def word461_1_970 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_968 word461_1_969

def word461_1_971 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_970 word461_1_954

def word461_1_972 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 79 8#64))

def word461_1_973 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_956 word461_1_972

def word461_1_974 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_971 word461_1_973

def word461_1_975 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 54 (Flapjack.WordLangAddr.addr 79 16#64))

def word461_1_976 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_956 word461_1_975

def word461_1_977 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_974 word461_1_976

def word461_1_978 : WordLangProgHOL (BitVec 64) :=
.call (some (([34]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 100)) (some 176) ([62, 18, 54]) (some (62, word461_1_960, 461, 101))

def word461_1_979 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_977 word461_1_978

def word461_1_980 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_979 word461_1_14

def word461_1_981 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_980 word461_1_967

def word461_1_982 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_981 word461_1_969

def word461_1_983 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(79, 26)]

def word461_1_984 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 18 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_985 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_312 word461_1_984

def word461_1_986 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_983 word461_1_985

def word461_1_987 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_982 word461_1_986

def word461_1_988 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def word461_1_989 : WordLangProgHOL (BitVec 64) :=
.call (some (([62]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 102)) (some 180) ([18]) (some (18, word461_1_988, 461, 103))

def word461_1_990 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_987 word461_1_989

def word461_1_991 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_990 word461_1_14

def word461_1_992 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(79, 62)]

def word461_1_993 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 54 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_994 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_311 word461_1_993

def word461_1_995 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_992 word461_1_994

def word461_1_996 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_991 word461_1_995

def word461_1_997 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 36 79 (Flapjack.WordRegImm.imm 9#64)))

def word461_1_998 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_97 word461_1_997

def word461_1_999 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_996 word461_1_998

def word461_1_1000 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 72 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_1001 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_312 word461_1_1000

def word461_1_1002 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_983 word461_1_1001

def word461_1_1003 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_999 word461_1_1002

def word461_1_1004 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 54

def word461_1_1005 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 104)) (some 77) ([54, 36, 72]) (some (54, word461_1_1004, 461, 105))

def word461_1_1006 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1003 word461_1_1005

def word461_1_1007 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1006 word461_1_14

def word461_1_1008 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(54, 66)]

def word461_1_1009 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1007 word461_1_1008

def word461_1_1010 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 36 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_1011 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_312 word461_1_1010

def word461_1_1012 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_983 word461_1_1011

def word461_1_1013 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1009 word461_1_1012

def word461_1_1014 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 106)) (some 178) ([54, 36]) (some (54, word461_1_1004, 461, 107))

def word461_1_1015 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1013 word461_1_1014

def word461_1_1016 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1015 word461_1_14

def word461_1_1017 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_983 word461_1_342

def word461_1_1018 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(80, 62)]

def word461_1_1019 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1018 word461_1_237

def word461_1_1020 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1017 word461_1_1019

def word461_1_1021 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_1022 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_311 word461_1_1021

def word461_1_1023 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1020 word461_1_1022

def word461_1_1024 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1016 word461_1_1023

def word461_1_1025 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(66, 18)]

def word461_1_1026 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1024 word461_1_1025

def word461_1_1027 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 18 79 (Flapjack.WordRegImm.imm 1#64)))

def word461_1_1028 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_54 word461_1_1027

def word461_1_1029 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1026 word461_1_1028

def word461_1_1030 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 18)]

def word461_1_1031 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1029 word461_1_1030

def word461_1_1032 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1031 word461_1_252

def word461_1_1033 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 78 0#64)

def word461_1_1034 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1033 word461_1_14

def word461_1_1035 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 44 0#64)

def word461_1_1036 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1034 word461_1_1035

def word461_1_1037 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1036 word461_1_258

def word461_1_1038 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 78 (Flapjack.WordRegImm.reg 10) word461_1_1032 word461_1_1037

def word461_1_1039 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_936 word461_1_1038

def word461_1_1040 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1039 word461_1_14

def word461_1_1041 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln) word461_1_1040 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln)

def word461_1_1042 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_934 word461_1_1041

def word461_1_1043 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1042 word461_1_14

def word461_1_1044 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_369 word461_1_326

def word461_1_1045 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_97 word461_1_1044

def word461_1_1046 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1043 word461_1_1045

def word461_1_1047 : WordLangProgHOL (BitVec 64) :=
.call (some (([42]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 108)) (some 180) ([78]) (some (78, word461_1_167, 461, 109))

def word461_1_1048 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1046 word461_1_1047

def word461_1_1049 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1048 word461_1_14

def word461_1_1050 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_17 word461_1_240

def word461_1_1051 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_196 word461_1_1050

def word461_1_1052 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1049 word461_1_1051

def word461_1_1053 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 44 79 (Flapjack.WordRegImm.imm 9#64)))

def word461_1_1054 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_40 word461_1_1053

def word461_1_1055 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1052 word461_1_1054

def word461_1_1056 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_369 word461_1_226

def word461_1_1057 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_97 word461_1_1056

def word461_1_1058 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1055 word461_1_1057

def word461_1_1059 : WordLangProgHOL (BitVec 64) :=
.call (some (([78]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 110)) (some 77) ([10, 44, 26]) (some (10, word461_1_204, 461, 111))

def word461_1_1060 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1058 word461_1_1059

def word461_1_1061 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1060 word461_1_14

def word461_1_1062 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 52)]

def word461_1_1063 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1061 word461_1_1062

def word461_1_1064 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 44 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_1065 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_369 word461_1_1064

def word461_1_1066 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_97 word461_1_1065

def word461_1_1067 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1063 word461_1_1066

def word461_1_1068 : WordLangProgHOL (BitVec 64) :=
.call (some (([78]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 112)) (some 178) ([10, 44]) (some (10, word461_1_204, 461, 113))

def word461_1_1069 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1067 word461_1_1068

def word461_1_1070 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1069 word461_1_14

def word461_1_1071 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_171 word461_1_237

def word461_1_1072 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_404 word461_1_1071

def word461_1_1073 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_17 word461_1_172

def word461_1_1074 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1072 word461_1_1073

def word461_1_1075 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1070 word461_1_1074

def word461_1_1076 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(52, 78)]

def word461_1_1077 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1075 word461_1_1076

def word461_1_1078 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 70)]

def word461_1_1079 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1077 word461_1_1078

def word461_1_1080 : WordLangProgHOL (BitVec 64) :=
.call (some (([78]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 114)) (some 70) ([10]) (some (10, word461_1_204, 461, 115))

def word461_1_1081 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1079 word461_1_1080

def word461_1_1082 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1081 word461_1_14

def word461_1_1083 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(80, 2)]

def word461_1_1084 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1083 word461_1_198

def word461_1_1085 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1084 word461_1_326

def word461_1_1086 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_40 word461_1_1085

def word461_1_1087 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1082 word461_1_1086

def word461_1_1088 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 78)]

def word461_1_1089 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1087 word461_1_1088

def word461_1_1090 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 116)) (some 180) ([44]) (some (44, word461_1_220, 461, 117))

def word461_1_1091 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1089 word461_1_1090

def word461_1_1092 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1091 word461_1_14

def word461_1_1093 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 26 79 (Flapjack.WordRegImm.reg 80)))

def word461_1_1094 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1083 word461_1_1093

def word461_1_1095 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_947 word461_1_1094

def word461_1_1096 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1092 word461_1_1095

def word461_1_1097 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 62 79 (Flapjack.WordRegImm.imm 9#64)))

def word461_1_1098 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_0 word461_1_1097

def word461_1_1099 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1096 word461_1_1098

def word461_1_1100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 78)]

def word461_1_1101 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1099 word461_1_1100

def word461_1_1102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def word461_1_1103 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 118)) (some 77) ([26, 62, 18]) (some (26, word461_1_1102, 461, 119))

def word461_1_1104 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1101 word461_1_1103

def word461_1_1105 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1104 word461_1_14

def word461_1_1106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 2)]

def word461_1_1107 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1105 word461_1_1106

def word461_1_1108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(62, 78)]

def word461_1_1109 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1107 word461_1_1108

def word461_1_1110 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.ls PUnit.unit))
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word461_1_9, 461, 120)) (some 178) ([26, 62]) (some (26, word461_1_1102, 461, 121))

def word461_1_1111 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1109 word461_1_1110

def word461_1_1112 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1111 word461_1_14

def word461_1_1113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(80, 10)]

def word461_1_1114 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1113 word461_1_209

def word461_1_1115 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_208 word461_1_1114

def word461_1_1116 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1112 word461_1_1115

def word461_1_1117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [44]

def word461_1_1118 : WordLangProgHOL (BitVec 64) :=
.seq word461_1_1116 word461_1_1117

def pass461_1 : WordLangProgHOL (BitVec 64) :=
word461_1_1118
end InitECandidate.Proofs.WordStages.Parallel461
