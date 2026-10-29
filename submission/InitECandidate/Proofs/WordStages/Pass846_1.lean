import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass846_0
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word846_1_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 81 Flapjack.WordStore.heapLength

def word846_1_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 81 81 (Flapjack.WordRegImm.imm 1#64)))

def word846_1_2 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_0 word846_1_1

def word846_1_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 81 81

def word846_1_4 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_2 word846_1_3

def word846_1_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 81 (Flapjack.WordLangAddr.addr 81 18446744073709551440#64))

def word846_1_6 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_4 word846_1_5

def word846_1_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 62 (Flapjack.WordLangAddr.addr 81 72#64))

def word846_1_8 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_6 word846_1_7

def word846_1_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word846_1_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 62

def word846_1_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([24]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), word846_1_9, 846, 2)) (some 199) ([62]) (some (62, word846_1_10, 846, 3))

def word846_1_12 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_8 word846_1_11

def word846_1_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word846_1_14 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_12 word846_1_13

def word846_1_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 20#64)

def word846_1_16 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_14 word846_1_15

def word846_1_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 52 64#64)

def word846_1_18 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_16 word846_1_17

def word846_1_19 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_17 word846_1_15

def word846_1_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def word846_1_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([62]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 4)) (some 182) ([14, 52]) (some (14, word846_1_20, 846, 5))

def word846_1_22 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_19 word846_1_21

def word846_1_23 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_18 word846_1_22

def word846_1_24 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_23 word846_1_13

def word846_1_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 81 32#64))

def word846_1_26 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_6 word846_1_25

def word846_1_27 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_24 word846_1_26

def word846_1_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 52 (Flapjack.WordLangAddr.addr 81 16#64))

def word846_1_29 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_6 word846_1_28

def word846_1_30 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_27 word846_1_29

def word846_1_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 81 (Flapjack.WordLangAddr.addr 81 18446744073709551448#64))

def word846_1_32 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_4 word846_1_31

def word846_1_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 34 (Flapjack.WordLangAddr.addr 81 0#64))

def word846_1_34 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_32 word846_1_33

def word846_1_35 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_30 word846_1_34

def word846_1_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 14)]

def word846_1_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 72 (Flapjack.WordLangAddr.addr 81 24#64))

def word846_1_38 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_36 word846_1_37

def word846_1_39 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_35 word846_1_38

def word846_1_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def word846_1_41 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_39 word846_1_40

def word846_1_42 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_41 word846_1_13

def word846_1_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 8)]

def word846_1_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(68, 72)]

def word846_1_45 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_43 word846_1_44

def word846_1_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30 1#64)

def word846_1_47 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_46 word846_1_13

def word846_1_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 1#64)

def word846_1_49 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_47 word846_1_48

def word846_1_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 14)]

def word846_1_51 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_49 word846_1_50

def word846_1_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(58, 8)]

def word846_1_53 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_51 word846_1_52

def word846_1_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def word846_1_55 : WordLangProgHOL (BitVec 64) :=
.call (some (([46, 30, 68]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 6)) (some 197) ([20, 58]) (some (20, word846_1_54, 846, 7))

def word846_1_56 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_53 word846_1_55

def word846_1_57 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_56 word846_1_13

def word846_1_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(58, 46)]

def word846_1_59 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_57 word846_1_58

def word846_1_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 38 0#64)

def word846_1_61 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_59 word846_1_60

def word846_1_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 58 1#64)

def word846_1_63 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_62 word846_1_13

def word846_1_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 78 1#64)

def word846_1_65 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_63 word846_1_64

def word846_1_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 30)]

def word846_1_67 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_65 word846_1_66

def word846_1_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(58, 68)]

def word846_1_69 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_67 word846_1_68

def word846_1_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(78, 24)]

def word846_1_71 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_69 word846_1_70

def word846_1_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 20)]

def word846_1_73 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_71 word846_1_72

def word846_1_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 78

def word846_1_75 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 8)) (some 187) ([78, 6]) (some (78, word846_1_74, 846, 9))

def word846_1_76 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_73 word846_1_75

def word846_1_77 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_76 word846_1_13

def word846_1_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 38)]

def word846_1_79 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_77 word846_1_78

def word846_1_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 44 0#64)

def word846_1_81 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_79 word846_1_80

def word846_1_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 1#64)

def word846_1_83 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_82 word846_1_13

def word846_1_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 1#64)

def word846_1_85 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_83 word846_1_84

def word846_1_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 24)]

def word846_1_87 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_85 word846_1_86

def word846_1_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 20)]

def word846_1_89 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_87 word846_1_88

def word846_1_90 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_89 word846_1_84

def word846_1_91 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_90 word846_1_84

def word846_1_92 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_91 word846_1_84

def word846_1_93 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_92 word846_1_84

def word846_1_94 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_93 word846_1_84

def word846_1_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def word846_1_96 : WordLangProgHOL (BitVec 64) :=
.call (some (([78]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 10)) (some 192) ([6, 44, 28]) (some (6, word846_1_95, 846, 11))

def word846_1_97 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_94 word846_1_96

def word846_1_98 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_97 word846_1_13

def word846_1_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def word846_1_100 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_99 word846_1_13

def word846_1_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 0#64)

def word846_1_102 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_100 word846_1_101

def word846_1_103 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.WordRegImm.reg 44) word846_1_98 word846_1_102

def word846_1_104 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_81 word846_1_103

def word846_1_105 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_104 word846_1_13

def word846_1_106 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_105 word846_1_72

def word846_1_107 : WordLangProgHOL (BitVec 64) :=
.call (some (([78]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 12)) (some 395) ([6]) (some (6, word846_1_95, 846, 13))

def word846_1_108 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_106 word846_1_107

def word846_1_109 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_108 word846_1_13

def word846_1_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 34)]

def word846_1_111 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_109 word846_1_110

def word846_1_112 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 78)]

def word846_1_113 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_111 word846_1_112

def word846_1_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 66 1#64)

def word846_1_115 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_113 word846_1_114

def word846_1_116 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_115 word846_1_114

def word846_1_117 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_116 word846_1_114

def word846_1_118 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_117 word846_1_114

def word846_1_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def word846_1_120 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 14)) (some 305) ([44, 28, 66]) (some (44, word846_1_119, 846, 15))

def word846_1_121 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_118 word846_1_120

def word846_1_122 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_121 word846_1_13

def word846_1_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 96#64)

def word846_1_124 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_122 word846_1_123

def word846_1_125 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_124 word846_1_123

def word846_1_126 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_125 word846_1_123

def word846_1_127 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_126 word846_1_123

def word846_1_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def word846_1_129 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 16)) (some 68) ([28]) (some (28, word846_1_128, 846, 17))

def word846_1_130 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_127 word846_1_129

def word846_1_131 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_130 word846_1_13

def word846_1_132 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_131 word846_1_101

def word846_1_133 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_132 word846_1_13

def word846_1_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 28)]

def word846_1_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 56 2#64)

def word846_1_136 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_134 word846_1_135

def word846_1_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 1#64)

def word846_1_138 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_137 word846_1_13

def word846_1_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 1#64)

def word846_1_140 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_138 word846_1_139

def word846_1_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 66 0#64)

def word846_1_142 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_140 word846_1_141

def word846_1_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 58)]

def word846_1_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 81 24#64))

def word846_1_145 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_143 word846_1_144

def word846_1_146 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_142 word846_1_145

def word846_1_147 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_146 word846_1_13

def word846_1_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 66)]

def word846_1_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(76, 18)]

def word846_1_150 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_148 word846_1_149

def word846_1_151 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_139 word846_1_13

def word846_1_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 1#64)

def word846_1_153 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_151 word846_1_152

def word846_1_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 58)]

def word846_1_155 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_153 word846_1_154

def word846_1_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 66)]

def word846_1_157 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_155 word846_1_156

def word846_1_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def word846_1_159 : WordLangProgHOL (BitVec 64) :=
.call (some (([56, 36, 76]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 18)) (some 197) ([12, 50]) (some (12, word846_1_158, 846, 19))

def word846_1_160 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_157 word846_1_159

def word846_1_161 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_160 word846_1_13

def word846_1_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 56)]

def word846_1_163 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_161 word846_1_162

def word846_1_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32 0#64)

def word846_1_165 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_163 word846_1_164

def word846_1_166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 50 1#64)

def word846_1_167 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_166 word846_1_13

def word846_1_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 70 1#64)

def word846_1_169 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_167 word846_1_168

def word846_1_170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 76)]

def word846_1_171 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 81 0#64))

def word846_1_172 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_170 word846_1_171

def word846_1_173 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_169 word846_1_172

def word846_1_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 50 (Flapjack.WordLangAddr.addr 81 8#64))

def word846_1_175 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_170 word846_1_174

def word846_1_176 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_173 word846_1_175

def word846_1_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 32 (Flapjack.WordLangAddr.addr 81 16#64))

def word846_1_178 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_170 word846_1_177

def word846_1_179 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_176 word846_1_178

def word846_1_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 70 (Flapjack.WordLangAddr.addr 81 24#64))

def word846_1_181 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_170 word846_1_180

def word846_1_182 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_179 word846_1_181

def word846_1_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(60, 12)]

def word846_1_184 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_182 word846_1_183

def word846_1_185 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 50)]

def word846_1_186 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_184 word846_1_185

def word846_1_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(80, 32)]

def word846_1_188 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_186 word846_1_187

def word846_1_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 70)]

def word846_1_190 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_188 word846_1_189

def word846_1_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 60

def word846_1_192 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 20)) (some 102) ([60, 40, 80, 4]) (some (60, word846_1_191, 846, 21))

def word846_1_193 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_190 word846_1_192

def word846_1_194 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_193 word846_1_13

def word846_1_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 28)]

def word846_1_196 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_194 word846_1_195

def word846_1_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 80 0#64)

def word846_1_198 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_196 word846_1_197

def word846_1_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 1#64)

def word846_1_200 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_199 word846_1_13

def word846_1_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 42 0#64)

def word846_1_202 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_200 word846_1_201

def word846_1_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 26 1#64)

def word846_1_204 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_202 word846_1_203

def word846_1_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 42 1#64)

def word846_1_206 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_204 word846_1_205

def word846_1_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 40 0#64)

def word846_1_208 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_207 word846_1_13

def word846_1_209 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_208 word846_1_201

def word846_1_210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 26 0#64)

def word846_1_211 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_209 word846_1_210

def word846_1_212 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_211 word846_1_201

def word846_1_213 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 40 (Flapjack.WordRegImm.reg 80) word846_1_206 word846_1_212

def word846_1_214 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_198 word846_1_213

def word846_1_215 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_214 word846_1_13

def word846_1_216 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 22)]

def word846_1_217 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_215 word846_1_216

def word846_1_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 54 0#64)

def word846_1_219 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_217 word846_1_218

def word846_1_220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 1#64)

def word846_1_221 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_220 word846_1_13

def word846_1_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 74 0#64)

def word846_1_223 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_221 word846_1_222

def word846_1_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 1#64)

def word846_1_225 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_223 word846_1_224

def word846_1_226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 74 1#64)

def word846_1_227 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_225 word846_1_226

def word846_1_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 0#64)

def word846_1_229 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_228 word846_1_13

def word846_1_230 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_229 word846_1_222

def word846_1_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def word846_1_232 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_230 word846_1_231

def word846_1_233 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_232 word846_1_222

def word846_1_234 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 16 (Flapjack.WordRegImm.reg 54) word846_1_227 word846_1_233

def word846_1_235 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_219 word846_1_234

def word846_1_236 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_235 word846_1_13

def word846_1_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 74)]

def word846_1_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(82, 42)]

def word846_1_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 48 81 (Flapjack.WordRegImm.reg 82)))

def word846_1_240 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_238 word846_1_239

def word846_1_241 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_237 word846_1_240

def word846_1_242 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_236 word846_1_241

def word846_1_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 12)]

def word846_1_244 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(80, 50)]

def word846_1_245 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_243 word846_1_244

def word846_1_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 32)]

def word846_1_247 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_245 word846_1_246

def word846_1_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 70)]

def word846_1_249 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_247 word846_1_248

def word846_1_250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 44)]

def word846_1_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 26 81 (Flapjack.WordRegImm.imm 8#64)))

def word846_1_252 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_250 word846_1_251

def word846_1_253 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_249 word846_1_252

def word846_1_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 40

def word846_1_255 : WordLangProgHOL (BitVec 64) :=
.call (some (([60]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 22)) (some 148) ([40, 80, 4, 42, 26]) (some (40, word846_1_254, 846, 23))

def word846_1_256 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_253 word846_1_255

def word846_1_257 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_256 word846_1_13

def word846_1_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 80 81 (Flapjack.WordRegImm.imm 40#64)))

def word846_1_259 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_250 word846_1_258

def word846_1_260 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_257 word846_1_259

def word846_1_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 81 (Flapjack.WordRegImm.imm 8#64)))

def word846_1_262 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_250 word846_1_261

def word846_1_263 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_260 word846_1_262

def word846_1_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 60)]

def word846_1_265 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_263 word846_1_264

def word846_1_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 80

def word846_1_267 : WordLangProgHOL (BitVec 64) :=
.call (some (([40]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 24)) (some 176) ([80, 4, 42]) (some (80, word846_1_266, 846, 25))

def word846_1_268 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_265 word846_1_267

def word846_1_269 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_268 word846_1_13

def word846_1_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 40#64)

def word846_1_271 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_269 word846_1_270

def word846_1_272 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_271 word846_1_270

def word846_1_273 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_272 word846_1_270

def word846_1_274 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_273 word846_1_270

def word846_1_275 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_274 word846_1_270

def word846_1_276 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_275 word846_1_270

def word846_1_277 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_276 word846_1_270

def word846_1_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 4

def word846_1_279 : WordLangProgHOL (BitVec 64) :=
.call (some (([80]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 26)) (some 68) ([4]) (some (4, word846_1_278, 846, 27))

def word846_1_280 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_277 word846_1_279

def word846_1_281 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_280 word846_1_13

def word846_1_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 80)]

def word846_1_283 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_281 word846_1_282

def word846_1_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 26 81 (Flapjack.WordRegImm.imm 40#64)))

def word846_1_285 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_250 word846_1_284

def word846_1_286 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_283 word846_1_285

def word846_1_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(64, 40)]

def word846_1_288 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_286 word846_1_287

def word846_1_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 42

def word846_1_290 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 28)) (some 77) ([42, 26, 64]) (some (42, word846_1_289, 846, 29))

def word846_1_291 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_288 word846_1_290

def word846_1_292 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_291 word846_1_13

def word846_1_293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(42, 6)]

def word846_1_294 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_292 word846_1_293

def word846_1_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 36)]

def word846_1_296 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_294 word846_1_295

def word846_1_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 64 32#64)

def word846_1_298 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_296 word846_1_297

def word846_1_299 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 80)]

def word846_1_300 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_298 word846_1_299

def word846_1_301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(54, 40)]

def word846_1_302 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_300 word846_1_301

def word846_1_303 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_302 word846_1_297

def word846_1_304 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_303 word846_1_297

def word846_1_305 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_304 word846_1_297

def word846_1_306 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_305 word846_1_297

def word846_1_307 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_306 word846_1_297

def word846_1_308 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_307 word846_1_297

def word846_1_309 : WordLangProgHOL (BitVec 64) :=
.call (some (([4]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 30)) (some 316) ([42, 26, 64, 16, 54]) (some (42, word846_1_289, 846, 31))

def word846_1_310 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_308 word846_1_309

def word846_1_311 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_310 word846_1_13

def word846_1_312 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 48 (Flapjack.WordRegImm.imm 0#64) word846_1_311 word846_1_9

def word846_1_313 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_242 word846_1_312

def word846_1_314 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_313 word846_1_13

def word846_1_315 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_314 word846_1_195

def word846_1_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 80 1#64)

def word846_1_317 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_315 word846_1_316

def word846_1_318 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_317 word846_1_213

def word846_1_319 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_318 word846_1_13

def word846_1_320 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_319 word846_1_216

def word846_1_321 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_320 word846_1_218

def word846_1_322 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.reg 54) word846_1_227 word846_1_233

def word846_1_323 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_321 word846_1_322

def word846_1_324 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_323 word846_1_13

def word846_1_325 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_324 word846_1_241

def word846_1_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 6)]

def word846_1_327 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(80, 36)]

def word846_1_328 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_326 word846_1_327

def word846_1_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 32#64)

def word846_1_330 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_328 word846_1_329

def word846_1_331 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_330 word846_1_201

def word846_1_332 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_331 word846_1_210

def word846_1_333 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_332 word846_1_210

def word846_1_334 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_333 word846_1_201

def word846_1_335 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_334 word846_1_329

def word846_1_336 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_335 word846_1_210

def word846_1_337 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_336 word846_1_201

def word846_1_338 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_337 word846_1_329

def word846_1_339 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_338 word846_1_210

def word846_1_340 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_339 word846_1_201

def word846_1_341 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_340 word846_1_329

def word846_1_342 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_341 word846_1_210

def word846_1_343 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_342 word846_1_201

def word846_1_344 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_343 word846_1_329

def word846_1_345 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_344 word846_1_210

def word846_1_346 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_345 word846_1_201

def word846_1_347 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_346 word846_1_329

def word846_1_348 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_347 word846_1_210

def word846_1_349 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_348 word846_1_201

def word846_1_350 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_349 word846_1_329

def word846_1_351 : WordLangProgHOL (BitVec 64) :=
.call (some (([60]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 32)) (some 316) ([40, 80, 4, 42, 26]) (some (40, word846_1_254, 846, 33))

def word846_1_352 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_350 word846_1_351

def word846_1_353 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_352 word846_1_13

def word846_1_354 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 48 (Flapjack.WordRegImm.imm 0#64) word846_1_353 word846_1_9

def word846_1_355 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_325 word846_1_354

def word846_1_356 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_355 word846_1_13

def word846_1_357 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 50 0#64)

def word846_1_358 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_357 word846_1_13

def word846_1_359 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 70 0#64)

def word846_1_360 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_358 word846_1_359

def word846_1_361 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 50 (Flapjack.WordRegImm.reg 32) word846_1_356 word846_1_360

def word846_1_362 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_165 word846_1_361

def word846_1_363 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_362 word846_1_13

def word846_1_364 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 66)]

def word846_1_365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 12 81 (Flapjack.WordRegImm.imm 1#64)))

def word846_1_366 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_364 word846_1_365

def word846_1_367 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_363 word846_1_366

def word846_1_368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(66, 12)]

def word846_1_369 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_367 word846_1_368

def word846_1_370 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def word846_1_371 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_369 word846_1_370

def word846_1_372 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 0#64)

def word846_1_373 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_372 word846_1_13

def word846_1_374 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def word846_1_375 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_373 word846_1_374

def word846_1_376 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def word846_1_377 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_375 word846_1_376

def word846_1_378 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 36 (Flapjack.WordRegImm.reg 76) word846_1_371 word846_1_377

def word846_1_379 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_150 word846_1_378

def word846_1_380 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_379 word846_1_13

def word846_1_381 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln) word846_1_380 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln)

def word846_1_382 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_147 word846_1_381

def word846_1_383 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_382 word846_1_13

def word846_1_384 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 28)]

def word846_1_385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 56 81 (Flapjack.WordRegImm.imm 1#64)))

def word846_1_386 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_384 word846_1_385

def word846_1_387 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_383 word846_1_386

def word846_1_388 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 56)]

def word846_1_389 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_387 word846_1_388

def word846_1_390 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_389 word846_1_370

def word846_1_391 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 0#64)

def word846_1_392 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_391 word846_1_13

def word846_1_393 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_392 word846_1_372

def word846_1_394 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_393 word846_1_376

def word846_1_395 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 18 (Flapjack.WordRegImm.reg 56) word846_1_390 word846_1_394

def word846_1_396 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_136 word846_1_395

def word846_1_397 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_396 word846_1_13

def word846_1_398 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln) word846_1_397 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln)

def word846_1_399 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_133 word846_1_398

def word846_1_400 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_399 word846_1_13

def word846_1_401 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 32#64)

def word846_1_402 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_400 word846_1_401

def word846_1_403 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_402 word846_1_401

def word846_1_404 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_403 word846_1_401

def word846_1_405 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_404 word846_1_401

def word846_1_406 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def word846_1_407 : WordLangProgHOL (BitVec 64) :=
.call (some (([66]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
        PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 34)) (some 68) ([18]) (some (18, word846_1_406, 846, 35))

def word846_1_408 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_405 word846_1_407

def word846_1_409 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_408 word846_1_13

def word846_1_410 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(56, 6)]

def word846_1_411 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_409 word846_1_410

def word846_1_412 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_411 word846_1_148

def word846_1_413 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 56

def word846_1_414 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 36)) (some 327) ([56, 36]) (some (56, word846_1_413, 846, 37))

def word846_1_415 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_412 word846_1_414

def word846_1_416 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_415 word846_1_13

def word846_1_417 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(56, 62)]

def word846_1_418 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_416 word846_1_417

def word846_1_419 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 20)]

def word846_1_420 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_418 word846_1_419

def word846_1_421 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(76, 66)]

def word846_1_422 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_420 word846_1_421

def word846_1_423 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 38)) (some 192) ([56, 36, 76]) (some (56, word846_1_413, 846, 39))

def word846_1_424 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_422 word846_1_423

def word846_1_425 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_424 word846_1_13

def word846_1_426 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 58 0#64)

def word846_1_427 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_426 word846_1_13

def word846_1_428 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 78 0#64)

def word846_1_429 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_427 word846_1_428

def word846_1_430 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 58 (Flapjack.WordRegImm.reg 38) word846_1_425 word846_1_429

def word846_1_431 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_61 word846_1_430

def word846_1_432 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_431 word846_1_13

def word846_1_433 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 8)]

def word846_1_434 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 20 81 (Flapjack.WordRegImm.imm 1#64)))

def word846_1_435 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_433 word846_1_434

def word846_1_436 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_432 word846_1_435

def word846_1_437 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 20)]

def word846_1_438 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_436 word846_1_437

def word846_1_439 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_438 word846_1_370

def word846_1_440 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 30 0#64)

def word846_1_441 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_440 word846_1_13

def word846_1_442 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 0#64)

def word846_1_443 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_441 word846_1_442

def word846_1_444 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_443 word846_1_376

def word846_1_445 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 30 (Flapjack.WordRegImm.reg 68) word846_1_439 word846_1_444

def word846_1_446 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_45 word846_1_445

def word846_1_447 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_446 word846_1_13

def word846_1_448 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln) word846_1_447 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln)

def word846_1_449 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_42 word846_1_448

def word846_1_450 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_449 word846_1_13

def word846_1_451 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 34)]

def word846_1_452 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_450 word846_1_451

def word846_1_453 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 68 (Flapjack.WordLangAddr.addr 81 8#64))

def word846_1_454 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_32 word846_1_453

def word846_1_455 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_452 word846_1_454

def word846_1_456 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_455 word846_1_48

def word846_1_457 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def word846_1_458 : WordLangProgHOL (BitVec 64) :=
.call (some (([46]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 40)) (some 305) ([30, 68, 20]) (some (30, word846_1_457, 846, 41))

def word846_1_459 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_48 word846_1_458

def word846_1_460 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_456 word846_1_459

def word846_1_461 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_460 word846_1_13

def word846_1_462 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_461 word846_1_40

def word846_1_463 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_462 word846_1_13

def word846_1_464 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(68, 8)]

def word846_1_465 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 72)]

def word846_1_466 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_464 word846_1_465

def word846_1_467 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 68 1#64)

def word846_1_468 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_467 word846_1_13

def word846_1_469 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_468 word846_1_62

def word846_1_470 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(58, 14)]

def word846_1_471 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_469 word846_1_470

def word846_1_472 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(38, 8)]

def word846_1_473 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_471 word846_1_472

def word846_1_474 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 58

def word846_1_475 : WordLangProgHOL (BitVec 64) :=
.call (some (([30, 68, 20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 42)) (some 197) ([58, 38]) (some (58, word846_1_474, 846, 43))

def word846_1_476 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_473 word846_1_475

def word846_1_477 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_476 word846_1_13

def word846_1_478 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(38, 30)]

def word846_1_479 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_477 word846_1_478

def word846_1_480 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_479 word846_1_428

def word846_1_481 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 38 1#64)

def word846_1_482 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_481 word846_1_13

def word846_1_483 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_482 word846_1_82

def word846_1_484 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(38, 52)]

def word846_1_485 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_483 word846_1_484

def word846_1_486 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(78, 68)]

def word846_1_487 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_485 word846_1_486

def word846_1_488 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 38

def word846_1_489 : WordLangProgHOL (BitVec 64) :=
.call (some (([58]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 44)) (some 187) ([38, 78]) (some (38, word846_1_488, 846, 45))

def word846_1_490 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_487 word846_1_489

def word846_1_491 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_490 word846_1_13

def word846_1_492 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(78, 58)]

def word846_1_493 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_491 word846_1_492

def word846_1_494 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_493 word846_1_99

def word846_1_495 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_64 word846_1_13

def word846_1_496 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 44 1#64)

def word846_1_497 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_495 word846_1_496

def word846_1_498 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_497 word846_1_486

def word846_1_499 : WordLangProgHOL (BitVec 64) :=
.call (some (([38]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 46)) (some 394) ([78]) (some (78, word846_1_74, 846, 47))

def word846_1_500 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_498 word846_1_499

def word846_1_501 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_500 word846_1_13

def word846_1_502 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_501 word846_1_86

def word846_1_503 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 68)]

def word846_1_504 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_502 word846_1_503

def word846_1_505 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_504 word846_1_84

def word846_1_506 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_505 word846_1_84

def word846_1_507 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_506 word846_1_84

def word846_1_508 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_507 word846_1_84

def word846_1_509 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_508 word846_1_84

def word846_1_510 : WordLangProgHOL (BitVec 64) :=
.call (some (([78]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 48)) (some 192) ([6, 44, 28]) (some (6, word846_1_95, 846, 49))

def word846_1_511 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_509 word846_1_510

def word846_1_512 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_511 word846_1_13

def word846_1_513 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_512 word846_1_78

def word846_1_514 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_513 word846_1_496

def word846_1_515 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 62)]

def word846_1_516 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_85 word846_1_515

def word846_1_517 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 68)]

def word846_1_518 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_516 word846_1_517

def word846_1_519 : WordLangProgHOL (BitVec 64) :=
.call (some (([78, 6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 50)) (some 186) ([44, 28]) (some (44, word846_1_119, 846, 51))

def word846_1_520 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_518 word846_1_519

def word846_1_521 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_520 word846_1_13

def word846_1_522 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 44 (Flapjack.WordLangAddr.addr 81 18446744073709551488#64))

def word846_1_523 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_4 word846_1_522

def word846_1_524 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_521 word846_1_523

def word846_1_525 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(66, 78)]

def word846_1_526 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_524 word846_1_525

def word846_1_527 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_526 word846_1_391

def word846_1_528 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_114 word846_1_13

def word846_1_529 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 56 1#64)

def word846_1_530 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_528 word846_1_529

def word846_1_531 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 6)]

def word846_1_532 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_530 word846_1_531

def word846_1_533 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_141 word846_1_13

def word846_1_534 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 56 0#64)

def word846_1_535 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_533 word846_1_534

def word846_1_536 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 66 (Flapjack.WordRegImm.reg 18) word846_1_532 word846_1_535

def word846_1_537 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_527 word846_1_536

def word846_1_538 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_537 word846_1_13

def word846_1_539 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 66 128#64)

def word846_1_540 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_538 word846_1_539

def word846_1_541 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_540 word846_1_539

def word846_1_542 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_541 word846_1_539

def word846_1_543 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_542 word846_1_539

def word846_1_544 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_543 word846_1_539

def word846_1_545 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_544 word846_1_539

def word846_1_546 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 66

def word846_1_547 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 52)) (some 68) ([66]) (some (66, word846_1_546, 846, 53))

def word846_1_548 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_545 word846_1_547

def word846_1_549 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_548 word846_1_13

def word846_1_550 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 38)]

def word846_1_551 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 81 0#64))

def word846_1_552 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_550 word846_1_551

def word846_1_553 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_549 word846_1_552

def word846_1_554 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 56 (Flapjack.WordLangAddr.addr 81 8#64))

def word846_1_555 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_550 word846_1_554

def word846_1_556 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_553 word846_1_555

def word846_1_557 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 36 (Flapjack.WordLangAddr.addr 81 16#64))

def word846_1_558 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_550 word846_1_557

def word846_1_559 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_556 word846_1_558

def word846_1_560 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 76 (Flapjack.WordLangAddr.addr 81 24#64))

def word846_1_561 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_550 word846_1_560

def word846_1_562 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_559 word846_1_561

def word846_1_563 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 81 32#64))

def word846_1_564 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_550 word846_1_563

def word846_1_565 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_562 word846_1_564

def word846_1_566 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 44)]

def word846_1_567 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_565 word846_1_566

def word846_1_568 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 32 (Flapjack.WordLangAddr.addr 81 48#64))

def word846_1_569 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_550 word846_1_568

def word846_1_570 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_567 word846_1_569

def word846_1_571 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(70, 28)]

def word846_1_572 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_570 word846_1_571

def word846_1_573 : WordLangProgHOL (BitVec 64) :=
.call (some (([66]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 54)) (some 330) ([18, 56, 36, 76, 12, 50, 32, 70]) (some (18, word846_1_406, 846, 55))

def word846_1_574 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_572 word846_1_573

def word846_1_575 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_574 word846_1_13

def word846_1_576 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(56, 46)]

def word846_1_577 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_575 word846_1_576

def word846_1_578 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 68)]

def word846_1_579 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_577 word846_1_578

def word846_1_580 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 76 20#64)

def word846_1_581 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_579 word846_1_580

def word846_1_582 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 28)]

def word846_1_583 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_581 word846_1_582

def word846_1_584 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_583 word846_1_156

def word846_1_585 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_584 word846_1_580

def word846_1_586 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_585 word846_1_580

def word846_1_587 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_586 word846_1_580

def word846_1_588 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_587 word846_1_580

def word846_1_589 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_588 word846_1_580

def word846_1_590 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 56)) (some 316) ([56, 36, 76, 12, 50]) (some (56, word846_1_413, 846, 57))

def word846_1_591 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_589 word846_1_590

def word846_1_592 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_591 word846_1_13

def word846_1_593 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 44) word846_1_592 word846_1_102

def word846_1_594 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_514 word846_1_593

def word846_1_595 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_594 word846_1_13

def word846_1_596 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_428 word846_1_13

def word846_1_597 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_596 word846_1_80

def word846_1_598 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 78 (Flapjack.WordRegImm.reg 6) word846_1_595 word846_1_597

def word846_1_599 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_494 word846_1_598

def word846_1_600 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_599 word846_1_13

def word846_1_601 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_60 word846_1_13

def word846_1_602 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_601 word846_1_99

def word846_1_603 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 38 (Flapjack.WordRegImm.reg 78) word846_1_600 word846_1_602

def word846_1_604 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_480 word846_1_603

def word846_1_605 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_604 word846_1_13

def word846_1_606 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 58 81 (Flapjack.WordRegImm.imm 1#64)))

def word846_1_607 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_433 word846_1_606

def word846_1_608 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_605 word846_1_607

def word846_1_609 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 58)]

def word846_1_610 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_608 word846_1_609

def word846_1_611 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_610 word846_1_370

def word846_1_612 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 68 0#64)

def word846_1_613 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_612 word846_1_13

def word846_1_614 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_613 word846_1_426

def word846_1_615 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_614 word846_1_376

def word846_1_616 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 68 (Flapjack.WordRegImm.reg 20) word846_1_611 word846_1_615

def word846_1_617 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_466 word846_1_616

def word846_1_618 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_617 word846_1_13

def word846_1_619 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln) word846_1_618 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln)

def word846_1_620 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_463 word846_1_619

def word846_1_621 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_620 word846_1_13

def word846_1_622 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 52)]

def word846_1_623 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 30 (Flapjack.WordLangAddr.addr 81 24#64))

def word846_1_624 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_622 word846_1_623

def word846_1_625 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_621 word846_1_624

def word846_1_626 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_625 word846_1_40

def word846_1_627 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_626 word846_1_13

def word846_1_628 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 8)]

def word846_1_629 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(58, 30)]

def word846_1_630 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_628 word846_1_629

def word846_1_631 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_48 word846_1_13

def word846_1_632 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_631 word846_1_481

def word846_1_633 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_632 word846_1_484

def word846_1_634 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(78, 8)]

def word846_1_635 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_633 word846_1_634

def word846_1_636 : WordLangProgHOL (BitVec 64) :=
.call (some (([68, 20, 58]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 58)) (some 197) ([38, 78]) (some (38, word846_1_488, 846, 59))

def word846_1_637 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_635 word846_1_636

def word846_1_638 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_637 word846_1_13

def word846_1_639 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_638 word846_1_486

def word846_1_640 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_639 word846_1_99

def word846_1_641 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(38, 20)]

def word846_1_642 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_497 word846_1_641

def word846_1_643 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_642 word846_1_492

def word846_1_644 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 78)]

def word846_1_645 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_643 word846_1_644

def word846_1_646 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_645 word846_1_84

def word846_1_647 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_496 word846_1_13

def word846_1_648 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_647 word846_1_114

def word846_1_649 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 46)]

def word846_1_650 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_648 word846_1_649

def word846_1_651 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 38)]

def word846_1_652 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_650 word846_1_651

def word846_1_653 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 66 20#64)

def word846_1_654 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_652 word846_1_653

def word846_1_655 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_654 word846_1_391

def word846_1_656 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_655 word846_1_534

def word846_1_657 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_656 word846_1_534

def word846_1_658 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_657 word846_1_391

def word846_1_659 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_658 word846_1_653

def word846_1_660 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_659 word846_1_534

def word846_1_661 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_660 word846_1_391

def word846_1_662 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_661 word846_1_653

def word846_1_663 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_662 word846_1_534

def word846_1_664 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_663 word846_1_391

def word846_1_665 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_664 word846_1_653

def word846_1_666 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_665 word846_1_534

def word846_1_667 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_666 word846_1_391

def word846_1_668 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_667 word846_1_653

def word846_1_669 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 60)) (some 316) ([44, 28, 66, 18, 56]) (some (44, word846_1_119, 846, 61))

def word846_1_670 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_668 word846_1_669

def word846_1_671 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_670 word846_1_13

def word846_1_672 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_80 word846_1_13

def word846_1_673 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_672 word846_1_141

def word846_1_674 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 62)]

def word846_1_675 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_673 word846_1_674

def word846_1_676 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(66, 38)]

def word846_1_677 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_675 word846_1_676

def word846_1_678 : WordLangProgHOL (BitVec 64) :=
.call (some (([6, 44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 62)) (some 186) ([28, 66]) (some (28, word846_1_128, 846, 63))

def word846_1_679 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_677 word846_1_678

def word846_1_680 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_679 word846_1_13

def word846_1_681 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 6)]

def word846_1_682 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_680 word846_1_681

def word846_1_683 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_682 word846_1_534

def word846_1_684 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 44)]

def word846_1_685 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_140 word846_1_684

def word846_1_686 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(66, 24)]

def word846_1_687 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_393 word846_1_686

def word846_1_688 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 38)]

def word846_1_689 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_687 word846_1_688

def word846_1_690 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 64)) (some 845) ([66, 18]) (some (66, word846_1_546, 846, 65))

def word846_1_691 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_689 word846_1_690

def word846_1_692 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_691 word846_1_13

def word846_1_693 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.reg 56) word846_1_685 word846_1_692

def word846_1_694 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_683 word846_1_693

def word846_1_695 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_694 word846_1_13

def word846_1_696 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 128#64)

def word846_1_697 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_695 word846_1_696

def word846_1_698 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_697 word846_1_696

def word846_1_699 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_698 word846_1_696

def word846_1_700 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_699 word846_1_696

def word846_1_701 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_700 word846_1_696

def word846_1_702 : WordLangProgHOL (BitVec 64) :=
.call (some (([66]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 66)) (some 68) ([18]) (some (18, word846_1_406, 846, 67))

def word846_1_703 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_701 word846_1_702

def word846_1_704 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_703 word846_1_13

def word846_1_705 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 78)]

def word846_1_706 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 56 (Flapjack.WordLangAddr.addr 81 0#64))

def word846_1_707 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_705 word846_1_706

def word846_1_708 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_704 word846_1_707

def word846_1_709 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 36 (Flapjack.WordLangAddr.addr 81 8#64))

def word846_1_710 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_705 word846_1_709

def word846_1_711 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_708 word846_1_710

def word846_1_712 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 76 (Flapjack.WordLangAddr.addr 81 16#64))

def word846_1_713 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_705 word846_1_712

def word846_1_714 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_711 word846_1_713

def word846_1_715 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 81 24#64))

def word846_1_716 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_705 word846_1_715

def word846_1_717 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_714 word846_1_716

def word846_1_718 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 50 (Flapjack.WordLangAddr.addr 81 32#64))

def word846_1_719 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_705 word846_1_718

def word846_1_720 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_717 word846_1_719

def word846_1_721 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(32, 28)]

def word846_1_722 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_720 word846_1_721

def word846_1_723 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 70 (Flapjack.WordLangAddr.addr 81 48#64))

def word846_1_724 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_705 word846_1_723

def word846_1_725 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_722 word846_1_724

def word846_1_726 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 66)]

def word846_1_727 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_725 word846_1_726

def word846_1_728 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 68)) (some 330) ([56, 36, 76, 12, 50, 32, 70, 22]) (some (56, word846_1_413, 846, 69))

def word846_1_729 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_727 word846_1_728

def word846_1_730 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_729 word846_1_13

def word846_1_731 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(36, 46)]

def word846_1_732 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_730 word846_1_731

def word846_1_733 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(76, 38)]

def word846_1_734 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_732 word846_1_733

def word846_1_735 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 20#64)

def word846_1_736 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_734 word846_1_735

def word846_1_737 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_736 word846_1_156

def word846_1_738 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(32, 18)]

def word846_1_739 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_737 word846_1_738

def word846_1_740 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_739 word846_1_735

def word846_1_741 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_740 word846_1_735

def word846_1_742 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_741 word846_1_735

def word846_1_743 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_742 word846_1_735

def word846_1_744 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def word846_1_745 : WordLangProgHOL (BitVec 64) :=
.call (some (([56]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bs
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          PUnit.unit Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word846_1_9, 846, 70)) (some 316) ([36, 76, 12, 50, 32]) (some (36, word846_1_744, 846, 71))

def word846_1_746 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_743 word846_1_745

def word846_1_747 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_746 word846_1_13

def word846_1_748 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 44 (Flapjack.WordRegImm.reg 28) word846_1_671 word846_1_747

def word846_1_749 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_646 word846_1_748

def word846_1_750 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_749 word846_1_13

def word846_1_751 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 78 (Flapjack.WordRegImm.reg 6) word846_1_750 word846_1_597

def word846_1_752 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_640 word846_1_751

def word846_1_753 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_752 word846_1_13

def word846_1_754 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 38 81 (Flapjack.WordRegImm.imm 1#64)))

def word846_1_755 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_433 word846_1_754

def word846_1_756 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_753 word846_1_755

def word846_1_757 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 38)]

def word846_1_758 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_756 word846_1_757

def word846_1_759 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_758 word846_1_370

def word846_1_760 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_442 word846_1_13

def word846_1_761 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_760 word846_1_60

def word846_1_762 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_761 word846_1_376

def word846_1_763 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 20 (Flapjack.WordRegImm.reg 58) word846_1_759 word846_1_762

def word846_1_764 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_630 word846_1_763

def word846_1_765 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_764 word846_1_13

def word846_1_766 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln) word846_1_765 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln)
  PUnit.unit Flapjack.Spt.ln)

def word846_1_767 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_627 word846_1_766

def word846_1_768 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_767 word846_1_13

def word846_1_769 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 46)]

def word846_1_770 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_768 word846_1_769

def word846_1_771 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(58, 2)]

def word846_1_772 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_770 word846_1_771

def word846_1_773 : WordLangProgHOL (BitVec 64) :=
.call (some (([68]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word846_1_9, 846, 72)) (some 327) ([20, 58]) (some (20, word846_1_54, 846, 73))

def word846_1_774 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_772 word846_1_773

def word846_1_775 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_774 word846_1_13

def word846_1_776 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_775 word846_1_612

def word846_1_777 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [68]

def word846_1_778 : WordLangProgHOL (BitVec 64) :=
.seq word846_1_776 word846_1_777

def pass846_1 : WordLangProgHOL (BitVec 64) :=
word846_1_778
theorem pass846_1_eq : WordInst.instSelectExecutable riscvConfig (maxVarHOL (pass846_0) + 1) (pass846_0) = pass846_1 := by
  kernel_rfl
#print axioms pass846_1_eq
end InitECandidate.Proofs.WordStages
